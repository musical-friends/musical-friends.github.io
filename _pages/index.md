---
layout: page
title: Home
permalink: index.html
---

# Willkommen bei den Musical Friends Kutzenhausen e. V.

## Unser Projekt 2016:

<div class="premiere">
  Das war ein Highlight! Danke für die tolle Premiere und das wunderbare Publikum!

  <p class="thumbs">
    {% for i in (0..2) %}
      {% capture full %}premiere-{{ i }}.jpg{% endcapture %}
      {% capture thumb %}premiere-{{ i }}-thumb.png{% endcapture %}
      <a href="{% asset_path '{{ full }}' %}" data-lightbox="premiere"><img src="{% asset_path '{{ thumb }}' %}" alt="Premiere" /></a>
    {% endfor %}
  </p>
</div>

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
      Karten 9,-/6,- (erm.)
      <ul>
        <li>Vorverkauf ab Oktober jeweils am Freitag von 17.00 Uhr bis 18.00 Uhr im Pfarrheim Kutzenhausen</li>
        <li>per E-Mail unter tickets (at) musical-friends-kutzenhausen.de</li>
        <li>an der Abendkasse</li>
      </ul>
    </div>

    <div>
        <a href="{% asset_path 'flyer.png' %}" data-lightbox="flyer"><img src="{% asset_path 'flyer_thumb.png' %}" alt="Flyer" /></a>
        <br />
        <a href="{% asset_path 'Flyer_Leben_im_All.pdf' %}" target="_blank" alt="Flyer Leben im All">Flyer zum Herunterladen</a>
    </div>
  </div>

  <div>
    Unser Musical 2016 legt seinen Schwerpunkt auf die Arbeit mit Kindern und Jugendlichen. Sie spielen die Hauptrollen, singen und tanzen, angeleitet von Peter Fischer (Regie, Bühnenbild, Kostüme), Susanne Heick-Heilscher (Tanz und Choreografie) und Ursula Nägele (Musik, Chor, Gesamtkoordination). Die tolle Leistung der Kinder und Jugendlichen, fantasievolle Kostüme und Maske, aufwändige Licht- und Tontechnik, Videoeinspielungen, ein prächtiges Bühnenbild, witzige Details und eine klasse Band ergeben zusammen ein phänomenales und kurzweiliges Gesamtkunstwerk. Möglich wird dies durch fleißiges Üben und ein engagiertes Team aus Eltern und anderen Erwachsenen. Alles in allem eine riesige Teamleistung!
  </div>
  <div>
    Wir freuen uns auf schöne Aufführungen!
  </div>
  <div>
    Herzliche Einladung!
  </div>
</div>

