package §&!&§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §9T§ extends MovieClip
   {
       
      
      private var §[B§:Object = null;
      
      private var §?Q§:Loader = null;
      
      private var §"!§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §9T§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§"!§ = new LoaderContext();
         this.§"!§.checkPolicyFile = true;
         this.§"!§.securityDomain = SecurityDomain.currentDomain;
         this.§"!§.applicationDomain = ApplicationDomain.currentDomain;
         this.§?Q§ = new Loader();
         this.§?Q§.contentLoaderInfo.addEventListener(Event.INIT,this.§!!!§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§?Q§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§?Q§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§?Q§.mouseChildren = false;
         }
      }
      
      private function §!!!§(param1:Event) : void
      {
         addChild(this.§?Q§);
         this.§?Q§.content.addEventListener("onReady",this.§^!G§);
         this.§?Q§.content.addEventListener("onError",this.§`0§);
         this.§?Q§.content.addEventListener("onStateChange",this.§?H§);
         this.§?Q§.content.addEventListener("onPlaybackQualityChange",this.§4A§);
      }
      
      private function §^!G§(param1:Event) : void
      {
         this.§[B§ = this.§?Q§.content;
         this.§[B§.setSize(480,360);
         this.§[B§.removeEventListener("onReady",this.§^!G§);
         this.isReady = true;
      }
      
      private function §`0§(param1:Event) : void
      {
      }
      
      private function §?H§(param1:Event) : void
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
               this.§[B§.playVideo();
         }
      }
      
      private function §4A§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§[B§ != null)
         {
            this.isReady = false;
            removeChild(this.§?Q§);
            this.§[B§.removeEventListener("onError",this.§`0§);
            this.§[B§.removeEventListener("onStateChange",this.§?H§);
            this.§[B§.removeEventListener("onPlaybackQualityChange",this.§4A§);
            this.§[B§.destroy();
            this.§?Q§.contentLoaderInfo.removeEventListener(Event.INIT,this.§!!!§);
            this.§?Q§ = null;
            this.§"!§ = null;
            this.§[B§ = null;
         }
      }
   }
}
