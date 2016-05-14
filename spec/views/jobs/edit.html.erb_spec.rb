require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :live_id => 1,
      :divided => false,
      :division_num => 1,
      :status => 1
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_live_id[name=?]", "job[live_id]"

      assert_select "input#job_divided[name=?]", "job[divided]"

      assert_select "input#job_division_num[name=?]", "job[division_num]"

      assert_select "input#job_status[name=?]", "job[status]"
    end
  end
end
