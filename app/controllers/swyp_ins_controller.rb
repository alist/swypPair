class SwypInsController < ApplicationController
  # GET /swyp_ins
  # GET /swyp_ins.json
  def index
    @swyp_ins = SwypIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @swyp_ins }
    end
  end

  # GET /swyp_ins/1
  # GET /swyp_ins/1.json
  def show
    @swyp_in = SwypIn.find(params[:id])
	@swyp_peer	= @swyp_in.swypOut

	if request.env['HTTP_USER_AGENT']['Chrome'] == nil && request.env['HTTP_USER_AGENT']['Safari'] != nil
	  #test user on safari should see visual console
	  render
	else
	  #all others should just get json
	  @swyp = @swyp_in
	  render 'shared/status.json'
	end

  end

  # GET /swyp_ins/new
  # GET /swyp_ins/new.json
  def new
    @swyp_in = SwypIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @swyp_in }
    end
  end

  # GET /swyp_ins/1/edit
  def edit
    @swyp_in = SwypIn.find(params[:id])
  end

  # POST /swyp_ins
  # POST /swyp_ins.json
	def create
		@swyp_in			= SwypIn.new(params[:swyp_in])
		@swyp_in.address	= request.remote_ip
		@swyp_peer			= @swyp_in.pair
		
		if @swyp_in.save	
			@swyp = @swyp_in
			render 'shared/status.json'
			else
			format.json { render json: @swyp_in.errors, status: :unprocessable_entity }
		end
		
	end

  # PUT /swyp_ins/1
  # PUT /swyp_ins/1.json
  def update
    @swyp_in = SwypIn.find(params[:id])

    respond_to do |format|
      if @swyp_in.update_attributes(params[:swyp_in])
        format.html { redirect_to @swyp_in, notice: 'Swyp in was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @swyp_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swyp_ins/1
  # DELETE /swyp_ins/1.json
  def destroy
    @swyp_in = SwypIn.find(params[:id])
    @swyp_in.destroy

    respond_to do |format|
      format.html { redirect_to swyp_ins_url }
      format.json { head :ok }
    end
  end
end
