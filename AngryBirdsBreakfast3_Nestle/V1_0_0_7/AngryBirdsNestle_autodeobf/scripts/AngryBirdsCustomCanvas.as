package
{
   import §="3§.§0!z§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §0!z§
   {
       
      
      private const §?!n§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.§7L§);
      }
      
      private function §7L§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§7L§);
         new AngryBirdsCustom(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
      }
      
      private function §4!4§() : Boolean
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
         if(!this.§?!n§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
   }
}
