//
// Built on Thu Feb 18 01:47:36 CET 2021 by logback-translator
// For more information on configuration files in Groovy
// please see http://logback.qos.ch/manual/groovy.html

// For assistance related to this tool or configuration files
// in general, please contact the logback user mailing list at
//    http://qos.ch/mailman/listinfo/logback-user

// For professional support please see
//   http://www.qos.ch/shop/products/professionalSupport

import ch.qos.logback.classic.PatternLayout
import ch.qos.logback.core.ConsoleAppender

import static ch.qos.logback.classic.Level.INFO
import static ch.qos.logback.classic.Level.DEBUG
import static ch.qos.logback.classic.Level.WARN

scan("30 seconds")

appender("console", ConsoleAppender) {
	layout(PatternLayout) {
		pattern = "%white(%d{yyyy-MM-dd HH:mm:ss}) %highlight(%-5level) %cyan(%logger{15}) - %msg%n"
	}
}

logger("org.apereo.cas", DEBUG, ["console"], false)
logger("org.springframework", WARN, ["console"], false)
root(INFO, ["console"])