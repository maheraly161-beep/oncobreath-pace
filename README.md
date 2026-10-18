# OncoBreath Pace

A saved-audio teaching prototype for physiotherapy in oncology rehabilitation. It uses frozen Google Teachable Machine models and a fixed 30-second rhythm representation. No camera or live microphone is used.

## Application source

The complete publishable source, model exports, licensed demonstration audio and held-out public-dataset images are in `application.zip`. Docker extracts this archive when building the service. The bundle excludes personal recordings, private peer forms, student IDs and assessment documents.

## Deploy

Deploy this repository on Render as a **Docker Web Service**, select **Free**, and use `/api/status` as the health check. The Dockerfile supplies the start command and listens on the platform's `PORT`, on `0.0.0.0`.

Alternatively use **New > Blueprint**; `render.yaml` declares the single free web service. A free instance may sleep after inactivity and take about a minute to wake. See https://render.com/docs/free.

## Using the preview

Open the deployed HTTPS URL, keep the retrained model selected, and run the matching, above-target and background teaching examples. Visitors can also upload an audio file of at least 30 seconds, up to 20 MB. Uploaded audio is processed temporarily by the server and deleted after conversion; classification runs in the browser.

This educational prototype supports a discussion of breathing rhythm. It is not a validated clinical device and cannot verify breathing technique or clinical safety. Dataset provenance and licence information are included in `LICENSES.txt` inside the source archive and are available through the running app.
