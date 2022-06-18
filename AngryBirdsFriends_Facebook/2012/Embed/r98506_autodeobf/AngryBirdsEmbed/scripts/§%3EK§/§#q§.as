package §>K§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §#q§ extends MovieClip
   {
       
      
      private var §[l§:Object = null;
      
      private var §=X§:Loader = null;
      
      private var §1g§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §#q§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§1g§ = new LoaderContext();
         this.§1g§.checkPolicyFile = true;
         this.§1g§.securityDomain = SecurityDomain.currentDomain;
         this.§1g§.applicationDomain = ApplicationDomain.currentDomain;
         this.§=X§ = new Loader();
         this.§=X§.contentLoaderInfo.addEventListener(Event.INIT,this.§0m§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§=X§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§=X§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§=X§.mouseChildren = false;
         }
      }
      
      private function §0m§(param1:Event) : void
      {
         addChild(this.§=X§);
         this.§=X§.content.addEventListener("onReady",this.§;d§);
         this.§=X§.content.addEventListener("onError",this.§;8§);
         this.§=X§.content.addEventListener("onStateChange",this.§@S§);
         this.§=X§.content.addEventListener("onPlaybackQualityChange",this.§[r§);
      }
      
      private function §;d§(param1:Event) : void
      {
         this.§[l§ = this.§=X§.content;
         this.§[l§.setSize(480,360);
         this.§[l§.removeEventListener("onReady",this.§;d§);
         this.isReady = true;
      }
      
      private function §;8§(param1:Event) : void
      {
      }
      
      private function §@S§(param1:Event) : void
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
               this.§[l§.playVideo();
         }
      }
      
      private function §[r§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§[l§ != null)
         {
            this.isReady = false;
            removeChild(this.§=X§);
            this.§[l§.removeEventListener("onError",this.§;8§);
            this.§[l§.removeEventListener("onStateChange",this.§@S§);
            this.§[l§.removeEventListener("onPlaybackQualityChange",this.§[r§);
            this.§[l§.destroy();
            this.§=X§.contentLoaderInfo.removeEventListener(Event.INIT,this.§0m§);
            this.§=X§ = null;
            this.§1g§ = null;
            this.§[l§ = null;
         }
      }
   }
}
