# Generated by Django 2.2.8 on 2020-01-22 12:53

from django.db import migrations
import djrichtextfield.models


class Migration(migrations.Migration):

    dependencies = [
        ('stories', '0006_auto_20200122_1128'),
    ]

    operations = [
        migrations.AddField(
            model_name='story',
            name='long_description',
            field=djrichtextfield.models.RichTextField(default='long description', verbose_name='long description'),
            preserve_default=False,
        ),
    ]