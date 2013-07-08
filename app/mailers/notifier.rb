class Notifier < ActionMailer::Base
  default from: "info.modernimport@mail.ru"

  def registration(user)
    @url  = "http://modernimport.by/login"
    mail(to: user.email, subject: "ЧТПУП Модерн импорт <modernimport@mail.ru>")
  end

  def order_processed(spec)
    @url  = "http://modernimport.by/login"
    if (user = User.find_by_id(spec.user_id)) != nil
      mail(to: user.email, subject: "ЧТПУП Модерн импорт <modernimport@mail.ru>")
    else
      order = Order.find_by_id(spec.order_id)
      mail(to: order.email, subject: "ЧТПУП Модерн импорт <modernimport@mail.ru>")
    end
  end
end
