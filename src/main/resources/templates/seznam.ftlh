[#ftl]
[@c.page title="Seznam článků"]
    <h2>Milí čtenáři,</h2>
    <h2>doufám, že tyto články přinesou trochu vzrušení a intrik do vašich dnů ...</h2>
    <br></br>
    <div class="main">
    <ul>
            [#list seznam.content as post]
                <li>
                        <h4>${post.title}</h4>
                        <p>${post.perex?no_esc}</p>
                        <p><strong>Autor:</strong> ${post.author}</p>
                        <p><strong>Datum publikace: </strong> ${post.getPublished()?date}</p>
                        <a href="/${post.slug}">Přečíst</a>
                </li>
            [/#list]
    </ul>
    </div>
    <div class="title">Lady Whistledown Society paper</div>
[/@c.page]