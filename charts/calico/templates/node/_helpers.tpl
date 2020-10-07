{{- define "calico.node.fullname" -}}
{{- include "calico.fullname" . -}}-node
{{- end -}}

{{- define "calico.node.labels" -}}
{{- include "calico.labels" . }}
app.kubernetes.io/component: node
{{- end -}}

{{- define "calico.node.selectorLabels" }}
{{- include "calico.selectorLabels" . }}
app.kubernetes.io/component: node
{{- end -}}
