variable "mock_project_roles"{
   type = set(string)
   default = ["SIG_ELT","SIG_DEVELOPER","SIG_PII"]
}

variable "mock_project_schemas"{
   type = set(string)
   default = ["RAW","CURATED","CONSUMPTION"]
}

variable "bucket_name" {
   default = "mock-project-bucket-sa"
}

variable "credentials" {
   default = {
        access_key = "AKIAVKO23O4O3K3CV64Y",
        secret_key = "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"
   }
}
