package §`!s§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §+!7§ extends MovieClip
   {
       
      
      private var §51§:Object = null;
      
      private var §2!Z§:Loader = null;
      
      private var §>!x§:LoaderContext = null;
      
      private var §<%§:Boolean;
      
      public function §+!7§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§>!x§ = new LoaderContext();
         this.§>!x§.checkPolicyFile = true;
         this.§>!x§.securityDomain = SecurityDomain.currentDomain;
         this.§>!x§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2!Z§ = new Loader();
         this.§2!Z§.contentLoaderInfo.addEventListener(Event.INIT,this.§`G§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2!Z§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2!Z§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2!Z§.mouseChildren = false;
         }
      }
      
      private function §`G§(param1:Event) : void
      {
         addChild(this.§2!Z§);
         this.§2!Z§.content.addEventListener("onReady",this.§-!?§);
         this.§2!Z§.content.addEventListener("onError",this.§>d§);
         this.§2!Z§.content.addEventListener("onStateChange",this.§#W§);
         this.§2!Z§.content.addEventListener("onPlaybackQualityChange",this.§0%§);
      }
      
      private function §-!?§(param1:Event) : void
      {
         this.§51§ = this.§2!Z§.content;
         this.§51§.setSize(480,360);
         this.§51§.removeEventListener("onReady",this.§-!?§);
         this.§<%§ = true;
      }
      
      private function §>d§(param1:Event) : void
      {
      }
      
      private function §#W§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§<%§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§<%§ = false;
               this.§51§.playVideo();
         }
      }
      
      private function §0%§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§51§ != null)
         {
            this.§<%§ = false;
            removeChild(this.§2!Z§);
            this.§51§.removeEventListener("onError",this.§>d§);
            this.§51§.removeEventListener("onStateChange",this.§#W§);
            this.§51§.removeEventListener("onPlaybackQualityChange",this.§0%§);
            this.§51§.destroy();
            this.§2!Z§.contentLoaderInfo.removeEventListener(Event.INIT,this.§`G§);
            this.§2!Z§ = null;
            this.§>!x§ = null;
            this.§51§ = null;
         }
      }
   }
}
