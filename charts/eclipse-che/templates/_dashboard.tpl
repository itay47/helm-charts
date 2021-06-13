{{- define "dashboard.fullname" }}
{{- include "eclipse-che.fullname" . -}}-dashboard
{{- end -}}

{{- define "dashboard.labels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{{- define "dashboard.selectorLabels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: dashboard
{{- end -}}

{{- define "dashboard.image" }}
{{- .Values.dashboard.image.repository }}:{{ .Values.dashboard.image.tag | default .Chart.AppVersion -}}
{{- end -}}
