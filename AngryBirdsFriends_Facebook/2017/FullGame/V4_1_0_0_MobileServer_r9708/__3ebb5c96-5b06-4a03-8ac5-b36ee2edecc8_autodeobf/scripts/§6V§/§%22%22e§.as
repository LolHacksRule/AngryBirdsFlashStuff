package §6V§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §""e§ extends MovieClip
   {
       
      
      private var §0"z§:Object = null;
      
      private var §+"§:Loader = null;
      
      private var §8"s§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §""e§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§8"s§ = new LoaderContext();
         this.§8"s§.checkPolicyFile = true;
         this.§8"s§.securityDomain = SecurityDomain.currentDomain;
         this.§8"s§.applicationDomain = ApplicationDomain.currentDomain;
         this.§+"§ = new Loader();
         this.§+"§.contentLoaderInfo.addEventListener(Event.INIT,this.§]"j§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§+"§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§+"§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§+"§.mouseChildren = false;
         }
      }
      
      private function §]"j§(param1:Event) : void
      {
         addChild(this.§+"§);
         this.§+"§.content.addEventListener("onReady",this.§!q§);
         this.§+"§.content.addEventListener("onError",this.§ Y§);
         this.§+"§.content.addEventListener("onStateChange",this.§`!G§);
         this.§+"§.content.addEventListener("onPlaybackQualityChange",this.§?0§);
      }
      
      private function §!q§(param1:Event) : void
      {
         this.§0"z§ = this.§+"§.content;
         this.§0"z§.setSize(480,360);
         this.§0"z§.removeEventListener("onReady",this.§!q§);
         this.isReady = true;
      }
      
      private function § Y§(param1:Event) : void
      {
      }
      
      private function §`!G§(param1:Event) : void
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
               this.§0"z§.playVideo();
         }
      }
      
      private function §?0§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§0"z§ != null)
         {
            this.isReady = false;
            removeChild(this.§+"§);
            this.§0"z§.removeEventListener("onError",this.§ Y§);
            this.§0"z§.removeEventListener("onStateChange",this.§`!G§);
            this.§0"z§.removeEventListener("onPlaybackQualityChange",this.§?0§);
            this.§0"z§.destroy();
            this.§+"§.contentLoaderInfo.removeEventListener(Event.INIT,this.§]"j§);
            this.§+"§ = null;
            this.§8"s§ = null;
            this.§0"z§ = null;
         }
      }
   }
}
