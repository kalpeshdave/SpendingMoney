class BillFriendsController < ApplicationController
  # GET /bill_friends
  # GET /bill_friends.json
  def index
    @bill_friends = BillFriend.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_friends }
    end
  end

  # GET /bill_friends/1
  # GET /bill_friends/1.json
  def show
    @bill_friend = BillFriend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_friend }
    end
  end

  # GET /bill_friends/new
  # GET /bill_friends/new.json
  def new
    @bill = Bill.find(params[:bill_id])
    @bill_friend = BillFriend.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_friend }
    end
  end

  # GET /bill_friends/1/edit
  def edit
    @bill_friend = BillFriend.find(params[:id])
  end

  # POST /bill_friends
  # POST /bill_friends.json
  def create
    @bill_friend = BillFriend.new(params[:bill_friend])

    respond_to do |format|
      if @bill_friend.save
        format.html { redirect_to bill_path(@bill_friend.bill), notice: 'Bill friend was successfully created.' }
        format.json { render json: @bill_friend, status: :created, location: @bill_friend }
      else
        format.html { redirect_to new_bill_bill_friend_path(@bill_friend.bill) }
        format.json { render json: @bill_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_friends/1
  # PUT /bill_friends/1.json
  def update
    @bill_friend = BillFriend.find(params[:id])

    respond_to do |format|
      if @bill_friend.update_attributes(params[:bill_friend])
        format.html { redirect_to @bill_friend, notice: 'Bill friend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_friends/1
  # DELETE /bill_friends/1.json
  def destroy
    @bill_friend = BillFriend.find(params[:id])
    @bill_friend.destroy

    respond_to do |format|
      format.html { redirect_to bill_friends_url }
      format.json { head :no_content }
    end
  end
end
