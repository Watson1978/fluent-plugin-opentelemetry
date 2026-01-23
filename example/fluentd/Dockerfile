FROM fluent/fluentd:edge-debian

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    make \
    gcc \
    git

# RUN gem uninstall fluentd -a
# COPY ./fluentd-1.19.0.gem /fluentd/
# RUN gem install /fluentd/fluentd-1.19.0.gem

RUN fluent-gem install grpc

RUN gem uninstall fluent-plugin-opentelemetry -a
COPY ./fluent-plugin-opentelemetry-0.4.0.gem /fluentd/
RUN fluent-gem install /fluentd/fluent-plugin-opentelemetry-0.4.0.gem

RUN fluent-gem install leak_profiler

