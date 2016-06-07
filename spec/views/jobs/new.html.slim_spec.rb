require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :title => "MyString",
      :description => "MyText",
      :employer => nil,
      :wage => 1
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_employer_id[name=?]", "job[employer_id]"

      assert_select "input#job_wage[name=?]", "job[wage]"
    end
  end
end
