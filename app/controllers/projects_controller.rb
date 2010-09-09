class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.xml
  def index
    @user_id = current_user.id
    @pagetitle = "Welcome to Architastic!"
    @projects = Project.where(:user_id => @user_id)
    @quantity = @projects.size.to_i
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:message] = "Project successfully created."
      @last_project = Project.order("created_at desc").limit(1).where(:user_id => current_user.id)
      @projects = Project.where(:user_id => current_user.id)
      @quantity = @projects.size.to_i   
    else
      @errors = @project.errors
      render :action => "index"
    end
  end
  
  # GET /projects/1
  # GET /projects/1.xml
  def show
  @project = Project.find(params[:id])
  @tasks = @project.tasks
  @quantity = @tasks.size.to_i
  respond_to do |format|
    format.html # show.html.erb
    format.xml  { render :xml => @project }
  end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(@project, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:message] = "Project successfully deleted."
    @projects = Project.where(:user_id => current_user.id)
    @quantity = @projects.size.to_i   
  end
end
