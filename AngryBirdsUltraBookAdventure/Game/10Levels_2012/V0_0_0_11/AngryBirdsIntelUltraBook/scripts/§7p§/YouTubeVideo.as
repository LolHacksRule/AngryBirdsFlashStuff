package §7p§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class YouTubeVideo extends MovieClip
   {
       
      
      private var § try§:Object = null;
      
      private var §^v§:Loader = null;
      
      private var §"W§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§"W§ = new LoaderContext();
         this.§"W§.checkPolicyFile = true;
         this.§"W§.securityDomain = SecurityDomain.currentDomain;
         this.§"W§.applicationDomain = ApplicationDomain.currentDomain;
         this.§^v§ = new Loader();
         this.§^v§.contentLoaderInfo.addEventListener(Event.INIT,this.§&g§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§^v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§^v§.mouseChildren = false;
         }
      }
      
      private function §&g§(param1:Event) : void
      {
         addChild(this.§^v§);
         this.§^v§.content.addEventListener("onReady",this.§'!`§);
         this.§^v§.content.addEventListener("onError",this.§=9§);
         this.§^v§.content.addEventListener("onStateChange",this.§2v§);
         this.§^v§.content.addEventListener("onPlaybackQualityChange",this.§<!+§);
      }
      
      private function §'!`§(param1:Event) : void
      {
         this.§ try§ = this.§^v§.content;
         this.§ try§.setSize(480,360);
         this.§ try§.removeEventListener("onReady",this.§'!`§);
         this.isReady = true;
      }
      
      private function §=9§(param1:Event) : void
      {
      }
      
      private function §2v§(param1:Event) : void
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
               this.§ try§.playVideo();
         }
      }
      
      private function §<!+§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§ try§ != null)
         {
            this.isReady = false;
            removeChild(this.§^v§);
            this.§ try§.removeEventListener("onError",this.§=9§);
            this.§ try§.removeEventListener("onStateChange",this.§2v§);
            this.§ try§.removeEventListener("onPlaybackQualityChange",this.§<!+§);
            this.§ try§.destroy();
            this.§^v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§&g§);
            this.§^v§ = null;
            this.§"W§ = null;
            this.§ try§ = null;
         }
      }
   }
}
