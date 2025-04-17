## Modularisierung

### Module

Modulare Programmierung ist eine Software-Design-Technik, die auf dem allgemeinen Prinzip des modularen Designs beruht. Modulares Design ist ein Ansatz, der sich als unausweichlich und unentbehrlich schon lange vor den ersten Computern im Ingenieurwesen herausgestellt hat. Unter modularem Design versteht man, dass man ein komplexes System in kleinere selbständige Einheiten oder Komponenten zerlegt. Diese Komponenten bezeichnet man üblicherweise als Module. Ein Modul kann unabhängig vom Gesamtsystem erzeugt und separat getestet werden. In den meisten Fällen kann man ein Modul auch in anderen Systemen verwenden.  

Heutzutage gibt es kaum ein Produkt, das nicht auf Modularisierung beruht, so wie Autos, Mobiltelefone, und so weiter. Computer gehören zu den Produkten, die bis zum Äußersten modularisiert sind. Das was für die Hardware ein Muss ist, stellt auch für die Software, die auf ihr läuft, eine unvermeidliche Notwendigkeit dar.  

Wenn man Programme schreiben will, die lesbar, zuverlässig und und ohne hohen Aufwand wartbar sind, geht es nicht ohne modulares Software-Design, insbesondere bei größeren Software-Projekten. Es gibt verschiedene Konzepte um Programme modular zu gestalten. Der Ansatz der modularen Programmierung besteht darin, Programme systematisch in logische Teilblöcke, d.h. Module, aufzuspalten. Die Aufteilung eines Quelltextes in einzelne Teile (Module) bezeichnet man als Modularisierung.  

In Python unterscheiden wir zwei Arten von Modulen:

- Bibliotheken (Libraries)  
  Stellen Datentypen oder Funktionen für alle Python-Programme bereit.  
  Es gibt:
  - die umfangreiche Standardbibliothek
  - eigene Module
  - Module von Drittanbietern
- lokale Module  
  nur für ein Programm verfügbar

Eine Bibliothek, egal ob aus der Standardbibliothek oder eine eigene, wird mit der **import-Anweisung** eingebunden.  
Beispiel:  

import math

Das Modul math aus der Standardbibliothek stellt mathematische Konstanten und Funktionen zur Verfügung, so zum Beispiel die Konstante π (math.pi), die Sinus-Funktion (math.sin()) und die Cosinus-Funktion (math.cos()) zur Verfügung:  

```python
math.pi
3.141592653589793
math.sin(math.pi/2)
1.0
math.cos(math.pi/2)
6.123031769111886e-17
math.cos(math.pi)
-1.0
```

Nach dem Schlüsselwort import können auch mehrere durch Komma getrennte Modulnamen folgen:

import math, random

import-Anweisungen können an jeder Stelle des Quellcodes stehen, aber man sollte sie der Übersichtlichkeit zuliebe an den Anfang stellen.

### Namensräume von Modulen

Wird ein Modul importiert, wie z.B.

import math

dann stehen die Namen des Modules in einem eigenen Namensraum zur Verfügung.  
Auf die sin()-Funktion des math-Modules kann man zunächst nur über den vollen Namen ("fully qualified") zugreifen, d.h.

math.sin(x)

Man kann auch selektiv nur einzelne Methoden/Funktionen importieren:

from math import sin, pi

Die anderen Methoden der Bibliothek stehen dann nicht zur Verfügung. Auf sin und pi kann man aber direkt (ohne math.) zugreifen.  
Man kann auch eine Bibliothek komplett in den globalen Namensraum einbinden. Dabei werden dann gegebenenfalls bereits vorhandene gleichlautende Namen überschrieben, wie dies im folgenden Beispiel geschieht:

```python
pi = 3.142
print(pi)
3.142
from math import *
print(pi)
3.14159265359
```

### Umbenennen des Namensraumes beim Import

Beim Import einer Bibliothek kann man auch einen neuen Namen für den Namensraum wählen. Im folgenden importieren wir math als m. Dies führt bei der Benutzung des math-Moduls zu einer deutlichen Schreiberleichterung ohne dass die Vorteile eines Namensraumes aufgegeben werden:

```python
import math as m
m.pi
3.141592653589793
m.sin(m.pi)
```

Ein Namensraum math existiert in obigem Beispiel nicht, sondern nur ein Namensraum m.  
Man kann auch einzelne Methoden oder Konstanten umbenennen. Im folgenden Beispiel werden einzelne Methoden des math-Moduls umbenannt, so werden pow() in power() und sin() in sinus() umbenannt:

```python
from math import pi,pow as power, sin as sinus
power(2,3)
8.0
sinus(pi)
1.2246467991473532e-16
```

