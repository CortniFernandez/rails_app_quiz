class JobsController < ApplicationController
  def create
    @job = Job.new(job_params)
    if @job.save
      render 'jobs/create'
    end
  end

  def index
    @jobs = Jobs.all
    render 'jobs/index'
  end

  def show
    @job = Job.find_by(id: params[:id])
    render 'jobs/show'
  end
end