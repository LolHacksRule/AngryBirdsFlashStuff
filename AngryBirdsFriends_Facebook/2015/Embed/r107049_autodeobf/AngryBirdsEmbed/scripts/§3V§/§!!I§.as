package §3V§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §!!I§ extends MovieClip
   {
       
      
      private var §-^§:Object = null;
      
      private var §false§:Loader = null;
      
      private var §%S§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §!!I§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§%S§ = new LoaderContext();
         this.§%S§.checkPolicyFile = true;
         this.§%S§.securityDomain = SecurityDomain.currentDomain;
         this.§%S§.applicationDomain = ApplicationDomain.currentDomain;
         this.§false§ = new Loader();
         this.§false§.contentLoaderInfo.addEventListener(Event.INIT,this.§-A§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§false§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§false§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§false§.mouseChildren = false;
         }
      }
      
      private function §-A§(param1:Event) : void
      {
         addChild(this.§false§);
         this.§false§.content.addEventListener("onReady",this.§!Q§);
         this.§false§.content.addEventListener("onError",this.§%1§);
         this.§false§.content.addEventListener("onStateChange",this.§`x§);
         this.§false§.content.addEventListener("onPlaybackQualityChange",this.§&7§);
      }
      
      private function §!Q§(param1:Event) : void
      {
         this.§-^§ = this.§false§.content;
         this.§-^§.setSize(480,360);
         this.§-^§.removeEventListener("onReady",this.§!Q§);
         this.isReady = true;
      }
      
      private function §%1§(param1:Event) : void
      {
      }
      
      private function §`x§(param1:Event) : void
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
               this.§-^§.playVideo();
         }
      }
      
      private function §&7§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§-^§ != null)
         {
            this.isReady = false;
            removeChild(this.§false§);
            this.§-^§.removeEventListener("onError",this.§%1§);
            this.§-^§.removeEventListener("onStateChange",this.§`x§);
            this.§-^§.removeEventListener("onPlaybackQualityChange",this.§&7§);
            this.§-^§.destroy();
            this.§false§.contentLoaderInfo.removeEventListener(Event.INIT,this.§-A§);
            this.§false§ = null;
            this.§%S§ = null;
            this.§-^§ = null;
         }
      }
   }
}
