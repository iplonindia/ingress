# ingress
For deploying all ingress

For nginx you have to change the below lines in the values.yaml

line no 113: ingressClassResourceName: need to change
line no 145: ingressClass: need to change and it can be matched with ingressClassResourceName:
Line no 499:  loadBalancerIP should be changed with the reserved ip


For haproxy you have to change the below lines in the values.yaml
Line no 165: ingressClassResource:
Line no 175: ingressclass:
Line No 383: Service type to LoadBalancer

Also you need to modify the cloudbuild-[environment]-ingress.yaml when ever you are creating the new ingress

As usual you are aware you have to add the new values.yaml and skaffold.yaml for adding the new ingress.

Just check the existing values.yaml and skaffold.yaml for more understanding.. it will be helpful...
