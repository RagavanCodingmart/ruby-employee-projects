class AssignedProjectsController < ApplicationController
  before_action :set_assigned_project, only: %i[ show edit update destroy ]

  # GET /assigned_projects or /assigned_projects.json
  def index
    @assigned_projects = AssignedProject.all
  end

  # GET /assigned_projects/1 or /assigned_projects/1.json
  def show
  end

  # GET /assigned_projects/new
  def new
    @assigned_project = AssignedProject.new
  end

  # GET /assigned_projects/1/edit
  def edit
  end

  # POST /assigned_projects or /assigned_projects.json
  def create
    @assigned_project = AssignedProject.new(assigned_project_params)

    respond_to do |format|
      if @assigned_project.save
        format.html { redirect_to @assigned_project, notice: "Assigned project was successfully created." }
        format.json { render :show, status: :created, location: @assigned_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assigned_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_projects/1 or /assigned_projects/1.json
  def update
    respond_to do |format|
      if @assigned_project.update(assigned_project_params)
        format.html { redirect_to @assigned_project, notice: "Assigned project was successfully updated." }
        format.json { render :show, status: :ok, location: @assigned_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assigned_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_projects/1 or /assigned_projects/1.json
  def destroy
    @assigned_project.destroy
    respond_to do |format|
      format.html { redirect_to assigned_projects_url, notice: "Assigned project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_project
      @assigned_project = AssignedProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assigned_project_params
      params.require(:assigned_project).permit(:employee_id, :project_id)
    end
end
