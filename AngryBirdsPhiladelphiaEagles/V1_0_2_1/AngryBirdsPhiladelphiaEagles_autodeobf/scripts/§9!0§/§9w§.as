package §9!0§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §9w§ extends MovieClip
   {
       
      
      private var §%!Q§:Object = null;
      
      private var §'f§:Loader = null;
      
      private var §5!F§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §9w§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§5!F§ = new LoaderContext();
         this.§5!F§.checkPolicyFile = true;
         this.§5!F§.securityDomain = SecurityDomain.currentDomain;
         this.§5!F§.applicationDomain = ApplicationDomain.currentDomain;
         this.§'f§ = new Loader();
         this.§'f§.contentLoaderInfo.addEventListener(Event.INIT,this.§@d§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§'f§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§'f§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§'f§.mouseChildren = false;
         }
      }
      
      private function §@d§(param1:Event) : void
      {
         addChild(this.§'f§);
         this.§'f§.content.addEventListener("onReady",this.§%!E§);
         this.§'f§.content.addEventListener("onError",this.§,g§);
         this.§'f§.content.addEventListener("onStateChange",this.§6C§);
         this.§'f§.content.addEventListener("onPlaybackQualityChange",this.§`y§);
      }
      
      private function §%!E§(param1:Event) : void
      {
         this.§%!Q§ = this.§'f§.content;
         this.§%!Q§.setSize(480,360);
         this.§%!Q§.removeEventListener("onReady",this.§%!E§);
         this.isReady = true;
      }
      
      private function §,g§(param1:Event) : void
      {
      }
      
      private function §6C§(param1:Event) : void
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
               this.§%!Q§.playVideo();
         }
      }
      
      private function §`y§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§%!Q§ != null)
         {
            this.isReady = false;
            removeChild(this.§'f§);
            this.§%!Q§.removeEventListener("onError",this.§,g§);
            this.§%!Q§.removeEventListener("onStateChange",this.§6C§);
            this.§%!Q§.removeEventListener("onPlaybackQualityChange",this.§`y§);
            this.§%!Q§.destroy();
            this.§'f§.contentLoaderInfo.removeEventListener(Event.INIT,this.§@d§);
            this.§'f§ = null;
            this.§5!F§ = null;
            this.§%!Q§ = null;
         }
      }
   }
}
