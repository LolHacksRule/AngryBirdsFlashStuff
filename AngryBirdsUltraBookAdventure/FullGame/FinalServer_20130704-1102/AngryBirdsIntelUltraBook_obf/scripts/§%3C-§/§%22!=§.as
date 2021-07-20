package §<-§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §"!=§ extends MovieClip
   {
       
      
      private var §5W§:Object = null;
      
      private var §,!a§:Loader = null;
      
      private var §implements§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §"!=§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§implements§ = new LoaderContext();
         this.§implements§.checkPolicyFile = true;
         this.§implements§.securityDomain = SecurityDomain.currentDomain;
         this.§implements§.applicationDomain = ApplicationDomain.currentDomain;
         this.§,!a§ = new Loader();
         this.§,!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§[!>§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§,!a§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§,!a§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§,!a§.mouseChildren = false;
         }
      }
      
      private function §[!>§(param1:Event) : void
      {
         addChild(this.§,!a§);
         this.§,!a§.content.addEventListener("onReady",this.§8!]§);
         this.§,!a§.content.addEventListener("onError",this.§=y§);
         this.§,!a§.content.addEventListener("onStateChange",this.§0"§);
         this.§,!a§.content.addEventListener("onPlaybackQualityChange",this.§]'§);
      }
      
      private function §8!]§(param1:Event) : void
      {
         this.§5W§ = this.§,!a§.content;
         this.§5W§.setSize(480,360);
         this.§5W§.removeEventListener("onReady",this.§8!]§);
         this.isReady = true;
      }
      
      private function §=y§(param1:Event) : void
      {
      }
      
      private function §0"§(param1:Event) : void
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
               this.§5W§.playVideo();
         }
      }
      
      private function §]'§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§5W§ != null)
         {
            this.isReady = false;
            removeChild(this.§,!a§);
            this.§5W§.removeEventListener("onError",this.§=y§);
            this.§5W§.removeEventListener("onStateChange",this.§0"§);
            this.§5W§.removeEventListener("onPlaybackQualityChange",this.§]'§);
            this.§5W§.destroy();
            this.§,!a§.contentLoaderInfo.removeEventListener(Event.INIT,this.§[!>§);
            this.§,!a§ = null;
            this.§implements§ = null;
            this.§5W§ = null;
         }
      }
   }
}
