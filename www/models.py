#!/usr/bin/env python3
# -*- coding: utf-8 -*-

'''
Models for user, blog, comment.
'''

__author__ = 'Michael Liao'

import time, uuid

from orm import Model, StringField, BooleanField, FloatField, TextField, IntegerField

def next_id():
    return '%015d%s000' % (int(time.time() * 1000), uuid.uuid4().hex)

class User(Model):
    __table__ = 'users'

    id = StringField(primary_key=True, default=next_id, ddl='varchar(50)')
    email = StringField(ddl='varchar(50)')
    passwd = StringField(ddl='varchar(50)')
    admin = BooleanField()
    name = StringField(ddl='varchar(50)')
    image = StringField(ddl='varchar(500)')
    created_at = FloatField(default=time.time)

class Blog(Model):
    __table__ = 'blogs'

    id = StringField(primary_key=True, default=next_id, ddl='varchar(50)')
    user_id = StringField(ddl='varchar(50)')
    user_name = StringField(ddl='varchar(50)')
    user_image = StringField(ddl='varchar(500)')
    name = StringField(ddl='varchar(50)')
    summary = StringField(ddl='varchar(200)')
    content = TextField()
    created_at = FloatField(default=time.time)

class Pagecount(Model):
    __table__ = 'pagecounts'
    id = StringField(primary_key=True, default=next_id, ddl='varchar(50)')
    view_index = IntegerField()
    user_ip = StringField(ddl='varchar(50)')
    created_at = FloatField(default=time.time)


class Order(Model):
    __table__ = 'orders'
    order_id = StringField(primary_key=True, default=next_id, ddl='varchar(50)')
    created_at = FloatField(default=time.time)
    customer = StringField(ddl='varchar(50)')
    phone = StringField(ddl='varchar(50)')
    price = StringField(ddl='varchar(50)')
    payment = StringField(ddl='varchar(50)')
    address = StringField(ddl='varchar(500)')
    effictive = StringField(ddl='varchar(50)')
    flow = StringField(ddl='varchar(50)')
    notes = TextField()

class Comment(Model):
    __table__ = 'comments'

    id = StringField(primary_key=True, default=next_id, ddl='varchar(50)')
    blog_id = StringField(ddl='varchar(50)')
    user_id = StringField(ddl='varchar(50)')
    user_name = StringField(ddl='varchar(50)')
    user_image = StringField(ddl='varchar(500)')
    content = TextField()
    created_at = FloatField(default=time.time)
