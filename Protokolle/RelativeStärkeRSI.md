# Relative Stärke Index | RSI Indikator | Berechnung und Einsatz im Trading

Der Relative Stärke Index ( RSI ) ist ein technischer Indikator, der
 genutzt wird, um zu ermitteln, ob eine Aktie oder ein anderes 
Wertpapier überverkauft oder überkauft ist. Daneben kann eine Divergenz 
zwischen Indikator und Kursbewegung auf eine möglicherweise 
bevorstehende Trendumkehr hinweisen.

Der Relative Stärke Index ist auch als Relative Strength Index oder RSI Indikator bekannt.

## Inhalt

---

Aufbau des Indikators

Berechnung des Relative Stärke Index

Überkauft und Überverkauft

Einstellung des RSI Indikators

Trading mit RSI Divergenzen

---

## Aufbau des Indikators

---

Der Relative Stärke Index ist ein Oszillator, der zwischen den Werten
 0 und 100 schwankt. In der Regel wird der RSI Indikator in einem 
eigenen Chart unterhalb des eigentlichen Kurscharts abgebildet.

![Relative Stärke Index mit Kerzenchart](https://tradistats.com/wp-content/uploads/2022/11/RSI-mit-Chart.png)

In der Abbildung oben sehen Sie einen **[Kerzenchart](https://tradistats.com/kerzencharts/)** mit dem dazugehörigen RSI Indikator im unteren Teil des Charts. Die 
blaue Linie zeigt den Verlauf des Relative Stärke Index. Die obere der 
beiden waagerechten Linien zeigt einen RSI Wert von 70 an, die untere 
Linie zeigt einen Wert von 30. Fällt der Indikator unter die 30er Linie,
 wird die Fläche zwischen 30er Linie und der blauen Indikator Linie rot 
eingezeichnet. Steigt der RSI Indikator über einen Wert von 70, wird die
 Fläche zwischen der 70er Linie und dem Indikator grün eingefärbt.

## Berechnung des Relative Stärke Index

---

Um zu verstehen, wie der RSI Indikator funktioniert, schauen wir uns an, wie der Indikator berechnet wird.

Der Relative Stärke Index wird immer aus den Schlusskursen einer 
bestimmten Anzahl von Tagen berechnet. Besonders häufig verwendet wird 
der RSI 14, der Relative Stärke Index der letzten 14 Tage. Bei dieser 
Variante wird die Relative Stärke aus den letzten 14 Schlusskursen 
berechnet.

Der Relative Stärke Index wird mit Hilfe der untenstehenden Formel berechnet.

![Formel RSI Indikator](https://tradistats.com/wp-content/uploads/2022/11/RSI-Formel.png)

mit

![Formel Relative Stärke](https://tradistats.com/wp-content/uploads/2022/11/RS-Berechnung.png)

Der RSI wird dabei in zwei Schritten berechnet, zuerst wird der Wert 
der Relativen Stärke berechnet (RS). Dann wird der Wert in die Formel 
für den RSI eingesetzt.

## Schritt 1 | Berechnung der Relativen Stärke

Der erste Wert für die Relative Stärke (RS), wird dabei berechnet, 
indem der Durchschnitt der Kursgewinne durch den Durchschnitt der 
Kursverluste geteilt wird.

Um den Durchschnitt der Kursgewinne zu berechnen, wird zuerst 
ermittelt, welche Tage mit einem Gewinn geendet haben. Dann werden die 
einzelnen Kursgewinne dieser Tage berechnet, indem vom Schlusskurs des 
betrachteten Tages der Schlusskurs des Vortrages abgezogen wird. Im 
Anschluss daran werden die Kursgewinne der einzelnen Tage 
zusammengerechnet und durch die Gesamtzahl der Tage geteilt.

#### Beispiel

---

Wir möchten die Relative Stärke für einen RSI 14 berechnen. Dazu 
betrachten wir zunächst die Schlusskurse der letzten 14 Tage. Wir 
stellen fest, das 8 der letzten 14 Tage mit einem Gewinn geschlossen 
haben. Daher berechnen wir für jeden dieser 8 Tage den Kursgewinn, indem
 wir den vorherigen Schlusskurs vom Schlusskurs des jeweiligen Tages 
abziehen. Dann werden die acht Kursgewinne zusammengezählt und durch die
 Zahl 14, die Gesamtzahl aller Tage, geteilt.

---

**Je mehr Tage also mit einem Kursgewinn geendet haben und je höher diese Kursgewinne waren, desto größer ist der berechnete Wert.**

Der Durchschnitt der Kursverluste wird genauso berechnet. Zuerst 
werden alle Tage mit Kursverlusten ermittelt. Dann werden die 
Kursverluste berechnet, indem der Schlusskurs eines Tages vom 
Schlusskurs des vorherigen Tages abgezogen wird. Die Werte der 
Kursverluste sind also positiv. Die Werte der einzelnen Kursverluste 
werden nun zusammengerechnet und dann durch die Anzahl der Tage geteilt.

**Der so berechnete Wert ist also umso größer, je mehr Tage mit
 einem Verlust geschlossen haben und je größer diese Verluste waren.**

Um die Relative Stärke zu berechnen, wird nun der durchschnittliche Kursgewinn durch den durchschnittlichen Kursverlust geteilt.

![](https://tradistats.com/wp-content/uploads/2022/11/RS-Berechnung.png)

- Wenn die beiden Werte genau gleich groß sind, hat die Relative Stärke einen Wert von 1.
- Ist der durchschnittliche Kursgewinn größer als der durchschnittliche Kursverlust, ist die Relative Stärke größer als 1.
- Ist der durchschnittliche Kursgewinn kleiner als der 
  durchschnittliche Kursverlust, so hat die Relative Stärke einen Wert 
  kleiner 1.

### Schritt 2 | Einsetzen in die Formel

Nun wird die Relative Stärke in die Formel für den RSI eingesetzt.

![](https://tradistats.com/wp-content/uploads/2022/11/RSI-Formel.png)

Setzen wir nun testweise drei verschiedene Relative Stärke Werte in die Formel ein.

Bei einer Relativen Stärke von 1 hat der RSI einen Wert von 50. Wenn 
der durchschnittliche Kursgewinn genauso groß ist wie der 
durchschnittliche Kursverlust, hat der Relative Stärke Index also einen 
Wert von 50 und notiert damit genau in der Mitte des Charts.

Nehmen wir nun an, dass der durchschnittliche Kursgewinnen genau 
doppelt so hoch ist wie der durchschnittliche Kursverlust. Die Relative 
Stärke hat in diesem Fall also einen Wert von 2. Setzen wir diesen Wert 
in die Formel von oben ein, so erhalten wir ein RSI ein Wert von 66,66. **Wenn
 der durchschnittliche Kursgewinn größer ist als der durchschnittliche 
Kursverlust, hat der RSI einen Wert größer als 50 und notiert in der 
oberen Hälfte des Charts.**

**Ist der durchschnittliche Verlust hingegen höher als der durchschnittliche Gewinn, so ist der Wert des RSI kleiner als 50**.
 Wenn der durchschnittliche Kursverlust beispielsweise doppelt so hoch 
ist wie der durchschnittliche Kursgewinn, so hat die Relative Stärke 
einen Wert von 0,5 und der RSI Indikator einen Wert von 33,33.

Je höher also der durchschnittliche Kursgewinn im Verhältnis zum 
durchschnittlichen Kursverlust ist, desto höher ist der RSI Wert.

---

Ein **steigender RSI Wert** zeigt an, dass der Wert des durchschnittlichen Kursgewinns im Verhältnis zum durchschnittlichen Kursverlust zunimmt.

Ein **fallender RSI Wert** bedeutet hingegen, dass der durchschnittliche Kursgewinn im Vergleich zum durchschnittlichen Kursverlust abnimmt.

---

### Abweichende Formel für spätere RS Werte

Das oben gezeigte Verfahren wird nur genutzt, um den ersten RSI Wert 
in einem Chart zu berechnen. Für alle folgenden RSI Werte wird die 
Relative Stärke nach einer anderen Formel berechnet.

![](https://tradistats.com/wp-content/uploads/2022/11/RS-zweite-Formel.png)

Das Ergebnis dieser Berechnung wird wie zuvor in die oben gezeigte Formel für den RSI eingegeben.

Ein nach der zweiten Formel für die Relative Stärke berechneter RSI 
schwankt immer zwischen den Werten 0 und 100. (Bei der ersten 
Berechnungsvariante könnten Probleme auftreten, wenn einer der beiden 
Werte über oder unter dem Bruchstrich einen Wert von 0 annimmt. Dies ist
 bei der zweiten Variante nicht möglich.)

## Überkauft und überverkauft

---

Wie bereits am Anfang des Artikels erwähnt, dient der Relative Stärke
 Index dazu, festzustellen, ob eine Aktie überkauft oder überkauft ist. 
Eine Aktie gilt dabei als überkauft, wenn der RSI einen Wert über 70 
annimmt. Hat der RSI dagegen einen Wert unter 30, gilt die Aktie als 
überverkauft.

![](https://tradistats.com/wp-content/uploads/2022/11/RSI-mit-Chart.png)

Befindet sich eine Aktie im überverkauften Bereich, wird die Fläche 
zwischen RSI Linie und 30er Linie rot eingefärbt. Eine grüne Fläche 
oberhalb der 70er Linie zeigt einen überkauften Markt an.

Bei einer überkauften Aktie geht der Anleger davon aus, dass die 
Aktie zu steil und zu stark gestiegen ist und daher mit einer 
Gegenbewegung zu rechnen ist. Bei einer überverkauften Aktie ist die 
Aktie hingegen zu stark gefallen, sodass hier zumindest kurzfristig mit 
einem Anstieg zu rechnen ist.

Ein Trader, der nach dieser Strategie vorgeht, wird also eine Aktie kaufen, wenn der RSI Indikator unter 30 notiert. Ein **[Short Position](https://tradistats.com/long-und-short-im-trading-mit-aktien-cfds-und-optionen/)** wird hingegen aufgebaut, wenn der Indikator über 70 notiert. 
Normalerweise wird in beiden Fällen die Position wieder geschlossen, 
sobald sich der RSI zum Mittelwert von 50 zurückbewegt hat.

### Wie erfolgreich ist die Strategie?

Wenn Sie sich einen Chart mit einem RSI Indikator ansehen, werden sie
 feststellen, dass der RSI Indikator teilweise über einen längeren 
Zeitraum im überverkauften oder überkauften Bereich bleiben kann. In 
einem langen Aufwärtstrend bleibt der Relative Stärke Index teilweise 
wochenlang im überverkauften Bereich. Ebenso kann der RSI in einem 
Abwärtstrend nach Erreichen des überverkauften Bereichs noch 
beträchtlich tiefer fallen, bevor er wieder dreht. Ein Trader, der nach 
der oben beschriebenen RSI Strategie vorgeht, würde in diesen Fällen 
einen deutlichen Verlust erleiden.

Der Erfolg der Strategie ist also stark davon abhängig, in welchem 
übergeordneten Trend sich die Aktie gerade befindet. In einem 
Aufwärtstrend sollten nur **[Kaufsignale](https://tradistats.com/kaufsignal-definition/)** gehandelt werden. Es wird also nur dann gekauft, wenn der Kurs 
innerhalb einer langfristigen Aufwärtsbewegung für kurze Zeit 
zurückfällt und dadurch der Relative Stärke Index unter einen Wert von 
30 fällt. In einem Abwärtstrend sollten nur Signale gehandelt werden, 
die auf einen kurzfristig überkauften Markt hindeuten. In einem 
Seitwärtstrend können hingegen sowohl Kauf- als auch **[Verkaufssignale](https://tradistats.com/verkaufssignal/)** gehandelt werden.

Wird die Trendbewegung des Kurses beim Traden berücksichtigt, hat der
 RSI Indikator eine deutlich bessere Erfolgswahrscheinlichkeit als wenn 
alle Signale gehandelt werden. Allerdings kommt es auch hier immer 
wieder zu Fehlsignalen, bei denen sich der Kurs weit in die falsche 
Richtung bewegt. Der Trader sollte also, bevor er einen Trade eingeht, 
festlegen, an welchem Punkt er im Verlustfall wieder aussteigen möchte.

## Einstellung des RSI Indikators

---

Der Relative Stärke Index kann aus einer unterschiedlichen Anzahl an 
Schlusskursen berechnet werden. Welles Wilder, der Erfinder des Relative
 Stärke Index, hat eine Einstellung von 14 Tagen empfohlen und dies ist 
auch die Standardeinstellung, die Sie in den meisten Chartprogramm 
finden werden. Weitere häufig verwendete Einstellungen sind 9 und 21 
Tage.

Je weniger Schlusskurse zur Berechnung verwendet werden, desto 
stärker reagiert der Indikator auf kurzfristige Kursbewegungen. Die RSI 
Linie zackt dadurch häufiger auf und ab, so dass es zu einer Vielzahl 
von überkauft und überverkauft Signalen kommt.

Wird eine größere Anzahl von Schlusskursen zur Berechnung 
herangezogen, verläuft der RSI Indikator dagegen deutlich ruhiger und es
 kommt zu deutlich weniger Durchbrüchen durch die 30er oder die 70er 
Linie. Allerdings kommt es hier deutlich häufiger vor, dass der RSI 
längere Zeit im überkauften oder überverkauften Bereich verweilt.

## Trading mit RSI Divergenzen

---

Von einer Divergenz spricht man in der technischen Analyse, wenn der 
Kurs und ein Indikator unterschiedliche Signale aussenden. Eine 
Divergenz liegt also beispielsweise vor, wenn der Kurs weiter ansteigt, 
während der Indikator ein Abschwächen der Aufwärtsbewegung anzeigt.

Bei einer bullischen RSI Divergenz erreicht der Kurs ein neues Hoch, 
während gleichzeitig das neue Hoch im RSI Indikator unter seinem 
vorherigen Hoch bleibt. Umgekehrt liegt bei fallenden Kursen eine 
bearische Divergenz vor, wenn der Kurs ein neues Tief erreicht, während 
gleichzeitig das neue Tief des RSI Indikators über dem vorherigen Tief 
liegt.

![Bearishe Divergenz beim RSI](https://tradistats.com/wp-content/uploads/2022/11/RSI-zwei-Pfeile.png)

Schauen wir uns dazu noch einmal den Chart von oben an. Auf der 
linken Seite des Charts sind die Kurse stark gefallen. Mit den Kursen 
ist auch der RSI nach unten gerutscht. Bei Punkt 1 ist der Indikator 
weit unter den Wert von 30 gefallen.

Bei Punkt 2 kam es zu einem erneuten Kursrückgang, bei dem der Kurs 
ein neues Tief erreichte. Der Relative Stärke Index ist hier zwar auch 
gefallen, allerdings liegt das aktuelle Tief über dem Tief der 
vorherigen Abwärtsbewegung bei Punkt 1. Es liegt also eine Divergenz 
zwischen Kurs und Indikator vor, was darauf hinweist, dass sich der 
aktuelle Trend abschwächt. Tatsächlich bewegte sich der Kurs in unserem 
Beispiel im Anschluss an die Divergenz zuerst seitwärts und begann 
danach sogar zu steigen.

Eine Divergenz zwischen Kurs und Relative Stärke Index ist also als 
Zeichen für eine Abschwächung des aktuellen Trends zu sehen und kündigt 
daher häufig einen Trendwechsel an.
