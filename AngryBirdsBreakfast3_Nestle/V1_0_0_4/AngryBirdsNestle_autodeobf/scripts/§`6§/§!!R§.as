package §`6§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §!!R§ extends MovieClip
   {
       
      
      private var §>e§:Object = null;
      
      private var §9R§:Loader = null;
      
      private var §^u§:LoaderContext = null;
      
      private var §5"1§:Boolean;
      
      public function §!!R§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§^u§ = new LoaderContext();
         this.§^u§.checkPolicyFile = true;
         this.§^u§.securityDomain = SecurityDomain.currentDomain;
         this.§^u§.applicationDomain = ApplicationDomain.currentDomain;
         this.§9R§ = new Loader();
         this.§9R§.contentLoaderInfo.addEventListener(Event.INIT,this.§8!$§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§9R§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§9R§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§9R§.mouseChildren = false;
         }
      }
      
      private function §8!$§(param1:Event) : void
      {
         addChild(this.§9R§);
         this.§9R§.content.addEventListener("onReady",this.§`!e§);
         this.§9R§.content.addEventListener("onError",this.§%! §);
         this.§9R§.content.addEventListener("onStateChange",this.§75§);
         this.§9R§.content.addEventListener("onPlaybackQualityChange",this.§,!?§);
      }
      
      private function §`!e§(param1:Event) : void
      {
         this.§>e§ = this.§9R§.content;
         this.§>e§.setSize(480,360);
         this.§>e§.removeEventListener("onReady",this.§`!e§);
         this.§5"1§ = true;
      }
      
      private function §%! §(param1:Event) : void
      {
      }
      
      private function §75§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§5"1§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§5"1§ = false;
               this.§>e§.playVideo();
         }
      }
      
      private function §,!?§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§>e§ != null)
         {
            this.§5"1§ = false;
            removeChild(this.§9R§);
            this.§>e§.removeEventListener("onError",this.§%! §);
            this.§>e§.removeEventListener("onStateChange",this.§75§);
            this.§>e§.removeEventListener("onPlaybackQualityChange",this.§,!?§);
            this.§>e§.destroy();
            this.§9R§.contentLoaderInfo.removeEventListener(Event.INIT,this.§8!$§);
            this.§9R§ = null;
            this.§^u§ = null;
            this.§>e§ = null;
         }
      }
   }
}
