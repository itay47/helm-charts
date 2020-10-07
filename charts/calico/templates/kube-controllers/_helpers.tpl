{{- define "calico.kube-controllers.fullname" -}}
{{- include "calico.fullname" . -}}-kube-controllers
{{- end -}}

{{- define "calico.kube-controllers.labels" -}}
{{- include "calico.labels" . }}
app.kubernetes.io/component: kube-controllers
{{- end -}}

{{- define "calico.kube-controllers.selectorLabels" }}
{{- include "calico.selectorLabels" . }}
app.kubernetes.io/component: kube-controllers
{{- end -}}
