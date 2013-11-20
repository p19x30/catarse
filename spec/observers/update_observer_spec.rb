require 'spec_helper'

describe UpdateObserver do
  describe 'after_create' do
    context "notify backers" do
      let(:project) { create(:project) }
      let(:update) { build(:update) }

      it "should satisfy expectations" do
        update.should_receive(:notify_backers)
        update.save
      end
    end
  end
end
