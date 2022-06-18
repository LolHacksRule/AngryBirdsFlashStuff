package §2E§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class § $9§ extends MovieClip
   {
       
      
      private var §""T§:Object = null;
      
      private var §<#G§:Loader = null;
      
      private var §,"@§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function § $9§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§,"@§ = new LoaderContext();
         this.§,"@§.checkPolicyFile = true;
         this.§,"@§.securityDomain = SecurityDomain.currentDomain;
         this.§,"@§.applicationDomain = ApplicationDomain.currentDomain;
         this.§<#G§ = new Loader();
         this.§<#G§.contentLoaderInfo.addEventListener(Event.INIT,this.§return§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§<#G§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§<#G§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§<#G§.mouseChildren = false;
         }
      }
      
      private function §return§(param1:Event) : void
      {
         addChild(this.§<#G§);
         this.§<#G§.content.addEventListener("onReady",this.§<!l§);
         this.§<#G§.content.addEventListener("onError",this.§0"H§);
         this.§<#G§.content.addEventListener("onStateChange",this.§1";§);
         this.§<#G§.content.addEventListener("onPlaybackQualityChange",this.§@"!§);
      }
      
      private function §<!l§(param1:Event) : void
      {
         this.§""T§ = this.§<#G§.content;
         this.§""T§.setSize(480,360);
         this.§""T§.removeEventListener("onReady",this.§<!l§);
         this.isReady = true;
      }
      
      private function §0"H§(param1:Event) : void
      {
      }
      
      private function §1";§(param1:Event) : void
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
               this.§""T§.playVideo();
         }
      }
      
      private function §@"!§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§""T§ != null)
         {
            this.isReady = false;
            removeChild(this.§<#G§);
            this.§""T§.removeEventListener("onError",this.§0"H§);
            this.§""T§.removeEventListener("onStateChange",this.§1";§);
            this.§""T§.removeEventListener("onPlaybackQualityChange",this.§@"!§);
            this.§""T§.destroy();
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.INIT,this.§return§);
            this.§<#G§ = null;
            this.§,"@§ = null;
            this.§""T§ = null;
         }
      }
   }
}
