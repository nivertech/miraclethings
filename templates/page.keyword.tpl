{% extends "page.collection.tpl" %}

{% block content_body %}

{% cache 7200 vary=id %}

{% for group in m.search[{query hasobject=[id, 'subject']}]|chunk:3 %}
<div class="grid_9 alpha omega">

    {% for id in group %}
    {% catinclude "inc/listitem.tpl" id alpha=forloop.first omega=forloop.last %}
    {% endfor %}

</div>
{% endfor %}

{% endcache %}

{% endblock %}
