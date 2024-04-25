package com.devsuperior.dslearnbds.enums;

public enum ResourceType {
    LESSON_ONLY(0),
    LESSON_TASK(1),
    FORUM(2),
    EXTERNAL_LINK(3);

    private int value;

    ResourceType(int value) {
        this.value = value;
    }

    public ResourceType getResourceType(int value) {
        for (ResourceType resourceType : ResourceType.values()) {
            if (value == resourceType.value) {
                return resourceType;
            }
        }
        return null;
    }
}
