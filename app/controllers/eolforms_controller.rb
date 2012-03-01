class EolformsController < ApplicationController
  # GET /eolforms
  # GET /eolforms.json
  before_filter :authenticate_user!
  
  def index
    @eolforms = Eolform.where("user_id = ?", current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eolforms }
    end
  end

  # GET /eolforms/1
  # GET /eolforms/1.json
  def show
    @eolform = Eolform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eolform }
    end
  end

  # GET /eolforms/new
  # GET /eolforms/new.json
  def new
    @eolform = Eolform.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eolform }
    end
  end

  # GET /eolforms/1/edit
  def edit
    @eolform = Eolform.find(params[:id])
  end

  # POST /eolforms
  # POST /eolforms.json
  def create
    @eolform = Eolform.new(params[:eolform])
    # Add the current user's id to to the form before saving it to the database
    @eolform.user_id = current_user.id
    respond_to do |format|
      if @eolform.save
        format.html { redirect_to @eolform, notice: 'Eolform was successfully created.' }
        format.json { render json: @eolform, status: :created, location: @eolform }
      else
        format.html { render action: "new" }
        format.json { render json: @eolform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eolforms/1
  # PUT /eolforms/1.json
  def update
    @eolform = Eolform.find(params[:id])

    respond_to do |format|
      if @eolform.update_attributes(params[:eolform])
        format.html { redirect_to @eolform, notice: 'Eolform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eolform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eolforms/1
  # DELETE /eolforms/1.json
  def destroy
    @eolform = Eolform.find(params[:id])
    @eolform.destroy

    respond_to do |format|
      format.html { redirect_to eolforms_url }
      format.json { head :no_content }
    end
  end
end
