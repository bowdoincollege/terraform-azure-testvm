
config {
  force = false
}

rule "terraform_naming_convention" { enabled = true }
rule "terraform_documented_outputs" { enabled = true }
rule "terraform_documented_variables" { enabled = true }
rule "terraform_module_pinned_source" { enabled = true }
rule "terraform_unused_declarations" { enabled = true }
rule "terraform_comment_syntax" { enabled = true }
rule "terraform_typed_variables" { enabled = true }
rule "terraform_required_providers" { enabled = true }
