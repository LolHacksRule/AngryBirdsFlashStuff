package §0!E§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § H§ extends MovieClip
   {
       
      
      private var §=P§:Object = null;
      
      private var §3P§:Loader = null;
      
      private var §9o§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§9o§ = new LoaderContext();
         this.§9o§.checkPolicyFile = true;
         this.§9o§.securityDomain = SecurityDomain.currentDomain;
         this.§9o§.applicationDomain = ApplicationDomain.currentDomain;
         this.§3P§ = new Loader();
         this.§3P§.contentLoaderInfo.addEventListener(Event.INIT,this.§,J§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§3P§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§3P§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§3P§.mouseChildren = false;
         }
      }
      
      private function §,J§(param1:Event) : void
      {
         addChild(this.§3P§);
         this.§3P§.content.addEventListener("onReady",this.§7!%§);
         this.§3P§.content.addEventListener("onError",this.§&_§);
         this.§3P§.content.addEventListener("onStateChange",this.§>!0§);
         this.§3P§.content.addEventListener("onPlaybackQualityChange",this.§[!,§);
      }
      
      private function §7!%§(param1:Event) : void
      {
         this.§=P§ = this.§3P§.content;
         this.§=P§.setSize(480,360);
         this.§=P§.removeEventListener("onReady",this.§7!%§);
         this.isReady = true;
      }
      
      private function §&_§(param1:Event) : void
      {
      }
      
      private function §>!0§(param1:Event) : void
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
               this.§=P§.playVideo();
         }
      }
      
      private function §[!,§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§=P§ != null)
         {
            this.isReady = false;
            removeChild(this.§3P§);
            this.§=P§.removeEventListener("onError",this.§&_§);
            this.§=P§.removeEventListener("onStateChange",this.§>!0§);
            this.§=P§.removeEventListener("onPlaybackQualityChange",this.§[!,§);
            this.§=P§.destroy();
            this.§3P§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,J§);
            this.§3P§ = null;
            this.§9o§ = null;
            this.§=P§ = null;
         }
      }
   }
}
