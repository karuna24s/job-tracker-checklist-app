class JobsController < ApplicationController

  def index
    jobs = Job.all
    render json: jobs
  end

  def show
    job = Job.find(params[:id])
    render json: job
  end

  def create
    job = Job.new(job_params)
    if job.save
      render json: { success: job, status: "success"}
    else
      render json: { errors: job.errors.full_messages,
                     status: "error" }
    end
  end

  def update
    job = Job.find(params[:id])
    if job.save(job_params)
      render json: { success: job, status: "success"}
    else
      render json: { errors: job.errors.full_messages,
                    status: "error" }
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
  end

  private

  def job_params
    params.require(:job).permit(:job_title, :job_description, :company_url, :date, :status,
     :point_of_contact, :job_reference, :tech_stack)
  end


end
