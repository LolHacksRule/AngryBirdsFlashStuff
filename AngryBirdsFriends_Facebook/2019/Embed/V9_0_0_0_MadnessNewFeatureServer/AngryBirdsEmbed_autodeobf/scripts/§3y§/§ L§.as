package §3y§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § L§ extends MovieClip
   {
       
      
      private var §+"§:Object = null;
      
      private var §>!8§:Loader = null;
      
      private var §]F§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § L§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§]F§ = new LoaderContext();
         this.§]F§.checkPolicyFile = true;
         this.§]F§.securityDomain = SecurityDomain.currentDomain;
         this.§]F§.applicationDomain = ApplicationDomain.currentDomain;
         this.§>!8§ = new Loader();
         this.§>!8§.contentLoaderInfo.addEventListener(Event.INIT,this.§`!2§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§>!8§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§>!8§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§>!8§.mouseChildren = false;
         }
      }
      
      private function §`!2§(param1:Event) : void
      {
         addChild(this.§>!8§);
         this.§>!8§.content.addEventListener("onReady",this.§#e§);
         this.§>!8§.content.addEventListener("onError",this.§?! §);
         this.§>!8§.content.addEventListener("onStateChange",this.§;_§);
         this.§>!8§.content.addEventListener("onPlaybackQualityChange",this.§->§);
      }
      
      private function §#e§(param1:Event) : void
      {
         this.§+"§ = this.§>!8§.content;
         this.§+"§.setSize(480,360);
         this.§+"§.removeEventListener("onReady",this.§#e§);
         this.isReady = true;
      }
      
      private function §?! §(param1:Event) : void
      {
      }
      
      private function §;_§(param1:Event) : void
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
               this.§+"§.playVideo();
         }
      }
      
      private function §->§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+"§ != null)
         {
            this.isReady = false;
            removeChild(this.§>!8§);
            this.§+"§.removeEventListener("onError",this.§?! §);
            this.§+"§.removeEventListener("onStateChange",this.§;_§);
            this.§+"§.removeEventListener("onPlaybackQualityChange",this.§->§);
            this.§+"§.destroy();
            this.§>!8§.contentLoaderInfo.removeEventListener(Event.INIT,this.§`!2§);
            this.§>!8§ = null;
            this.§]F§ = null;
            this.§+"§ = null;
         }
      }
   }
}
