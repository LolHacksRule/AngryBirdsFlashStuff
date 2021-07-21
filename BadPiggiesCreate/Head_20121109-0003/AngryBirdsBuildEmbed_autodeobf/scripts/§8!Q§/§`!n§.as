package §8!Q§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class §`!n§ extends MovieClip
   {
       
      
      private var §'!A§:Object = null;
      
      private var §&3§:Loader = null;
      
      private var §3;§:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function §`!n§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.§3;§ = new LoaderContext();
         this.§3;§.checkPolicyFile = true;
         this.§3;§.securityDomain = SecurityDomain.currentDomain;
         this.§3;§.applicationDomain = ApplicationDomain.currentDomain;
         this.§&3§ = new Loader();
         this.§&3§.contentLoaderInfo.addEventListener(Event.INIT,this.§+!o§);
         Security.allowDomain("www.youtube.com");
         if(param2)
         {
            this.§&3§.load(new URLRequest(param1 + "?version=3&autoplay=1"));
         }
         else
         {
            this.§&3§.load(new URLRequest(param1 + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!param3)
         {
            this.§&3§.mouseChildren = false;
         }
      }
      
      private function §+!o§(param1:Event) : void
      {
         addChild(this.§&3§);
         this.§&3§.content.addEventListener("onReady",this.§=!v§);
         this.§&3§.content.addEventListener("onError",this.§#,§);
         this.§&3§.content.addEventListener("onStateChange",this.§"!R§);
         this.§&3§.content.addEventListener("onPlaybackQualityChange",this.§^!T§);
      }
      
      private function §=!v§(param1:Event) : void
      {
         this.§'!A§ = this.§&3§.content;
         this.§'!A§.setSize(480,360);
         this.§'!A§.removeEventListener("onReady",this.§=!v§);
         this.isReady = true;
      }
      
      private function §#,§(param1:Event) : void
      {
      }
      
      private function §"!R§(param1:Event) : void
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
               this.§'!A§.playVideo();
         }
      }
      
      private function §^!T§(param1:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.§'!A§ != null)
         {
            this.isReady = false;
            removeChild(this.§&3§);
            this.§'!A§.removeEventListener("onError",this.§#,§);
            this.§'!A§.removeEventListener("onStateChange",this.§"!R§);
            this.§'!A§.removeEventListener("onPlaybackQualityChange",this.§^!T§);
            this.§'!A§.destroy();
            this.§&3§.contentLoaderInfo.removeEventListener(Event.INIT,this.§+!o§);
            this.§&3§ = null;
            this.§3;§ = null;
            this.§'!A§ = null;
         }
      }
   }
}
