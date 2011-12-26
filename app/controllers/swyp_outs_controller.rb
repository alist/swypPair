class SwypOutsController < ApplicationController
  # GET /swyp_outs
  # GET /swyp_outs.json
  def index
    @swyp_outs = SwypOut.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @swyp_outs }
    end
  end

  # GET /swyp_outs/1
  # GET /swyp_outs/1.json
  def show
    @swyp_out = SwypOut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @swyp_out }
    end
  end

  # GET /swyp_outs/new
  # GET /swyp_outs/new.json
  def new
    @swyp_out = SwypOut.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @swyp_out }
    end
  end

  # GET /swyp_outs/1/edit
  def edit
    @swyp_out = SwypOut.find(params[:id])
  end

  # POST /swyp_outs
  # POST /swyp_outs.json
  def create
    @swyp_out = SwypOut.new(params[:swyp_out])

    respond_to do |format|
      if @swyp_out.save
		  format.html { render json: @swyp_out, status: :created, location: @swyp_out }
		  # { redirect_to @swyp_out, notice: 'Swyp out was successfully created.' }
        format.json { render json: @swyp_out, status: :created, location: @swyp_out }
      else
        format.html { render action: "new" }
        format.json { render json: @swyp_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /swyp_outs/1
  # PUT /swyp_outs/1.json
  def update
    @swyp_out = SwypOut.find(params[:id])

    respond_to do |format|
      if @swyp_out.update_attributes(params[:swyp_out])
        format.html { redirect_to @swyp_out, notice: 'Swyp out was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @swyp_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swyp_outs/1
  # DELETE /swyp_outs/1.json
  def destroy
    @swyp_out = SwypOut.find(params[:id])
    @swyp_out.destroy

    respond_to do |format|
      format.html { redirect_to swyp_outs_url }
      format.json { head :ok }
    end
  end
end
