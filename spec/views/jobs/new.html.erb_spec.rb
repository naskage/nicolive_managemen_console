require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :live_id => 1,
      :divided => false,
      :division_num => 1,
      :status => 1
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_live_id[name=?]", "job[live_id]"

      assert_select "input#job_divided[name=?]", "job[divided]"

      assert_select "input#job_division_num[name=?]", "job[division_num]"

      assert_select "input#job_status[name=?]", "job[status]"
    end
  end
end
