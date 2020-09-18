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
      port: 3001
      targetPort: 80
