from rest_framework.views import APIView
from rest_framework.response import Response
from django.utils import timezone
from django.conf import settings



class ListVisitor(APIView):
    """
    View visitors info.

    * Anonymous visitors can visit this endpoint.
    """

    def get(self, request, format=None):
        """
        Return visitor info.
        """
        data = {"timestamp":timezone.now(),
                "hostname": request.get_host(),
                "engine": settings.DATABASES['default']['ENGINE'], 
                "visitor_ip": request.META.get('REMOTE_ADDR')
}
        return Response(data)