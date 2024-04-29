package com.devsuperior.dslearnbds.enums;

public enum DeliverStatus {

    PENDING(0),
    ACCEPTED(1),
    REJECTED(2);

    private Integer status;

    DeliverStatus(Integer status) {
        this.status = status;
    }

    public Integer getDeliverStatusValue(Integer value) {
        if (value != null) {
            for (DeliverStatus deliverStatus : DeliverStatus.values()) {
                if (value.equals(deliverStatus.status)) {
                    return value;
                }
            }
        }
        return null;
    }
}
