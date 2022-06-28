package §_-eS§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §_-6U§ extends MovieClip
   {
       
      
      private var §_-eC§:Object = null;
      
      private var §_-l2§:Loader = null;
      
      private var §_-pr§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §_-6U§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§_-pr§ = new LoaderContext();
         this.§_-pr§.checkPolicyFile = true;
         this.§_-pr§.securityDomain = SecurityDomain.currentDomain;
         this.§_-pr§.applicationDomain = ApplicationDomain.currentDomain;
         this.§_-l2§ = new Loader();
         this.§_-l2§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-ft§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§_-l2§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§_-l2§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§_-l2§.mouseChildren = false;
         }
      }
      
      private function §_-ft§(param1:Event) : void
      {
         addChild(this.§_-l2§);
         this.§_-l2§.content.addEventListener("onReady",this.§_-y5§);
         this.§_-l2§.content.addEventListener("onError",this.§_-02r§);
         this.§_-l2§.content.addEventListener("onStateChange",this.§_-04z§);
         this.§_-l2§.content.addEventListener("onPlaybackQualityChange",this.§_-cZ§);
      }
      
      private function §_-y5§(param1:Event) : void
      {
         this.§_-eC§ = this.§_-l2§.content;
         this.§_-eC§.setSize(480,360);
         this.§_-eC§.removeEventListener("onReady",this.§_-y5§);
         this.isReady = true;
      }
      
      private function §_-02r§(param1:Event) : void
      {
      }
      
      private function §_-04z§(param1:Event) : void
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
               this.§_-eC§.playVideo();
         }
      }
      
      private function §_-cZ§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§_-eC§ != null)
         {
            this.isReady = false;
            removeChild(this.§_-l2§);
            this.§_-eC§.removeEventListener("onError",this.§_-02r§);
            this.§_-eC§.removeEventListener("onStateChange",this.§_-04z§);
            this.§_-eC§.removeEventListener("onPlaybackQualityChange",this.§_-cZ§);
            this.§_-eC§.destroy();
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.INIT,this.§_-ft§);
            this.§_-l2§ = null;
            this.§_-pr§ = null;
            this.§_-eC§ = null;
         }
      }
   }
}
