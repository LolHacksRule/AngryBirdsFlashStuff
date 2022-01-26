package §_-p4§
{
   import §_-4R§.§default§;
   import §_-ZG§.§_-Ne§;
   import §_-p7§.§_-WY§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-rN§
   {
      
      private static var §_-IF§:Vector.<XML>;
      
      private static var §_-Qh§:Boolean = false;
      
      private static var §_-7O§:int;
      
      private static var §_-kF§:int;
      
      private static var §_-Yb§:Function;
      
      private static var §_-OC§:Function;
      
      private static var §_-Ut§:Loader;
      
      private static var §_-vs§:URLLoader;
      
      private static var §_-Ol§:XML;
      
      private static var §_-EA§:String = "";
      
      private static var §_-kw§:int = 0;
      
      private static var §_-6X§:Vector.<String>;
      
      private static var §_-GL§:String = "external_assets/LoadTest.swf";
      
      private static var §_-uP§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-eE§:String;
      
      private static var §_-Ap§:String;
       
      
      public function §_-rN§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:Function = null) : void
      {
         §_-eE§ = param2;
         §_-Ap§ = param3;
         §_-uP§ = true;
         §_-Qh§ = false;
         §_-Yb§ = param4;
      }
      
      private static function §_-pI§() : void
      {
         §_-uP§ = true;
         §_-Qh§ = false;
      }
      
      public static function §_-xX§() : Boolean
      {
         return §_-uP§;
      }
      
      public static function §_-Xa§() : Boolean
      {
         if(§_-Qh§ || !§_-xX§())
         {
            return false;
         }
         §_-IF§ = new Vector.<XML>();
         §_-7O§ = 0;
         return true;
      }
      
      public static function §_-hu§(param1:XML) : void
      {
         if(§_-Qh§ && §_-xX§())
         {
            return;
         }
         §_-IF§.push(param1);
         ++§_-7O§;
      }
      
      public static function §_-Uu§(param1:Function = null) : void
      {
         if(§_-Qh§ && §_-xX§())
         {
            return;
         }
         §_-OC§ = param1;
         §_-7O§ = §_-IF§.length;
         if(§_-IF§.length > 0)
         {
            §_-Qh§ = true;
            §_-cL§();
         }
         else if(§_-IF§.length == 0)
         {
            §_-Qh§ = true;
            §_-nh§();
         }
      }
      
      private static function §_-cL§() : void
      {
         var _loc1_:String = null;
         if(§_-Qh§ && §_-xX§())
         {
            _loc1_ = "";
            if(§_-Ap§ != null && §_-Ap§.length > 0)
            {
               _loc1_ = "?version=" + §_-Ap§;
            }
            §_-Ol§ = §_-IF§.shift();
            if(§_-Ol§.localName() == "pack")
            {
               §_-vs§ = new URLLoader();
               §_-vs§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-vs§.addEventListener(Event.COMPLETE,§_-Yu§);
               §_-vs§.load(new URLRequest(§_-eE§ + §_-Ol§.@url.toString() + _loc1_));
            }
            else
            {
               §_-Ut§ = new Loader();
               §_-Ut§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-Ip§);
               §_-Ut§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-CU§);
               §_-Ut§.load(new URLRequest(§_-eE§ + §_-EA§ + §_-Ol§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-CU§(param1:IOErrorEvent) : void
      {
         §_-Ut§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-Ip§);
         §_-Ut§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-CU§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-Ut§.contentLoaderInfo.url,§default§.§_-ql§);
      }
      
      private static function §_-Yu§(param1:Event) : void
      {
         §_-vs§.removeEventListener(Event.COMPLETE,§_-Yu§);
         packages.push(§_-vs§.data);
         if(§_-Yb§ != null)
         {
            §_-Yb§(§_-vs§.data);
         }
         §_-rj§();
         ++§_-kF§;
         if(§_-IF§.length > 0)
         {
            §_-cL§();
         }
         else
         {
            §_-nh§();
         }
      }
      
      private static function §_-Ip§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-Ut§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-Ip§);
         §_-Ut§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-CU§);
         var _loc2_:* = §_-Ut§.content;
         for each(_loc3_ in §_-Ol§.Asset)
         {
            _loc4_ = §_-Ol§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-Ne§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-Ol§.@swf);
            }
            else
            {
               §_-WY§.§_-fv§(_loc3_.@name.toString(),_loc5_);
               §_-Ne§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-rj§();
         ++§_-kF§;
         if(§_-IF§.length > 0)
         {
            §_-cL§();
         }
         else
         {
            §_-nh§();
         }
      }
      
      private static function §_-rj§() : void
      {
         §_-Ut§ = null;
         §_-vs§ = null;
         §_-Ol§ = null;
      }
      
      private static function §_-nh§() : void
      {
         if(§_-OC§ != null)
         {
            §_-OC§.call();
            §_-OC§ = null;
         }
      }
      
      public static function §_-GB§() : void
      {
         §_-Qh§ = false;
         §_-7O§ = 0;
         if(§_-IF§)
         {
            §_-IF§ = null;
         }
      }
      
      public static function §_-7R§() : Number
      {
         if(!§_-xX§())
         {
            §_-Ne§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-Qh§ || !§_-IF§ || !§_-xX§())
         {
            §_-Ne§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-7O§ == 0)
         {
            return 1;
         }
         return §_-kF§ / §_-7O§;
      }
   }
}
