require 'rails_helper'

RSpec.describe "uploads/edit", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :live_id => 1,
      :src => "MyString",
      :dst => "MyString",
      :status => 1
    ))
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do

      assert_select "input#upload_live_id[name=?]", "upload[live_id]"

      assert_select "input#upload_src[name=?]", "upload[src]"

      assert_select "input#upload_dst[name=?]", "upload[dst]"

      assert_select "input#upload_status[name=?]", "upload[status]"
    end
  end
end
