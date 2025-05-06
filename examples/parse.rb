require_relative '../lib/vdf'

str = <<VDF
  "DepotBuildConfig"
  {
	  "DepotID" "2086532"
	  "ContentRoot" "root/"
	  "FileMapping"
	  {
		  "LocalPath" "*"
		  "DepotPath" "."
		  "recursive" "1"
	  }
	  "FileExclusion" "*.pdb"
  }
VDF

puts VDF.parse(str).inspect

object = {
  'DepotBuildConfig' => {
    'DepotID' => 2_086_532
  }
}

puts VDF.generate(object)
