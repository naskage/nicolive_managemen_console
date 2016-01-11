require 'rails_helper'

RSpec.describe "live_programs/new", type: :view do
  before(:each) do
    assign(:live_program, LiveProgram.new(
      :live_id => 1,
      :user => "MyString",
      :title => "MyText",
      :desc => "MyText",
      :url => "MyString",
      :player_status => "MyText",
      :dl_status => "MyString",
      :flv => "MyString",
      :mp4 => "MyString"
    ))
  end

  it "renders new live_program form" do
    render

    assert_select "form[action=?][method=?]", live_programs_path, "post" do

      assert_select "input#live_program_live_id[name=?]", "live_program[live_id]"

      assert_select "input#live_program_user[name=?]", "live_program[user]"

      assert_select "textarea#live_program_title[name=?]", "live_program[title]"

      assert_select "textarea#live_program_desc[name=?]", "live_program[desc]"

      assert_select "input#live_program_url[name=?]", "live_program[url]"

      assert_select "textarea#live_program_player_status[name=?]", "live_program[player_status]"

      assert_select "input#live_program_dl_status[name=?]", "live_program[dl_status]"

      assert_select "input#live_program_flv[name=?]", "live_program[flv]"

      assert_select "input#live_program_mp4[name=?]", "live_program[mp4]"
    end
  end
end
