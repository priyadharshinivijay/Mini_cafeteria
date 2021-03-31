class MenusController < ApplicationController
    def index
        render "index"
    end
    def create
        menu_name=params[:menu_name]
        menu_price=params[:menu_price]
        menu=Menu.new(
            menu_name:menu_name,
            menu_price:menu_price
            )
        if menu.save
            redirect_to menus_path 
        else
            #flash[:error]=menu.erros.full_messages.join(", ")
            flash[:error]="All fields are mandatory and menu size should not exceed more than 10!"
            redirect_to menus_path
        end
    end
    def change_menu
        render "change"
    end
    def update
        menu=Menu.find_by(menu_name:params[:menu_name])
        if menu
            menu.menu_price=params[:menu_price]
            menu.save!
            redirect_to edit_menus_path
        else
            flash[:error]="Invalid menu name"
            redirect_to update_menu
        end
    end

   
        



end