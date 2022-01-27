package §'!n§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §5+§ extends MovieClip
   {
       
      
      private var §6!O§:Object = null;
      
      private var §"!m§:Loader = null;
      
      private var §!K§:LoaderContext = null;
      
      private var §>!t§:Boolean;
      
      public function §5+§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§!K§ = new LoaderContext();
         this.§!K§.checkPolicyFile = true;
         this.§!K§.securityDomain = SecurityDomain.currentDomain;
         this.§!K§.applicationDomain = ApplicationDomain.currentDomain;
         this.§"!m§ = new Loader();
         this.§"!m§.contentLoaderInfo.addEventListener(Event.INIT,this.§%H§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§"!m§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§"!m§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§"!m§.mouseChildren = false;
         }
      }
      
      private function §%H§(param1:Event) : void
      {
         addChild(this.§"!m§);
         this.§"!m§.content.addEventListener("onReady",this.§85§);
         this.§"!m§.content.addEventListener("onError",this.§-""§);
         this.§"!m§.content.addEventListener("onStateChange",this.§]+§);
         this.§"!m§.content.addEventListener("onPlaybackQualityChange",this.§<5§);
      }
      
      private function §85§(param1:Event) : void
      {
         this.§6!O§ = this.§"!m§.content;
         this.§6!O§.setSize(480,360);
         this.§6!O§.removeEventListener("onReady",this.§85§);
         this.§>!t§ = true;
      }
      
      private function §-""§(param1:Event) : void
      {
      }
      
      private function §]+§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§>!t§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§>!t§ = false;
               this.§6!O§.playVideo();
         }
      }
      
      private function §<5§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§6!O§ != null)
         {
            this.§>!t§ = false;
            removeChild(this.§"!m§);
            this.§6!O§.removeEventListener("onError",this.§-""§);
            this.§6!O§.removeEventListener("onStateChange",this.§]+§);
            this.§6!O§.removeEventListener("onPlaybackQualityChange",this.§<5§);
            this.§6!O§.destroy();
            this.§"!m§.contentLoaderInfo.removeEventListener(Event.INIT,this.§%H§);
            this.§"!m§ = null;
            this.§!K§ = null;
            this.§6!O§ = null;
         }
      }
   }
}
