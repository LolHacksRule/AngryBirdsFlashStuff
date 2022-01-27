package
{
   import §@u§.§#'§;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §#'§
   {
       
      
      private const §7!3§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-spacetazos.appspot\.com))|(angrybirds\-spacetazos.appspot\.com)|(tazos\.angrybirds\.com))(.*)/;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         if(!this.§5!j§())
         {
            return;
         }
         new §@T§(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
      }
      
      private function §5!j§() : Boolean
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
         if(!this.§7!3§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://tazos.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
   }
}
