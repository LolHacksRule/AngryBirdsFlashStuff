package §+&§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §&q§ extends MovieClip
   {
      
      protected static var §#%§:Array = [];
      
      protected static var §`!§:Array = [];
      
      protected static var §>"`§:Boolean = true;
      
      public static const §8"&§:String = "small";
      
      public static const §8"`§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §<!s§:String = "large";
      
      {
         §'!§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §?"Y§:Boolean = false;
      
      protected var §&K§:Loader;
      
      protected var §5![§:String;
      
      protected var §5U§:int = 3;
      
      private var §%"d§:int = 0;
      
      private var §[!!§:int = 0;
      
      public function §&q§(param1:String, param2:Boolean = true, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §'!§(param1:String, param2:Boolean = false) : void
      {
         if(§#%§.indexOf(param1) != -1)
         {
            return;
         }
         §#%§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §6! §(param1:Boolean) : void
      {
         var _loc2_:§&q§ = null;
         if(§>"`§ == param1)
         {
            return;
         }
         §>"`§ = param1;
         for each(_loc2_ in §`!§)
         {
            if(param1)
            {
               if(!_loc2_.loader.parent)
               {
                  _loc2_.addChild(_loc2_.loader);
               }
            }
            else if(_loc2_.loader && _loc2_.loader.parent == _loc2_)
            {
               _loc2_.removeChild(_loc2_.loader);
            }
         }
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§?"Y§;
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.§"#6§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§^!z§);
         this.§5![§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §"#6§(param1:Event) : void
      {
         if(§`!§.indexOf(this) == -1)
         {
            §`!§.push(this);
         }
      }
      
      private function §^!z§(param1:Event) : void
      {
         if(§`!§.indexOf(this) != -1)
         {
            §`!§.splice(§`!§.indexOf(this),1);
         }
      }
      
      public function get bitmapWidth() : int
      {
         return this.§%"d§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§[!!§;
      }
      
      protected function load() : void
      {
         this.§&K§ = new Loader();
         this.§&K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&K§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
         this.§&K§.load(new URLRequest(this.§5![§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
         this.§%"d§ = this.loader.width;
         this.§[!!§ = this.loader.height;
         this.§?"Y§ = true;
         if(§>"`§)
         {
            addChild(this.§&K§);
         }
         try
         {
            (this.§&K§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §[!r§(param1:IOErrorEvent) : void
      {
         this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
         --this.§5U§;
         if(this.§5U§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§&K§;
      }
   }
}
