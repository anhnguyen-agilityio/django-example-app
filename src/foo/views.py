# from django.views.generic.base import TemplateView

# from foo.models import Resume

# class HomePageView(TemplateView):

#     template_name = "foo/home.html"

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['latest_articles'] = Resume.objects.all()
#         return context


from django.http import Http404
from django.shortcuts import render
from foo.models import Resume

def index(request):
    print(Resume.objects.all())
    return render(request, 'foo/home.html', {'resumes': Resume.objects.all()})
