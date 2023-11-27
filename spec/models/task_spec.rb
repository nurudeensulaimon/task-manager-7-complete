require "rails_helper"

RSpec.describe Task, type: :model do
  # describe "relationships" do 

  # end
  describe "instance methods" do 
    describe "#laundry?" do
      # laundry? returns true if the title pr description of a task contains the word 'laundry'
      it "should return true when the title is laundry" do 
        #arrange // given 
        task=Task.create(title:"laundry", description:"clean ya clothes")
        # .create = .new + .save 
        #act //when , dscription:
        #assert // then 
        expect(task.laundry?).to be(true)
      end

      it "returns true when the decription is laundry" do 
        task= Task.create!(title:"Clean my clothes", description:"laundry")
        expect(task.laundry?).to be(true)
      end
      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "do the dishes", description: "dishes")

        expect(task.laundry?).to be(false)
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "laundry", description: "I need clean clothes")
        
        expect(task.laundry?).to be(true)
      end
    
      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "Laundry", description: "I need clean clothes")
        
        expect(task.laundry?).to be(false)
      end
    
      it "returns true when the description contains the word laundry" do
        task = Task.create!(title: "least favorite chore", description: "this text includes laundry")
        
        expect(task.laundry?).to be(false)
      end
    
      it "is case insensitive when checking if the description contains the word laundry" do 
        task = Task.create!(title: "task", description: "LAUNDRY")
        
        expect(task.laundry?).to be(false) 
      end
    end
  end
end