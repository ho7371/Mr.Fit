<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	alert(" ${ono}번 주문 상품 상태 변경 완료!");
	location.href = "${pageContext.request.contextPath}/adminSearchOrder.do?searchType=orderNo&&searchKeyword="+${ono};
</script>