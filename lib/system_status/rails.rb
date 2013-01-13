module SystemStatus
  class Railtie < Rails::Railtie
    initializer "system_status.configure_rails_initialization" do
      unless Rails.env.production?
        Rails.application.middleware.use SystemStatus::Middleware
      end
    end
  end
end