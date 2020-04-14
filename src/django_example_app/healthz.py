from django.http import HttpResponse


def healthz(request):
    return HttpResponse(status=200)
