---
layout: page
title: Home
permalink: index.html
---

# Willkommen bei den Musical Friends Kutzenhausen e. V.

## Unser Projekt 2016:

<div class="border rows">
  <div class="cols">
    <div>
      <h3>„Leben im All – Eine rockige Reise durch die Galaxie“ von Gerhard A. Meyer</h3>
      <h4>Aufführungstermine in der Gemeindehalle Kutzenhausen:</h4>
      <ul>
        <li>Samstag, 05.11.2016, 19.00 Uhr</li>
        <li>Sonntag, 06.11.2016, 19.00 Uhr</li>
        <li>Samstag, 12.11.2016, 19.00 Uhr</li>
      </ul>
    </div>
  </div>
</div>

<div class="premiere">
  Das war ein Highlight! Danke für die tollen Aufführungen und das wunderbare Publikum!

  <p class="thumbs">
    {% for i in (0..2) %}
      {% capture full %}premiere-{{ i }}.jpg{% endcapture %}
      {% capture thumb %}premiere-{{ i }}-thumb.png{% endcapture %}
      <a href="{% asset_path '{{ full }}' %}" data-lightbox="premiere"><img src="{% asset_path '{{ thumb }}' %}" alt="Premiere" /></a>
    {% endfor %}
  </p>

  Weitere Bilder demnächst...
</div>

