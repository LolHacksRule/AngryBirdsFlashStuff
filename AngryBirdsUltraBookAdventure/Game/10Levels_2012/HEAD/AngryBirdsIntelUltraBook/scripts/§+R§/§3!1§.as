package §+R§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §3!1§ extends MovieClip
   {
      
      protected static var sLoadedPolicyDomains:Array = [];
      
      protected static var sInstances:Array = [];
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         §+!G§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §4$§:Loader;
      
      protected var §"!1§:String;
      
      protected var §`G§:int = 3;
      
      private var §>!T§:int = 0;
      
      private var §3D§:int = 0;
      
      public function §3!1§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         super();
         this.init(userId,useHttps,imageSize);
      }
      
      protected static function §+!G§(domain:String, secure:Boolean = false) : void
      {
         if(sLoadedPolicyDomains.indexOf(domain) != -1)
         {
            return;
         }
         sLoadedPolicyDomains.push(domain);
         Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
      }
      
      public static function §<]§(visible:Boolean) : void
      {
         var facebookProfilePicture:§3!1§ = null;
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
         addEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§%C§);
         this.§"!1§ = (!!useHttps ? "https://" : "http://") + "graph.facebook.com/" + userId + "/picture?type=" + imageSize;
         this.load();
      }
      
      private function §2!a§(e:Event) : void
      {
         if(sInstances.indexOf(this) == -1)
         {
            sInstances.push(this);
         }
      }
      
      private function §%C§(e:Event) : void
      {
         if(sInstances.indexOf(this) != -1)
         {
            sInstances.splice(sInstances.indexOf(this),1);
         }
      }
      
      public function get §&!i§() : int
      {
         return this.§>!T§;
      }
      
      public function get §0o§() : int
      {
         return this.§3D§;
      }
      
      protected function load() : void
      {
         this.§4$§ = new Loader();
         this.§4$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
         this.§4$§.load(new URLRequest(this.§"!1§),new LoaderContext(true));
      }
      
      protected function onComplete(e:Event) : void
      {
         this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
         this.§>!T§ = this.loader.width;
         this.§3D§ = this.loader.height;
         if(sIsVisible)
         {
            addChild(this.§4$§);
         }
         try
         {
            (this.§4$§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §`!W§(e:IOErrorEvent) : void
      {
         this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!W§);
         --this.§`G§;
         if(this.§`G§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§4$§;
      }
   }
}
