package § !;§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §<!!§ extends MovieClip
   {
       
      
      private var §43§:Object = null;
      
      private var §^!#§:Loader = null;
      
      private var §%!-§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §<!!§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§%!-§ = new LoaderContext();
         this.§%!-§.checkPolicyFile = true;
         this.§%!-§.securityDomain = SecurityDomain.currentDomain;
         this.§%!-§.applicationDomain = ApplicationDomain.currentDomain;
         this.§^!#§ = new Loader();
         this.§^!#§.contentLoaderInfo.addEventListener(Event.INIT,this.§ 5§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§^!#§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§^!#§.mouseChildren = false;
         }
      }
      
      private function § 5§(param1:Event) : void
      {
         addChild(this.§^!#§);
         this.§^!#§.content.addEventListener("onReady",this.§53§);
         this.§^!#§.content.addEventListener("onError",this.§6H§);
         this.§^!#§.content.addEventListener("onStateChange",this.§2b§);
         this.§^!#§.content.addEventListener("onPlaybackQualityChange",this.§70§);
      }
      
      private function §53§(param1:Event) : void
      {
         this.§43§ = this.§^!#§.content;
         this.§43§.setSize(480,360);
         this.§43§.removeEventListener("onReady",this.§53§);
         this.isReady = true;
      }
      
      private function §6H§(param1:Event) : void
      {
      }
      
      private function §2b§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.isReady == false)
               {
                  this.dispose();
                  break;
               }
               break;
            case 0:
               this.isReady = false;
               this.§43§.playVideo();
         }
      }
      
      private function §70§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§43§ != null)
         {
            this.isReady = false;
            removeChild(this.§^!#§);
            this.§43§.removeEventListener("onError",this.§6H§);
            this.§43§.removeEventListener("onStateChange",this.§2b§);
            this.§43§.removeEventListener("onPlaybackQualityChange",this.§70§);
            this.§43§.destroy();
            this.§^!#§.contentLoaderInfo.removeEventListener(Event.INIT,this.§ 5§);
            this.§^!#§ = null;
            this.§%!-§ = null;
            this.§43§ = null;
         }
      }
   }
}
