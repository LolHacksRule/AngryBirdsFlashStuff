package §+d§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §;!m§ extends MovieClip
   {
       
      
      private var §>j§:Object = null;
      
      private var §&K§:Loader = null;
      
      private var §&!9§:LoaderContext = null;
      
      private var §#"r§:Boolean;
      
      public function §;!m§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§&!9§ = new LoaderContext();
         this.§&!9§.checkPolicyFile = true;
         this.§&!9§.securityDomain = SecurityDomain.currentDomain;
         this.§&!9§.applicationDomain = ApplicationDomain.currentDomain;
         this.§&K§ = new Loader();
         this.§&K§.contentLoaderInfo.addEventListener(Event.INIT,this.§?#%§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§&K§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§&K§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§&K§.mouseChildren = false;
         }
      }
      
      private function §?#%§(param1:Event) : void
      {
         addChild(this.§&K§);
         this.§&K§.content.addEventListener("onReady",this.§7"^§);
         this.§&K§.content.addEventListener("onError",this.§?"&§);
         this.§&K§.content.addEventListener("onStateChange",this.§4"q§);
         this.§&K§.content.addEventListener("onPlaybackQualityChange",this.§"!m§);
      }
      
      private function §7"^§(param1:Event) : void
      {
         this.§>j§ = this.§&K§.content;
         this.§>j§.setSize(480,360);
         this.§>j§.removeEventListener("onReady",this.§7"^§);
         this.§#"r§ = true;
      }
      
      private function §?"&§(param1:Event) : void
      {
      }
      
      private function §4"q§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§#"r§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§#"r§ = false;
               this.§>j§.playVideo();
         }
      }
      
      private function §"!m§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§>j§ != null)
         {
            this.§#"r§ = false;
            removeChild(this.§&K§);
            this.§>j§.removeEventListener("onError",this.§?"&§);
            this.§>j§.removeEventListener("onStateChange",this.§4"q§);
            this.§>j§.removeEventListener("onPlaybackQualityChange",this.§"!m§);
            this.§>j§.destroy();
            this.§&K§.contentLoaderInfo.removeEventListener(Event.INIT,this.§?#%§);
            this.§&K§ = null;
            this.§&!9§ = null;
            this.§>j§ = null;
         }
      }
   }
}
