package §5=§
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
       
      
      private var §#!5§:Object = null;
      
      private var §2M§:Loader = null;
      
      private var §6!,§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§6!,§ = new LoaderContext();
         this.§6!,§.checkPolicyFile = true;
         this.§6!,§.securityDomain = SecurityDomain.currentDomain;
         this.§6!,§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2M§ = new Loader();
         this.§2M§.contentLoaderInfo.addEventListener(Event.INIT,this.§null§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2M§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2M§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2M§.mouseChildren = false;
         }
      }
      
      private function §null§(param1:Event) : void
      {
         addChild(this.§2M§);
         this.§2M§.content.addEventListener("onReady",this.§"?§);
         this.§2M§.content.addEventListener("onError",this.§-!B§);
         this.§2M§.content.addEventListener("onStateChange",this.§9B§);
         this.§2M§.content.addEventListener("onPlaybackQualityChange",this.§7!k§);
      }
      
      private function §"?§(param1:Event) : void
      {
         this.§#!5§ = this.§2M§.content;
         this.§#!5§.setSize(480,360);
         this.§#!5§.removeEventListener("onReady",this.§"?§);
         this.isReady = true;
      }
      
      private function §-!B§(param1:Event) : void
      {
      }
      
      private function §9B§(param1:Event) : void
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
               this.§#!5§.playVideo();
         }
      }
      
      private function §7!k§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§#!5§ != null)
         {
            this.isReady = false;
            removeChild(this.§2M§);
            this.§#!5§.removeEventListener("onError",this.§-!B§);
            this.§#!5§.removeEventListener("onStateChange",this.§9B§);
            this.§#!5§.removeEventListener("onPlaybackQualityChange",this.§7!k§);
            this.§#!5§.destroy();
            this.§2M§.contentLoaderInfo.removeEventListener(Event.INIT,this.§null§);
            this.§2M§ = null;
            this.§6!,§ = null;
            this.§#!5§ = null;
         }
      }
   }
}
