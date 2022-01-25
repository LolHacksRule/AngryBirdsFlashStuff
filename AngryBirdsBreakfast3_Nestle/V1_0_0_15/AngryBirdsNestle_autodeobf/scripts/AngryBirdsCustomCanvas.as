package
{
   import §,!'§.§6!L§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §6!L§
   {
       
      
      private const §^!=§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.§?N§);
      }
      
      private function §?N§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?N§);
         new AngryBirdsCustom(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
      }
      
      private function §"M§() : Boolean
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
            navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
            return false;
         }
         if(!this.§^!=§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
   }
}
