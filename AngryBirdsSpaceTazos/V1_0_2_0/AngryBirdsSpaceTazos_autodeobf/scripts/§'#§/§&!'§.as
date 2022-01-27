package §'#§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §&!'§ extends MovieClip
   {
       
      
      private var §+!!§:Object = null;
      
      private var §-,§:Loader = null;
      
      private var §!"2§:LoaderContext = null;
      
      private var include:Boolean;
      
      public function §&!'§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§!"2§ = new LoaderContext();
         this.§!"2§.checkPolicyFile = true;
         this.§!"2§.securityDomain = SecurityDomain.currentDomain;
         this.§!"2§.applicationDomain = ApplicationDomain.currentDomain;
         this.§-,§ = new Loader();
         this.§-,§.contentLoaderInfo.addEventListener(Event.INIT,this.§!3§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§-,§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§-,§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§-,§.mouseChildren = false;
         }
      }
      
      private function §!3§(param1:Event) : void
      {
         addChild(this.§-,§);
         this.§-,§.content.addEventListener("onReady",this.§?!9§);
         this.§-,§.content.addEventListener("onError",this.§+V§);
         this.§-,§.content.addEventListener("onStateChange",this.§ K§);
         this.§-,§.content.addEventListener("onPlaybackQualityChange",this.§`"5§);
      }
      
      private function §?!9§(param1:Event) : void
      {
         this.§+!!§ = this.§-,§.content;
         this.§+!!§.setSize(480,360);
         this.§+!!§.removeEventListener("onReady",this.§?!9§);
         this.include = true;
      }
      
      private function §+V§(param1:Event) : void
      {
      }
      
      private function § K§(param1:Event) : void
      {
         switch(Object(param1).data)
         {
            case 1:
               if(this.include == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.include = false;
               this.§+!!§.playVideo();
         }
      }
      
      private function §`"5§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§+!!§ != null)
         {
            this.include = false;
            removeChild(this.§-,§);
            this.§+!!§.removeEventListener("onError",this.§+V§);
            this.§+!!§.removeEventListener("onStateChange",this.§ K§);
            this.§+!!§.removeEventListener("onPlaybackQualityChange",this.§`"5§);
            this.§+!!§.destroy();
            this.§-,§.contentLoaderInfo.removeEventListener(Event.INIT,this.§!3§);
            this.§-,§ = null;
            this.§!"2§ = null;
            this.§+!!§ = null;
         }
      }
   }
}
