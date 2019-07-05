<?xml version="1.0"?>
    <!DOCTYPE pdf PUBLIC "-//big.faceless.org//report" "report-1.1.dtd">
    <pdf>

        <head>
            <#if record.currencysymbol="USD">
                <#setting locale="en_US">
                    <#else>
                        <#setting locale="es_CR">
            </#if>
            <macrolist>
                <macro id="nlheader">
                    <table class="head">
                        <#assign fee=1>
                            <tr>
                                <td width="25%">
                                    <#if record.subsidiary.custrecord_mw_ei_url_logo?length !=0><img src="${record.subsidiary.custrecord_mw_ei_url_logo}" />
                                        <#else><img src="${companyInformation.formlogo}" /></#if>
                                </td>
                                <td align="center" style="text-align:center; padding-top: 15px;" width="35%">
                                    <p style="text-align:center;font-size:13px">
                                        <b>${record.subsidiary.custrecord_mw_ei_name}</b>
                                        <br />
                                        <b>RFC : </b> ${record.subsidiary.custrecord_mw_ei_identification_card_sub}
                                        <br />
                                        <b>Régimen Fiscal : </b> ${record.subsidiary.custrecord_mw_ei_mx_subs_reg_fiscal}
                                        <br />
                                        <b>Lugar de Expedición : </b> ${record.subsidiary.custrecord_mw_ei_mx_subs_sucursal}
                                        <br />
                                        <b>${record.subsidiary.url}</b>
                                    </p>
                                </td>
                                <td align="center" style="text-align:center;padding-top: -20px;" width="40%">

                                    <table>
                                        <tr>
                                            <td style="padding-left:5px;padding-right:5px;" width="100%">
                                                <table class="dTable1Narrow">
                                                    <thead>
                                                        <tr>
                                                            <th align="center" class="dTabletrNarrow">Factura #</th>
                                                            <th align="center" class="dTabletrNarrow">Tipo de Comprobante</th>
                                                        </tr>
                                                    </thead>
                                                    <tr>
                                                        <td align="center">${record.tranid}</td>
                                                        <td align="center">I - Ingreso</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>

                                        <tr style="padding-top: -10px;">
                                            <td style="padding-left:5px;padding-right:5px;" width="100%">
                                                <table class="dTable1Narrow">
                                                    <thead>
                                                        <tr>
                                                            <th align="center" class="dTabletrNarrow">Folio Fiscal</th>
                                                        </tr>
                                                    </thead>
                                                    <tr>
                                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                                            <td align="center">${record.custbody_mw_ei_mx_inv_uuid_s}</td>
                                                            <#else>
                                                                <td align="center">${record.custbody_mw_ei_mx_inv_uuid_p}</td>
                                                        </#if>

                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>

                                        <tr style="padding-top: -10px;">
                                            <td style="padding-left:5px;padding-right:5px;" width="100%">
                                                <table class="dTable1Narrow">
                                                    <thead>
                                                        <tr>
                                                            <th align="center" class="dTabletrNarrow">Fecha y hora de Expedición</th>
                                                        </tr>
                                                    </thead>
                                                    <tr>
                                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                                            <td align="center">${record.custbody_mw_ei_mx_created_date_inv_s}</td>
                                                            <#else>
                                                                <td align="center">${record.custbody_mw_ei_mx_created_date_inv_p}</td>
                                                        </#if>

                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>

                                    </table>

                                    <br />

                                </td>
                            </tr>
                    </table>
                </macro>
                <macro id="nlfooter">
                    <table width="100%">
                        <tr>
                            <td align="left" style="vertical-align:middle" width="20%">${record.tranid}</td>
                            <td align="center" style="vertical-align:middle" width="60%"> ${record.subsidiary.custrecord_mw_ei_leyenda_cfdi} </td>
                            <td align="right" width="20%">P&aacute;gina
                                <pagenumber/> </td>
                        </tr>
                    </table>
                </macro>
            </macrolist>
            <style type="text/css">
                table {
                    font-family: sans-serif;
                    font-size: 9pt;
                    margin-top: 10px;
                    table-layout: fixed;
                    width: 100%;
                }
                
                .dTable thead th,
                .dTabletr {
                    background: #000;
                    color: #fff;
                    text-align: center !important;
                    font-size: 12px;
                    padding: 5px 10px;
                }
                
                .dTable td,
                .dTable1 td {
                    border-left: 1px solid #000;
                    padding: 5px 10px;
                }
                
                .dTable,
                .dTable1 tbody,
                .dTable1 .dTabletr {
                    border-top: 1px solid #000;
                    border-bottom: 1px solid #000;
                    border-right: 1px solid #000;
                }
                
                .dTableNarrow td,
                .dTable1Narrow td {
                    border-left: 1px solid #000;
                    padding: 0px 5px;
                }
                
                .dTableNarrow,
                .dTable1Narrow tbody,
                .dTable1Narrow .dTabletrNarrow {
                    border-top: 1px solid #000;
                    border-bottom: 1px solid #000;
                    border-right: 1px solid #000;
                }
                
                .dTableNarrow thead th,
                .dTabletrNarrow {
                    background: #000;
                    color: #fff;
                    text-align: center !important;
                    font-size: 12px;
                    padding: 0px 5px;
                }
                
                .dTableNarrow td,
                .dTable1Narrow td {
                    border-left: 1px solid #000;
                    padding: 3px 5px;
                }
                
                .title {
                    font-size: 18px;
                }
                
                .total table .title {
                    background: #000;
                    color: #fff;
                    border-bottom: 1px solid #333333;
                    font-size: 12px;
                }
                
                .total table td {
                    border: 1px solid #000;
                    padding: 5px 10px;
                }
            </style>
        </head>

        <body header="nlheader" header-height="16%" footer="nlfooter" footer-height="40pt" padding="0.5in 0.5in 0.5in 0.5in" size="Letter">

            <table class="dTable">
                <thead>
                    <tr>
                        <th align="left" style="font-size:16px" width="50%">Cliente</th>
                        <th align="left" style="font-size:16px" width="50%">${record.shipaddress@label}</th>
                    </tr>
                </thead>
                <tr>
                    <td width="50%"><b>Nombre: </b>
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>${record.custbody_mw_ei_name_customer_s}
                            <#else>${record.custbody_mw_ei_name_customer_p}</#if>
                        <br/><b>C&eacute;dula Jur&iacute;dica: </b>
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>${record.custbody_mw_ei_mx_customer_rfc_s}
                            <#else>${record.custbody_mw_ei_mx_customer_rfc_p}</#if>
                        <br /><b>Direcci&oacute;n: </b>${record.billaddress?keep_after(record.billaddressee)}
                        <br/>
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                            <#if record.custbody_mw_ei_phone_customer_s?length !=0><b>Tel&eacute;fono: </b>(${record.custbody_mw_ei_phone_customer_s?keep_before("-")}) ${record.custbody_mw_ei_phone_customer_s?keep_after("-")}
                                <br/>
                            </#if>
                            <#else>
                                <#if record.custbody_mw_ei_phone_customer_p?length !=0><b>Telefono: </b>(${record.custbody_mw_ei_phone_customer_p?keep_before("-")}) ${record.custbody_mw_ei_phone_customer_p?keep_after("-")}
                                    <br/>
                                </#if>
                        </#if><b>Correo Electr&oacute;nico: </b>
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>${record.custbody_mw_ei_email_customer_s}
                            <br />
                            <#else>${record.custbody_mw_ei_email_customer_p}
                                <br />
                        </#if>
                        <b>Uso CFDI: </b>
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                            ${record.custbody_mw_ei_mx_uso_cfdi_s}
                            <#else>
                                ${record.custbody_mw_ei_mx_uso_cfdi_p}
                        </#if>
                    </td>
                    <td width="50%">${record.shipaddress}</td>
                </tr>
            </table>

            <table class="body dTable">
                <thead>
                    <tr>
                        <th align="center" width="20%">
                            <p style="text-align:center;">${record.terms@label}</p>
                        </th>
                        <th align="center" width="20%">
                            <p style="text-align:center;">${record.duedate@label}</p>
                        </th>
                        <th align="center" width="20%">
                            <p style="text-align:center;">Forma de pago</p>
                        </th>
                        <th align="center" width="20%">
                            <p style="text-align:center;">Método de pago</p>
                        </th>
                        <th align="center" width="20%">
                            <p style="text-align:center;">${record.currency@label}</p>
                        </th>
                    </tr>
                </thead>
                <tr>
                    <td align="center" width="20%">
                        <p style="text-align:center;">${record.terms}</p>
                    </td>
                    <td align="center" width="20%">
                        <p style="text-align:center;">${record.duedate}</p>
                    </td>
                    <td align="center" width="20%">
                        <p style="text-align:center;">${record.custbody_mw_ei_mx_inv_forma_pago_s}</p>
                    </td>
                    <td align="center" width="20%">
                        <p style="text-align:center;">${record.custbody_mw_ei_mx_metodo_pago_s}</p>
                    </td>
                    <td align="center" width="20%">
                        <p style="text-align:center;">${record.currencysymbol}</p>
                    </td>
                </tr>
            </table>

            <#if record.item?has_content>
                <table class="itemtable dTable">
                    <#list record.item as item>
                        <#if item_index==0>
                            <thead>
                                <tr>
                                    <th align="center" width="10%">Cantidad</th>
                                    <th align="center" width="20%">Clave SAT</th>
                                    <th align="left"   width ="45%">Descripción</th>
                                    <th align="center" width="10%">
                                        <p style="text-align:left;">Valor Unitario</p>
                                    </th>
                                    <th align="center" width="5%">Unidad</th>
                                    <th align="center" width="10%">
                                        <p style="text-align:left;">Importe Total</p>
                                    </th>
                                </tr>
                            </thead>
                        </#if>
                        <tr>
                            <td align="center" width="10%">${item.quantity}</td>
                            <td align="center" width="20%">
                                <p style="text-align:left;">${item.item.custitem_mw_ei_mx_item_clave}</p>
                            </td>

                            <td width="45%" style="font-size:10px;">
                                <p style="text-align:left;"><span class="itemname">${item.item}</span>
                                    <br/>${item.description}</p>
                            </td>
                            <td align="right" width="10%">${item.rate?string}</td>
                            <td align="center" width="5%">
                                <p style="text-align:left;">${item.item.custitem_mw_ei_mx_item_unidad_medida}</p>
                            </td>
                            <td align="right" width="10%">${item.amount?string}</td>
                        </tr>
                    </#list>
                </table>
            </#if>

            <table align="center" class="total">
                <tr>
                    <td align="right" width="40%">
                        <table align="right" style="margin-top:1px;width:260px;">
                          <tr>
                                  <td align="center" class="title" style="vertical-align:middle;" width="40%">Subtotal</td>
                                  <td align="right" style="vertical-align:middle;" width="60%">${record.subtotal}</td>
                              </tr>
                          
                          <#if record.custbody_ei_mx_inv_total_ieps?length!= 0>
                          
                            <#assign tax_map = record.custbody_ei_mx_inv_total_ieps?eval>
                            <#list tax_map?keys as tax_type>

                                <tr>
                                <td align="center" class="title" style="vertical-align:middle;" width="40%">
                                    <#if tax_type=="01">
                                    <p style="text-align:left;">ISR Ret</p>
                                    <#elseif tax_type=="02">
                                    <p style="text-align:left;">IVA Ret</p>
                                    <#elseif tax_type=="03">
                                    <p style="text-align:left;">IEPS Ret</p>
                                    </#if>                                  
                                </td> 
                                <td align="right" style="vertical-align:middle;" width="60%">${tax_map[tax_type]?string.currency}</td>
                                </tr>

                            </#list>
                           <#else>
                            </#if>
                          
                            
                            <#if record.custbody_ei_mx_inv_total_iva?length!= 0>
                              <#assign tax_map = record.custbody_ei_mx_inv_total_iva?eval>
                              <#list tax_map?keys as tax_type>

                                <#list tax_map[tax_type] as tasa, monto>
                                  <tr>
                                    <td align="center" class="title" style="vertical-align:middle;" width="40%">
                                      <#if tax_type=="02">
                                        <p style="text-align:left;">IVA ${tasa}%</p>
                                      <#elseif tax_type=="03">
                                        <p style="text-align:left;">IEPS ${tasa}%</p>
                                      </#if>                                  
                                    </td> 
                                    <td align="right" style="vertical-align:middle;" width="60%">${monto?string.currency}</td>
                                  </tr>
                                </#list>
                              </#list>
                              
                            <#else>
                              <tr>
                                  <td align="center" class="title" style="vertical-align:middle;" width="40%">Impuestos</td>
                                  <td align="right" style="vertical-align:middle;" width="60%">${record.taxtotal}</td>
                              </tr>
                            </#if>
                              

                            
                            

                            <#if record.discounttotal?string?length!=0>
                              <tr>
                                  <td align="center" class="title" style="vertical-align:middle;" width="40%">Descuento</td>
                                  <td align="right" style="vertical-align:middle;" width="60%">${record.discounttotal?string}</td>
                              </tr>
                            </#if>
                            
                            <tr>
                                <td align="center" class="title" style="vertical-align:middle;" width="30%">Total</td>
                                <td align="right" style="vertical-align:middle;" width="70%">${record.total?string}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

            <table class="body dTable" style="border: none;">
                <tr style="border: none;">
                    <td width="84%" style="padding: 0px;border: none;">
                        <table class="dTable1Narrow" style="margin: 0px;border: none;">
                            <thead>
                                <tr>
                                    <th align="center" colspan="2" style="font-size: 11px" class="dTabletrNarrow">N° CSD Emisor</th>
                                    <th align="center" colspan="9" style="font-size: 11px" class="dTabletrNarrow">Sello Digital del CFDI</th>
                                </tr>
                            </thead>
                            <tr>
                                <td align="center" colspan="2" style="font-size: 8px">
                                    <p style="text-align: left;vertical-align: middle;">
                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                            ${record.custbody_mw_ei_mx_inv_num_cert_s}
                                            <#else>
                                                ${record.custbody_mw_ei_mx_inv_num_cert_p}
                                        </#if>
                                    </p>
                                </td>
                                <td align="center" colspan="9" style="font-size: 8px">
                                    <p style="text-align: left;vertical-align: middle;">
                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                            ${record.custbody_mw_ei_mx_inv_sello_s}
                                            <#else>
                                                ${record.custbody_mw_ei_mx_inv_sello_p}
                                        </#if>
                                    </p>
                                </td>
                            </tr>
                        </table>

                        <table class="dTable1Narrow" style="margin: 0px;border: none;">
                            <thead>
                                <tr>
                                    <th align="center" colspan="2" style="font-size: 11px" class="dTabletrNarrow">N° CSD SAT</th>
                                    <th align="center" colspan="9" style="font-size: 11px" class="dTabletrNarrow">Sello Digital del SAT</th>
                                </tr>
                            </thead>
                            <tr>
                                <td align="center" colspan="2" style="font-size: 8px;">
                                    <p style="text-align: left;vertical-align: middle;">
                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                            ${record.custbody_mw_ei_mw_num_sello_sat_s}
                                            <#else>
                                                ${record.custbody_mw_ei_mw_num_sello_sat_p}
                                        </#if>
                                    </p>
                                </td>
                                <td align="center" colspan="9" style="font-size: 8px;">
                                    <p style="text-align: left;vertical-align: middle;">
                                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                                            ${record.custbody_ei_mx_inv_sello_sat_s}
                                            <#else>
                                                ${record.custbody_ei_mx_inv_sello_sat_p}
                                        </#if>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td align="center" style="font-size: 8px;text-align: left;vertical-align: middle;border: 1px solid #000;border-left: none;" width="16%">
                        <#if record.subsidiary.custrecord_mw_ei_environment?contains( "S")>
                            <#if record.custbody_mw_ei_qr_code_invoice_s?length !=0>
                                <img height="100px" align="middle" src="${record.custbody_mw_ei_qr_code_invoice_s}" width="100px" />
                                <#else>
                                    <img height="100px" align="middle" src="${record.subsidiary.custrecord_mw_ei_qr_code}" width="100px" /></#if>
                            <#else>
                                <#if record.custbody_mw_ei_qr_code_invoice_p?length !=0>
                                    <img height="100px" align="middle" src="${record.custbody_mw_ei_qr_code_invoice_p}" width="100px" />
                                    <#else>
                                        <img height="100px" align="middle" src="${record.subsidiary.custrecord_mw_ei_qr_code}" width="100px" /></#if>
                        </#if>
                    </td>

                </tr>
            </table>

            <table style="width: 100%;">
                <tr>
                    <td style="font-size:8px;vertical-align:middle" width="60%">

                    </td>
                    <td style="vertical-align:middle" width="40%">
                        <table class="dTable" height="100px" style="margin-top:-5px;">
                            <thead>
                                <tr>
                                    <th align="center">Recibido Conforme</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </body>
    </pdf>