class AccountsController < ApplicationController

    def index 
        accounts = Account.all
        render json: accounts, except: [:created_at, :updated_at]
    end

    def show
        account = Account.find_by_id(params[:id])
        render json: account.to_json(include: [:transactions])
    end

    def create
        account = Account.new(account_params)
        if account.save
            render json: account, except: [:created_at, :updated_at]
        else
            render json: {error: account.errors.full_messages}
        end
    end

    def update
        account = Account.find_by_id(params[:id])
        if account.update(account_params)
            render json: account
        else
            render json: {error: account.errors.full_messages}
        end
    end

    def destroy
        account = Account.find_by_id(params[:id])
        if account.destroy
            render json: account
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def account_params
        params.require(:account).permit(:name, :balance, :category, :user_id)
    end
    
end
