apiVersion: v1
kind: Service
metadata:
  name: $PROJECT_NAME
spec:
  type: NodePort
  selector:
    app: $PROJECT_NAME
  ports:
    - port: 80
      targetPort: 80
      protocol: TCP