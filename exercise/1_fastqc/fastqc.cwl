{
    "class": "CommandLineTool",
    "cwlVersion": "v1.0",
    "$namespaces": {
        "sbg": "https://sevenbridges.com"
    },
    "id": "division-training/gold-coast/fastqc/5",
    "baseCommand": [
        "fastqc"
    ],
    "inputs": [
        {
            "id": "input_files",
            "type": "File[]?",
            "inputBinding": {
                "position": 100
            },
            "label": "Input FASTQ Files",
            "sbg:fileTypes": "FASTQ, FASTQ.GZ"
        },
        {
            "sbg:toolDefaultValue": "1",
            "id": "threads",
            "type": "int?",
            "inputBinding": {
                "position": 3,
                "prefix": "--threads"
            },
            "label": "Number of threads",
            "doc": "Specifies the number of files which can be processed simultaneously."
        }
    ],
    "outputs": [
        {
            "id": "report_zip",
            "label": "Report zip",
            "type": "File[]?",
            "outputBinding": {
                "glob": "*.zip"
            },
            "sbg:fileTypes": "ZIP"
        },
        {
            "id": "output",
            "label": "Report HTML",
            "type": "File[]?",
            "outputBinding": {
                "glob": "*.html"
            },
            "sbg:fileTypes": "HTML"
        }
    ],
    "label": "FastQC",
    "arguments": [
        {
            "position": 0,
            "prefix": "",
            "valueFrom": "--noextract"
        },
        {
            "position": 1,
            "prefix": "--outdir",
            "valueFrom": "."
        }
    ],
    "requirements": [
        {
            "class": "DockerRequirement",
            "dockerPull": "images.sbgenomics.com/division-training/brooksph/fastqc_version_11:0.11.8"
        }
    ],
    "sbg:projectName": "gold-coast",
    "sbg:revisionsInfo": [
        {
            "sbg:revision": 0,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561570953,
            "sbg:revisionNotes": null
        },
        {
            "sbg:revision": 1,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561593856,
            "sbg:revisionNotes": "First_commit"
        },
        {
            "sbg:revision": 2,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561595518,
            "sbg:revisionNotes": "Modified image path - added division to docker image path"
        },
        {
            "sbg:revision": 3,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561604857,
            "sbg:revisionNotes": "_->-"
        },
        {
            "sbg:revision": 4,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561604921,
            "sbg:revisionNotes": "removed username"
        },
        {
            "sbg:revision": 5,
            "sbg:modifiedBy": "division-training/brooksph",
            "sbg:modifiedOn": 1561696177,
            "sbg:revisionNotes": "modified path"
        }
    ],
    "sbg:image_url": null,
    "sbg:appVersion": [
        "v1.0"
    ],
    "sbg:id": "division-training/gold-coast/fastqc/5",
    "sbg:revision": 5,
    "sbg:revisionNotes": "modified path",
    "sbg:modifiedOn": 1561696177,
    "sbg:modifiedBy": "division-training/brooksph",
    "sbg:createdOn": 1561570953,
    "sbg:createdBy": "division-training/brooksph",
    "sbg:project": "division-training/gold-coast",
    "sbg:sbgMaintained": false,
    "sbg:validationErrors": [],
    "sbg:contributors": [
        "division-training/brooksph"
    ],
    "sbg:latestRevision": 5,
    "sbg:publisher": "sbg",
    "sbg:content_hash": "a15b5b67947631d55251cbdfb00ed771a5d99bc9e0549236c2802f28532f2f1cb"
}