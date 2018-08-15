as yet unclassified
createPostWithAutor: anAuthor

	| title |
	"local:title := 'Example'.
	instance:newPost := PIExamplePost new.
	instance:newPost/title := local:title .
	instance:newPost/author := anAuthor.
	myBlog:posts := instance:newPost getPostAsDict.
	Transcript show: myBlog:posts ."