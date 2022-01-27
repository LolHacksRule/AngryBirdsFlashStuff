package §;!B§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §"!?§ extends MovieClip
   {
       
      
      private var §5!D§:Object = null;
      
      private var §?!2§:Loader = null;
      
      private var §`u§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §"!?§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§`u§ = new LoaderContext();
         this.§`u§.checkPolicyFile = true;
         this.§`u§.securityDomain = SecurityDomain.currentDomain;
         this.§`u§.applicationDomain = ApplicationDomain.currentDomain;
         this.§?!2§ = new Loader();
         this.§?!2§.contentLoaderInfo.addEventListener(Event.INIT,this.§2n§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§?!2§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§?!2§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§?!2§.mouseChildren = false;
         }
      }
      
      private function §2n§(param1:Event) : void
      {
         addChild(this.§?!2§);
         this.§?!2§.content.addEventListener("onReady",this.§"!9§);
         this.§?!2§.content.addEventListener("onError",this.§%!L§);
         this.§?!2§.content.addEventListener("onStateChange",this.§+N§);
         this.§?!2§.content.addEventListener("onPlaybackQualityChange",this.§7n§);
      }
      
      private function §"!9§(param1:Event) : void
      {
         this.§5!D§ = this.§?!2§.content;
         this.§5!D§.setSize(480,360);
         this.§5!D§.removeEventListener("onReady",this.§"!9§);
         this.isReady = true;
      }
      
      private function §%!L§(param1:Event) : void
      {
      }
      
      private function §+N§(param1:Event) : void
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
               this.§5!D§.playVideo();
         }
      }
      
      private function §7n§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§5!D§ != null)
         {
            this.isReady = false;
            removeChild(this.§?!2§);
            this.§5!D§.removeEventListener("onError",this.§%!L§);
            this.§5!D§.removeEventListener("onStateChange",this.§+N§);
            this.§5!D§.removeEventListener("onPlaybackQualityChange",this.§7n§);
            this.§5!D§.destroy();
            this.§?!2§.contentLoaderInfo.removeEventListener(Event.INIT,this.§2n§);
            this.§?!2§ = null;
            this.§`u§ = null;
            this.§5!D§ = null;
         }
      }
   }
}
