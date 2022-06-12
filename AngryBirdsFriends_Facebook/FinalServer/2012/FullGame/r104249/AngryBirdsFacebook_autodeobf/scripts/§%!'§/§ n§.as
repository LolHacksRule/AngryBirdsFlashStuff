package §%!'§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § n§ extends MovieClip
   {
       
      
      private var §+!S§:Object = null;
      
      private var §?"<§:Loader = null;
      
      private var §0R§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § n§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§0R§ = new LoaderContext();
         this.§0R§.checkPolicyFile = true;
         this.§0R§.securityDomain = SecurityDomain.currentDomain;
         this.§0R§.applicationDomain = ApplicationDomain.currentDomain;
         this.§?"<§ = new Loader();
         this.§?"<§.contentLoaderInfo.addEventListener(Event.INIT,this.§]!6§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§?"<§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§?"<§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§?"<§.mouseChildren = false;
         }
      }
      
      private function §]!6§(param1:Event) : void
      {
         addChild(this.§?"<§);
         this.§?"<§.content.addEventListener("onReady",this.§ Y§);
         this.§?"<§.content.addEventListener("onError",this.§6!<§);
         this.§?"<§.content.addEventListener("onStateChange",this.§]";§);
         this.§?"<§.content.addEventListener("onPlaybackQualityChange",this.§62§);
      }
      
      private function § Y§(param1:Event) : void
      {
         this.§+!S§ = this.§?"<§.content;
         this.§+!S§.setSize(480,360);
         this.§+!S§.removeEventListener("onReady",this.§ Y§);
         this.isReady = true;
      }
      
      private function §6!<§(param1:Event) : void
      {
      }
      
      private function §]";§(param1:Event) : void
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
               this.§+!S§.playVideo();
         }
      }
      
      private function §62§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+!S§ != null)
         {
            this.isReady = false;
            removeChild(this.§?"<§);
            this.§+!S§.removeEventListener("onError",this.§6!<§);
            this.§+!S§.removeEventListener("onStateChange",this.§]";§);
            this.§+!S§.removeEventListener("onPlaybackQualityChange",this.§62§);
            this.§+!S§.destroy();
            this.§?"<§.contentLoaderInfo.removeEventListener(Event.INIT,this.§]!6§);
            this.§?"<§ = null;
            this.§0R§ = null;
            this.§+!S§ = null;
         }
      }
   }
}
