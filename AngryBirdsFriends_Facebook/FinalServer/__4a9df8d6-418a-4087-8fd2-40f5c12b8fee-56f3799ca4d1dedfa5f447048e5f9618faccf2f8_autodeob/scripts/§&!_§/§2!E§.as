package §&!_§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §2!E§ extends MovieClip
   {
       
      
      private var §,!A§:Object = null;
      
      private var §2!N§:Loader = null;
      
      private var §1#s§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §2!E§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§1#s§ = new LoaderContext();
         this.§1#s§.checkPolicyFile = true;
         this.§1#s§.securityDomain = SecurityDomain.currentDomain;
         this.§1#s§.applicationDomain = ApplicationDomain.currentDomain;
         this.§2!N§ = new Loader();
         this.§2!N§.contentLoaderInfo.addEventListener(Event.INIT,this.§]![§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§2!N§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§2!N§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§2!N§.mouseChildren = false;
         }
      }
      
      private function §]![§(param1:Event) : void
      {
         addChild(this.§2!N§);
         this.§2!N§.content.addEventListener("onReady",this.§5#1§);
         this.§2!N§.content.addEventListener("onError",this.§3y§);
         this.§2!N§.content.addEventListener("onStateChange",this.§]1§);
         this.§2!N§.content.addEventListener("onPlaybackQualityChange",this.§5R§);
      }
      
      private function §5#1§(param1:Event) : void
      {
         this.§,!A§ = this.§2!N§.content;
         this.§,!A§.setSize(480,360);
         this.§,!A§.removeEventListener("onReady",this.§5#1§);
         this.isReady = true;
      }
      
      private function §3y§(param1:Event) : void
      {
      }
      
      private function §]1§(param1:Event) : void
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
               this.§,!A§.playVideo();
         }
      }
      
      private function §5R§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§,!A§ != null)
         {
            this.isReady = false;
            removeChild(this.§2!N§);
            this.§,!A§.removeEventListener("onError",this.§3y§);
            this.§,!A§.removeEventListener("onStateChange",this.§]1§);
            this.§,!A§.removeEventListener("onPlaybackQualityChange",this.§5R§);
            this.§,!A§.destroy();
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.INIT,this.§]![§);
            this.§2!N§ = null;
            this.§1#s§ = null;
            this.§,!A§ = null;
         }
      }
   }
}
