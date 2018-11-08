package apis_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	. "github.com/kun-lun/built-in-roles/pkg/apis"
)

var _ = Describe("Resources", func() {
	Describe("ToYAML", func() {
		Context("Everything OK", func() {
			It("should can be deserialize correctly", func() {
				fs := FS(false)
				_, e := fs.Open("/ansible.cfg")
				Expect(e).To(BeNil())
				builtInDir, e := fs.Open("/built.in")
				Expect(e).To(BeNil())
				files, e := builtInDir.Readdir(0)
				Expect(e).To(BeNil())
				Expect(len(files)).To(Equal(2))
			})
		})
	})
})
