package §,E§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §@0§ extends MovieClip
   {
       
      
      private var §+!b§:Object = null;
      
      private var §5L§:Loader = null;
      
      private var §0!h§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §@0§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§0!h§ = new LoaderContext();
         this.§0!h§.checkPolicyFile = true;
         this.§0!h§.securityDomain = SecurityDomain.currentDomain;
         this.§0!h§.applicationDomain = ApplicationDomain.currentDomain;
         this.§5L§ = new Loader();
         this.§5L§.contentLoaderInfo.addEventListener(Event.INIT,this.§,M§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§5L§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§5L§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§5L§.mouseChildren = false;
         }
      }
      
      private function §,M§(param1:Event) : void
      {
         addChild(this.§5L§);
         this.§5L§.content.addEventListener("onReady",this.§<j§);
         this.§5L§.content.addEventListener("onError",this.§#q§);
         this.§5L§.content.addEventListener("onStateChange",this.§0!c§);
         this.§5L§.content.addEventListener("onPlaybackQualityChange",this.§[!b§);
      }
      
      private function §<j§(param1:Event) : void
      {
         this.§+!b§ = this.§5L§.content;
         this.§+!b§.setSize(480,360);
         this.§+!b§.removeEventListener("onReady",this.§<j§);
         this.isReady = true;
      }
      
      private function §#q§(param1:Event) : void
      {
      }
      
      private function §0!c§(param1:Event) : void
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
               this.§+!b§.playVideo();
         }
      }
      
      private function §[!b§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+!b§ != null)
         {
            this.isReady = false;
            removeChild(this.§5L§);
            this.§+!b§.removeEventListener("onError",this.§#q§);
            this.§+!b§.removeEventListener("onStateChange",this.§0!c§);
            this.§+!b§.removeEventListener("onPlaybackQualityChange",this.§[!b§);
            this.§+!b§.destroy();
            this.§5L§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,M§);
            this.§5L§ = null;
            this.§0!h§ = null;
            this.§+!b§ = null;
         }
      }
   }
}
