require 'spec_helper'

describe Assignment do
  describe ".new" do
    it "makes an new instance of assignment" do
      assignment = Assignment.new
      expect(assignment).to be_an_instance_of(Assignment)
    end
  end
  describe ".create" do
    it "has an id" do
      assignment = Assignment.create
      expect(assignment.id).to_not be nil
    end
    it "has a name and size" do
      assignment = Assignment.create(name:"lab1", size:4)
      expect(assignment.name).to eq "lab1"
      expect(assignment.size).to eq 4
    end
    it "has and belongs to many students" do
      assignment = Assignment.create
      expect(assignment.students).to eq []
    end
  end
end
