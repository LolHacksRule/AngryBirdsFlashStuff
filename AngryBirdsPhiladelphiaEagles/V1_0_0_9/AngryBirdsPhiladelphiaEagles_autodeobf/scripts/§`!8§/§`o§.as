package §`!8§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §`o§ extends MovieClip
   {
       
      
      private var §<!9§:Object = null;
      
      private var §;U§:Loader = null;
      
      private var §3R§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §`o§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§3R§ = new LoaderContext();
         this.§3R§.checkPolicyFile = true;
         this.§3R§.securityDomain = SecurityDomain.currentDomain;
         this.§3R§.applicationDomain = ApplicationDomain.currentDomain;
         this.§;U§ = new Loader();
         this.§;U§.contentLoaderInfo.addEventListener(Event.INIT,this.§;s§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§;U§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§;U§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§;U§.mouseChildren = false;
         }
      }
      
      private function §;s§(param1:Event) : void
      {
         addChild(this.§;U§);
         this.§;U§.content.addEventListener("onReady",this.§1!9§);
         this.§;U§.content.addEventListener("onError",this.§0!8§);
         this.§;U§.content.addEventListener("onStateChange",this.§9=§);
         this.§;U§.content.addEventListener("onPlaybackQualityChange",this.§9u§);
      }
      
      private function §1!9§(param1:Event) : void
      {
         this.§<!9§ = this.§;U§.content;
         this.§<!9§.setSize(480,360);
         this.§<!9§.removeEventListener("onReady",this.§1!9§);
         this.isReady = true;
      }
      
      private function §0!8§(param1:Event) : void
      {
      }
      
      private function §9=§(param1:Event) : void
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
               this.§<!9§.playVideo();
         }
      }
      
      private function §9u§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§<!9§ != null)
         {
            this.isReady = false;
            removeChild(this.§;U§);
            this.§<!9§.removeEventListener("onError",this.§0!8§);
            this.§<!9§.removeEventListener("onStateChange",this.§9=§);
            this.§<!9§.removeEventListener("onPlaybackQualityChange",this.§9u§);
            this.§<!9§.destroy();
            this.§;U§.contentLoaderInfo.removeEventListener(Event.INIT,this.§;s§);
            this.§;U§ = null;
            this.§3R§ = null;
            this.§<!9§ = null;
         }
      }
   }
}
