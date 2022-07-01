package
{
   import §6!^§.§>m§;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class AngryBirdsCustomCanvas extends §>m§
   {
       
      
      private const §-m§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.§#l§);
      }
      
      private function §#l§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§#l§);
         new AngryBirdsCustom(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
      }
      
      private function §`!g§() : Boolean
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
         if(!this.§-m§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://nestle.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
   }
}
