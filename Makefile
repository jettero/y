
NAME := hi
SRC_FILES := $(shell find ./ -type f -name \*.go)

# dummy or command targets

run-example: hi
	echo This is a test. | ./hi . coal This purple test sky '.es\S+' cyan

complain:
	find ./ -type f -name \*.go | xargs golint

clean:
	git clean -dfx

# derived rules

$(NAME): $(SRC_FILES)
	go build -o $@
