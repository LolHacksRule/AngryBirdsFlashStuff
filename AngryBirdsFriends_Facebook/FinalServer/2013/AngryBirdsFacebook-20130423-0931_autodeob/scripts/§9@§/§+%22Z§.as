package §9@§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §+"Z§ extends MovieClip
   {
       
      
      private var §=!h§:Object = null;
      
      private var §2!H§:Loader = null;
      
      private var §-!A§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §+"Z§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§-!A§ = new LoaderContext();
         this.§-!A§.checkPolicyFile = true;
         this.§-!A§.securityDomain = SecurityDomain.currentDomain;
         this.§-!A§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2!H§ = new Loader();
         this.§2!H§.contentLoaderInfo.addEventListener(Event.INIT,this.§?"O§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2!H§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2!H§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2!H§.mouseChildren = false;
         }
      }
      
      private function §?"O§(param1:Event) : void
      {
         addChild(this.§2!H§);
         this.§2!H§.content.addEventListener("onReady",this.§ h§);
         this.§2!H§.content.addEventListener("onError",this.§@"8§);
         this.§2!H§.content.addEventListener("onStateChange",this.§6<§);
         this.§2!H§.content.addEventListener("onPlaybackQualityChange",this.§;!5§);
      }
      
      private function § h§(param1:Event) : void
      {
         this.§=!h§ = this.§2!H§.content;
         this.§=!h§.setSize(480,360);
         this.§=!h§.removeEventListener("onReady",this.§ h§);
         this.isReady = true;
      }
      
      private function §@"8§(param1:Event) : void
      {
      }
      
      private function §6<§(param1:Event) : void
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
               this.§=!h§.playVideo();
         }
      }
      
      private function §;!5§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§=!h§ != null)
         {
            this.isReady = false;
            removeChild(this.§2!H§);
            this.§=!h§.removeEventListener("onError",this.§@"8§);
            this.§=!h§.removeEventListener("onStateChange",this.§6<§);
            this.§=!h§.removeEventListener("onPlaybackQualityChange",this.§;!5§);
            this.§=!h§.destroy();
            this.§2!H§.contentLoaderInfo.removeEventListener(Event.INIT,this.§?"O§);
            this.§2!H§ = null;
            this.§-!A§ = null;
            this.§=!h§ = null;
         }
      }
   }
}
