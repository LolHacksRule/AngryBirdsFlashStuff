package §4!i§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'!a§ extends MovieClip
   {
       
      
      private var §;o§:Object = null;
      
      private var §8!N§:Loader = null;
      
      private var §%!§:LoaderContext = null;
      
      private var §#J§:Boolean;
      
      public function §'!a§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§%!§ = new LoaderContext();
         this.§%!§.checkPolicyFile = true;
         this.§%!§.securityDomain = SecurityDomain.currentDomain;
         this.§%!§.applicationDomain = ApplicationDomain.currentDomain;
         this.§8!N§ = new Loader();
         this.§8!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§=!§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§8!N§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§8!N§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§8!N§.mouseChildren = false;
         }
      }
      
      private function §=!§(param1:Event) : void
      {
         addChild(this.§8!N§);
         this.§8!N§.content.addEventListener("onReady",this.§#r§);
         this.§8!N§.content.addEventListener("onError",this.§-N§);
         this.§8!N§.content.addEventListener("onStateChange",this.§;s§);
         this.§8!N§.content.addEventListener("onPlaybackQualityChange",this.§?g§);
      }
      
      private function §#r§(param1:Event) : void
      {
         this.§;o§ = this.§8!N§.content;
         this.§;o§.setSize(480,360);
         this.§;o§.removeEventListener("onReady",this.§#r§);
         this.§#J§ = true;
      }
      
      private function §-N§(param1:Event) : void
      {
      }
      
      private function §;s§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§#J§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§#J§ = false;
               this.§;o§.playVideo();
         }
      }
      
      private function §?g§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§;o§ != null)
         {
            this.§#J§ = false;
            removeChild(this.§8!N§);
            this.§;o§.removeEventListener("onError",this.§-N§);
            this.§;o§.removeEventListener("onStateChange",this.§;s§);
            this.§;o§.removeEventListener("onPlaybackQualityChange",this.§?g§);
            this.§;o§.destroy();
            this.§8!N§.contentLoaderInfo.removeEventListener(Event.INIT,this.§=!§);
            this.§8!N§ = null;
            this.§%!§ = null;
            this.§;o§ = null;
         }
      }
   }
}
