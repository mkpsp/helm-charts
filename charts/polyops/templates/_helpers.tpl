
{{- define "name" }}
{{- $ := index . 0 }}
{{- $name := index . 1 }}
{{- if eq $.Values.prefix "disable" }}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- printf "%s-%s" $.Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end }}
{{- end }}

{{- define "ns" }}
{{- .Release.Namespace -}}
{{- end }}
