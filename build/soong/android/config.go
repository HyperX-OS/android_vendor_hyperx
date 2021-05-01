package android

// Global config used by Evolution X soong additions
var hyperxConfig = struct {
	// List of packages that are permitted
	// for java source overlays.
	JavaSourceOverlayModuleWhitelist []string
}{
	// JavaSourceOverlayModuleWhitelist
	[]string{
		"org.hyperx.hardware",
	},
}
