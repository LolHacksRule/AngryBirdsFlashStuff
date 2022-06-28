package §&!h§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §1!j§ extends MovieClip
   {
       
      
      private var §+Z§:Object = null;
      
      private var §2C§:Loader = null;
      
      private var §>!Z§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §1!j§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§>!Z§ = new LoaderContext();
         this.§>!Z§.checkPolicyFile = true;
         this.§>!Z§.securityDomain = SecurityDomain.currentDomain;
         this.§>!Z§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2C§ = new Loader();
         this.§2C§.contentLoaderInfo.addEventListener(Event.INIT,this.§,p§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2C§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2C§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2C§.mouseChildren = false;
         }
      }
      
      private function §,p§(param1:Event) : void
      {
         addChild(this.§2C§);
         this.§2C§.content.addEventListener("onReady",this.§6+§);
         this.§2C§.content.addEventListener("onError",this.§<h§);
         this.§2C§.content.addEventListener("onStateChange",this.§&!K§);
         this.§2C§.content.addEventListener("onPlaybackQualityChange",this.§8!l§);
      }
      
      private function §6+§(param1:Event) : void
      {
         this.§+Z§ = this.§2C§.content;
         this.§+Z§.setSize(480,360);
         this.§+Z§.removeEventListener("onReady",this.§6+§);
         this.isReady = true;
      }
      
      private function §<h§(param1:Event) : void
      {
      }
      
      private function §&!K§(param1:Event) : void
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
               this.§+Z§.playVideo();
         }
      }
      
      private function §8!l§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+Z§ != null)
         {
            this.isReady = false;
            removeChild(this.§2C§);
            this.§+Z§.removeEventListener("onError",this.§<h§);
            this.§+Z§.removeEventListener("onStateChange",this.§&!K§);
            this.§+Z§.removeEventListener("onPlaybackQualityChange",this.§8!l§);
            this.§+Z§.destroy();
            this.§2C§.contentLoaderInfo.removeEventListener(Event.INIT,this.§,p§);
            this.§2C§ = null;
            this.§>!Z§ = null;
            this.§+Z§ = null;
         }
      }
   }
}
