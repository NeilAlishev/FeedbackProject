require "rails_helper"
require "shoulda-matchers"

RSpec.describe Feedback, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:text) }
end
