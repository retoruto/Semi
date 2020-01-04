CC := g++
FLAGS := -std=c++11 -w
INC_DIR := include
SRC_DIR := src
BUILD_DIR := build
BIN_DIR := bin
INCLUDE := -I./$(INC_DIR)

$(BIN_DIR)/Semi: $(BUILD_DIR)/Semi.o $(BUILD_DIR)/Meeting.o $(BUILD_DIR)/User.o $(BUILD_DIR)/Date.o $(BUILD_DIR)/Storage.o $(BUILD_DIR)/SemiService.o $(BUILD_DIR)/SemiUI.o 
	@mkdir -p $(BIN_DIR)
	$(CC) $(FLAGS) $(INCLUDE) $^ -o $@

$(BUILD_DIR)/Meeting.o: $(SRC_DIR)/Meeting.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/Meeting.cpp

$(BUILD_DIR)/User.o:    $(SRC_DIR)/User.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/User.cpp

$(BUILD_DIR)/Date.o:  $(SRC_DIR)/Date.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/Date.cpp

$(BUILD_DIR)/Storage.o: $(SRC_DIR)/Storage.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/Storage.cpp

$(BUILD_DIR)/SemiService.o: $(SRC_DIR)/SemiService.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/SemiService.cpp

$(BUILD_DIR)/SemiUI.o: $(SRC_DIR)/SemiUI.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $(SRC_DIR)/SemiUI.cpp

$(BUILD_DIR)/Semi.o: $(SRC_DIR)/Semi.cpp 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c -o $@ $<

clean: 
	@rm -rf $(BUILD_DIR)/*.o
	@rm -rf $(BIN_DIR)/*
