package global

import (
	"encoding/json"
	"fmt"
	"os"
)

// ConfigStruct defines a config object usually created on startup
type ConfigStruct struct {
	SysLogIP   string `json:"syslog_server"`
	RootFolder string
}

// Config is a global instance of the config
var Config ConfigStruct

// LoadConfig load the config file from the given folder
func LoadConfig(config string, rootfolder string) error {
	fmt.Println("Loading Config: ", config)

	file, err := os.Open(config)
	if err != nil {
		return fmt.Errorf("Unable to open config")
	}

	decoder := json.NewDecoder(file)
	Config = ConfigStruct{}
	err = decoder.Decode(&Config)
	Config.RootFolder = rootfolder

	fmt.Println(Config)

	return nil
}
