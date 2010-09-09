class CritNotesController < ApplicationController
  # GET /crit_notes
  # GET /crit_notes.xml
  def index
    @crit_notes = CritNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crit_notes }
    end
  end

  # GET /crit_notes/1
  # GET /crit_notes/1.xml
  def show
    @crit_note = CritNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crit_note }
    end
  end

  # GET /crit_notes/new
  # GET /crit_notes/new.xml
  def new
    @crit_note = CritNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crit_note }
    end
  end

  # GET /crit_notes/1/edit
  def edit
    @crit_note = CritNote.find(params[:id])
  end

  # POST /crit_notes
  # POST /crit_notes.xml
  def create
    @crit_note = CritNote.new(params[:crit_note])

    respond_to do |format|
      if @crit_note.save
        format.html { redirect_to(@crit_note, :notice => 'Crit note was successfully created.') }
        format.xml  { render :xml => @crit_note, :status => :created, :location => @crit_note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crit_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crit_notes/1
  # PUT /crit_notes/1.xml
  def update
    @crit_note = CritNote.find(params[:id])

    respond_to do |format|
      if @crit_note.update_attributes(params[:crit_note])
        format.html { redirect_to(@crit_note, :notice => 'Crit note was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crit_note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crit_notes/1
  # DELETE /crit_notes/1.xml
  def destroy
    @crit_note = CritNote.find(params[:id])
    @crit_note.destroy

    respond_to do |format|
      format.html { redirect_to(crit_notes_url) }
      format.xml  { head :ok }
    end
  end
end
