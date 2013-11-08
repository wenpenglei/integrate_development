class IntegrateDevelopmentsController < ApplicationController
  # GET /integrate_developments
  # GET /integrate_developments.json
  def index

    if params[:tag]
      @integrate_developments = IntegrateDevelopment.tagged_with(params[:tag]).page(params[:page]).per(5)

    else
      @integrate_developments = IntegrateDevelopment.page(params[:page]).per(5)
    end
  end

  # GET /integrate_developments/1
  # GET /integrate_developments/1.json
  def show
    @integrate_development = IntegrateDevelopment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @integrate_development }
    end
  end

  # GET /integrate_developments/new
  # GET /integrate_developments/new.json
  def new
    @integrate_development = IntegrateDevelopment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @integrate_development }
    end
  end

  # GET /integrate_developments/1/edit
  def edit
    @integrate_development = IntegrateDevelopment.find(params[:id])
  end

  # POST /integrate_developments
  # POST /integrate_developments.json
  def create
    @integrate_development = IntegrateDevelopment.new(params[:integrate_development])

    respond_to do |format|
      if @integrate_development.save
        format.html { redirect_to @integrate_development, notice: 'Integrate development was successfully created.' }
        format.json { render json: @integrate_development, status: :created, location: @integrate_development }
      else
        format.html { render action: "new" }
        format.json { render json: @integrate_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /integrate_developments/1
  # PUT /integrate_developments/1.json
  def update
    @integrate_development = IntegrateDevelopment.find(params[:id])

    respond_to do |format|
      if @integrate_development.update_attributes(params[:integrate_development])
        format.html { redirect_to @integrate_development, notice: 'Integrate development was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @integrate_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrate_developments/1
  # DELETE /integrate_developments/1.json
  def destroy
    @integrate_development = IntegrateDevelopment.find(params[:id])
    @integrate_development.destroy

    respond_to do |format|
      format.html { redirect_to integrate_developments_url }
      format.json { head :no_content }
    end
  end
end
