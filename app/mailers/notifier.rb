class Notifier < ActionMailer::Base
  default from: "info.modernimport@mail.ru"

  def registration(user)
    @url  = "http://modernimport.by/login"
    mail(to: user.email, subject: "ЧТПУП Модерн импорт <modernimport@mail.ru>")
  end

  def order_processed(spec)
    @url  = "http://modernimport.by/login"
    user = User.find_by_id(spec.user_id)
    mail(to: user.email, subject: "ЧТПУП Модерн импорт <modernimport@mail.ru>")
  end
end
