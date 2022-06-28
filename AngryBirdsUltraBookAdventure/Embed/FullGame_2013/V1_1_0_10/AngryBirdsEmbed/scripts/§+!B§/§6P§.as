package §+!B§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §6P§ extends MovieClip
   {
       
      
      private var §3j§:Object = null;
      
      private var §;$§:Loader = null;
      
      private var §3!K§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §6P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§3!K§ = new LoaderContext();
         this.§3!K§.checkPolicyFile = true;
         this.§3!K§.securityDomain = SecurityDomain.currentDomain;
         this.§3!K§.applicationDomain = ApplicationDomain.currentDomain;
         this.§;$§ = new Loader();
         this.§;$§.contentLoaderInfo.addEventListener(Event.INIT,this.§5'§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§;$§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§;$§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§;$§.mouseChildren = false;
         }
      }
      
      private function §5'§(param1:Event) : void
      {
         addChild(this.§;$§);
         this.§;$§.content.addEventListener("onReady",this.§9!?§);
         this.§;$§.content.addEventListener("onError",this.§%"§);
         this.§;$§.content.addEventListener("onStateChange",this.§6!H§);
         this.§;$§.content.addEventListener("onPlaybackQualityChange",this.§,n§);
      }
      
      private function §9!?§(param1:Event) : void
      {
         this.§3j§ = this.§;$§.content;
         this.§3j§.setSize(480,360);
         this.§3j§.removeEventListener("onReady",this.§9!?§);
         this.isReady = true;
      }
      
      private function §%"§(param1:Event) : void
      {
      }
      
      private function §6!H§(param1:Event) : void
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
               this.§3j§.playVideo();
         }
      }
      
      private function §,n§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§3j§ != null)
         {
            this.isReady = false;
            removeChild(this.§;$§);
            this.§3j§.removeEventListener("onError",this.§%"§);
            this.§3j§.removeEventListener("onStateChange",this.§6!H§);
            this.§3j§.removeEventListener("onPlaybackQualityChange",this.§,n§);
            this.§3j§.destroy();
            this.§;$§.contentLoaderInfo.removeEventListener(Event.INIT,this.§5'§);
            this.§;$§ = null;
            this.§3!K§ = null;
            this.§3j§ = null;
         }
      }
   }
}
