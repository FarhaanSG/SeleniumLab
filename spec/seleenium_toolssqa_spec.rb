require 'spec_helper'

describe 'testing the toolsqa page' do

  before(:all) do
    @driver = SeleniumQAToolsForm.new
    @driver.visit_practice_form
  end

  context 'positive paths for the registration form and register' do

    it 'should accept a first name' do
      expect(@driver.get_first_name_field_value("Farhaan")).to eq(true)
    end

    it 'should accept a last name' do
      expect(@driver.get_last_name_field_value("Ahmed")).to eq(true)
    end

    it 'should accept a gender field' do
      expect(@driver.select_gender_field).to eq(true)
    end

    it 'should accept a experience field' do
      expect(@driver.select_experience_field).to eq(true)
    end

    it 'should accept a date field' do
      expect(@driver.get_date_field_value).to eq(true)
    end

    it 'should accept a profession field' do
      expect(@driver.select_profession_field).to eq(true)
    end

    it 'should accept a automation tool' do
      expect(@driver.select_automation_tool_field).to eq(true)
    end

    it 'should check continents drop down field default value of asia' do
      expect(@driver.check_continents_default_field).to eq(true)
    end

    it 'should accept continents drop down field' do
      expect(@driver.select_continents_field).to eq(true)
    end

    it 'should accept selenium commands field' do
      expect(@driver.select_selenium_commands_field).to eq(true)
    end
    #
    # it 'should accept a about yourself text' do
    #
    # end
    #
    # it 'should accept a password' do
    #
    # end
    #
    # it 'should accept a password confirmation' do
    #
    # end

  end

end
