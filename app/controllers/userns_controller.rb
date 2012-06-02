class UsernsController < ApplicationController
  # GET /userns
  # GET /userns.json
  def index
    @userns = Usern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userns }
    end
  end

  # GET /userns/1
  # GET /userns/1.json
  def show
    @usern = Usern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usern }
    end
  end

  # GET /userns/new
  # GET /userns/new.json
  def new
    @usern = Usern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usern }
    end
  end

  # GET /userns/1/edit
  def edit
    @usern = Usern.find(params[:id])
  end

  # POST /userns
  # POST /userns.json
  def create
    @usern = Usern.new(params[:usern])

    respond_to do |format|
      if @usern.save
        format.html { redirect_to @usern, notice: 'Usern was successfully created.' }
        format.json { render json: @usern, status: :created, location: @usern }
      else
        format.html { render action: "new" }
        format.json { render json: @usern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userns/1
  # PUT /userns/1.json
  def update
    @usern = Usern.find(params[:id])

    respond_to do |format|
      if @usern.update_attributes(params[:usern])
        format.html { redirect_to @usern, notice: 'Usern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userns/1
  # DELETE /userns/1.json
  def destroy
    @usern = Usern.find(params[:id])
    @usern.destroy

    respond_to do |format|
      format.html { redirect_to userns_url }
      format.json { head :no_content }
    end
  end
end
