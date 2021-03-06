<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Train your Brain</h1>

<h3>Please calculate the result </h3>
<f:view>
        <f:loadBundle basename="de.vogella.jsf.card.messages" var="msg" />
        <h:form>
                <h:panelGrid columns="3">
                        <h:panelGrid columns="2">
                                <h:outputLabel value="#{msg.left}"></h:outputLabel>
                                <h:outputLabel id="left" value="#{cardData.card.left}"></h:outputLabel>

                                <h:outputLabel value="#{msg.right}"></h:outputLabel>
                                <h:outputLabel id="right" value="#{cardData.card.right}">
                                </h:outputLabel>

                                <h:outputLabel value="#{msg.result}"></h:outputLabel>
                                <h:inputText id="result" value="#{cardData.result}"></h:inputText>
                        </h:panelGrid>

                </h:panelGrid>
                <h:commandButton action="#{cardData.checkResult}"
                        value="#{msg.show}"></h:commandButton>
                <h:commandButton action="#{cardData.next}" value="#{msg.next}" type="submit"></h:commandButton>
                <h:messages layout="table"></h:messages>

                <h:panelGroup binding="#{cardData.resultPanel}" rendered="false">
                        <h:message for="result"></h:message>
                </h:panelGroup>

        </h:form>




</f:view>
</body>
</html>