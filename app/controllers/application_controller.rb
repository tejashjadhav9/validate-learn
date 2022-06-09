class ApplicationController < ActionController::Base
    def index
        @users = People.all
    end
    def show
        @user = People.find(params[:id])
    end
    def new
        @user = People.new
    end
    def create
        @user = People.new(table_details)
        if @user.save
            redirect_to @user
        else
            render :new ,status: :unprocessable_entity
        end
    end

    def edit
        @user =People.find(params[:id])
    end
    
    def update
        @user =People.find(params[:id])
        if @user.update(table_details)
            redirect_to @user
        else
            render :new ,status: :unprocessable_entity
        end
    end
    

    private
    def table_details
        params.require(:people).permit(:name,:description,:phone,:age)
    end

end
