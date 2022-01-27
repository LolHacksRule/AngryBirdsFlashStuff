package §"I§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §2P§ extends MovieClip
   {
       
      
      private var § Y§:Object = null;
      
      private var §?Y§:Loader = null;
      
      private var §?<§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §2P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§?<§ = new LoaderContext();
         this.§?<§.checkPolicyFile = true;
         this.§?<§.securityDomain = SecurityDomain.currentDomain;
         this.§?<§.applicationDomain = ApplicationDomain.currentDomain;
         this.§?Y§ = new Loader();
         this.§?Y§.contentLoaderInfo.addEventListener(Event.INIT,this.§>4§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§?Y§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§?Y§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§?Y§.mouseChildren = false;
         }
      }
      
      private function §>4§(param1:Event) : void
      {
         addChild(this.§?Y§);
         this.§?Y§.content.addEventListener("onReady",this.§[!N§);
         this.§?Y§.content.addEventListener("onError",this.§9g§);
         this.§?Y§.content.addEventListener("onStateChange",this.§,i§);
         this.§?Y§.content.addEventListener("onPlaybackQualityChange",this.§<!§);
      }
      
      private function §[!N§(param1:Event) : void
      {
         this.§ Y§ = this.§?Y§.content;
         this.§ Y§.setSize(480,360);
         this.§ Y§.removeEventListener("onReady",this.§[!N§);
         this.isReady = true;
      }
      
      private function §9g§(param1:Event) : void
      {
      }
      
      private function §,i§(param1:Event) : void
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
               this.§ Y§.playVideo();
         }
      }
      
      private function §<!§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§ Y§ != null)
         {
            this.isReady = false;
            removeChild(this.§?Y§);
            this.§ Y§.removeEventListener("onError",this.§9g§);
            this.§ Y§.removeEventListener("onStateChange",this.§,i§);
            this.§ Y§.removeEventListener("onPlaybackQualityChange",this.§<!§);
            this.§ Y§.destroy();
            this.§?Y§.contentLoaderInfo.removeEventListener(Event.INIT,this.§>4§);
            this.§?Y§ = null;
            this.§?<§ = null;
            this.§ Y§ = null;
         }
      }
   }
}
