UPDATE_SUITE_VERSIONS = 2018.1.0 2017.1.0 2016.1.0

.PHONY: all
all: $(UPDATE_SUITE_VERSIONS)

.PRECIOUS: FRCUpdateSuite_%.zip
FRCUpdateSuite_%.zip:
	wget -q "http://download.ni.com/support/softlib/first/frc/FileAttachments/FRCUpdateSuite_$*.zip"

%: FRCUpdateSuite_%.zip
	./extract-image.sh FRCUpdateSuite_$@.zip $@
