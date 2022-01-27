package
{
   import §'!k§.§"d§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §"d§
   {
       
      
      private const §'!C§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-spacetazos.appspot\.com))|(angrybirds\-spacetazos.appspot\.com)|(tazos\.angrybirds\.com))(.*)/;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(!this.§-!2§())
         {
            return;
         }
         new §["!§(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
      }
      
      private function §-!2§() : Boolean
      {
         var pageURL:String = null;
         try
         {
            pageURL = ExternalInterface.call("window.location.href.toString");
         }
         catch(e:Error)
         {
            pageURL == null;
         }
         catch(e:SecurityError)
         {
            pageURL == null;
         }
         if(pageURL == null || pageURL.indexOf(".swf") != -1)
         {
            navigateToURL(new URLRequest("http://tazos.angrybirds.com"),"_self");
            return false;
         }
         if(!this.§'!C§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://tazos.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
   }
}
