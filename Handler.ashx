<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using MarvalSoftware.UI.WebUI.ServiceDesk.RFP.Plugins;

public class Handler : PluginHandler
{
    public override bool IsReusable { get { return false; } }

    public override void HandleRequest(HttpContext context)
    {
        context.Response.Write(string.Format("{0}|{1}|{2}",this.GlobalSettings["RequestAttributeId"],this.GlobalSettings["RequestLayoutIds"],this.GlobalSettings["ListParameters"]));
    }
}