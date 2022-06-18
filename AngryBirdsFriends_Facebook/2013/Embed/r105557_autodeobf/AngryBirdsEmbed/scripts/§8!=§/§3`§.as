package §8!=§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §3`§ extends MovieClip
   {
       
      
      private var §>§:Object = null;
      
      private var §7G§:Loader = null;
      
      private var §=z§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §3`§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§=z§ = new LoaderContext();
         this.§=z§.checkPolicyFile = true;
         this.§=z§.securityDomain = SecurityDomain.currentDomain;
         this.§=z§.applicationDomain = ApplicationDomain.currentDomain;
         this.§7G§ = new Loader();
         this.§7G§.contentLoaderInfo.addEventListener(Event.INIT,this.§8S§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§7G§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§7G§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§7G§.mouseChildren = false;
         }
      }
      
      private function §8S§(param1:Event) : void
      {
         addChild(this.§7G§);
         this.§7G§.content.addEventListener("onReady",this.§=e§);
         this.§7G§.content.addEventListener("onError",this.§5!0§);
         this.§7G§.content.addEventListener("onStateChange",this.§0U§);
         this.§7G§.content.addEventListener("onPlaybackQualityChange",this.§%!3§);
      }
      
      private function §=e§(param1:Event) : void
      {
         this.§>§ = this.§7G§.content;
         this.§>§.setSize(480,360);
         this.§>§.removeEventListener("onReady",this.§=e§);
         this.isReady = true;
      }
      
      private function §5!0§(param1:Event) : void
      {
      }
      
      private function §0U§(param1:Event) : void
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
               this.§>§.playVideo();
         }
      }
      
      private function §%!3§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§>§ != null)
         {
            this.isReady = false;
            removeChild(this.§7G§);
            this.§>§.removeEventListener("onError",this.§5!0§);
            this.§>§.removeEventListener("onStateChange",this.§0U§);
            this.§>§.removeEventListener("onPlaybackQualityChange",this.§%!3§);
            this.§>§.destroy();
            this.§7G§.contentLoaderInfo.removeEventListener(Event.INIT,this.§8S§);
            this.§7G§ = null;
            this.§=z§ = null;
            this.§>§ = null;
         }
      }
   }
}