### Modul-Arten

Es gibt verschiedene Modul-Arten:

- in Python geschrieben  
  Endung: .py

- Dynamisch geladene C-Module  
  Endung: .dll, .pyd, .so, .sl, usw.

- C-Module, die mit dem Interpreter gelinkt sind:  
  Um eine Liste dieser Module zu erhalten:
  
  $ python3
  Python 3.2.3 (default, Oct 19 2012, 19:53:57) 
  [GCC 4.7.2] on linux2
  Type "help", "copyright", "credits" or "license" for more information.
  
  ```python
  import sys
  print(sys.builtin_module_names)
  ('__main__', '_ast', '_bisect', '_codecs', '_collections', '_datetime', '_elementtree', '_functools', '_heapq', '_io', '_locale', '_pickle', '_posixsubprocess', '_random', '_socket', '_sre', '_string', '_struct', '_symtable', '_thread', '_warnings', '_weakref', 'array', 'atexit', 'binascii', 'builtins', 'errno', 'fcntl', 'gc', 'grp', 'imp', 'itertools', 'marshal', 'math', 'operator', 'posix', 'pwd', 'pyexpat', 'select', 'signal', 'spwd', 'sys', 'syslog', 'time', 'unicodedata', 'xxsubtype', 'zipimport', 'zlib')
  ```

### Suchpfad für Module

Wenn man ein Modul z.B. abc importiert, sucht der Interpreter nach abc.py in der folgenden Reihenfolge:

1. Im aktuellen Verzeichnis
2. PYTHONPATH
3. Falls PYTHONPATH nicht gesetzt ist, wird installationsabhängig im Default-Pfad gesucht, also unter Linux/Unix z.B. in /usr/lib/python3.3.

sys.path enthält die Verzeichnisse, in denen Module gesucht werden:

```python
import sys
for dir in sys.path:
...     print(dir)
... 
/usr/lib/python3.2
/usr/lib/python3.2/plat-linux2
/usr/lib/python3.2/lib-dynload
/usr/local/lib/python3.2/dist-packages
/usr/lib/python3/dist-packages
```

In der folgenden interaktiven Sitzung sehen wir, wie man herausfinden kann, wo sich ein Modul befindet:

```python
import numpy
numpy.__file__
'/usr/lib/python3/dist-packages/numpy/__init__.py'
import math
math.__file__
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'module' object has no attribute '__file__'
```

Wir wir oben sehen, ist das __file__-Attribut nicht vorhanden, wenn es sich bei dem Modul um ein C-Modul handelt, welches statisch an den Interpreter gelinkt ist.

### Inhalt eines Moduls

Mit der build-in-Funktion dir() und dem Namen eines eingeladenen Modules kann man sich die in einem Modul definierten Namen ausgeben lassen.

```python
import math
dir(math)
['__doc__', '__loader__', '__name__', '__package__', '__spec__', 'acos', 
'acosh', 'asin', 'asinh', 'atan', 'atan2', 'atanh', 'ceil', 'copysign', 
'cos', 'cosh', 'degrees', 'e', 'erf', 'erfc', 'exp', 'expm1', 'fabs', 
'factorial', 'floor', 'fmod', 'frexp', 'fsum', 'gamma', 'hypot', 'isfinite', 
'isinf', 'isnan', 'ldexp', 'lgamma', 'log', 'log10', 'log1p', 'log2', 
'modf', 'pi', 'pow', 'radians', 'sin', 'sinh', 'sqrt', 'tan', 'tanh', 
'trunc']
```

Ohne Argumente liefert dir() die definierten Namen das aktuellen Geltungsbereichs.

```python
import math
cities = ["New York", "Toronto", "Berlin", "Washington"]
dir()
['__builtins__', '__doc__', '__loader__', '__name__', '__package__', 
'__spec__', 'cities', 'math']
```

### Eigene Module

Die beiden folgenden Funktionen fib(), die den n-ten Fibonacci-Wert zurückliefert, und die Funktion fiblist() werden in einer Datei fibonacci.py gespeichert.

```python
def fib(n):
    a, b = 0, 1
    for i in range(n):
        a, b = b, a + b
    return a
def fiblist(n):
    fib = [0,1]
    for i in range(1,n):
        fib += [fib[-1]+fib[-2]]
    return fib
```

Von einem anderen Programm oder von der interaktiven Shell kann man nun, falls fibonacci.py innerhalb des Suchpfades zu finden ist, die Datei mit den beiden Fibonacci-Funktionen als Modul aufrufen.

```python
import fibonacci
fibonacci.fib(10)
55
fibonacci.fiblist(10)
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
fibonacci.__name__
'fibonacci'
```

