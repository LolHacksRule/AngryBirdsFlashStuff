package §`7§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §<!d§ extends MovieClip
   {
       
      
      private var §3"4§:Object = null;
      
      private var §>v§:Loader = null;
      
      private var §8"W§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §<!d§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§8"W§ = new LoaderContext();
         this.§8"W§.checkPolicyFile = true;
         this.§8"W§.securityDomain = SecurityDomain.currentDomain;
         this.§8"W§.applicationDomain = ApplicationDomain.currentDomain;
         this.§>v§ = new Loader();
         this.§>v§.contentLoaderInfo.addEventListener(Event.INIT,this.§^"X§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§>v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§>v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§>v§.mouseChildren = false;
         }
      }
      
      private function §^"X§(param1:Event) : void
      {
         addChild(this.§>v§);
         this.§>v§.content.addEventListener("onReady",this.§^t§);
         this.§>v§.content.addEventListener("onError",this.§^$>§);
         this.§>v§.content.addEventListener("onStateChange",this.§3!m§);
         this.§>v§.content.addEventListener("onPlaybackQualityChange",this.§2?§);
      }
      
      private function §^t§(param1:Event) : void
      {
         this.§3"4§ = this.§>v§.content;
         this.§3"4§.setSize(480,360);
         this.§3"4§.removeEventListener("onReady",this.§^t§);
         this.isReady = true;
      }
      
      private function §^$>§(param1:Event) : void
      {
      }
      
      private function §3!m§(param1:Event) : void
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
               this.§3"4§.playVideo();
         }
      }
      
      private function §2?§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§3"4§ != null)
         {
            this.isReady = false;
            removeChild(this.§>v§);
            this.§3"4§.removeEventListener("onError",this.§^$>§);
            this.§3"4§.removeEventListener("onStateChange",this.§3!m§);
            this.§3"4§.removeEventListener("onPlaybackQualityChange",this.§2?§);
            this.§3"4§.destroy();
            this.§>v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§^"X§);
            this.§>v§ = null;
            this.§8"W§ = null;
            this.§3"4§ = null;
         }
      }
   }
}
