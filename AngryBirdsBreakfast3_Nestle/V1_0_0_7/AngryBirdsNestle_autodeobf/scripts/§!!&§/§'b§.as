package §!!&§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'b§ extends MovieClip
   {
       
      
      private var §,o§:Object = null;
      
      private var §3!N§:Loader = null;
      
      private var §,!]§:LoaderContext = null;
      
      private var §"!o§:Boolean;
      
      public function §'b§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§,!]§ = new LoaderContext();
         this.§,!]§.checkPolicyFile = true;
         this.§,!]§.securityDomain = SecurityDomain.currentDomain;
         this.§,!]§.applicationDomain = ApplicationDomain.currentDomain;
         this.§3!N§ = new Loader();
         this.§3!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§7!9§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§3!N§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§3!N§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§3!N§.mouseChildren = false;
         }
      }
      
      private function §7!9§(param1:Event) : void
      {
         addChild(this.§3!N§);
         this.§3!N§.content.addEventListener("onReady",this.§7=§);
         this.§3!N§.content.addEventListener("onError",this.§9!E§);
         this.§3!N§.content.addEventListener("onStateChange",this.§%!d§);
         this.§3!N§.content.addEventListener("onPlaybackQualityChange",this.§6^§);
      }
      
      private function §7=§(param1:Event) : void
      {
         this.§,o§ = this.§3!N§.content;
         this.§,o§.setSize(480,360);
         this.§,o§.removeEventListener("onReady",this.§7=§);
         this.§"!o§ = true;
      }
      
      private function §9!E§(param1:Event) : void
      {
      }
      
      private function §%!d§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§"!o§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§"!o§ = false;
               this.§,o§.playVideo();
         }
      }
      
      private function §6^§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§,o§ != null)
         {
            this.§"!o§ = false;
            removeChild(this.§3!N§);
            this.§,o§.removeEventListener("onError",this.§9!E§);
            this.§,o§.removeEventListener("onStateChange",this.§%!d§);
            this.§,o§.removeEventListener("onPlaybackQualityChange",this.§6^§);
            this.§,o§.destroy();
            this.§3!N§.contentLoaderInfo.removeEventListener(Event.INIT,this.§7!9§);
            this.§3!N§ = null;
            this.§,!]§ = null;
            this.§,o§ = null;
         }
      }
   }
}
