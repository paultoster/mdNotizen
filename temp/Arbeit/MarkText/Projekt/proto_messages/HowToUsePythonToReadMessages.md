example AVP2.proto with message PathSnippet:

PathSnippet.path.identifier

root.Path.uint32

or

PathSnippet.path.segments.poses.x

root.Path(struct).Pathsegement(repstruct).SPathPose(repstruct).float

d{name:"name",type:struct,value:val}

example:

dmain = {"n":"messagename","s":"PathSnippet","f":message,"t":root,"v":[dpath]}

dpath =  {"n":"path","s":"Path","f":message,"t":optional,"v":[dsegments,didentifier,dreserved1,dreserved1]}

dsegments =  {"n":"segments","s":"PathSegment","f":message,"t":repeated,"v":[didentifier,dposes]}

didentifier =  {"n":"identifier","s":"uint32","f":value,"t":optional,"v":[]}

dposes =  {"n":"poses","s":"SPathPose","f":message,"t":repeated,"v":[dx,dy,dtheta,dkappa,dvelo]}

dx =  {"n":"x","s":"float","f":value,"t":optional,"v":[]}

xname = "messagename_path_segemnts_000_poses_000_x" => [float  
