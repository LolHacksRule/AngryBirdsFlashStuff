package §-!^§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §1"-§ extends MovieClip
   {
       
      
      private var §,!H§:Object = null;
      
      private var §>!+§:Loader = null;
      
      private var §`@§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §1"-§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§`@§ = new LoaderContext();
         this.§`@§.checkPolicyFile = true;
         this.§`@§.securityDomain = SecurityDomain.currentDomain;
         this.§`@§.applicationDomain = ApplicationDomain.currentDomain;
         this.§>!+§ = new Loader();
         this.§>!+§.contentLoaderInfo.addEventListener(Event.INIT,this.§^"0§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§>!+§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§>!+§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§>!+§.mouseChildren = false;
         }
      }
      
      private function §^"0§(param1:Event) : void
      {
         addChild(this.§>!+§);
         this.§>!+§.content.addEventListener("onReady",this.§=!n§);
         this.§>!+§.content.addEventListener("onError",this.§@d§);
         this.§>!+§.content.addEventListener("onStateChange",this.§2"<§);
         this.§>!+§.content.addEventListener("onPlaybackQualityChange",this.§^!^§);
      }
      
      private function §=!n§(param1:Event) : void
      {
         this.§,!H§ = this.§>!+§.content;
         this.§,!H§.setSize(480,360);
         this.§,!H§.removeEventListener("onReady",this.§=!n§);
         this.isReady = true;
      }
      
      private function §@d§(param1:Event) : void
      {
      }
      
      private function §2"<§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.isReady == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.isReady = false;
               this.§,!H§.playVideo();
         }
      }
      
      private function §^!^§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§,!H§ != null)
         {
            this.isReady = false;
            removeChild(this.§>!+§);
            this.§,!H§.removeEventListener("onError",this.§@d§);
            this.§,!H§.removeEventListener("onStateChange",this.§2"<§);
            this.§,!H§.removeEventListener("onPlaybackQualityChange",this.§^!^§);
            this.§,!H§.destroy();
            this.§>!+§.contentLoaderInfo.removeEventListener(Event.INIT,this.§^"0§);
            this.§>!+§ = null;
            this.§`@§ = null;
            this.§,!H§ = null;
         }
      }
   }
}
