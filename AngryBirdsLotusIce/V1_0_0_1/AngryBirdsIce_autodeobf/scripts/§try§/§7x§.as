package §try§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §7x§ extends MovieClip
   {
       
      
      private var §]v§:Object = null;
      
      private var §,p§:Loader = null;
      
      private var §[!3§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §7x§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§[!3§ = new LoaderContext();
         this.§[!3§.checkPolicyFile = true;
         this.§[!3§.securityDomain = SecurityDomain.currentDomain;
         this.§[!3§.applicationDomain = ApplicationDomain.currentDomain;
         this.§,p§ = new Loader();
         this.§,p§.contentLoaderInfo.addEventListener(Event.INIT,this.§5'§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§,p§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§,p§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§,p§.mouseChildren = false;
         }
      }
      
      private function §5'§(param1:Event) : void
      {
         addChild(this.§,p§);
         this.§,p§.content.addEventListener("onReady",this.§#!B§);
         this.§,p§.content.addEventListener("onError",this.§1[§);
         this.§,p§.content.addEventListener("onStateChange",this.§>!4§);
         this.§,p§.content.addEventListener("onPlaybackQualityChange",this.§&`§);
      }
      
      private function §#!B§(param1:Event) : void
      {
         this.§]v§ = this.§,p§.content;
         this.§]v§.setSize(480,360);
         this.§]v§.removeEventListener("onReady",this.§#!B§);
         this.isReady = true;
      }
      
      private function §1[§(param1:Event) : void
      {
      }
      
      private function §>!4§(param1:Event) : void
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
               this.§]v§.playVideo();
         }
      }
      
      private function §&`§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§]v§ != null)
         {
            this.isReady = false;
            removeChild(this.§,p§);
            this.§]v§.removeEventListener("onError",this.§1[§);
            this.§]v§.removeEventListener("onStateChange",this.§>!4§);
            this.§]v§.removeEventListener("onPlaybackQualityChange",this.§&`§);
            this.§]v§.destroy();
            this.§,p§.contentLoaderInfo.removeEventListener(Event.INIT,this.§5'§);
            this.§,p§ = null;
            this.§[!3§ = null;
            this.§]v§ = null;
         }
      }
   }
}
