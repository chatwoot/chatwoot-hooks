class Hooks::Core::Base
  attr_accessor :inbox_app, :payload
  extend Hooks::Core::Dsl

  def initialize(params)
    @inbox_app = params[:inbox_app]
    @payload = params[:payload]
  end
   
  class << self
    def trigger_event(params)
      app = new(params)
      app.send(params[:event])
    end

    def inherited(app)
      Hooks::Core::Base.apps << app
      super
    end

    def apps
      @apps ||= []
    end

    def schema
      @schema ||= {}
    end

    def root
      Pathname.new(INTEGRATIONS_PATH).join(app_module.to_s.underscore)
    end

    def app_module
      self.to_s.deconstantize.constantize
    end

    def configuration
      @configuration ||= YAML.load_file(root.join('config.yml').to_s)
    end

    def add_to_schema(type,name,options={})
      type = type.to_s
      name = name.to_s

      required = options.delete(:required) ? true : false
      label = options.delete(:label) || name.humanize

      default = options.delete(:default)
      hint = options.delete(:hint)
      oauth_options = options.delete(:oauth_options)

      schema[name] = { 'type' => type, 'required' => required, 'label' => label }
      schema[name]['default'] = default if default
      schema[name]['hint'] = hint if hint
      schema[name]['oauth_options'] = oauth_options if type == "oauth" and oauth_options
      schema
    end
  end
end