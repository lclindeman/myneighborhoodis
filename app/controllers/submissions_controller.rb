class SubmissionsController < ApplicationController


  # GET /submissions/new
  def new
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @submission = @neighborhood.submissions.build
  end


  # POST /neighborhoods
  # POST /neighborhoods.json
  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @submission = @neighborhood.submissions.build(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to @neighborhood, notice: 'Submission was successfully created.' }
        format.json { render action: 'show', status: :created, location: @submission }
      else
        format.html { render action: 'new' }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def submission_params
    params.require(:submission).permit(:submitter_name, :descriptor_attributes=>[:adjective])
  end

end  
