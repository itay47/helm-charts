{{- define "devfile-registry.fullname" }}
{{- include "eclipse-che.fullname" . -}}-devfile-registry
{{- end -}}

{{- define "devfile-registry.labels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: devfile-registry
{{- end -}}

{{- define "devfile-registry.selectorLabels" }}
{{- include "eclipse-che.labels" . }}
app.kubernetes.io/component: devfile-registry
{{- end -}}

{{- define "devfile-registry.image" }}
{{- .Values.devfileRegistry.image.repository }}:{{ .Values.devfileRegistry.image.tag | default .Chart.AppVersion -}}
{{- end -}}
