package §while§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § z§ extends MovieClip
   {
       
      
      private var §^b§:Object = null;
      
      private var §>f§:Loader = null;
      
      private var §8V§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § z§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§8V§ = new LoaderContext();
         this.§8V§.checkPolicyFile = true;
         this.§8V§.securityDomain = SecurityDomain.currentDomain;
         this.§8V§.applicationDomain = ApplicationDomain.currentDomain;
         this.§>f§ = new Loader();
         this.§>f§.contentLoaderInfo.addEventListener(Event.INIT,this.§;?§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§>f§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§>f§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§>f§.mouseChildren = false;
         }
      }
      
      private function §;?§(param1:Event) : void
      {
         addChild(this.§>f§);
         this.§>f§.content.addEventListener("onReady",this.§,!>§);
         this.§>f§.content.addEventListener("onError",this.§4!F§);
         this.§>f§.content.addEventListener("onStateChange",this.§?&§);
         this.§>f§.content.addEventListener("onPlaybackQualityChange",this.§+!4§);
      }
      
      private function §,!>§(param1:Event) : void
      {
         this.§^b§ = this.§>f§.content;
         this.§^b§.setSize(480,360);
         this.§^b§.removeEventListener("onReady",this.§,!>§);
         this.isReady = true;
      }
      
      private function §4!F§(param1:Event) : void
      {
      }
      
      private function §?&§(param1:Event) : void
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
               this.§^b§.playVideo();
         }
      }
      
      private function §+!4§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§^b§ != null)
         {
            this.isReady = false;
            removeChild(this.§>f§);
            this.§^b§.removeEventListener("onError",this.§4!F§);
            this.§^b§.removeEventListener("onStateChange",this.§?&§);
            this.§^b§.removeEventListener("onPlaybackQualityChange",this.§+!4§);
            this.§^b§.destroy();
            this.§>f§.contentLoaderInfo.removeEventListener(Event.INIT,this.§;?§);
            this.§>f§ = null;
            this.§8V§ = null;
            this.§^b§ = null;
         }
      }
   }
}
