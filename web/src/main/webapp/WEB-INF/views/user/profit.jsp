<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/jquery.dataTables.js'/>" type="text/javascript"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>" type="text/css"/>
<script type="text/javascript">
    $(document).ready(function() {
        oTable = $('#datatables').dataTable({
            "sPaginationType": "full_numbers"
        });
    });
</script>

<div class="content">
    <table cellpadding="0" cellspacing="0" border="0" class="display" id="datatables" width="100%">
        <thead>
        <tr>
            <th>Bulan</th>
            <th>Tahun</th>
            <th>Status</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listProfit}" var="profit">
            <tr>
                <td>${profit.bulan}</td>
                <td>${profit.tahun}</td>
                <td>${profit.status}</td>
                <td style="text-align:right;">Rp.&nbsp;<fmt:formatNumber value="${profit.jumlah}" pattern="#,##0"/></td>
                 <td>${profit.keterangan}</td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">Total sudah ditransfer : Rp.&nbsp;<fmt:formatNumber value="${totalCompleted}"
                                                                                pattern="#,##0"/></td>
        </tr>
        <tr>
            <td colspan="5">Total belum ditransfer : Rp.&nbsp;<fmt:formatNumber value="${totalPending}"
                                                                                pattern="#,##0"/></td>
        </tr>
        </tfoot>
    </table>
    <table>

    </table>
</div>
