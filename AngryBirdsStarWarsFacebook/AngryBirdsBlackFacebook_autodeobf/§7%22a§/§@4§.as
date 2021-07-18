package §7"a§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §@4§ extends MovieClip
   {
      
      protected static var §0!R§:Array = [];
      
      protected static var §2j§:Array = [];
      
      protected static var §+"I§:Boolean = true;
      
      public static const §9"o§:String = "small";
      
      public static const § R§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §&"N§:String = "large";
      
      {
         §4!%§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §7"p§:Boolean = false;
      
      protected var §9v§:Loader;
      
      protected var §4#'§:String;
      
      protected var §^6§:int = 3;
      
      private var §%"5§:int = 0;
      
      private var §-""§:int = 0;
      
      public function §@4§(param1:String, param2:Boolean = true, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §4!%§(param1:String, param2:Boolean = false) : void
      {
         if(§0!R§.indexOf(param1) != -1)
         {
            return;
         }
         §0!R§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §6"s§(param1:Boolean) : void
      {
         var _loc2_:§@4§ = null;
         if(§+"I§ == param1)
         {
            return;
         }
         §+"I§ = param1;
         for each(_loc2_ in §2j§)
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
         return this.§7"p§;
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
         this.§4#'§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §2f§(param1:Event) : void
      {
         if(§2j§.indexOf(this) == -1)
         {
            §2j§.push(this);
         }
      }
      
      private function §+y§(param1:Event) : void
      {
         if(§2j§.indexOf(this) != -1)
         {
            §2j§.splice(§2j§.indexOf(this),1);
         }
      }
      
      public function get bitmapWidth() : int
      {
         return this.§%"5§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§-""§;
      }
      
      protected function load() : void
      {
         this.§9v§ = new Loader();
         this.§9v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§9v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         this.§9v§.load(new URLRequest(this.§4#'§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         this.§%"5§ = this.loader.width;
         this.§-""§ = this.loader.height;
         this.§7"p§ = true;
         if(§+"I§)
         {
            addChild(this.§9v§);
         }
         try
         {
            (this.§9v§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §=!'§(param1:IOErrorEvent) : void
      {
         this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§9v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         --this.§^6§;
         if(this.§^6§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§9v§;
      }
   }
}
