{{- define "msa-project-be.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "msa-project-be.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}

{{- define "msa-project-be.labels" -}}
app.kubernetes.io/name: {{ include "msa-project-be.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ include "msa-project-be.fullname" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "msa-project-be.selectorLabels" -}}
app.kubernetes.io/name: {{ include "msa-project-be.name" . }}
app.kubernetes.io/instance: {{ include "msa-project-be.fullname" . }}
{{- end }}
