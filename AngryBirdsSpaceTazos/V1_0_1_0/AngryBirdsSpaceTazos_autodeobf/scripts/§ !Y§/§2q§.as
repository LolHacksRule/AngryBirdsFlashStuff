package § !Y§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §2q§ extends MovieClip
   {
       
      
      private var §'!L§:Object = null;
      
      private var §6!u§:Loader = null;
      
      private var §1X§:LoaderContext = null;
      
      private var §+y§:Boolean;
      
      public function §2q§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§1X§ = new LoaderContext();
         this.§1X§.checkPolicyFile = true;
         this.§1X§.securityDomain = SecurityDomain.currentDomain;
         this.§1X§.applicationDomain = ApplicationDomain.currentDomain;
         this.§6!u§ = new Loader();
         this.§6!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§<"C§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§6!u§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§6!u§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§6!u§.mouseChildren = false;
         }
      }
      
      private function §<"C§(param1:Event) : void
      {
         addChild(this.§6!u§);
         this.§6!u§.content.addEventListener("onReady",this.§#!d§);
         this.§6!u§.content.addEventListener("onError",this.§>!^§);
         this.§6!u§.content.addEventListener("onStateChange",this.§#!H§);
         this.§6!u§.content.addEventListener("onPlaybackQualityChange",this.§7!,§);
      }
      
      private function §#!d§(param1:Event) : void
      {
         this.§'!L§ = this.§6!u§.content;
         this.§'!L§.setSize(480,360);
         this.§'!L§.removeEventListener("onReady",this.§#!d§);
         this.§+y§ = true;
      }
      
      private function §>!^§(param1:Event) : void
      {
      }
      
      private function §#!H§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§+y§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§+y§ = false;
               this.§'!L§.playVideo();
         }
      }
      
      private function §7!,§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§'!L§ != null)
         {
            this.§+y§ = false;
            removeChild(this.§6!u§);
            this.§'!L§.removeEventListener("onError",this.§>!^§);
            this.§'!L§.removeEventListener("onStateChange",this.§#!H§);
            this.§'!L§.removeEventListener("onPlaybackQualityChange",this.§7!,§);
            this.§'!L§.destroy();
            this.§6!u§.contentLoaderInfo.removeEventListener(Event.INIT,this.§<"C§);
            this.§6!u§ = null;
            this.§1X§ = null;
            this.§'!L§ = null;
         }
      }
   }
}
