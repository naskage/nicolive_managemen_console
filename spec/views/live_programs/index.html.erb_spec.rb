require 'rails_helper'

RSpec.describe "live_programs/index", type: :view do
  before(:each) do
    assign(:live_programs, [
      LiveProgram.create!(
        :live_id => 1,
        :user => "User",
        :title => "MyText",
        :desc => "MyText",
        :url => "Url",
        :player_status => "MyText",
        :dl_status => "Dl Status",
        :flv => "Flv",
        :mp4 => "Mp4"
      ),
      LiveProgram.create!(
        :live_id => 1,
        :user => "User",
        :title => "MyText",
        :desc => "MyText",
        :url => "Url",
        :player_status => "MyText",
        :dl_status => "Dl Status",
        :flv => "Flv",
        :mp4 => "Mp4"
      )
    ])
  end

  it "renders a list of live_programs" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Dl Status".to_s, :count => 2
    assert_select "tr>td", :text => "Flv".to_s, :count => 2
    assert_select "tr>td", :text => "Mp4".to_s, :count => 2
  end
end
