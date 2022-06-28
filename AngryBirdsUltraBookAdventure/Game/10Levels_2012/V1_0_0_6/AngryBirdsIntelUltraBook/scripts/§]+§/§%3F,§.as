package §]+§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §?,§ extends MovieClip
   {
       
      
      private var §+!d§:Object = null;
      
      private var §`!a§:Loader = null;
      
      private var §[,§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §?,§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§[,§ = new LoaderContext();
         this.§[,§.checkPolicyFile = true;
         this.§[,§.securityDomain = SecurityDomain.currentDomain;
         this.§[,§.applicationDomain = ApplicationDomain.currentDomain;
         this.§`!a§ = new Loader();
         this.§`!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§>!_§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§`!a§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§`!a§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§`!a§.mouseChildren = false;
         }
      }
      
      private function §>!_§(param1:Event) : void
      {
         addChild(this.§`!a§);
         this.§`!a§.content.addEventListener("onReady",this.§7"§);
         this.§`!a§.content.addEventListener("onError",this.§with§);
         this.§`!a§.content.addEventListener("onStateChange",this.§3!j§);
         this.§`!a§.content.addEventListener("onPlaybackQualityChange",this.§^!@§);
      }
      
      private function §7"§(param1:Event) : void
      {
         this.§+!d§ = this.§`!a§.content;
         this.§+!d§.setSize(480,360);
         this.§+!d§.removeEventListener("onReady",this.§7"§);
         this.isReady = true;
      }
      
      private function §with§(param1:Event) : void
      {
      }
      
      private function §3!j§(param1:Event) : void
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
               this.§+!d§.playVideo();
         }
      }
      
      private function §^!@§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+!d§ != null)
         {
            this.isReady = false;
            removeChild(this.§`!a§);
            this.§+!d§.removeEventListener("onError",this.§with§);
            this.§+!d§.removeEventListener("onStateChange",this.§3!j§);
            this.§+!d§.removeEventListener("onPlaybackQualityChange",this.§^!@§);
            this.§+!d§.destroy();
            this.§`!a§.contentLoaderInfo.removeEventListener(Event.INIT,this.§>!_§);
            this.§`!a§ = null;
            this.§[,§ = null;
            this.§+!d§ = null;
         }
      }
   }
}
