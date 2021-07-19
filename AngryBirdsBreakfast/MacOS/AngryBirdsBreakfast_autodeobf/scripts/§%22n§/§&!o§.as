package §"n§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §&!o§ extends MovieClip
   {
       
      
      private var §[!h§:Object = null;
      
      private var §7!r§:Loader = null;
      
      private var §@"#§:LoaderContext = null;
      
      private var §;R§:Boolean;
      
      public function §&!o§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§@"#§ = new LoaderContext();
         this.§@"#§.checkPolicyFile = true;
         this.§@"#§.securityDomain = SecurityDomain.currentDomain;
         this.§@"#§.applicationDomain = ApplicationDomain.currentDomain;
         this.§7!r§ = new Loader();
         this.§7!r§.contentLoaderInfo.addEventListener(Event.INIT,this.§;"&§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§7!r§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§7!r§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§7!r§.mouseChildren = false;
         }
      }
      
      private function §;"&§(param1:Event) : void
      {
         addChild(this.§7!r§);
         this.§7!r§.content.addEventListener("onReady",this.§0!X§);
         this.§7!r§.content.addEventListener("onError",this.§;#§);
         this.§7!r§.content.addEventListener("onStateChange",this.§^j§);
         this.§7!r§.content.addEventListener("onPlaybackQualityChange",this.§>!I§);
      }
      
      private function §0!X§(param1:Event) : void
      {
         this.§[!h§ = this.§7!r§.content;
         this.§[!h§.setSize(480,360);
         this.§[!h§.removeEventListener("onReady",this.§0!X§);
         this.§;R§ = true;
      }
      
      private function §;#§(param1:Event) : void
      {
      }
      
      private function §^j§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§;R§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§;R§ = false;
               this.§[!h§.playVideo();
         }
      }
      
      private function §>!I§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§[!h§ != null)
         {
            this.§;R§ = false;
            removeChild(this.§7!r§);
            this.§[!h§.removeEventListener("onError",this.§;#§);
            this.§[!h§.removeEventListener("onStateChange",this.§^j§);
            this.§[!h§.removeEventListener("onPlaybackQualityChange",this.§>!I§);
            this.§[!h§.destroy();
            this.§7!r§.contentLoaderInfo.removeEventListener(Event.INIT,this.§;"&§);
            this.§7!r§ = null;
            this.§@"#§ = null;
            this.§[!h§ = null;
         }
      }
   }
}
