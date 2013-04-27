class IdeiaController < ApplicationController
  # GET /ideia
  # GET /ideia.json
  def index
    @ideia = Ideium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ideia }
    end
  end

  # GET /ideia/1
  # GET /ideia/1.json
  def show
    @ideium = Ideium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ideium }
    end
  end

  # GET /ideia/new
  # GET /ideia/new.json
  def new
    @ideium = Ideium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ideium }
    end
  end

  # GET /ideia/1/edit
  def edit
    @ideium = Ideium.find(params[:id])
  end

  # POST /ideia
  # POST /ideia.json
  def create
    @ideium = Ideium.new(params[:ideium])

    respond_to do |format|
      if @ideium.save
        format.html { redirect_to @ideium, notice: 'Ideium was successfully created.' }
        format.json { render json: @ideium, status: :created, location: @ideium }
      else
        format.html { render action: "new" }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ideia/1
  # PUT /ideia/1.json
  def update
    @ideium = Ideium.find(params[:id])

    respond_to do |format|
      if @ideium.update_attributes(params[:ideium])
        format.html { redirect_to @ideium, notice: 'Ideium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideia/1
  # DELETE /ideia/1.json
  def destroy
    @ideium = Ideium.find(params[:id])
    @ideium.destroy

    respond_to do |format|
      format.html { redirect_to ideia_url }
      format.json { head :no_content }
    end
  end
end
