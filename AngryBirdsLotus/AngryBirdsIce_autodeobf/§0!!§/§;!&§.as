package §0!!§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §;!&§ extends MovieClip
   {
       
      
      private var §!7§:Object = null;
      
      private var §-?§:Loader = null;
      
      private var §]p§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §;!&§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§]p§ = new LoaderContext();
         this.§]p§.checkPolicyFile = true;
         this.§]p§.securityDomain = SecurityDomain.currentDomain;
         this.§]p§.applicationDomain = ApplicationDomain.currentDomain;
         this.§-?§ = new Loader();
         this.§-?§.contentLoaderInfo.addEventListener(Event.INIT,this.§class§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§-?§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§-?§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§-?§.mouseChildren = false;
         }
      }
      
      private function §class§(param1:Event) : void
      {
         addChild(this.§-?§);
         this.§-?§.content.addEventListener("onReady",this.§]!,§);
         this.§-?§.content.addEventListener("onError",this.§83§);
         this.§-?§.content.addEventListener("onStateChange",this.§4?§);
         this.§-?§.content.addEventListener("onPlaybackQualityChange",this.§`e§);
      }
      
      private function §]!,§(param1:Event) : void
      {
         this.§!7§ = this.§-?§.content;
         this.§!7§.setSize(480,360);
         this.§!7§.removeEventListener("onReady",this.§]!,§);
         this.isReady = true;
      }
      
      private function §83§(param1:Event) : void
      {
      }
      
      private function §4?§(param1:Event) : void
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
               this.§!7§.playVideo();
         }
      }
      
      private function §`e§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§!7§ != null)
         {
            this.isReady = false;
            removeChild(this.§-?§);
            this.§!7§.removeEventListener("onError",this.§83§);
            this.§!7§.removeEventListener("onStateChange",this.§4?§);
            this.§!7§.removeEventListener("onPlaybackQualityChange",this.§`e§);
            this.§!7§.destroy();
            this.§-?§.contentLoaderInfo.removeEventListener(Event.INIT,this.§class§);
            this.§-?§ = null;
            this.§]p§ = null;
            this.§!7§ = null;
         }
      }
   }
}
