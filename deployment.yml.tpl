apiVersion: apps/v1
kind: Deployment
metadata:
  name: $PROJECT_NAME
  labels:
    app: $PROJECT_NAME
spec:
  replicas: 2
  selector:
    matchLabels:
      app: $PROJECT_NAME
  template:
    metadata:
      labels:
        app: $PROJECT_NAME
    spec:
      containers:
      - name: nginx
        image: registry.gitlab.com/splash07/$PROJECT_NAME/$PROJECT_NAME:$REF_NAME-$IMAGE_TAG
        ports:
        - containerPort: 80
        resources:
          limits:
            cpu: "1"
            memory: 1Gi
          requests:
            cpu: 100m
            memory: 128Mi
