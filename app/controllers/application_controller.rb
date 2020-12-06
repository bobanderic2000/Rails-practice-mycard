class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  
  private

  def record_not_found
    render file: 'public/404.html',
           layout: false,  # 避免navbar被一起算繪出來；也可指定要渲染的檔案位置
           status: :not_found  # 也可填404
  end

end
