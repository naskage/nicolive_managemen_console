require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        :live_id => 1,
        :src => "Src",
        :dst => "Dst",
        :status => 2
      ),
      Upload.create!(
        :live_id => 1,
        :src => "Src",
        :dst => "Dst",
        :status => 2
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Src".to_s, :count => 2
    assert_select "tr>td", :text => "Dst".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
