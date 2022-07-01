package §2i§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §!§ extends MovieClip
   {
       
      
      private var §-"0§:Object = null;
      
      private var §[!b§:Loader = null;
      
      private var §6!,§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §!§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§6!,§ = new LoaderContext();
         this.§6!,§.checkPolicyFile = true;
         this.§6!,§.securityDomain = SecurityDomain.currentDomain;
         this.§6!,§.applicationDomain = ApplicationDomain.currentDomain;
         this.§[!b§ = new Loader();
         this.§[!b§.contentLoaderInfo.addEventListener(Event.INIT,this.§^4§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§[!b§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§[!b§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§[!b§.mouseChildren = false;
         }
      }
      
      private function §^4§(param1:Event) : void
      {
         addChild(this.§[!b§);
         this.§[!b§.content.addEventListener("onReady",this.§7<§);
         this.§[!b§.content.addEventListener("onError",this.§#!3§);
         this.§[!b§.content.addEventListener("onStateChange",this.§7;§);
         this.§[!b§.content.addEventListener("onPlaybackQualityChange",this.§@!'§);
      }
      
      private function §7<§(param1:Event) : void
      {
         this.§-"0§ = this.§[!b§.content;
         this.§-"0§.setSize(480,360);
         this.§-"0§.removeEventListener("onReady",this.§7<§);
         this.isReady = true;
      }
      
      private function §#!3§(param1:Event) : void
      {
      }
      
      private function §7;§(param1:Event) : void
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
               this.§-"0§.playVideo();
         }
      }
      
      private function §@!'§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§-"0§ != null)
         {
            this.isReady = false;
            removeChild(this.§[!b§);
            this.§-"0§.removeEventListener("onError",this.§#!3§);
            this.§-"0§.removeEventListener("onStateChange",this.§7;§);
            this.§-"0§.removeEventListener("onPlaybackQualityChange",this.§@!'§);
            this.§-"0§.destroy();
            this.§[!b§.contentLoaderInfo.removeEventListener(Event.INIT,this.§^4§);
            this.§[!b§ = null;
            this.§6!,§ = null;
            this.§-"0§ = null;
         }
      }
   }
}
