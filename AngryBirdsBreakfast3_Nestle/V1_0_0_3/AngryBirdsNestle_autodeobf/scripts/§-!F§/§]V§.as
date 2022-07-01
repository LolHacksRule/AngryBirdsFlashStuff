package §-!F§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §]V§ extends MovieClip
   {
       
      
      private var §#!=§:Object = null;
      
      private var §+;§:Loader = null;
      
      private var §32§:LoaderContext = null;
      
      private var §,!D§:Boolean;
      
      public function §]V§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§32§ = new LoaderContext();
         this.§32§.checkPolicyFile = true;
         this.§32§.securityDomain = SecurityDomain.currentDomain;
         this.§32§.applicationDomain = ApplicationDomain.currentDomain;
         this.§+;§ = new Loader();
         this.§+;§.contentLoaderInfo.addEventListener(Event.INIT,this.§0H§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§+;§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§+;§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§+;§.mouseChildren = false;
         }
      }
      
      private function §0H§(param1:Event) : void
      {
         addChild(this.§+;§);
         this.§+;§.content.addEventListener("onReady",this.§6!+§);
         this.§+;§.content.addEventListener("onError",this.§<!%§);
         this.§+;§.content.addEventListener("onStateChange",this.§8"+§);
         this.§+;§.content.addEventListener("onPlaybackQualityChange",this.§,h§);
      }
      
      private function §6!+§(param1:Event) : void
      {
         this.§#!=§ = this.§+;§.content;
         this.§#!=§.setSize(480,360);
         this.§#!=§.removeEventListener("onReady",this.§6!+§);
         this.§,!D§ = true;
      }
      
      private function §<!%§(param1:Event) : void
      {
      }
      
      private function §8"+§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§,!D§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§,!D§ = false;
               this.§#!=§.playVideo();
         }
      }
      
      private function §,h§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§#!=§ != null)
         {
            this.§,!D§ = false;
            removeChild(this.§+;§);
            this.§#!=§.removeEventListener("onError",this.§<!%§);
            this.§#!=§.removeEventListener("onStateChange",this.§8"+§);
            this.§#!=§.removeEventListener("onPlaybackQualityChange",this.§,h§);
            this.§#!=§.destroy();
            this.§+;§.contentLoaderInfo.removeEventListener(Event.INIT,this.§0H§);
            this.§+;§ = null;
            this.§32§ = null;
            this.§#!=§ = null;
         }
      }
   }
}
