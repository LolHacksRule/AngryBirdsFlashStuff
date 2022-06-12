package §<!1§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §>3§ extends MovieClip
   {
       
      
      private var §#9§:Object = null;
      
      private var §5$§:Loader = null;
      
      private var §[U§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §>3§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§[U§ = new LoaderContext();
         this.§[U§.checkPolicyFile = true;
         this.§[U§.securityDomain = SecurityDomain.currentDomain;
         this.§[U§.applicationDomain = ApplicationDomain.currentDomain;
         this.§5$§ = new Loader();
         this.§5$§.contentLoaderInfo.addEventListener(Event.INIT,this.§ !s§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§5$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§5$§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§5$§.mouseChildren = false;
         }
      }
      
      private function § !s§(param1:Event) : void
      {
         addChild(this.§5$§);
         this.§5$§.content.addEventListener("onReady",this.§%!E§);
         this.§5$§.content.addEventListener("onError",this.§1";§);
         this.§5$§.content.addEventListener("onStateChange",this.§3"0§);
         this.§5$§.content.addEventListener("onPlaybackQualityChange",this.§#>§);
      }
      
      private function §%!E§(param1:Event) : void
      {
         this.§#9§ = this.§5$§.content;
         this.§#9§.setSize(480,360);
         this.§#9§.removeEventListener("onReady",this.§%!E§);
         this.isReady = true;
      }
      
      private function §1";§(param1:Event) : void
      {
      }
      
      private function §3"0§(param1:Event) : void
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
               this.§#9§.playVideo();
         }
      }
      
      private function §#>§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§#9§ != null)
         {
            this.isReady = false;
            removeChild(this.§5$§);
            this.§#9§.removeEventListener("onError",this.§1";§);
            this.§#9§.removeEventListener("onStateChange",this.§3"0§);
            this.§#9§.removeEventListener("onPlaybackQualityChange",this.§#>§);
            this.§#9§.destroy();
            this.§5$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ !s§);
            this.§5$§ = null;
            this.§[U§ = null;
            this.§#9§ = null;
         }
      }
   }
}
