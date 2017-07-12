#!/usr/bin/env python


def configmap(dic, _dir='.'):
    return ' '.join(["--from-file=%s=%s/%s" % (x.replace('_', '-'), _dir, x) for x in dic])


class FilterModule(object):
    def filters(self):
        return {'configmap': configmap}
