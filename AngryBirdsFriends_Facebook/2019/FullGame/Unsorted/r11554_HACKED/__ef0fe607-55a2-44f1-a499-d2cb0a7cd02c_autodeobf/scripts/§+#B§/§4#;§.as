package §+#B§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §4#;§ extends MovieClip
   {
       
      
      private var §]#O§:Object = null;
      
      private var §&![§:Loader = null;
      
      private var §'#E§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §4#;§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§'#E§ = new LoaderContext();
         this.§'#E§.checkPolicyFile = true;
         this.§'#E§.securityDomain = SecurityDomain.currentDomain;
         this.§'#E§.applicationDomain = ApplicationDomain.currentDomain;
         this.§&![§ = new Loader();
         this.§&![§.contentLoaderInfo.addEventListener(Event.INIT,this.§?">§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§&![§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§&![§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§&![§.mouseChildren = false;
         }
      }
      
      private function §?">§(param1:Event) : void
      {
         addChild(this.§&![§);
         this.§&![§.content.addEventListener("onReady",this.§@$4§);
         this.§&![§.content.addEventListener("onError",this.§8$+§);
         this.§&![§.content.addEventListener("onStateChange",this.§'#%§);
         this.§&![§.content.addEventListener("onPlaybackQualityChange",this.§7!8§);
      }
      
      private function §@$4§(param1:Event) : void
      {
         this.§]#O§ = this.§&![§.content;
         this.§]#O§.setSize(480,360);
         this.§]#O§.removeEventListener("onReady",this.§@$4§);
         this.isReady = true;
      }
      
      private function §8$+§(param1:Event) : void
      {
      }
      
      private function §'#%§(param1:Event) : void
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
               this.§]#O§.playVideo();
         }
      }
      
      private function §7!8§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§]#O§ != null)
         {
            this.isReady = false;
            removeChild(this.§&![§);
            this.§]#O§.removeEventListener("onError",this.§8$+§);
            this.§]#O§.removeEventListener("onStateChange",this.§'#%§);
            this.§]#O§.removeEventListener("onPlaybackQualityChange",this.§7!8§);
            this.§]#O§.destroy();
            this.§&![§.contentLoaderInfo.removeEventListener(Event.INIT,this.§?">§);
            this.§&![§ = null;
            this.§'#E§ = null;
            this.§]#O§ = null;
         }
      }
   }
}
