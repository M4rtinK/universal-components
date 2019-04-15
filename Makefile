
BACKEND=controls

test:
	qmltestrunner -import ${BACKEND} -input tests/
