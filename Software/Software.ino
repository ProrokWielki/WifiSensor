#include <Arduino.h>

#include <ESP8266WiFi.h>

#include <Wire.h>

#include <ArduinoOTA.h>
#include <PubSubClient.h>

#include <BME280I2C.h>

#include "config/i2c_config.h"
#include "esp_mqtt_helpers/config/mqtt_config.h"
#include "esp_mqtt_helpers/config/wifi_config.h"

#include "esp_mqtt_helpers/helpers/json.h"
#include "esp_mqtt_helpers/helpers/utils.h"

BME280I2C::Settings settings(BME280::OSR_X1, BME280::OSR_X1, BME280::OSR_X1, BME280::Mode_Forced, BME280::StandbyTime_500us, BME280::Filter_Off,
                             BME280::SpiEnable_False, BME280I2C::I2CAddr::I2CAddr_0x77);
BME280I2C bme_(settings);
WiFiClient wifi_;
PubSubClient mqtt_(mqtt::server_ip, mqtt::server_port, wifi_);

constexpr auto topic{"sensor"};
constexpr uint64_t sleep_time = 15 * 60 * 1000 * 1000;

void setup()
{
    Wire.begin(i2c::sda_pin, i2c::scl_pin);

    WiFi.persistent(false);
    WiFi.hostname(wifi::hostname);
    WiFi.mode(WIFI_STA);
    WiFi.begin(wifi::ssid, wifi::password);

    wait_for_initialization([]() { return not(WiFi.status() == WL_CONNECTED); }, 250, []() { ESP.deepSleep(sleep_time); }, 50);
    wait_for_initialization([]() { return not bme_.begin(); }, 250, []() { ESP.deepSleep(sleep_time); }, 10);
    wait_for_initialization([]() { return not(mqtt_.connect(mqtt::client_id)); }, 250, []() { ESP.deepSleep(sleep_time); }, 10);

    float temperature, humidity, pressure;
    bme_.read(pressure, temperature, humidity);
    mqtt_.publish(topic,
                  make_json(std::make_pair("temperature", temperature), std::make_pair("humidity", humidity), std::make_pair("pressure", pressure)).c_str());

    delay(10);

    ESP.deepSleep(sleep_time);
}

void loop()
{
}
