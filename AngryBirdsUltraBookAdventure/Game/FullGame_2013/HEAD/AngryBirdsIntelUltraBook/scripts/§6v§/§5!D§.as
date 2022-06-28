package §6v§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §5!D§ extends MovieClip
   {
      
      protected static var sLoadedPolicyDomains:Array = [];
      
      protected static var sInstances:Array = [];
      
      protected static var sIsVisible:Boolean = true;
      
      public static const SMALL:String = "small";
      
      public static const SQUARE:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const LARGE:String = "large";
      
      {
         §+§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §2M§:Loader;
      
      protected var §'!<§:String;
      
      protected var §7!=§:int = 3;
      
      private var §;R§:int = 0;
      
      private var §>D§:int = 0;
      
      public function §5!D§(userId:String, useHttps:Boolean = false, imageSize:String = "square")
      {
         super();
         this.init(userId,useHttps,imageSize);
      }
      
      protected static function §+§(domain:String, secure:Boolean = false) : void
      {
         if(sLoadedPolicyDomains.indexOf(domain) != -1)
         {
            return;
         }
         sLoadedPolicyDomains.push(domain);
         Security.loadPolicyFile((!!secure ? "https://" : "http://") + domain + "/crossdomain.xml");
      }
      
      public static function §6h§(visible:Boolean) : void
      {
         var facebookProfilePicture:§5!D§ = null;
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
         addEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§[q§);
         this.§'!<§ = (!!useHttps ? "https://" : "http://") + "graph.facebook.com/" + userId + "/picture?type=" + imageSize;
         this.load();
      }
      
      private function §1Z§(e:Event) : void
      {
         if(sInstances.indexOf(this) == -1)
         {
            sInstances.push(this);
         }
      }
      
      private function §[q§(e:Event) : void
      {
         if(sInstances.indexOf(this) != -1)
         {
            sInstances.splice(sInstances.indexOf(this),1);
         }
      }
      
      public function get §3f§() : int
      {
         return this.§;R§;
      }
      
      public function get §6$§() : int
      {
         return this.§>D§;
      }
      
      protected function load() : void
      {
         this.§2M§ = new Loader();
         this.§2M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2M§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
         this.§2M§.load(new URLRequest(this.§'!<§),new LoaderContext(true));
      }
      
      protected function onComplete(e:Event) : void
      {
         this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
         this.§;R§ = this.loader.width;
         this.§>D§ = this.loader.height;
         if(sIsVisible)
         {
            addChild(this.§2M§);
         }
         try
         {
            (this.§2M§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §8!3§(e:IOErrorEvent) : void
      {
         this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!3§);
         --this.§7!=§;
         if(this.§7!=§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§2M§;
      }
   }
}
