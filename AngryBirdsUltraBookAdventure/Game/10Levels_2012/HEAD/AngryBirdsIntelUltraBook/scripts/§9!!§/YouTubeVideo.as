package §9!!§
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
       
      
      private var §<5§:Object = null;
      
      private var §4$§:Loader = null;
      
      private var §&F§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§&F§ = new LoaderContext();
         this.§&F§.checkPolicyFile = true;
         this.§&F§.securityDomain = SecurityDomain.currentDomain;
         this.§&F§.applicationDomain = ApplicationDomain.currentDomain;
         this.§4$§ = new Loader();
         this.§4$§.contentLoaderInfo.addEventListener(Event.INIT,this.§`!M§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§4$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§4$§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§4$§.mouseChildren = false;
         }
      }
      
      private function §`!M§(param1:Event) : void
      {
         addChild(this.§4$§);
         this.§4$§.content.addEventListener("onReady",this.§+o§);
         this.§4$§.content.addEventListener("onError",this.§?!O§);
         this.§4$§.content.addEventListener("onStateChange",this.§<!R§);
         this.§4$§.content.addEventListener("onPlaybackQualityChange",this.§@w§);
      }
      
      private function §+o§(param1:Event) : void
      {
         this.§<5§ = this.§4$§.content;
         this.§<5§.setSize(480,360);
         this.§<5§.removeEventListener("onReady",this.§+o§);
         this.isReady = true;
      }
      
      private function §?!O§(param1:Event) : void
      {
      }
      
      private function §<!R§(param1:Event) : void
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
               this.§<5§.playVideo();
         }
      }
      
      private function §@w§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§<5§ != null)
         {
            this.isReady = false;
            removeChild(this.§4$§);
            this.§<5§.removeEventListener("onError",this.§?!O§);
            this.§<5§.removeEventListener("onStateChange",this.§<!R§);
            this.§<5§.removeEventListener("onPlaybackQualityChange",this.§@w§);
            this.§<5§.destroy();
            this.§4$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§`!M§);
            this.§4$§ = null;
            this.§&F§ = null;
            this.§<5§ = null;
         }
      }
   }
}
