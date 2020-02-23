module Hooks::Core::Dsl
  def string(name, options={})
    add_to_schema :string, name, options
  end

  def password(name, options={})
    add_to_schema :password, name, options
  end

  def text(name, options={})
    add_to_schema :text, name, options
  end

  def boolean(name, options={})
    add_to_schema :boolean, name, options
  end

  def token(name, options={})
    add_to_schema :token, name, options
  end

  def oauth(name, options={})
    add_to_schema :oauth, name, options
  end
end