require 'rails_helper'

RSpec.describe "uploads/show", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :live_id => 1,
      :src => "Src",
      :dst => "Dst",
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Src/)
    expect(rendered).to match(/Dst/)
    expect(rendered).to match(/2/)
  end
end
