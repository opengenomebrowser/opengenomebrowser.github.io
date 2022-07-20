<style>
.post {
    margin: 0.5rem 0;
    background: white;
    padding: 0.5rem 1rem;
    border-radius: 4px;
    box-shadow: 0 5px 20px rgba(71,80,89,.15);
    position: relative;
}
.post h4 a {
    color: black;
}
.date {
    position: absolute;
    top: 3px;
    right: 3px;
    color: rgb(172, 172, 172);
}
</style>

{% for post in site.posts %}{% if post.show_homepage or page.name != "index.md" %}

{% raw %}<div class="post">{% endraw %}

#### [{{ post.title }}]({{ post.url }})

{% raw %}<div class="date">{% endraw %}
{{ post.date | date: "%Y-%m-%d" }}
{% raw %}</div>{% endraw %}

{% if post.excerpt_separator %}

{{ post.excerpt }}
[... more]({{ post.url }})

{% else %}

{{ post.content}}

{% endif %}

{% raw %}</div>{% endraw %}

{% endif %}{% endfor %}
