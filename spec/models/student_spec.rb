require 'spec_helper'

describe Student do
  describe ".new" do
    it "makes a new instance of Student" do
      student = Student.new
      expect(student).to be_an_instance_of(Student)
    end
  end
  describe ".create" do
    it "has an id" do
      student = Student.create
      expect(student.id).to_not be nil
    end
    it "has a name" do
      student = Student.create(name:"Jane")
      expect(student.name).to eq "Jane"
    end
    it "has and belongs to many Assignment" do
      student = Student.create
      expect(student.assignments).to eq []
    end
  end
end
