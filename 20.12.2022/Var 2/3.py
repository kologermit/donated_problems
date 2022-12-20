from modulecalculated import fansum, fanmult
from moduleinout import fanread, fanprint
a, b, c = fanread()
fanprint(fansum(a, b, c), fanmult(a, b, c))
