package §!!A§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §7!$§ extends MovieClip
   {
       
      
      private var §-k§:Object = null;
      
      private var §"!§:Loader = null;
      
      private var §2?§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §7!$§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§2?§ = new LoaderContext();
         this.§2?§.checkPolicyFile = true;
         this.§2?§.securityDomain = SecurityDomain.currentDomain;
         this.§2?§.applicationDomain = ApplicationDomain.currentDomain;
         this.§"!§ = new Loader();
         this.§"!§.contentLoaderInfo.addEventListener(Event.INIT,this.§'!k§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§"!§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§"!§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§"!§.mouseChildren = false;
         }
      }
      
      private function §'!k§(param1:Event) : void
      {
         addChild(this.§"!§);
         this.§"!§.content.addEventListener("onReady",this.§8+§);
         this.§"!§.content.addEventListener("onError",this.§ !P§);
         this.§"!§.content.addEventListener("onStateChange",this.§=>§);
         this.§"!§.content.addEventListener("onPlaybackQualityChange",this.§&!j§);
      }
      
      private function §8+§(param1:Event) : void
      {
         this.§-k§ = this.§"!§.content;
         this.§-k§.setSize(480,360);
         this.§-k§.removeEventListener("onReady",this.§8+§);
         this.isReady = true;
      }
      
      private function § !P§(param1:Event) : void
      {
      }
      
      private function §=>§(param1:Event) : void
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
               this.§-k§.playVideo();
         }
      }
      
      private function §&!j§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§-k§ != null)
         {
            this.isReady = false;
            removeChild(this.§"!§);
            this.§-k§.removeEventListener("onError",this.§ !P§);
            this.§-k§.removeEventListener("onStateChange",this.§=>§);
            this.§-k§.removeEventListener("onPlaybackQualityChange",this.§&!j§);
            this.§-k§.destroy();
            this.§"!§.contentLoaderInfo.removeEventListener(Event.INIT,this.§'!k§);
            this.§"!§ = null;
            this.§2?§ = null;
            this.§-k§ = null;
         }
      }
   }
}
