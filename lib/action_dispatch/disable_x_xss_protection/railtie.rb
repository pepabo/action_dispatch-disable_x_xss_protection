module ActionDispatch
  module DisableXXssProtection
    class Railtie < ::Rails::Railtie
      initializer 'disable_x_xss_protection', after: 'action_dispatch.configure' do |app|
        ActionDispatch::Response.default_headers = app.config.action_dispatch.default_headers.merge('X-XSS-Protection' => '0')
      end
    end
  end
end
