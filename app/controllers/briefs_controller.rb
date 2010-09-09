class BriefsController < ApplicationController
  # GET /briefs
  # GET /briefs.xml
  def index
    @briefs = Brief.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @briefs }
    end
  end

  # GET /briefs/1
  # GET /briefs/1.xml
  def show
    @brief = Brief.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brief }
    end
  end

  # GET /briefs/new
  # GET /briefs/new.xml
  def new
    @brief = Brief.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brief }
    end
  end

  # GET /briefs/1/edit
  def edit
    @brief = Brief.find(params[:id])
  end

  # POST /briefs
  # POST /briefs.xml
  def create
    @brief = Brief.new(params[:brief])

    respond_to do |format|
      if @brief.save
        format.html { redirect_to(@brief, :notice => 'Brief was successfully created.') }
        format.xml  { render :xml => @brief, :status => :created, :location => @brief }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @brief.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /briefs/1
  # PUT /briefs/1.xml
  def update
    @brief = Brief.find(params[:id])

    respond_to do |format|
      if @brief.update_attributes(params[:brief])
        format.html { redirect_to(@brief, :notice => 'Brief was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brief.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /briefs/1
  # DELETE /briefs/1.xml
  def destroy
    @brief = Brief.find(params[:id])
    @brief.destroy

    respond_to do |format|
      format.html { redirect_to(briefs_url) }
      format.xml  { head :ok }
    end
  end
end
