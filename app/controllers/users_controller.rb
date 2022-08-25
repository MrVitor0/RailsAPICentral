class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # GET /search
  def search
  end

   # GET /find?q=X
  def find
    @q = params[:q].downcase
    @users = User.where("LOWER(char_name) LIKE '%#{@q}%'")

    render :find
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    #verificar se o e-mail já existe no banco de dados
    if User.exists?(:char_email => @user.char_email)
      flash[:notice] = "E-mail já cadastrado"
      redirect_to new_user_path
    #verifica se o cpf já existe no banco de dados
    elsif User.exists?(:int_document => @user.int_document)
      flash[:notice] = "CPF já cadastrado"
      redirect_to new_user_path
    else
      respond_to do |format|
        if @user.save
          format.html { redirect_to user_url(@user), notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end   
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:char_name, :char_email, :int_document, :date_dt_birth, :char_cep, :char_street, :int_neighbourhood, :city, :state)
    end
end
