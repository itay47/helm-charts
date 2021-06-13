{{- define "server.fullname" }}
{{- include "eclipse-che.fullname" . -}}-server
{{- end -}}

{{- define "server.labels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: server
{{- end -}}

{{- define "server.selectorLabels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: server
{{- end -}}

{{- define "server.image" }}
{{- .Values.server.image.repository }}:{{ .Values.server.image.tag | default .Chart.AppVersion -}}
{{- end -}}

{{- define "server.serviceAccountName" -}}
{{- include "eclipse-che.serviceAccountName" . -}}-server
{{- end }}
