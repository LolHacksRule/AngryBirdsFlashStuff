package §>!#§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §=#-§ extends MovieClip
   {
       
      
      private var §?#Z§:Object = null;
      
      private var § each§:Loader = null;
      
      private var §##n§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §=#-§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§##n§ = new LoaderContext();
         this.§##n§.checkPolicyFile = true;
         this.§##n§.securityDomain = SecurityDomain.currentDomain;
         this.§##n§.applicationDomain = ApplicationDomain.currentDomain;
         this.§ each§ = new Loader();
         this.§ each§.contentLoaderInfo.addEventListener(Event.INIT,this.§`#N§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§ each§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§ each§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§ each§.mouseChildren = false;
         }
      }
      
      private function §`#N§(param1:Event) : void
      {
         addChild(this.§ each§);
         this.§ each§.content.addEventListener("onReady",this.§]#8§);
         this.§ each§.content.addEventListener("onError",this.§,?§);
         this.§ each§.content.addEventListener("onStateChange",this.§'"A§);
         this.§ each§.content.addEventListener("onPlaybackQualityChange",this.§]!5§);
      }
      
      private function §]#8§(param1:Event) : void
      {
         this.§?#Z§ = this.§ each§.content;
         this.§?#Z§.setSize(480,360);
         this.§?#Z§.removeEventListener("onReady",this.§]#8§);
         this.isReady = true;
      }
      
      private function §,?§(param1:Event) : void
      {
      }
      
      private function §'"A§(param1:Event) : void
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
               this.§?#Z§.playVideo();
         }
      }
      
      private function §]!5§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§?#Z§ != null)
         {
            this.isReady = false;
            removeChild(this.§ each§);
            this.§?#Z§.removeEventListener("onError",this.§,?§);
            this.§?#Z§.removeEventListener("onStateChange",this.§'"A§);
            this.§?#Z§.removeEventListener("onPlaybackQualityChange",this.§]!5§);
            this.§?#Z§.destroy();
            this.§ each§.contentLoaderInfo.removeEventListener(Event.INIT,this.§`#N§);
            this.§ each§ = null;
            this.§##n§ = null;
            this.§?#Z§ = null;
         }
      }
   }
}
