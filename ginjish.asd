;;;; ginjish.asd

(asdf:defsystem #:ginjish
  :description "Jinja2-like templating"
  :author "John Q. Splittist <splittist@splittist.com>"
  :license "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria #:split-sequence #:serapeum
                            #:esrap #:lorem-ipsum)
  :components (
	       (:file "package")
	       (:file "specials")
	       (:file "conditions")
	       (:file "utils")
	       (:file "builtins")
	       (:file "grammar")
	       (:file "compiler")))

(asdf:defsystem #:ginjish/tests
  :depends-on (#:ginjish #:parachute)
  :components ((:file "tests")))
