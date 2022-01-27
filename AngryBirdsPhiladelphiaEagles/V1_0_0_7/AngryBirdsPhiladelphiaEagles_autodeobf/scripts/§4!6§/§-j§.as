package §4!6§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §-j§ extends MovieClip
   {
       
      
      private var §%r§:Object = null;
      
      private var §[b§:Loader = null;
      
      private var §#%§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §-j§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§#%§ = new LoaderContext();
         this.§#%§.checkPolicyFile = true;
         this.§#%§.securityDomain = SecurityDomain.currentDomain;
         this.§#%§.applicationDomain = ApplicationDomain.currentDomain;
         this.§[b§ = new Loader();
         this.§[b§.contentLoaderInfo.addEventListener(Event.INIT,this.§ E§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§[b§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§[b§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§[b§.mouseChildren = false;
         }
      }
      
      private function § E§(param1:Event) : void
      {
         addChild(this.§[b§);
         this.§[b§.content.addEventListener("onReady",this.§,N§);
         this.§[b§.content.addEventListener("onError",this.§2!L§);
         this.§[b§.content.addEventListener("onStateChange",this.§1;§);
         this.§[b§.content.addEventListener("onPlaybackQualityChange",this.§;`§);
      }
      
      private function §,N§(param1:Event) : void
      {
         this.§%r§ = this.§[b§.content;
         this.§%r§.setSize(480,360);
         this.§%r§.removeEventListener("onReady",this.§,N§);
         this.isReady = true;
      }
      
      private function §2!L§(param1:Event) : void
      {
      }
      
      private function §1;§(param1:Event) : void
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
               this.§%r§.playVideo();
         }
      }
      
      private function §;`§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§%r§ != null)
         {
            this.isReady = false;
            removeChild(this.§[b§);
            this.§%r§.removeEventListener("onError",this.§2!L§);
            this.§%r§.removeEventListener("onStateChange",this.§1;§);
            this.§%r§.removeEventListener("onPlaybackQualityChange",this.§;`§);
            this.§%r§.destroy();
            this.§[b§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ E§);
            this.§[b§ = null;
            this.§#%§ = null;
            this.§%r§ = null;
         }
      }
   }
}
