# Copyright 2020 The arhat.dev Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

RUN_LINTER := docker run -t --rm -v "$(shell pwd):$(shell pwd)" -w "$(shell pwd)"

lint.file:
	${RUN_LINTER} mstruebing/editorconfig-checker:2.1.0 ec -config .ecrc

lint.shell:
	${RUN_LINTER} koalaman/shellcheck-alpine:stable \
		sh -c "find . | grep -E -e '.sh\$$' | grep -v build | xargs -I'{}' shellcheck -S warning -e SC1090 -e SC1091 {} ;"

lint.yaml:
	${RUN_LINTER} arhatdev/yamllint:latest yamllint -c .yaml-lint.yml .

lint.all: \
	lint.file \
	lint.shell \
	lint.yaml
