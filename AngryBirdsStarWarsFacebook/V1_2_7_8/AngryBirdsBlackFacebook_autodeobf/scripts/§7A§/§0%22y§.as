package §7A§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §0"y§ extends MovieClip
   {
       
      
      private var §+#"§:Object = null;
      
      private var §`!E§:Loader = null;
      
      private var §5K§:LoaderContext = null;
      
      private var §5!F§:Boolean;
      
      public function §0"y§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§5K§ = new LoaderContext();
         this.§5K§.checkPolicyFile = true;
         this.§5K§.securityDomain = SecurityDomain.currentDomain;
         this.§5K§.applicationDomain = ApplicationDomain.currentDomain;
         this.§`!E§ = new Loader();
         this.§`!E§.contentLoaderInfo.addEventListener(Event.INIT,this.§+'§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§`!E§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§`!E§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§`!E§.mouseChildren = false;
         }
      }
      
      private function §+'§(param1:Event) : void
      {
         addChild(this.§`!E§);
         this.§`!E§.content.addEventListener("onReady",this.§+C§);
         this.§`!E§.content.addEventListener("onError",this.§4"i§);
         this.§`!E§.content.addEventListener("onStateChange",this.§&^§);
         this.§`!E§.content.addEventListener("onPlaybackQualityChange",this.§ "n§);
      }
      
      private function §+C§(param1:Event) : void
      {
         this.§+#"§ = this.§`!E§.content;
         this.§+#"§.setSize(480,360);
         this.§+#"§.removeEventListener("onReady",this.§+C§);
         this.§5!F§ = true;
      }
      
      private function §4"i§(param1:Event) : void
      {
      }
      
      private function §&^§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§5!F§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§5!F§ = false;
               this.§+#"§.playVideo();
         }
      }
      
      private function § "n§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+#"§ != null)
         {
            this.§5!F§ = false;
            removeChild(this.§`!E§);
            this.§+#"§.removeEventListener("onError",this.§4"i§);
            this.§+#"§.removeEventListener("onStateChange",this.§&^§);
            this.§+#"§.removeEventListener("onPlaybackQualityChange",this.§ "n§);
            this.§+#"§.destroy();
            this.§`!E§.contentLoaderInfo.removeEventListener(Event.INIT,this.§+'§);
            this.§`!E§ = null;
            this.§5K§ = null;
            this.§+#"§ = null;
         }
      }
   }
}
