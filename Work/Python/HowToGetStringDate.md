# How to get string date into epoch time

https://stackoverflow.com/posts/3276190/timeline

If the date is given in a fixed form, you can simply use a regular 
expression to extract the date and "datetime.datetime.strptime" to parse
 the date:

```python
import re
from datetime import datetime

match = re.search(r'\d{4}-\d{2}-\d{2}', text)
date = datetime.strptime(match.group(), '%Y-%m-%d').date()
```

Otherwise, if the date is given in an arbitrary form, you can't extract it easily.
