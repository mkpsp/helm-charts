
{{- define "name" }}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "ns" }}
{{- .Release.Namespace -}}
{{- end }}
