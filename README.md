<div>
  <p>
    Необходимо написать блог.
    Система состоит из двух частей: пользовательская и административная.
    Пользовательская
    Состоит из двух типов страниц:
    1. Страница со всеми публикациями.
      Список всех публикаций с пагинацией. Ячейка публикации включает заглавие, прикрепленную картинку и краткое содержание (~ 150 символов) и ссылку на просмотр публикации.
    2. Страница конкретной публикации.
      Публикация содержит заглавие, прикрепленную картинку, текст публикации, блок с “похожими статьями” (рандомно выводить 2-3 публикации) также нужно реализовать простой счетчик просмотров.


    Административная версия.
    Самописная, без использования active_admin или rails_admin.
    В админке есть два типа пользователей: администратор и копирайтер.
    Администратор создается через seeds.rb, копирайтер создается через админку.

    Администратор может добавлять, удалять копирайтеров а также создавать, редактировать, удалять любые статьи.
    Копирайтер не имеет доступа к CRUD администраторов. Он может просматривать, создавать, редактировать только свои статьи, не может удалять статьи.
  </p>
</div>