package com.rovio.utils
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class YouTubeVideo extends MovieClip
   {
       
      
      private var mPlayer:Object = null;
      
      private var mLoader:Loader = null;
      
      private var mContext:LoaderContext = null;
      
      private var isReady:Boolean;
      
      public function YouTubeVideo(address:String, enablePlayerBar:Boolean = false, enableMouse:Boolean = false)
      {
         super();
         this.mContext = new LoaderContext();
         this.mContext.checkPolicyFile = true;
         this.mContext.securityDomain = SecurityDomain.currentDomain;
         this.mContext.applicationDomain = ApplicationDomain.currentDomain;
         this.mLoader = new Loader();
         this.mLoader.contentLoaderInfo.addEventListener(Event.INIT,this.onLoaderInit);
         Security.allowDomain("www.youtube.com");
         if(enablePlayerBar)
         {
            this.mLoader.load(new URLRequest(address + "?version=3&autoplay=1"));
         }
         else
         {
            this.mLoader.load(new URLRequest(address + "?version=3&autoplay=1" + "&controls=0&showinfo=0"));
         }
         if(!enableMouse)
         {
            this.mLoader.mouseChildren = false;
         }
      }
      
      private function onLoaderInit(event:Event) : void
      {
         addChild(this.mLoader);
         this.mLoader.content.addEventListener("onReady",this.onPlayerReady);
         this.mLoader.content.addEventListener("onError",this.onPlayerError);
         this.mLoader.content.addEventListener("onStateChange",this.onPlayerStateChange);
         this.mLoader.content.addEventListener("onPlaybackQualityChange",this.onVideoPlaybackQualityChange);
      }
      
      private function onPlayerReady(event:Event) : void
      {
         this.mPlayer = this.mLoader.content;
         this.mPlayer.setSize(480,360);
         this.mPlayer.removeEventListener("onReady",this.onPlayerReady);
         this.isReady = true;
      }
      
      private function onPlayerError(event:Event) : void
      {
      }
      
      private function onPlayerStateChange(event:Event) : void
      {
         switch(Object(event).data)
         {
            case 1:
               if(this.isReady == false)
               {
                  this.dispose();
               }
               break;
            case 0:
               this.isReady = false;
               this.mPlayer.playVideo();
         }
      }
      
      private function onVideoPlaybackQualityChange(event:Event) : void
      {
      }
      
      public function dispose() : void
      {
         if(this.mPlayer != null)
         {
            this.isReady = false;
            removeChild(this.mLoader);
            this.mPlayer.removeEventListener("onError",this.onPlayerError);
            this.mPlayer.removeEventListener("onStateChange",this.onPlayerStateChange);
            this.mPlayer.removeEventListener("onPlaybackQualityChange",this.onVideoPlaybackQualityChange);
            this.mPlayer.destroy();
            this.mLoader.contentLoaderInfo.removeEventListener(Event.INIT,this.onLoaderInit);
            this.mLoader = null;
            this.mContext = null;
            this.mPlayer = null;
         }
      }
   }
}
