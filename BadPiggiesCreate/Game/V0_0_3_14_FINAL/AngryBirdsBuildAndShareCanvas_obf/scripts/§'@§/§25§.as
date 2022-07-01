package §'@§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §25§ extends MovieClip
   {
       
      
      private var §6j§:Object = null;
      
      private var §-<§:Loader = null;
      
      private var §6![§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §25§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§6![§ = new LoaderContext();
         this.§6![§.checkPolicyFile = true;
         this.§6![§.securityDomain = SecurityDomain.currentDomain;
         this.§6![§.applicationDomain = ApplicationDomain.currentDomain;
         this.§-<§ = new Loader();
         this.§-<§.contentLoaderInfo.addEventListener(Event.INIT,this.§3"1§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§-<§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§-<§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§-<§.mouseChildren = false;
         }
      }
      
      private function §3"1§(param1:Event) : void
      {
         addChild(this.§-<§);
         this.§-<§.content.addEventListener("onReady",this.§'w§);
         this.§-<§.content.addEventListener("onError",this.§<Q§);
         this.§-<§.content.addEventListener("onStateChange",this.§?!4§);
         this.§-<§.content.addEventListener("onPlaybackQualityChange",this.§!o§);
      }
      
      private function §'w§(param1:Event) : void
      {
         this.§6j§ = this.§-<§.content;
         this.§6j§.setSize(480,360);
         this.§6j§.removeEventListener("onReady",this.§'w§);
         this.isReady = true;
      }
      
      private function §<Q§(param1:Event) : void
      {
      }
      
      private function §?!4§(param1:Event) : void
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
               this.§6j§.playVideo();
         }
      }
      
      private function §!o§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§6j§ != null)
         {
            this.isReady = false;
            removeChild(this.§-<§);
            this.§6j§.removeEventListener("onError",this.§<Q§);
            this.§6j§.removeEventListener("onStateChange",this.§?!4§);
            this.§6j§.removeEventListener("onPlaybackQualityChange",this.§!o§);
            this.§6j§.destroy();
            this.§-<§.contentLoaderInfo.removeEventListener(Event.INIT,this.§3"1§);
            this.§-<§ = null;
            this.§6![§ = null;
            this.§6j§ = null;
         }
      }
   }
}
