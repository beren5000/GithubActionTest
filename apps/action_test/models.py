import uuid

from django.db import models
from django.utils.translation import gettext_lazy as _


class TestModels(models.Model):
    x_id = models.UUIDField(default=uuid.uuid4, editable=False)

    class Meta:
        verbose_name = _("user")
        verbose_name_plural = _("users")
