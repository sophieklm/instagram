require 'rails_helper'

RSpec.describe Photo, type: :model do

  it 'should have a description' do
    photo = create(:photo)
    expect(photo.description).to eq("MyText")
  end

  it{ should belong_to(:user) }
  it{ should have_many(:comments)}

end
