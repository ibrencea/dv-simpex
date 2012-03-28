class ItpsController < ApplicationController
  # GET /itps
  # GET /itps.json
  def index    
    @itps = Itp.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itps }
    end
  end

  # GET /itps/1
  # GET /itps/1.json
  def show
    @itp = Itp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itp }
    end
  end

  # GET /itps/new
  # GET /itps/new.json
  def new
    @itp = Itp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @itp }
    end
  end

  # GET /itps/1/edit
  def edit
    @itp = Itp.find(params[:id])
  end

  # POST /itps
  # POST /itps.json
  def create
    @itp = Itp.new(params[:itp])

    respond_to do |format|
      if @itp.save
        format.html { redirect_to @itp, notice: 'Itp was successfully created.' }
        format.json { render json: @itp, status: :created, location: @itp }
      else
        format.html { render action: "new" }
        format.json { render json: @itp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itps/1
  # PUT /itps/1.json
  def update
    @itp = Itp.find(params[:id])

    respond_to do |format|
      if @itp.update_attributes(params[:itp])
        format.html { redirect_to @itp, notice: 'Itp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @itp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itps/1
  # DELETE /itps/1.json
  def destroy
    @itp = Itp.find(params[:id])
    @itp.destroy

    respond_to do |format|
      format.html { redirect_to itps_url }
      format.json { head :no_content }
    end
  end
end
