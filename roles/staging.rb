name "staging"
description "Setup configuration for staging(local) environment"

default_attributes(
  ruby: {
    version: "2.0.0-p353"
  },
  chruby: {
    version: "0.3.8"
  }
)
