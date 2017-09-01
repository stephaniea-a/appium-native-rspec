# appium-native-rspec

## Objective

Creating tests in order to test the budget app

### Setup for use in appium

    def desired_capabilities
      { caps: {

          platformName: "Android",
          deviceName: "emulator-5554",
          app: "~/Downloads/protect.budgetwatch_14.apk"
        }


      }
    end
    
 ### Examples of Rspec testing
 
     it "has this id for the start menu" do
        find_elements(:id, "protect.budgetwatch:id/menu")

     end

      it "has an id to create and manage budgets" do
        find_elements(id: "protect.budgetwatch:id/menudesc")
      end
