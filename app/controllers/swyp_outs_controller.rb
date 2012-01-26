class SwypOutsController < ApplicationController
  # GET /swyp_outs
  # GET /swyp_outs.json
  def index
    #   render :status => 400

  @swyp_outs = SwypOut.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @swyp_outs }
    end
  end

  # GET /swyp_outs/1
  # GET /swyp_outs/1.json
  def show
    @swyp_out = SwypOut.find_by_id(params[:id]) #regular find throws 404
    if @swyp_out == nil
      @swyp_out = SwypOut.where(:swypToken => params[:id]).first
    end
      
    if @swyp_out == nil
      render :text => "{\"status\":\"failed\"}" , :status => 404
      return
    end
    @swyp_peer  = @swyp_out.swypIn

    if request.env['HTTP_USER_AGENT']['Chrome'] == nil && request.env['HTTP_USER_AGENT']['Safari'] != nil
      #test user on safari should see visual console
      render
    else
      #all others should just get json
      @swyp = @swyp_out
      render 'shared/status.json'
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
    @swyp_out         = SwypOut.new(params[:swyp_out])
    @swyp_out.address = request.remote_ip

    puts params[:api_key]
    @swyp_out.developer = Developer.find_by_api_key(params[:api_key])

    if @swyp_out.save 
      @swyp = @swyp_out
      render 'shared/status.json'
    else
      format.json { render json: @swyp_out.errors, status: :unprocessable_entity }
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
