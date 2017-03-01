<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PtAssignments.aspx.vb" Inherits="PtAssignments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <style>


.table > tbody > tr > td {
     vertical-align: middle;
     text-align: left;

}
.table > tbody > tr > th {
     text-align: left;

}
.tblDiv
        {
    width: 700px;
        }
    .bs-example{
    	margin: 20px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">

<div class="container">
  <h1>Responsive Bootstrap</h1>
    <div class="col-lg-3 panel panel-success">
         <div class="col-xs-12">
        <div class="row">
        <table>
            <tr>
                <td>
                    201<br />
                    202<br />
                    203<br />
                    204<br />
                    205<br />
                    206<br />
                </td>
                <td>
                    Jenny Smith RN
                </td>
            </tr>
        </table>
        </div>
             </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<div class="tblDiv">
    <div class="ibox-content">
    <table class="col-md-6">

<%--    <table   class="footable table table-stripped toggle-arrow-tiny col-md-3">--%>
        <thead>
        <tr>

            <th>Room</th>
            <th>Nurse</th>
            <th>Room</th>
            <th>Tech</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>200</td>
            <td rowspan="5">Jenny Smith RN</td>
            <td>200</td>

            <td rowspan="7">Cindy Johnson</td>
        </tr>
        <tr>
            <td>201</td>
            <td>201</td>
        </tr>
        <tr>
            <td>202</td>
            <td>202</td>

        </tr>
        <tr>
            <td>203</td>
            <td>203</td>
        </tr>
        <tr>
            <td>204</td>
            <td>204</td>

        </tr>
        <tr>
            <td>205</td>
            <td rowspan="5">Jill Hansen RN</td>
            <td>205</td>

        </tr>
        <tr>
            <td>206</td>
            <td>206</td>

        </tr>
        <tr>
            <td>207</td>
            <td>207</td>

            <td rowspan="7">Jim Orwell</td>
        </tr>

        <tr>
            <td>208</td>
            <td>208</td>

        </tr>
        <tr>
            <td>209</td>
            <td>209</td>

        </tr>
        <tr><%-- TEECH --%>
            <td>210</td>
            <td rowspan="5">Steven Orwell RN</td>
            <td>210</td>

        </tr><%-- /TEECH --%>
        <tr><%-- TEECH --%>
            <td>211</td>
            <td>211</td>

        </tr><%-- /TEECH --%>
        <tr><%-- TEECH --%>
            <td>212</td>
            <td>212</td>

        </tr><%-- /TEECH --%>
        <tr><%-- TEECH --%>
            <td>213</td>
            <td>213</td>

        </tr><%-- /TEECH --%>
        <tr><%-- TEECH --%>
            <td>214</td>
            <td>214</td>

            <td rowspan="6">Sandy Beach</td>
        </tr><%-- /TEECH --%>
        <tr><%-- TEECH --%>
            <td>215</td>
            <td rowspan="5">Steven Orwell RN</td>
            <td>215</td>

        </tr><%-- /TEECH --%>
        <tr>
            <td>216</td>
            <td>216</td>

        </tr>        
        <tr>
            <td>217</td>
            <td>217</td>

        </tr>       
        <tr>
            <td>218</td>
            <td>218</td>

        </tr>       
        <tr>
            <td>219</td>
            <td>219</td>

        </tr>       
        </tbody>
    </table>

</div>
</div>
</div>    
    </form>
</body>
</html>
