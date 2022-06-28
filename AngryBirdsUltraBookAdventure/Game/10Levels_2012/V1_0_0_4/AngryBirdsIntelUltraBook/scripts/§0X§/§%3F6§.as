package §0X§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §?6§ extends MovieClip
   {
       
      
      private var §7%§:Object = null;
      
      private var §`!u§:Loader = null;
      
      private var §1U§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §?6§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§1U§ = new LoaderContext();
         this.§1U§.checkPolicyFile = true;
         this.§1U§.securityDomain = SecurityDomain.currentDomain;
         this.§1U§.applicationDomain = ApplicationDomain.currentDomain;
         this.§`!u§ = new Loader();
         this.§`!u§.contentLoaderInfo.addEventListener(Event.INIT,this.§ P§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§`!u§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§`!u§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§`!u§.mouseChildren = false;
         }
      }
      
      private function § P§(param1:Event) : void
      {
         addChild(this.§`!u§);
         this.§`!u§.content.addEventListener("onReady",this.§ q§);
         this.§`!u§.content.addEventListener("onError",this.§`r§);
         this.§`!u§.content.addEventListener("onStateChange",this.§"!n§);
         this.§`!u§.content.addEventListener("onPlaybackQualityChange",this.§ !C§);
      }
      
      private function § q§(param1:Event) : void
      {
         this.§7%§ = this.§`!u§.content;
         this.§7%§.setSize(480,360);
         this.§7%§.removeEventListener("onReady",this.§ q§);
         this.isReady = true;
      }
      
      private function §`r§(param1:Event) : void
      {
      }
      
      private function §"!n§(param1:Event) : void
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
               this.§7%§.playVideo();
         }
      }
      
      private function § !C§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§7%§ != null)
         {
            this.isReady = false;
            removeChild(this.§`!u§);
            this.§7%§.removeEventListener("onError",this.§`r§);
            this.§7%§.removeEventListener("onStateChange",this.§"!n§);
            this.§7%§.removeEventListener("onPlaybackQualityChange",this.§ !C§);
            this.§7%§.destroy();
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ P§);
            this.§`!u§ = null;
            this.§1U§ = null;
            this.§7%§ = null;
         }
      }
   }
}
