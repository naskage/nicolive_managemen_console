require 'rails_helper'

RSpec.describe "live_programs/show", type: :view do
  before(:each) do
    @live_program = assign(:live_program, LiveProgram.create!(
      :live_id => 1,
      :user => "User",
      :title => "MyText",
      :desc => "MyText",
      :url => "Url",
      :player_status => "MyText",
      :dl_status => "Dl Status",
      :flv => "Flv",
      :mp4 => "Mp4"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Dl Status/)
    expect(rendered).to match(/Flv/)
    expect(rendered).to match(/Mp4/)
  end
end
