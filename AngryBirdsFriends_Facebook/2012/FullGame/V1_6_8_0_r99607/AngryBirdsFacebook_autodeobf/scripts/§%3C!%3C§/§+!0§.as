package §<!<§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §+!0§ extends MovieClip
   {
       
      
      private var § !H§:Object = null;
      
      private var §^t§:Loader = null;
      
      private var §2!B§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §+!0§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§2!B§ = new LoaderContext();
         this.§2!B§.checkPolicyFile = true;
         this.§2!B§.securityDomain = SecurityDomain.currentDomain;
         this.§2!B§.applicationDomain = ApplicationDomain.currentDomain;
         this.§^t§ = new Loader();
         this.§^t§.contentLoaderInfo.addEventListener(Event.INIT,this.§9!x§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§^t§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§^t§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§^t§.mouseChildren = false;
         }
      }
      
      private function §9!x§(param1:Event) : void
      {
         addChild(this.§^t§);
         this.§^t§.content.addEventListener("onReady",this.§<"#§);
         this.§^t§.content.addEventListener("onError",this.§&"?§);
         this.§^t§.content.addEventListener("onStateChange",this.§+c§);
         this.§^t§.content.addEventListener("onPlaybackQualityChange",this.§;!W§);
      }
      
      private function §<"#§(param1:Event) : void
      {
         this.§ !H§ = this.§^t§.content;
         this.§ !H§.setSize(480,360);
         this.§ !H§.removeEventListener("onReady",this.§<"#§);
         this.isReady = true;
      }
      
      private function §&"?§(param1:Event) : void
      {
      }
      
      private function §+c§(param1:Event) : void
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
               this.§ !H§.playVideo();
         }
      }
      
      private function §;!W§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§ !H§ != null)
         {
            this.isReady = false;
            removeChild(this.§^t§);
            this.§ !H§.removeEventListener("onError",this.§&"?§);
            this.§ !H§.removeEventListener("onStateChange",this.§+c§);
            this.§ !H§.removeEventListener("onPlaybackQualityChange",this.§;!W§);
            this.§ !H§.destroy();
            this.§^t§.contentLoaderInfo.removeEventListener(Event.INIT,this.§9!x§);
            this.§^t§ = null;
            this.§2!B§ = null;
            this.§ !H§ = null;
         }
      }
   }
}