### Dokumentation für eigene Module

Auch wenn es so ist, wie wir im vorigen Abschnitt gesagt haben, dass jedes Python-Programm automatisch auch ein Modul ist, so sollte jedes Modul dennoch über ausreichend Kommentare verfügen. Das pydoc-Modul erzeugt automatisch eine Dokumentation für jedes Modul. Rufen wir beispielsweise help auf unser fibonacci-Modul auf, erhalten wir folgende Ausgabe:

Help on module fibonacci:
NAME
    fibonacci
FUNCTIONS
    fib(n)

    fiblist(n)

FILE
    /home/data/bodenseo/python/fibonacci.py

Wünschenswert wären jedoch noch allgemeine Informationen zum fibbonacci-Modul und zu den einzelnen Methoden. Eine allgemeine Beschreibung des Moduls kann man in einem Docstring zu Beginn einer Moduldatei verfassen. Die Funktionen dokumentiert man wie üblich mit einem Docstring unterhalb der ersten Funktionszeile:

```python
""" Modul mit wichtigen Funktionen zur Fibonacci-Folge """
def fib(n):
    """ Iterative Fibbonacci-Funktion """
    a, b = 0, 1
    for i in range(n):
        a, b = b, a + b
    return a
def fiblist(n):
    """ produziert Liste der Fibbo-Zahlen """
    fib = [0,1]
    for i in range(1,n):
        fib += [fib[-1]+fib[-2]]
    return fib
```

Die help-Ausgabe sieht nun zufriedenstellend aus:

Help on module fibonacci:
NAME
    fibonacci - Modul mit wichtigen Funktionen zur Fibonacci-Folge
FUNCTIONS
    fib(n)
        Iterative Fibbonacci-Funktion

    fiblist(n)
        produziert Liste der Fibbo-Zahlen

FILE
    /home/data/bodenseo/python/fibonacci.py

### Packages

Mehrere Module können auch in einem Paket (package) zusammengefasst werden. Ein Paket ist im Prinzip ein Verzeichnis, welches Python-Module enthält. Zusätzlich dazu muss es noch eine Datei mit dem Namen __init__.py enthalten. Diese Datei kann leer sein oder Python-Code enthalten der bei Import des Paketes ausgeführt werden soll. Pakete werden wie normale Module importiert.  
m Folgenden werden wir in einem sehr einfachen Beispiel demonstrieren, wie man ein Paket mit ein paar Python-Modulen erzeugen kann.  
Zunächst benötigen wir ein Verzeichnis. Der Name dieses Verzeichnisses wird auch der Name des Paketes sein, dass wir erzeugen wollen. Wir wollen unser Paket "SimplePackage" nennen. Dieses Verzeichnis muss eine Datei mit Namen "__init__.py" enthalten. Diese Datei kann leer sein oder sie kann gültigen Python-Code enthalten. Dieser Code wird ausgeführt, wenn das Paket importiert wird. Die Datei dient also zur Initialisierung des Paketes, also beispielsweise zum Importieren von bestimmten Untermodulen oder zum Setzen von Attributen. Nun können wir in dieses Verzeichnis alle Python-Module - also Dateien - speichern, die Untermodule des Paketes sein sollen.  
Zu diesem Zweck erzeugen wir zwei einfache Dateien a.py und b.py.  
Der Inhalt von a.py:

```python
def bar():
    print("Hello, function 'bar' from module 'a' calling")

Der Inhalt von b.py:

def foo():
    print("Hello, function 'foo' from module 'b' calling")
```

Wir können dieses Paket auf folgende Art importieren, wenn wir die Module a und b nutzen wollen:

```python
from SimplePackage import a, b
a.bar()
Hello, function 'bar' from module 'a' calling
b.foo()
Hello, function 'foo' from module 'b' calling
```

Es ist nicht möglich a und b anzusprechen, wenn wir nur SimplePackage importieren:

```python
import SimplePackage
SimplePackage.a.bar()
Traceback (most recent call last):
  File "<stdin>", line 1, in 
AttributeError: 'module' object has no attribute 'a'
SimplePackage.a
Traceback (most recent call last):
  File "<stdin>", line 1, in 
AttributeError: 'module' object has no attribute 'a'
```

Wir können die Datei __init__.py nutzen, um automatisch a und b zu laden, wenn wir SimplePackage importieren. Wir fügen dazu die folgenden Zeilen in die leere Datei __init__.py ein:

import SimplePackage.a
import SimplePackage.b

Nun funktioniert es:

```python
import SimplePackage
SimplePackage.a.bar()
Hello, function 'bar' from module 'a' calling
```
