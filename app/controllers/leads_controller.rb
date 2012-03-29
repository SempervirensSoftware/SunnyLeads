class LeadsController < ApplicationController
  # GET /leads
  # GET /leads.xml
    
  def index
    @leads = Lead.all
    @foo = foo
    #foofiifffffhubcdf

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leads }

    end
  end
  
  

  # here's the alpha2
  # GET /leads/1
  # GET /leads/1.xml
  def show
    @lead = Lead.find(params[:id])

    respond_to do |format|
    f
      format.html # show.html.erb
      format.xml  { render :xml => @lead }
    end
  end

  # GET /leads/new
  # GET /leads/new.xml
  def new
    @lead = Lead.new


    respond_to do |format|
      1 + 1
      format.html # new.html.erb
      format.xml  { render :xml => @lead }
    end
  end

  # GET /leads/1/edit
  def edit
    @lead = Lead.find(params[:id])
  end

  # POST /leads
  # POST /leads.xml
  def create
    @lead = Lead.new(params[:lead])
#hello
    respond_to do |format|
      if @lead.save
        format.html { redirect_to(@lead, :notice => 'Lead was successfully created.') }
        format.xml  { render :xml => @lead, :status => :created, :location => @lead }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leads/1
  # PUT /leads/1.xml
  def update
    @lead = Lead.find(params[:id])

    respond_to do |format|
      if @lead.update_attributes(params[:lead])
        format.html { redirect_to(@lead, :notice => 'Lead was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lead.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.xml
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy

    respond_to do |format|
      format.html { redirect_to(leads_url) }
      format.xml  { head :ok }
    end
  end
end
