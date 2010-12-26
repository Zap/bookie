class WagersController < ApplicationController
  # GET /wagers
  # GET /wagers.xml
  def index
    @wagers = Wager.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wagers }
    end
  end

  # GET /wagers/1
  # GET /wagers/1.xml
  def show
    @wager = Wager.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wager }
    end
  end

  # GET /wagers/new
  # GET /wagers/new.xml
  def new
    @wager = Wager.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wager }
    end
  end

  # GET /wagers/1/edit
  def edit
    @wager = Wager.find(params[:id])
  end

  # POST /wagers
  # POST /wagers.xml
  def create
    @wager = Wager.new(params[:wager])

    respond_to do |format|
      if @wager.save
        format.html { redirect_to(@wager, :notice => 'Wager was successfully created.') }
        format.xml  { render :xml => @wager, :status => :created, :location => @wager }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wagers/1
  # PUT /wagers/1.xml
  def update
    @wager = Wager.find(params[:id])

    respond_to do |format|
      if @wager.update_attributes(params[:wager])
        format.html { redirect_to(@wager, :notice => 'Wager was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wager.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wagers/1
  # DELETE /wagers/1.xml
  def destroy
    @wager = Wager.find(params[:id])
    @wager.destroy

    respond_to do |format|
      format.html { redirect_to(wagers_url) }
      format.xml  { head :ok }
    end
  end
end
