if (
	// check mouse is exist https://stackoverflow.com/questions/7838680/detecting-that-the-browser-has-no-mouse-and-is-touch-only
	!matchMedia("(any-hover:none)").matches
) {
	import("x/mouse.js")
}
