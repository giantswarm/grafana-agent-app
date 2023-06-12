{{/*
Common labels
*/}}
{{- define "grafana-agent.labels" -}}
helm.sh/chart: {{ include "grafana-agent.chart" . }}
{{ include "grafana-agent.selectorLabels" . }}
{{- if index .Values "$chart_tests" }}
app.kubernetes.io/version: "vX.Y.Z"
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- else }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | default "atlas" | quote }}
giantswarm.io/managed-by: {{ .Release.Name | quote }}
giantswarm.io/service-type: {{ .Values.serviceType }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "grafana-agent.selectorLabels" -}}
app.kubernetes.io/name: {{ include "grafana-agent.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
