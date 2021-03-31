# rancheros-jinja2

A tool for run jinja2-cli using Docker in Rancheros

## Supported tags and Dockerfile links

-	[`latest` (*Dockerfile*)](https://github.com/rcastropolizainformatica/rancheros-jinja2/blob/main/Dockerfile)
-	[`v1.0.1` (*Dockerfile*)](https://github.com/rcastropolizainformatica/rancheros-jinja2/blob/v1.0.1/Dockerfile)

## Template file

template.j2
```yaml
template:
  variable_a: {{ var_a }}
  variable_b: {{ var_b }}
```
variables.yaml
```yaml
var_a: VARIABLE_A_VALUE
var_b: VARIABLE_B_VALUE
```

# How to use

### Command Line

```bash
docker build -t rancheros-jinja2 .
docker run --rm -v $(pwd)/test:/data \
    rancheros-jinja2 /data/template.j2 /data/variables.yml --format=yml
```
