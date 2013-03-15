require 'spec_helper'

describe "Students" do
  describe "GET /students" do
    it "has a button to add students" do
      visit students_path
      page.should have_link("Add New Student")
    end
  end

  describe "GET /students/new" do
    it "shows the new student form", :js => true do
      visit students_path
      click_link("Add New Student")
      page.should have_button("Create Student")
    end

    it "hides when cancel button is pressed", :js => true do
      visit students_path
      click_link("Add New Student")
      click_button("Cancel")
      page.should_not have_button("Create Student")
    end
  end

  describe "POST /students" do
    it "creates a new student", :js => true do
      visit students_path
      click_link("Add New Student")
      fill_in("student_name", :with => "bob")
      click_button("Create Student")
      page.should_not have_button("Create Student")
      page.should have_text("bob")
      expect(Student.first.name).to eq "bob"
    end
  end
end