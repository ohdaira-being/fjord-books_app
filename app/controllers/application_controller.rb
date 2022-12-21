# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale # ロケールを設定するという処理を差し込む

  private

  # ロケールのパラメータが設定されていない場合にはデフォルトのロケールを設定するという処理
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # URLパラメータにロケール情報を渡すという処理
  def default_url_options
    { locale: I18n.locale }
  end
end
