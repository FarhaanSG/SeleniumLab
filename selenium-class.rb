require "selenium-webdriver"

class SeleniumQAToolsForm

  PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form/"
  FIRST_NAME_FIELD_NAME = "firstname"
  LAST_NAME_FIELD_NAME = "lastname"
  # GENDER_FIELD_ID = "sex"
  MALE_GENDER_FIELD_ID = "sex-0"
  EXPERIENCE_FIELD_4_YEARS_ID = "exp-3"
  DATE_FIELD_ID = "datepicker"
  PROFESSION_FIELD_AUTOMATION_ID = "profession-1"
  AUTOMATION_TOOL_FIELD_ID = "tool-1"
  CONTINENTS_DROPDOWN_ID = "continents"
  SELENIUM_COMMAND_ID = "selenium_commands"
  SUBMIT_BUTTON_ID = "submit"


  def initialize
    @chrome_driver = Selenium::WebDriver.for(:chrome) #this creates the chrome driver
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  #FIRST NAME
  def find_first_name_field
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)
  end

  def fill_in_first_name_field(first_name)
    find_first_name_field.send_keys(first_name)
  end

  def get_first_name_field_value(first_name)
    fill_in_first_name_field(first_name)
    if find_first_name_field["value"] == first_name
      return true
    end
    return false
  end

  #LAST NAME
  def find_last_name_field
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)
  end

  def fill_in_last_name_field(last_name)
    find_last_name_field.send_keys(last_name)
  end

  def get_last_name_field_value(last_name)
    fill_in_last_name_field(last_name)
    if find_last_name_field["value"] == last_name
      return true
    end
    return false
  end

  #GENDER
  def find_gender_field
    @chrome_driver.find_element(:id, MALE_GENDER_FIELD_ID)
  end

  def select_gender_field
    find_gender_field.click
    if find_gender_field.selected?
      return true
    end
    return false
  end

  # def get_gender_field_value
  #   if find_gender_field.selected?
  #     return true
  #   end
  #   return false
  # end

  #EXPERIENCE
  def find_experience_field
    @chrome_driver.find_element(:id, EXPERIENCE_FIELD_4_YEARS_ID)
  end

  def select_experience_field
    find_experience_field.click
    if find_experience_field.selected?
      return true
    end
    return false
  end

  # def get_experience_field_value
  #   if find_experience_field.selected?
  #     return true
  #   end
  #   return false
  # end

  #DATE
  def find_date_field
    @chrome_driver.find_element(:id, DATE_FIELD_ID)
  end

  def fill_in_date_field(date)
    find_date_field.send_keys(date)
  end

  def get_date_field_value(date)
    fill_in_date_field(date)
    if find_date_field["value"] == date
      return true
    end
    return false
  end

  # PROFESSION
  def find_profession_field
    @chrome_driver.find_element(:id, PROFESSION_FIELD_AUTOMATION_ID)
  end

  def select_profession_field
    find_profession_field.click
    if find_profession_field.selected?
      return true
    end
    return false
  end

  # def get_profession_field_value
  #   if find_profession_field.selected?
  #     return true
  #   end
  #   return false
  # end

  #TESTING
  def find_automation_tool_field
    @chrome_driver.find_element(:id, AUTOMATION_TOOL_FIELD_ID)
  end

  def select_automation_tool_field
    find_automation_tool_field.click
    if find_automation_tool_field.selected?
      return true
    end
    return false
  end

  # def get_automation_tool_field_value
  #   if find_automation_tool_field.selected?
  #     return true
  #   end
  #   return false
  # end

  #CONTINENTS
  def find_continents_field
    @chrome_driver.find_element(:id, CONTINENTS_DROPDOWN_ID)
  end

  def check_continents_default_field
    if find_continents_field.text.include?("Asia")
      return true
    end
    return false
  end

  def select_continents_field
    Selenium::WebDriver::Support::Select.new(find_continents_field).select_by(:text, "Europe")
    if find_continents_field.selected?
      return true
    end
    return false
  end

  #SELENIUM COMMANDS
  def find_selenium_commands_field
    @chrome_driver.find_element(:id, SELENIUM_COMMAND_ID)
  end

  def select_selenium_commands_field
    Selenium::WebDriver::Support::Select.new(find_selenium_commands_field).select_by(:text, "Wait Commands")
    if find_selenium_commands_field.selected?
      return true
    end
    return false
  end

  #SUBMIT BUTTON
  def find_submit_button
    @chrome_driver.find_element(:id, SUBMIT_BUTTON_ID)
  end

  def check_submit_button
    find_submit_button.click
  end

sleep 6

end


# practice_form = SeleniumQAToolsForm.new
# practice_form.visit_practice_form
#
# practice_form.fill_in_first_name_field("Farhaan")
# puts practice_form.get_first_name_field_value
#
# practice_form.fill_in_last_name_field("Ahmed")
# puts practice_form.get_last_name_field_value
#
# practice_form.select_gender_field
# puts practice_form.get_gender_field_value
#
# practice_form.select_experience_field
# puts practice_form.get_experience_field_value
#
# practice_form.fill_in_date_field("10/10/2018")
# puts practice_form.get_date_field_value
#
# practice_form.select_profession_field
# puts practice_form.get_profession_field_value
#
# practice_form.select_automation_tool_field
# puts practice_form.get_automation_tool_field_value
sleep 6
