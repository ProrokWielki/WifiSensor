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

#define get_name(var) #var

BME280I2C::Settings settings(BME280::OSR_X1, BME280::OSR_X1, BME280::OSR_X1, BME280::Mode_Normal, BME280::StandbyTime_1000ms, BME280::Filter_Off,
                             BME280::SpiEnable_False, BME280I2C::I2CAddr::I2CAddr_0x77);
BME280I2C bme_(settings);
WiFiClient wifi_;
PubSubClient mqtt_(mqtt::server_ip, mqtt::server_port, wifi_);

void setup()
{
    Wire.begin(i2c::sda_pin, i2c::scl_pin);

    WiFi.hostname(wifi::hostname);
    WiFi.mode(WIFI_STA);
    WiFi.begin(wifi::ssid, wifi::password);

    wait_for_initialization([]() { return not(WiFi.status() == WL_CONNECTED); }, 5, []() { ESP.deepSleep(15 * 60 * 1000 * 1000); }, 5000);
    wait_for_initialization([]() { return not bme_.begin(); }, 5, []() { ESP.deepSleep(15 * 60 * 1000 * 1000); });
    wait_for_initialization([]() { return not(mqtt_.connect(mqtt::client_id)); }, 5, []() { ESP.deepSleep(15 * 60 * 1000 * 1000); });

    float pressure, temperature, humidity;
    bme_.read(pressure, temperature, humidity);

    mqtt_.publish(wifi::hostname, make_json(std::make_pair("name", wifi::hostname), std::make_pair("temperature", temperature),
                                            std::make_pair("humidity", humidity), std::make_pair("pressure", pressure))
                                  .c_str());

    delay(1000);

    ESP.deepSleep(15 * 60 * 1000 * 1000);  // 15 min
}

void loop()
{
}
