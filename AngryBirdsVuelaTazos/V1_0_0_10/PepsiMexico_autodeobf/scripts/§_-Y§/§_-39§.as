package §_-Y§
{
   import §_-HJ§.§_-1B§;
   import §_-ec§.§_-GK§;
   import §_-ot§.§_-o6§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-39§
   {
      
      private static var §_-dn§:Vector.<XML>;
      
      private static var §_-7Y§:Boolean = false;
      
      private static var §_-9v§:int;
      
      private static var §_-3x§:int;
      
      private static var §_-62§:Function;
      
      private static var §_-1G§:Function;
      
      private static var §_-fb§:Loader;
      
      private static var §_-V0§:URLLoader;
      
      private static var §_-uV§:XML;
      
      private static var §_-pg§:String = "";
      
      private static var §_-4H§:int = 0;
      
      private static var §_-HR§:Vector.<String>;
      
      private static var §_-gK§:String = "external_assets/LoadTest.swf";
      
      private static var §_-x7§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-qv§:String;
      
      private static var §_-wu§:String;
       
      
      public function §_-39§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:Function = null) : void
      {
         §_-qv§ = param2;
         §_-wu§ = param3;
         §_-x7§ = true;
         §_-7Y§ = false;
         §_-62§ = param4;
      }
      
      private static function §_-Co§() : void
      {
         §_-x7§ = true;
         §_-7Y§ = false;
      }
      
      public static function §_-F8§() : Boolean
      {
         return §_-x7§;
      }
      
      public static function §_-Jk§() : Boolean
      {
         if(§_-7Y§ || !§_-F8§())
         {
            return false;
         }
         §_-dn§ = new Vector.<XML>();
         §_-9v§ = 0;
         return true;
      }
      
      public static function §_-u-§(param1:XML) : void
      {
         if(§_-7Y§ && §_-F8§())
         {
            return;
         }
         §_-dn§.push(param1);
         ++§_-9v§;
      }
      
      public static function §_-EZ§(param1:Function = null) : void
      {
         if(§_-7Y§ && §_-F8§())
         {
            return;
         }
         §_-1G§ = param1;
         §_-9v§ = §_-dn§.length;
         if(§_-dn§.length > 0)
         {
            §_-7Y§ = true;
            §_-GA§();
         }
         else if(§_-dn§.length == 0)
         {
            §_-7Y§ = true;
            §_-YS§();
         }
      }
      
      private static function §_-GA§() : void
      {
         var _loc1_:String = null;
         if(§_-7Y§ && §_-F8§())
         {
            _loc1_ = "";
            if(§_-wu§ != null && §_-wu§.length > 0)
            {
               _loc1_ = "?version=" + §_-wu§;
            }
            §_-uV§ = §_-dn§.shift();
            if(§_-uV§.localName() == "pack")
            {
               §_-V0§ = new URLLoader();
               §_-V0§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-V0§.addEventListener(Event.COMPLETE,§_-su§);
               §_-V0§.load(new URLRequest(§_-qv§ + §_-uV§.@url.toString() + _loc1_));
            }
            else
            {
               §_-fb§ = new Loader();
               §_-fb§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-1X§);
               §_-fb§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-Bw§);
               §_-fb§.load(new URLRequest(§_-qv§ + §_-pg§ + §_-uV§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-Bw§(param1:IOErrorEvent) : void
      {
         §_-fb§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-1X§);
         §_-fb§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Bw§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-fb§.contentLoaderInfo.url,§_-1B§.§_-R4§);
      }
      
      private static function §_-su§(param1:Event) : void
      {
         §_-V0§.removeEventListener(Event.COMPLETE,§_-su§);
         packages.push(§_-V0§.data);
         if(§_-62§ != null)
         {
            §_-62§(§_-V0§.data);
         }
         §_-rL§();
         ++§_-3x§;
         if(§_-dn§.length > 0)
         {
            §_-GA§();
         }
         else
         {
            §_-YS§();
         }
      }
      
      private static function §_-1X§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-fb§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-1X§);
         §_-fb§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Bw§);
         var _loc2_:* = §_-fb§.content;
         for each(_loc3_ in §_-uV§.Asset)
         {
            _loc4_ = §_-uV§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-o6§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-uV§.@swf);
            }
            else
            {
               §_-GK§.§_-Rf§(_loc3_.@name.toString(),_loc5_);
               §_-o6§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-rL§();
         ++§_-3x§;
         if(§_-dn§.length > 0)
         {
            §_-GA§();
         }
         else
         {
            §_-YS§();
         }
      }
      
      private static function §_-rL§() : void
      {
         §_-fb§ = null;
         §_-V0§ = null;
         §_-uV§ = null;
      }
      
      private static function §_-YS§() : void
      {
         if(§_-1G§ != null)
         {
            §_-1G§.call();
            §_-1G§ = null;
         }
      }
      
      public static function §_-3R§() : void
      {
         §_-7Y§ = false;
         §_-9v§ = 0;
         if(§_-dn§)
         {
            §_-dn§ = null;
         }
      }
      
      public static function § set§() : Number
      {
         if(!§_-F8§())
         {
            §_-o6§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-7Y§ || !§_-dn§ || !§_-F8§())
         {
            §_-o6§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-9v§ == 0)
         {
            return 1;
         }
         return §_-3x§ / §_-9v§;
      }
   }
}
