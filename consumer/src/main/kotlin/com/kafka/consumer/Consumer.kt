package com.kafka.consumer

import org.slf4j.LoggerFactory
import org.springframework.kafka.annotation.KafkaListener
import org.springframework.stereotype.Component

@Component
class Consumer {
    private val logger = LoggerFactory.getLogger(javaClass)

    @KafkaListener(topics = ["simple-message-topic"], groupId = "simple-kotlin-consumer")
    fun processMessage(message: String){
        logger.info("got message: $message")
    }
}