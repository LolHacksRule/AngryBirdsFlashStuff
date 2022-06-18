package §-'§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §package§ extends MovieClip
   {
       
      
      private var §`I§:Object = null;
      
      private var §2I§:Loader = null;
      
      private var §7u§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §package§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§7u§ = new LoaderContext();
         this.§7u§.checkPolicyFile = true;
         this.§7u§.securityDomain = SecurityDomain.currentDomain;
         this.§7u§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2I§ = new Loader();
         this.§2I§.contentLoaderInfo.addEventListener(Event.INIT,this.§4o§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2I§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2I§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2I§.mouseChildren = false;
         }
      }
      
      private function §4o§(param1:Event) : void
      {
         addChild(this.§2I§);
         this.§2I§.content.addEventListener("onReady",this.§#P§);
         this.§2I§.content.addEventListener("onError",this.§#c§);
         this.§2I§.content.addEventListener("onStateChange",this.§-8§);
         this.§2I§.content.addEventListener("onPlaybackQualityChange",this.§0N§);
      }
      
      private function §#P§(param1:Event) : void
      {
         this.§`I§ = this.§2I§.content;
         this.§`I§.setSize(480,360);
         this.§`I§.removeEventListener("onReady",this.§#P§);
         this.isReady = true;
      }
      
      private function §#c§(param1:Event) : void
      {
      }
      
      private function §-8§(param1:Event) : void
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
               this.§`I§.playVideo();
         }
      }
      
      private function §0N§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§`I§ != null)
         {
            this.isReady = false;
            removeChild(this.§2I§);
            this.§`I§.removeEventListener("onError",this.§#c§);
            this.§`I§.removeEventListener("onStateChange",this.§-8§);
            this.§`I§.removeEventListener("onPlaybackQualityChange",this.§0N§);
            this.§`I§.destroy();
            this.§2I§.contentLoaderInfo.removeEventListener(Event.INIT,this.§4o§);
            this.§2I§ = null;
            this.§7u§ = null;
            this.§`I§ = null;
         }
      }
   }
}
