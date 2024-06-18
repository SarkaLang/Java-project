[#ftl]
[@c.page]
    <h2>${post.title}</h2>
    <div clas="title_detail">
    <p class="title_author"><strong>Autor:</strong> ${post.author}</p>
    <p class="body">${post.body?no_esc}</p>
        <p class="title_published"><strong>Datum publikace: </strong>${post.getPublished()?date}</p>
    </div>
    <div class="a_title">
    <a href="/">Zpět na hlavní stránku</a>
    </div>
[/@c.page]