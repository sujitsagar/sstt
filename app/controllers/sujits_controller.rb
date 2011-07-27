class SujitsController < ApplicationController
  # GET /sujits
  # GET /sujits.xml
  def index
    @sujits = Sujit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sujits }
    end
  end

  # GET /sujits/1
  # GET /sujits/1.xml
  def show
    @sujit = Sujit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sujit }
    end
  end

  # GET /sujits/new
  # GET /sujits/new.xml
  def new
    @sujit = Sujit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sujit }
    end
  end

  # GET /sujits/1/edit
  def edit
    @sujit = Sujit.find(params[:id])
  end

  # POST /sujits
  # POST /sujits.xml
  def create
    @sujit = Sujit.new(params[:sujit])

    respond_to do |format|
      if @sujit.save
        format.html { redirect_to(@sujit, :notice => 'Sujit was successfully created.') }
        format.xml  { render :xml => @sujit, :status => :created, :location => @sujit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sujit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sujits/1
  # PUT /sujits/1.xml
  def update
    @sujit = Sujit.find(params[:id])

    respond_to do |format|
      if @sujit.update_attributes(params[:sujit])
        format.html { redirect_to(@sujit, :notice => 'Sujit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sujit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sujits/1
  # DELETE /sujits/1.xml
  def destroy
    @sujit = Sujit.find(params[:id])
    @sujit.destroy

    respond_to do |format|
      format.html { redirect_to(sujits_url) }
      format.xml  { head :ok }
    end
  end
end
