class BetraegesController < ApplicationController
  # GET /betraeges
  # GET /betraeges.json
  def index
    @betraeges = Betraege.all
    @total = 0
    Betraege.all.each do |b|
    @total = @total + b.betrag
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @betraeges }
      format.json { render :json => @total }
    end
  end

  # GET /betraeges/1
  # GET /betraeges/1.json
  def show
    @betraege = Betraege.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @betraege }
    end
  end

  # GET /betraeges/new
  # GET /betraeges/new.json
  def new
    @betraege = Betraege.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @betraege }
    end
  end

  # GET /betraeges/1/edit
  def edit
    @betraege = Betraege.find(params[:id])
  end

  # POST /betraeges
  # POST /betraeges.json
  def create
    @betraege = Betraege.new(params[:betraege])

    respond_to do |format|
      if @betraege.save
        format.html { redirect_to @betraege, :notice => 'Betraege was successfully created.' }
        format.json { render :json => @betraege, :status => :created, :location => @betraege }
      else
        format.html { render :action => "new" }
        format.json { render :json => @betraege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /betraeges/1
  # PUT /betraeges/1.json
  def update
    @betraege = Betraege.find(params[:id])

    respond_to do |format|
      if @betraege.update_attributes(params[:betraege])
        format.html { redirect_to @betraege, :notice => 'Betraege was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @betraege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /betraeges/1
  # DELETE /betraeges/1.json
  def destroy
    @betraege = Betraege.find(params[:id])
    @betraege.destroy

    respond_to do |format|
      format.html { redirect_to betraeges_url }
      format.json { head :no_content }
    end
  end


 def showAll
    @betraeges = Betraege.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @betraeges }
    end
  end
end
