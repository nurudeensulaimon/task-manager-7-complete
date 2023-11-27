require "rails_helper"

RSpec.describe Task, type: :model do
  # describe "relationships" do 

  # end
  describe "instance methods" do 
    describe "#laundry?" do
      # laundry? returns true if the title pr description of a task contains the word 'laundry'
      it "should return true when the title is laundry" do 
        #arrange // given 
        #task.Create("title": true, "description")
        task=Task.create(title:"laundry", description:"clean ya clothes")
        # .create = .new + .save 
        #act //when , dscription:
        #assert // then 
        #expect(title).to have_content(true)
        expect(task.laundry?).to be(true)
      end
    end
  end
end