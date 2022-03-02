from http import client
import os
import secrets
import hashlib
import base64
from dotenv import find_dotenv, load_dotenv
from flask import Flask, render_template, request, redirect, url_for, flash
from werkzeug.security import generate_password_hash, check_password_hash
from flask_sqlalchemy import SQLAlchemy

load_dotenv(find_dotenv())


def generate_auth_url(client_id=os.getenv("CLIENT_ID")):
    scope = "settings profile activity sleep heartrate"
    code_verifier = secrets.randbits(128)
    code_challenge = base64.b64encode(
        hashlib.sha256(code_verifier.encode("utf-8")).digest()
    )
    code_challenge_method = "S256"
    response_type = "code"
    return (
        "https://www.fitbit.com/oauth2/authorize?client_id="
        + client_id
        + "&response_type="
        + response_type
        + "&code_challenge="
        + code_challenge
        + "&code_challenge_method="
        + code_challenge_method
        + "&scope="
        + scope
    )


def authorize_fitbit():
    return redirect(generate_auth_url)


def obtain_tokens(client_id=os.getenv("CLIENT_ID")):
    authorize_fitbit()
    # then retrieve authorization code from redirect url
    # implement through oauth2
