package §2W§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §=d§ extends MovieClip
   {
       
      
      private var §?$§:Object = null;
      
      private var §+S§:Loader = null;
      
      private var § do§:LoaderContext = null;
      
      private var §!$§:Boolean;
      
      public function §=d§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§ do§ = new LoaderContext();
         this.§ do§.checkPolicyFile = true;
         this.§ do§.securityDomain = SecurityDomain.currentDomain;
         this.§ do§.applicationDomain = ApplicationDomain.currentDomain;
         this.§+S§ = new Loader();
         this.§+S§.contentLoaderInfo.addEventListener(Event.INIT,this.§5!p§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§+S§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§+S§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§+S§.mouseChildren = false;
         }
      }
      
      private function §5!p§(param1:Event) : void
      {
         addChild(this.§+S§);
         this.§+S§.content.addEventListener("onReady",this.§?^§);
         this.§+S§.content.addEventListener("onError",this.§+k§);
         this.§+S§.content.addEventListener("onStateChange",this.§<!R§);
         this.§+S§.content.addEventListener("onPlaybackQualityChange",this.§<Q§);
      }
      
      private function §?^§(param1:Event) : void
      {
         this.§?$§ = this.§+S§.content;
         this.§?$§.setSize(480,360);
         this.§?$§.removeEventListener("onReady",this.§?^§);
         this.§!$§ = true;
      }
      
      private function §+k§(param1:Event) : void
      {
      }
      
      private function §<!R§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§!$§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§!$§ = false;
               this.§?$§.playVideo();
         }
      }
      
      private function §<Q§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§?$§ != null)
         {
            this.§!$§ = false;
            removeChild(this.§+S§);
            this.§?$§.removeEventListener("onError",this.§+k§);
            this.§?$§.removeEventListener("onStateChange",this.§<!R§);
            this.§?$§.removeEventListener("onPlaybackQualityChange",this.§<Q§);
            this.§?$§.destroy();
            this.§+S§.contentLoaderInfo.removeEventListener(Event.INIT,this.§5!p§);
            this.§+S§ = null;
            this.§ do§ = null;
            this.§?$§ = null;
         }
      }
   }
}
