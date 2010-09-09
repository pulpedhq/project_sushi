class CritRequirementsController < ApplicationController
  # GET /crit_requirements
  # GET /crit_requirements.xml
  def index
    @crit_requirements = CritRequirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crit_requirements }
    end
  end

  # GET /crit_requirements/1
  # GET /crit_requirements/1.xml
  def show
    @crit_requirement = CritRequirement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crit_requirement }
    end
  end

  # GET /crit_requirements/new
  # GET /crit_requirements/new.xml
  def new
    @crit_requirement = CritRequirement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crit_requirement }
    end
  end

  # GET /crit_requirements/1/edit
  def edit
    @crit_requirement = CritRequirement.find(params[:id])
  end

  # POST /crit_requirements
  # POST /crit_requirements.xml
  def create
    @crit_requirement = CritRequirement.new(params[:crit_requirement])

    respond_to do |format|
      if @crit_requirement.save
        format.html { redirect_to(@crit_requirement, :notice => 'Crit requirement was successfully created.') }
        format.xml  { render :xml => @crit_requirement, :status => :created, :location => @crit_requirement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crit_requirement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crit_requirements/1
  # PUT /crit_requirements/1.xml
  def update
    @crit_requirement = CritRequirement.find(params[:id])

    respond_to do |format|
      if @crit_requirement.update_attributes(params[:crit_requirement])
        format.html { redirect_to(@crit_requirement, :notice => 'Crit requirement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crit_requirement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crit_requirements/1
  # DELETE /crit_requirements/1.xml
  def destroy
    @crit_requirement = CritRequirement.find(params[:id])
    @crit_requirement.destroy

    respond_to do |format|
      format.html { redirect_to(crit_requirements_url) }
      format.xml  { head :ok }
    end
  end
end
