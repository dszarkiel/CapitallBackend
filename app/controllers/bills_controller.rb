class BillsController < ApplicationController

        def index 
            bills = Bill.all
            render json: bills, except: [:created_at, :updated_at]
        end
    
        def show
            bill = Bill.find_by_id(params[:id])
            render json: bill
        end
    
        def create
            bill = Bill.new(bill_params)
            if bill.save
                render json: bill, except: [:created_at, :updated_at]
            else
                render json: {error: bill.errors.full_messages}
            end
        end
    
        def update
            bill = Bill.find_by_id(params[:id])
            if bill.update(bill_params)
                render json: bill
            else
                render json: {error: bill.errors.full_messages}
            end
        end
    
        def destroy
            bill = Bill.find_by_id(params[:id])
            if bill.destroy
                render json: bill
            else
                render json: {error: "Oops, something went wrong."}
            end
        end
    
        private 
    
        def bill_params
            params.require(:bill).permit(:user_id, :name, :due_date, :amount, :autopay, :paid)
        end
    
end
