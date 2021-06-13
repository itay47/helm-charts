{{- define "plugin-registry.fullname" }}
{{- include "eclipse-che.fullname" . -}}-plugin-registry
{{- end -}}

{{- define "plugin-registry.labels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: plugin-registry
{{- end -}}

{{- define "plugin-registry.selectorLabels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: plugin-registry
{{- end -}}

{{- define "plugin-registry.image" }}
{{- .Values.pluginRegistry.image.repository }}:{{ .Values.pluginRegistry.image.tag | default .Chart.AppVersion -}}
{{- end -}}
