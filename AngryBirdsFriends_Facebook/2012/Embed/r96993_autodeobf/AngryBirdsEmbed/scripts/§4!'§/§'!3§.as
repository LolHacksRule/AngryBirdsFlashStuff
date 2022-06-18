package §4!'§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'!3§ extends MovieClip
   {
       
      
      private var §%k§:Object = null;
      
      private var §<T§:Loader = null;
      
      private var §>!=§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §'!3§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§>!=§ = new LoaderContext();
         this.§>!=§.checkPolicyFile = true;
         this.§>!=§.securityDomain = SecurityDomain.currentDomain;
         this.§>!=§.applicationDomain = ApplicationDomain.currentDomain;
         this.§<T§ = new Loader();
         this.§<T§.contentLoaderInfo.addEventListener(Event.INIT,this.§=i§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§<T§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§<T§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§<T§.mouseChildren = false;
         }
      }
      
      private function §=i§(param1:Event) : void
      {
         addChild(this.§<T§);
         this.§<T§.content.addEventListener("onReady",this.§ !-§);
         this.§<T§.content.addEventListener("onError",this.§2!!§);
         this.§<T§.content.addEventListener("onStateChange",this.§82§);
         this.§<T§.content.addEventListener("onPlaybackQualityChange",this.§5'§);
      }
      
      private function § !-§(param1:Event) : void
      {
         this.§%k§ = this.§<T§.content;
         this.§%k§.setSize(480,360);
         this.§%k§.removeEventListener("onReady",this.§ !-§);
         this.isReady = true;
      }
      
      private function §2!!§(param1:Event) : void
      {
      }
      
      private function §82§(param1:Event) : void
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
               this.§%k§.playVideo();
         }
      }
      
      private function §5'§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§%k§ != null)
         {
            this.isReady = false;
            removeChild(this.§<T§);
            this.§%k§.removeEventListener("onError",this.§2!!§);
            this.§%k§.removeEventListener("onStateChange",this.§82§);
            this.§%k§.removeEventListener("onPlaybackQualityChange",this.§5'§);
            this.§%k§.destroy();
            this.§<T§.contentLoaderInfo.removeEventListener(Event.INIT,this.§=i§);
            this.§<T§ = null;
            this.§>!=§ = null;
            this.§%k§ = null;
         }
      }
   }
}
