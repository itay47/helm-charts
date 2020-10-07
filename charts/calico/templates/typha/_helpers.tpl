{{- define "calico.typha.fullname" -}}
{{- include "calico.fullname" . -}}-typha
{{- end -}}

{{- define "calico.typha.labels" -}}
{{- include "calico.labels" . }}
app.kubernetes.io/component: typha
{{- end -}}

{{- define "calico.typha.selectorLabels" }}
{{- include "calico.selectorLabels" . }}
app.kubernetes.io/component: typha
{{- end -}}
