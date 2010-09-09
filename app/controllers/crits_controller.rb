class CritsController < ApplicationController
  # GET /crits
  # GET /crits.xml
  def index
    @crits = Crit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crits }
    end
  end

  # GET /crits/1
  # GET /crits/1.xml
  def show
    @crit = Crit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crit }
    end
  end

  # GET /crits/new
  # GET /crits/new.xml
  def new
    @crit = Crit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crit }
    end
  end

  # GET /crits/1/edit
  def edit
    @crit = Crit.find(params[:id])
  end

  # POST /crits
  # POST /crits.xml
  def create
    @crit = Crit.new(params[:crit])

    respond_to do |format|
      if @crit.save
        format.html { redirect_to(@crit, :notice => 'Crit was successfully created.') }
        format.xml  { render :xml => @crit, :status => :created, :location => @crit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crits/1
  # PUT /crits/1.xml
  def update
    @crit = Crit.find(params[:id])

    respond_to do |format|
      if @crit.update_attributes(params[:crit])
        format.html { redirect_to(@crit, :notice => 'Crit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crits/1
  # DELETE /crits/1.xml
  def destroy
    @crit = Crit.find(params[:id])
    @crit.destroy

    respond_to do |format|
      format.html { redirect_to(crits_url) }
      format.xml  { head :ok }
    end
  end
end
