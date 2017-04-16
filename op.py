# k = 1 *     1级标题
#     2 **    2级标题
#     3 ***   3级标题
#     4 ****  4级标题 代码块

import re

title = {
    '1': '*',
    '2': '**',
    '3': '***',
    '4': '',     # TODO 待修改
}


def handle(tt, k):
    p = 0
    sp = []
    for line in tt:
        pattern = r'^\*\s'
        m = re.search(pattern, line)
        if m:
            sp.append(p)
        p = p+1
    for i in range(len(sp)):
        yield tt[sp[i]:sp[i+1]]
