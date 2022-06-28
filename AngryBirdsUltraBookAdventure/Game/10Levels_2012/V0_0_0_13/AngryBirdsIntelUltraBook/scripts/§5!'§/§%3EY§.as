package §5!'§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §>Y§ extends MovieClip
   {
      
      protected static var sLoadedPolicyDomains:Array = [];
      
      protected static var sInstances:Array = [];
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         §=!$§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §^v§:Loader;
      
      protected var §?$§:String;
      
      protected var §"!M§:int = 3;
      
      private var §'!J§:int = 0;
      
      private var §#B§:int = 0;
      
      public function §>Y§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         super();
         this.init(userId,useHttps,imageSize);
      }
      
      protected static function §=!$§(domain:String, secure:Boolean = false) : void
      {
         if(sLoadedPolicyDomains.indexOf(domain) != -1)
         {
            return;
         }
         sLoadedPolicyDomains.push(domain);
         Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
      }
      
      public static function §1e§(visible:Boolean) : void
      {
         var facebookProfilePicture:§>Y§ = null;
         if(sIsVisible == visible)
         {
            return;
         }
         sIsVisible = visible;
         for each(facebookProfilePicture in sInstances)
         {
            if(visible)
            {
               if(!facebookProfilePicture.loader.parent)
               {
                  facebookProfilePicture.addChild(facebookProfilePicture.loader);
               }
            }
            else if(facebookProfilePicture.loader && facebookProfilePicture.loader.parent == facebookProfilePicture)
            {
               facebookProfilePicture.removeChild(facebookProfilePicture.loader);
            }
         }
      }
      
      protected function init(userId:String, useHttps:Boolean, imageSize:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§3#§);
         this.§?$§ = (!!useHttps ? "https://" : "http://") + "graph.facebook.com/" + userId + "/picture?type=" + imageSize;
         this.load();
      }
      
      private function §?!0§(e:Event) : void
      {
         if(sInstances.indexOf(this) == -1)
         {
            sInstances.push(this);
         }
      }
      
      private function §3#§(e:Event) : void
      {
         if(sInstances.indexOf(this) != -1)
         {
            sInstances.splice(sInstances.indexOf(this),1);
         }
      }
      
      public function get §0!D§() : int
      {
         return this.§'!J§;
      }
      
      public function get §>!]§() : int
      {
         return this.§#B§;
      }
      
      protected function load() : void
      {
         this.§^v§ = new Loader();
         this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
         this.§^v§.load(new URLRequest(this.§?$§),new LoaderContext(true));
      }
      
      protected function onComplete(e:Event) : void
      {
         this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
         this.§'!J§ = this.loader.width;
         this.§#B§ = this.loader.height;
         if(sIsVisible)
         {
            addChild(this.§^v§);
         }
         try
         {
            (this.§^v§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
            trace("Cannot set smoothing");
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §6W§(e:IOErrorEvent) : void
      {
         this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6W§);
         --this.§"!M§;
         if(this.§"!M§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§^v§;
      }
   }
}
