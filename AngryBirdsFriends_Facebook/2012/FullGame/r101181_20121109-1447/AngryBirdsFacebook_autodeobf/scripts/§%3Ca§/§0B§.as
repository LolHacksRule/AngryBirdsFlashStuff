package §<a§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §0B§ extends MovieClip
   {
       
      
      private var §`"§:Object = null;
      
      private var §]D§:Loader = null;
      
      private var §="!§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §0B§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§="!§ = new LoaderContext();
         this.§="!§.checkPolicyFile = true;
         this.§="!§.securityDomain = SecurityDomain.currentDomain;
         this.§="!§.applicationDomain = ApplicationDomain.currentDomain;
         this.§]D§ = new Loader();
         this.§]D§.contentLoaderInfo.addEventListener(Event.INIT,this.§,!5§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§]D§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§]D§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§]D§.mouseChildren = false;
         }
      }
      
      private function §,!5§(param1:Event) : void
      {
         addChild(this.§]D§);
         this.§]D§.content.addEventListener("onReady",this.§[7§);
         this.§]D§.content.addEventListener("onError",this.§ "=§);
         this.§]D§.content.addEventListener("onStateChange",this.§;!w§);
         this.§]D§.content.addEventListener("onPlaybackQualityChange",this.§5!;§);
      }
      
      private function §[7§(param1:Event) : void
      {
         this.§`"§ = this.§]D§.content;
         this.§`"§.setSize(480,360);
         this.§`"§.removeEventListener("onReady",this.§[7§);
         this.isReady = true;
      }
      
      private function § "=§(param1:Event) : void
      {
      }
      
      private function §;!w§(param1:Event) : void
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
               this.§`"§.playVideo();
         }
      }
      
      private function §5!;§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§`"§ != null)
         {
            this.isReady = false;
            removeChild(this.§]D§);
            this.§`"§.removeEventListener("onError",this.§ "=§);
            this.§`"§.removeEventListener("onStateChange",this.§;!w§);
            this.§`"§.removeEventListener("onPlaybackQualityChange",this.§5!;§);
            this.§`"§.destroy();
            this.§]D§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,!5§);
            this.§]D§ = null;
            this.§="!§ = null;
            this.§`"§ = null;
         }
      }
   }
}
