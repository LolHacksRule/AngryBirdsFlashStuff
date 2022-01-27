package §4u§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §%"+§ extends MovieClip
   {
       
      
      private var §!!X§:Object = null;
      
      private var §,!6§:Loader = null;
      
      private var §&!T§:LoaderContext = null;
      
      private var §;!!§:Boolean;
      
      public function §%"+§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§&!T§ = new LoaderContext();
         this.§&!T§.checkPolicyFile = true;
         this.§&!T§.securityDomain = SecurityDomain.currentDomain;
         this.§&!T§.applicationDomain = ApplicationDomain.currentDomain;
         this.§,!6§ = new Loader();
         this.§,!6§.contentLoaderInfo.addEventListener(Event.INIT,this.§1!^§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§,!6§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§,!6§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§,!6§.mouseChildren = false;
         }
      }
      
      private function §1!^§(param1:Event) : void
      {
         addChild(this.§,!6§);
         this.§,!6§.content.addEventListener("onReady",this.§^"-§);
         this.§,!6§.content.addEventListener("onError",this.§9"4§);
         this.§,!6§.content.addEventListener("onStateChange",this.§4"=§);
         this.§,!6§.content.addEventListener("onPlaybackQualityChange",this.§;"4§);
      }
      
      private function §^"-§(param1:Event) : void
      {
         this.§!!X§ = this.§,!6§.content;
         this.§!!X§.setSize(480,360);
         this.§!!X§.removeEventListener("onReady",this.§^"-§);
         this.§;!!§ = true;
      }
      
      private function §9"4§(param1:Event) : void
      {
      }
      
      private function §4"=§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.§;!!§ == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.§;!!§ = false;
               this.§!!X§.playVideo();
         }
      }
      
      private function §;"4§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§!!X§ != null)
         {
            this.§;!!§ = false;
            removeChild(this.§,!6§);
            this.§!!X§.removeEventListener("onError",this.§9"4§);
            this.§!!X§.removeEventListener("onStateChange",this.§4"=§);
            this.§!!X§.removeEventListener("onPlaybackQualityChange",this.§;"4§);
            this.§!!X§.destroy();
            this.§,!6§.contentLoaderInfo.removeEventListener(Event.INIT,this.§1!^§);
            this.§,!6§ = null;
            this.§&!T§ = null;
            this.§!!X§ = null;
         }
      }
   }
}
