require 'rails_helper'

RSpec.describe "uploads/new", type: :view do
  before(:each) do
    assign(:upload, Upload.new(
      :live_id => 1,
      :src => "MyString",
      :dst => "MyString",
      :status => 1
    ))
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do

      assert_select "input#upload_live_id[name=?]", "upload[live_id]"

      assert_select "input#upload_src[name=?]", "upload[src]"

      assert_select "input#upload_dst[name=?]", "upload[dst]"

      assert_select "input#upload_status[name=?]", "upload[status]"
    end
  end
end
