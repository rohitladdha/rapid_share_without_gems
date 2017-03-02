class DocsController < ApplicationController

  before_action :require_user

  def fetch_all
    @doc = Doc.new
    @docs = User.find(session[:user_id]).docs
  end

  def download
    name = Doc.find(params[:id]).name
    path = File.join(Rails.root, "file_storage", session[:user_id].to_s, name)
    send_file(path)
  end

  def uploading
    @doc = Doc.new
    @doc.user_id = session[:user_id]
    @doc.name = params["doc"]["uploaded_file"].original_filename
    file_path = File.join(Rails.root, 'file_storage', session[:user_id].to_s, @doc.name)
    f = File.open(file_path, 'wb')
    f.write params["doc"]["uploaded_file"].tempfile.read
    if !@doc.save
      redirect_to root_path :flash => { :upload_error => @doc.errors.full_messages.join(', ') }
    else
      redirect_to root_path
    end
  end
end
