package §#"4§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §'! § extends MovieClip
   {
       
      
      private var §>!J§:Object = null;
      
      private var §@$2§:Loader = null;
      
      private var §`!8§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §'! §(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§`!8§ = new LoaderContext();
         this.§`!8§.checkPolicyFile = true;
         this.§`!8§.securityDomain = SecurityDomain.currentDomain;
         this.§`!8§.applicationDomain = ApplicationDomain.currentDomain;
         this.§@$2§ = new Loader();
         this.§@$2§.contentLoaderInfo.addEventListener(Event.INIT,this.§7!'§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§@$2§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§@$2§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§@$2§.mouseChildren = false;
         }
      }
      
      private function §7!'§(param1:Event) : void
      {
         addChild(this.§@$2§);
         this.§@$2§.content.addEventListener("onReady",this.§!#4§);
         this.§@$2§.content.addEventListener("onError",this.§]!K§);
         this.§@$2§.content.addEventListener("onStateChange",this.§5!]§);
         this.§@$2§.content.addEventListener("onPlaybackQualityChange",this.§3#I§);
      }
      
      private function §!#4§(param1:Event) : void
      {
         this.§>!J§ = this.§@$2§.content;
         this.§>!J§.setSize(480,360);
         this.§>!J§.removeEventListener("onReady",this.§!#4§);
         this.isReady = true;
      }
      
      private function §]!K§(param1:Event) : void
      {
      }
      
      private function §5!]§(param1:Event) : void
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
               this.§>!J§.playVideo();
         }
      }
      
      private function §3#I§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§>!J§ != null)
         {
            this.isReady = false;
            removeChild(this.§@$2§);
            this.§>!J§.removeEventListener("onError",this.§]!K§);
            this.§>!J§.removeEventListener("onStateChange",this.§5!]§);
            this.§>!J§.removeEventListener("onPlaybackQualityChange",this.§3#I§);
            this.§>!J§.destroy();
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.INIT,this.§7!'§);
            this.§@$2§ = null;
            this.§`!8§ = null;
            this.§>!J§ = null;
         }
      }
   }
}
