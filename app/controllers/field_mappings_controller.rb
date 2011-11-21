class FieldMappingsController < ApplicationController
  # GET /field_mappings
  # GET /field_mappings.xml
  def index
    @field_mappings = FieldMapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @field_mappings }
    end
  end

  # GET /field_mappings/1
  # GET /field_mappings/1.xml
  def show
    @field_mapping = FieldMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @field_mapping }
    end
  end

  # GET /field_mappings/new
  # GET /field_mappings/new.xml
  def new
    @field_mapping = FieldMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @field_mapping }
    end
  end

  # GET /field_mappings/1/edit
  def edit
    @field_mapping = FieldMapping.find(params[:id])
  end

  # POST /field_mappings
  # POST /field_mappings.xml
  def create
    @field_mapping = FieldMapping.new(params[:field_mapping])

    respond_to do |format|
      if @field_mapping.save
        format.html { redirect_to(@field_mapping, :notice => 'Field mapping was successfully created.') }
        format.xml  { render :xml => @field_mapping, :status => :created, :location => @field_mapping }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @field_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /field_mappings/1
  # PUT /field_mappings/1.xml
  def update
    @field_mapping = FieldMapping.find(params[:id])

    respond_to do |format|
      if @field_mapping.update_attributes(params[:field_mapping])
        format.html { redirect_to(@field_mapping, :notice => 'Field mapping was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @field_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /field_mappings/1
  # DELETE /field_mappings/1.xml
  def destroy
    @field_mapping = FieldMapping.find(params[:id])
    @field_mapping.destroy

    respond_to do |format|
      format.html { redirect_to(field_mappings_url) }
      format.xml  { head :ok }
    end
  end
end
