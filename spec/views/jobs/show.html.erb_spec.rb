require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :live_id => 1,
      :divided => false,
      :division_num => 2,
      :status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
