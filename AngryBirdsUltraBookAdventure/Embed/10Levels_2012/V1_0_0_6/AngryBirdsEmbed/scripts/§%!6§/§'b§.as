package §%!6§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'b§ extends MovieClip
   {
       
      
      private var §]!9§:Object = null;
      
      private var § l§:Loader = null;
      
      private var §4%§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §'b§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§4%§ = new LoaderContext();
         this.§4%§.checkPolicyFile = true;
         this.§4%§.securityDomain = SecurityDomain.currentDomain;
         this.§4%§.applicationDomain = ApplicationDomain.currentDomain;
         this.§ l§ = new Loader();
         this.§ l§.contentLoaderInfo.addEventListener(Event.INIT,this.§6n§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§ l§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§ l§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§ l§.mouseChildren = false;
         }
      }
      
      private function §6n§(param1:Event) : void
      {
         addChild(this.§ l§);
         this.§ l§.content.addEventListener("onReady",this.§6!§);
         this.§ l§.content.addEventListener("onError",this.§`x§);
         this.§ l§.content.addEventListener("onStateChange",this.§7b§);
         this.§ l§.content.addEventListener("onPlaybackQualityChange",this.§5!@§);
      }
      
      private function §6!§(param1:Event) : void
      {
         this.§]!9§ = this.§ l§.content;
         this.§]!9§.setSize(480,360);
         this.§]!9§.removeEventListener("onReady",this.§6!§);
         this.isReady = true;
      }
      
      private function §`x§(param1:Event) : void
      {
      }
      
      private function §7b§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.isReady == false)
               {
                  this.dispose();
                  break;
               }
               break;
            case 0:
               this.isReady = false;
               this.§]!9§.playVideo();
         }
      }
      
      private function §5!@§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§]!9§ != null)
         {
            this.isReady = false;
            removeChild(this.§ l§);
            this.§]!9§.removeEventListener("onError",this.§`x§);
            this.§]!9§.removeEventListener("onStateChange",this.§7b§);
            this.§]!9§.removeEventListener("onPlaybackQualityChange",this.§5!@§);
            this.§]!9§.destroy();
            this.§ l§.contentLoaderInfo.removeEventListener(Event.INIT,this.§6n§);
            this.§ l§ = null;
            this.§4%§ = null;
            this.§]!9§ = null;
         }
      }
   }
}
