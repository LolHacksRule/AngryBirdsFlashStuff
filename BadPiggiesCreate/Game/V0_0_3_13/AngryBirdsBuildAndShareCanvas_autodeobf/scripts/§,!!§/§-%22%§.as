package §,!!§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §-"%§ extends MovieClip
   {
       
      
      private var §<w§:Object = null;
      
      private var §+!v§:Loader = null;
      
      private var §^!`§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §-"%§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§^!`§ = new LoaderContext();
         this.§^!`§.checkPolicyFile = true;
         this.§^!`§.securityDomain = SecurityDomain.currentDomain;
         this.§^!`§.applicationDomain = ApplicationDomain.currentDomain;
         this.§+!v§ = new Loader();
         this.§+!v§.contentLoaderInfo.addEventListener(Event.INIT,this.§3k§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§+!v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§+!v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§+!v§.mouseChildren = false;
         }
      }
      
      private function §3k§(param1:Event) : void
      {
         addChild(this.§+!v§);
         this.§+!v§.content.addEventListener("onReady",this.§"<§);
         this.§+!v§.content.addEventListener("onError",this.§8u§);
         this.§+!v§.content.addEventListener("onStateChange",this.§-4§);
         this.§+!v§.content.addEventListener("onPlaybackQualityChange",this.§<p§);
      }
      
      private function §"<§(param1:Event) : void
      {
         this.§<w§ = this.§+!v§.content;
         this.§<w§.setSize(480,360);
         this.§<w§.removeEventListener("onReady",this.§"<§);
         this.isReady = true;
      }
      
      private function §8u§(param1:Event) : void
      {
      }
      
      private function §-4§(param1:Event) : void
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
               this.§<w§.playVideo();
         }
      }
      
      private function §<p§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§<w§ != null)
         {
            this.isReady = false;
            removeChild(this.§+!v§);
            this.§<w§.removeEventListener("onError",this.§8u§);
            this.§<w§.removeEventListener("onStateChange",this.§-4§);
            this.§<w§.removeEventListener("onPlaybackQualityChange",this.§<p§);
            this.§<w§.destroy();
            this.§+!v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§3k§);
            this.§+!v§ = null;
            this.§^!`§ = null;
            this.§<w§ = null;
         }
      }
   }
}
