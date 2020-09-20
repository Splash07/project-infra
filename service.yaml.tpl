apiVersion: v1
kind: Service
metadata:
  name: $PROJECT_NAME
spec:
  type: NodePort
  selector:
    app: $PROJECT_NAME
  ports:
    - protocol: TCP
      targetPort: 80
      port: 80
