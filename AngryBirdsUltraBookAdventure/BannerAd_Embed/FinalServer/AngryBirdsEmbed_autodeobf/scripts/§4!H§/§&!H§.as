package §4!H§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §&!H§ extends MovieClip
   {
       
      
      private var §^#§:Object = null;
      
      private var §1@§:Loader = null;
      
      private var §">§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §&!H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§">§ = new LoaderContext();
         this.§">§.checkPolicyFile = true;
         this.§">§.securityDomain = SecurityDomain.currentDomain;
         this.§">§.applicationDomain = ApplicationDomain.currentDomain;
         this.§1@§ = new Loader();
         this.§1@§.contentLoaderInfo.addEventListener(Event.INIT,this.§^5§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§1@§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§1@§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§1@§.mouseChildren = false;
         }
      }
      
      private function §^5§(param1:Event) : void
      {
         addChild(this.§1@§);
         this.§1@§.content.addEventListener("onReady",this.§9!?§);
         this.§1@§.content.addEventListener("onError",this.§ q§);
         this.§1@§.content.addEventListener("onStateChange",this.§<V§);
         this.§1@§.content.addEventListener("onPlaybackQualityChange",this.§7s§);
      }
      
      private function §9!?§(param1:Event) : void
      {
         this.§^#§ = this.§1@§.content;
         this.§^#§.setSize(480,360);
         this.§^#§.removeEventListener("onReady",this.§9!?§);
         this.isReady = true;
      }
      
      private function § q§(param1:Event) : void
      {
      }
      
      private function §<V§(param1:Event) : void
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
               this.§^#§.playVideo();
         }
      }
      
      private function §7s§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§^#§ != null)
         {
            this.isReady = false;
            removeChild(this.§1@§);
            this.§^#§.removeEventListener("onError",this.§ q§);
            this.§^#§.removeEventListener("onStateChange",this.§<V§);
            this.§^#§.removeEventListener("onPlaybackQualityChange",this.§7s§);
            this.§^#§.destroy();
            this.§1@§.contentLoaderInfo.removeEventListener(Event.INIT,this.§^5§);
            this.§1@§ = null;
            this.§">§ = null;
            this.§^#§ = null;
         }
      }
   }
}
