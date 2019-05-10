Backblaze B2 notifications step

```steps:

 upload:
    title: Upload file to Backblaze B2
    image: codefresh/backblaze-b2-plugin
    environment:
      APPLICATION_KEY_ID=<application key id>
      APPLICATION_KEY=<application key>
      BUCKET_ID=<bucket id>
      UPLOAD_FILE_1=["./Dockerfile", "Dockerfile", "text/plain"]
      UPLOAD_FILE_2=["./package.json", "package.json"]```
```

You can upload several files at once. Use UPLOAD_FILE_ prefix for file variables.
Each file variable is an array of:
- file path (required)
- file name in bucket (required)
- file MIME type (optional, if omitted will be detected from file extension)


```
List of env variables:
APPLICATION_KEY_ID - required
APPLICATION_KEY    - required
BUCKET_ID          - required
UPLOAD_FILE_N      - required
```
