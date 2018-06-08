class SettingsController < ApplicationController
    before_action :get_setting, only: [:edit, :update]

    def index
      @settings = Setting.get_all
    end

    def create
      @shop = current_user.shop
      @shop.settings.theme_color = params[:theme_color]
      @shop.settings.order_button_color = params[:order_button_color]
      @shop.settings.footer_background_color = params[:footer_background_color]
      @shop.settings.share_button_shape = params[:share_button_shape]
      @shop.settings.share_button_position = params[:share_button_position]
      if @shop.settings.save
        redirect_to dashboard_preferences_path
        flash[:success] = "Preference set successfully"
      else
        render '/dashboard/preferences'
        flash[:error] = "Cannot set preferences"
      end
    end

    def edit
    end

    def update
      if @setting.value != params[:setting][:value]
        @setting.value = params[:setting][:value]
        @setting.save
        redirect_to admin_settings_path, notice: 'Setting has updated.'
      else
        redirect_to admin_settings_path
      end
    end

    def get_setting
      @setting = Setting.find_by(var: params[:id]) || Setting.new(var: params[:id])
    end
  end