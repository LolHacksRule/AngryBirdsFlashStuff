package §1!i§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §5!L§ extends MovieClip
   {
       
      
      private var §!"%§:Object = null;
      
      private var §9v§:Loader = null;
      
      private var §>!Y§:LoaderContext = null;
      
      private var §4"8§:Boolean;
      
      public function §5!L§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§>!Y§ = new LoaderContext();
         this.§>!Y§.checkPolicyFile = true;
         this.§>!Y§.securityDomain = SecurityDomain.currentDomain;
         this.§>!Y§.applicationDomain = ApplicationDomain.currentDomain;
         this.§9v§ = new Loader();
         this.§9v§.contentLoaderInfo.addEventListener(Event.INIT,this.§'C§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§9v§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§9v§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§9v§.mouseChildren = false;
         }
      }
      
      private function §'C§(param1:Event) : void
      {
         addChild(this.§9v§);
         this.§9v§.content.addEventListener("onReady",this.§?#I§);
         this.§9v§.content.addEventListener("onError",this.§`"k§);
         this.§9v§.content.addEventListener("onStateChange",this.§-"7§);
         this.§9v§.content.addEventListener("onPlaybackQualityChange",this.§-#Q§);
      }
      
      private function §?#I§(param1:Event) : void
      {
         this.§!"%§ = this.§9v§.content;
         this.§!"%§.setSize(480,360);
         this.§!"%§.removeEventListener("onReady",this.§?#I§);
         this.§4"8§ = true;
      }
      
      private function §`"k§(param1:Event) : void
      {
      }
      
      private function §-"7§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§4"8§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§4"8§ = false;
               this.§!"%§.playVideo();
         }
      }
      
      private function §-#Q§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§!"%§ != null)
         {
            this.§4"8§ = false;
            removeChild(this.§9v§);
            this.§!"%§.removeEventListener("onError",this.§`"k§);
            this.§!"%§.removeEventListener("onStateChange",this.§-"7§);
            this.§!"%§.removeEventListener("onPlaybackQualityChange",this.§-#Q§);
            this.§!"%§.destroy();
            this.§9v§.contentLoaderInfo.removeEventListener(Event.INIT,this.§'C§);
            this.§9v§ = null;
            this.§>!Y§ = null;
            this.§!"%§ = null;
         }
      }
   }
}
