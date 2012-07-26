class ConfigFilesController < ApplicationController
  before_filter :authenticate_user!
  # GET /config_files
  # GET /config_files.json
  def index
    @config_files = ConfigFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @config_files }
    end
  end

  # GET /config_files/1
  # GET /config_files/1.json
  def show
    @config_file = ConfigFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @config_file }
    end
  end

  # GET /config_files/new
  # GET /config_files/new.json
  def new
    @config_file = ConfigFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @config_file }
    end
  end

  # GET /config_files/1/edit
  def edit
    @config_file = ConfigFile.find(params[:id])
  end

  # POST /config_files
  # POST /config_files.json
  def create
    @config_file = ConfigFile.new(params[:config_file])

    respond_to do |format|
      if @config_file.save
        format.html { redirect_to @config_file, :notice => 'Config file was successfully created.' }
        format.json { render :json => @config_file, :status => :created, :location => @config_file }
      else
        format.html { render :action => "new" }
        format.json { render :json => @config_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /config_files/1
  # PUT /config_files/1.json
  def update
    @config_file = ConfigFile.find(params[:id])

    respond_to do |format|
      if @config_file.update_attributes(params[:config_file])
        format.html { redirect_to @config_file, :notice => 'Config file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @config_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /config_files/1
  # DELETE /config_files/1.json
  def destroy
    @config_file = ConfigFile.find(params[:id])
    @config_file.destroy

    respond_to do |format|
      format.html { redirect_to config_files_url }
      format.json { head :no_content }
    end
  end
end
