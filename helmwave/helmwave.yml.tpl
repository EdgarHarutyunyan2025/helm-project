project: "Example: apps per own namespace"
version: "0.41.1"

releases:
{{- $vars := (readFile "vars.yaml" | fromYaml) }}
{{- range $v := $vars.releases }}
  - name: {{ $v.name }}
    namespace: {{ default "default" (or $v.frontNamespace $v.backendNamespace) }}
    chart:
      name: {{ default "" (or $v.frontChart $v.backendChart) }}
    values:
      - {{ default "" (or $v.frontValuesFile $v.backendValuesFile) }}
    create_namespace: {{ default false (or $v.createNamespaceFront $v.createNamespaceBackend) }}
    wait: true
    timeout: "1m"
    atomic: false
{{- end }}

