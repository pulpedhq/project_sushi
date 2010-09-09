class TasksController < ApplicationController

  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      #format.xml  { render :xml => @tasks }
    end
  end

  def show
    @task = Task.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      #format.xml  { render :xml => @task }
    end
  end


  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      #format.xml  { render :xml => @task }
    end
  end


  def edit
    @task = Task.find(params[:id])
  end


  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:message] = "Task successfully created."
      @last_task = Task.order("created_at desc").limit(1).where(:project_id => @task.project.id)
      @tasks = Task.where(:project_id => @task.project.id)
      @quantity = @tasks.size.to_i   
    else
      @errors = @task.errors
      render :action => "index"
    end
  end

  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to(@task, :notice => 'Task was successfully updated.') }
        #format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        #format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:message] = "Task successfully deleted."
    @tasks = Task.where(:project_id => @task.project.id)
    @quantity = @tasks.size.to_i   
  end
end
