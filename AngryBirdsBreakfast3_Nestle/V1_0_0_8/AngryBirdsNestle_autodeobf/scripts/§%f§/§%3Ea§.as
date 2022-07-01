package §%f§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §>a§ extends MovieClip
   {
       
      
      private var §`!l§:Object = null;
      
      private var §!!=§:Loader = null;
      
      private var §7]§:LoaderContext = null;
      
      private var §,!o§:Boolean;
      
      public function §>a§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§7]§ = new LoaderContext();
         this.§7]§.checkPolicyFile = true;
         this.§7]§.securityDomain = SecurityDomain.currentDomain;
         this.§7]§.applicationDomain = ApplicationDomain.currentDomain;
         this.§!!=§ = new Loader();
         this.§!!=§.contentLoaderInfo.addEventListener(Event.INIT,this.§>!_§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§!!=§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§!!=§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§!!=§.mouseChildren = false;
         }
      }
      
      private function §>!_§(param1:Event) : void
      {
         addChild(this.§!!=§);
         this.§!!=§.content.addEventListener("onReady",this.§ =§);
         this.§!!=§.content.addEventListener("onError",this.§+B§);
         this.§!!=§.content.addEventListener("onStateChange",this.§4!o§);
         this.§!!=§.content.addEventListener("onPlaybackQualityChange",this.§4!w§);
      }
      
      private function § =§(param1:Event) : void
      {
         this.§`!l§ = this.§!!=§.content;
         this.§`!l§.setSize(480,360);
         this.§`!l§.removeEventListener("onReady",this.§ =§);
         this.§,!o§ = true;
      }
      
      private function §+B§(param1:Event) : void
      {
      }
      
      private function §4!o§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§,!o§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§,!o§ = false;
               this.§`!l§.playVideo();
         }
      }
      
      private function §4!w§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§`!l§ != null)
         {
            this.§,!o§ = false;
            removeChild(this.§!!=§);
            this.§`!l§.removeEventListener("onError",this.§+B§);
            this.§`!l§.removeEventListener("onStateChange",this.§4!o§);
            this.§`!l§.removeEventListener("onPlaybackQualityChange",this.§4!w§);
            this.§`!l§.destroy();
            this.§!!=§.contentLoaderInfo.removeEventListener(Event.INIT,this.§>!_§);
            this.§!!=§ = null;
            this.§7]§ = null;
            this.§`!l§ = null;
         }
      }
   }
}
