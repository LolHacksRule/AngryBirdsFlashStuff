package §_-rD§
{
   import §_-Eo§.§_-R4§;
   import §_-W7§.§_-jT§;
   import §_-mc§.§_-NF§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-0k§
   {
      
      private static var §_-uC§:Vector.<XML>;
      
      private static var §_-zI§:Boolean = false;
      
      private static var §_-Vl§:int;
      
      private static var §_-qR§:int;
      
      private static var §_-A7§:Function;
      
      private static var §_-77§:Function;
      
      private static var §_-jv§:Loader;
      
      private static var §_-Ja§:URLLoader;
      
      private static var §_-41§:XML;
      
      private static var §_-e3§:String = "";
      
      private static var §_-hM§:int = 0;
      
      private static var §_-T-§:Vector.<String>;
      
      private static var §_-Bt§:String = "external_assets/LoadTest.swf";
      
      private static var §_-2u§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-oh§:String;
      
      private static var §_-TU§:String;
      
      private static var §_-Br§:§_-yK§;
       
      
      public function §_-0k§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-yK§, param5:Function = null) : void
      {
         §_-oh§ = param2;
         §_-TU§ = param3;
         §_-2u§ = true;
         §_-zI§ = false;
         §_-Br§ = param4;
         §_-A7§ = param5;
      }
      
      private static function §_-UC§() : void
      {
         §_-2u§ = true;
         §_-zI§ = false;
      }
      
      public static function §_-gB§() : Boolean
      {
         return §_-2u§;
      }
      
      public static function §_-14§() : Boolean
      {
         if(§_-zI§ || !§_-gB§())
         {
            return false;
         }
         §_-uC§ = new Vector.<XML>();
         §_-Vl§ = 0;
         return true;
      }
      
      public static function §_-qn§(param1:XML) : void
      {
         if(§_-zI§ && §_-gB§())
         {
            return;
         }
         §_-uC§.push(param1);
         ++§_-Vl§;
      }
      
      public static function §_-s7§(param1:Function = null) : void
      {
         if(§_-zI§ && §_-gB§())
         {
            return;
         }
         §_-77§ = param1;
         §_-Vl§ = §_-uC§.length;
         if(§_-uC§.length > 0)
         {
            §_-zI§ = true;
            §_-3j§();
         }
         else if(§_-uC§.length == 0)
         {
            §_-zI§ = true;
            §_-6§();
         }
      }
      
      private static function §_-3j§() : void
      {
         var _loc1_:String = null;
         if(§_-zI§ && §_-gB§())
         {
            _loc1_ = "";
            if(§_-TU§ != null && §_-TU§.length > 0)
            {
               _loc1_ = "?version=" + §_-TU§;
            }
            §_-41§ = §_-uC§.shift();
            if(§_-41§.localName() == "pack")
            {
               §_-Ja§ = new URLLoader();
               §_-Ja§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-Ja§.addEventListener(Event.COMPLETE,§_-75§);
               §_-Ja§.load(new URLRequest(§_-oh§ + §_-41§.@url.toString() + _loc1_));
            }
            else
            {
               §_-jv§ = new Loader();
               §_-jv§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-4j§);
               §_-jv§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-E5§);
               §_-jv§.load(new URLRequest(§_-oh§ + §_-e3§ + §_-41§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-E5§(param1:IOErrorEvent) : void
      {
         §_-jv§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-4j§);
         §_-jv§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-E5§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-jv§.contentLoaderInfo.url,§_-NF§.§_-PM§);
      }
      
      private static function §_-75§(param1:Event) : void
      {
         §_-Ja§.removeEventListener(Event.COMPLETE,§_-75§);
         packages.push(§_-Ja§.data);
         if(§_-A7§ != null)
         {
            §_-A7§(§_-Ja§.data);
         }
         if(§_-Br§)
         {
            §_-Br§.§_-uH§(§_-Ja§.data);
         }
         §_-cf§();
         ++§_-qR§;
         if(§_-uC§.length > 0)
         {
            §_-3j§();
         }
         else
         {
            §_-6§();
         }
      }
      
      private static function §_-4j§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-jv§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-4j§);
         §_-jv§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-E5§);
         var _loc2_:* = §_-jv§.content;
         for each(_loc3_ in §_-41§.Asset)
         {
            _loc4_ = §_-41§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-R4§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-41§.@swf);
            }
            else
            {
               §_-jT§.§_-wU§(_loc3_.@name.toString(),_loc5_);
               §_-R4§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-cf§();
         ++§_-qR§;
         if(§_-uC§.length > 0)
         {
            §_-3j§();
         }
         else
         {
            §_-6§();
         }
      }
      
      private static function §_-cf§() : void
      {
         §_-jv§ = null;
         §_-Ja§ = null;
         §_-41§ = null;
      }
      
      private static function §_-6§() : void
      {
         if(§_-77§ != null)
         {
            §_-77§.call();
            §_-77§ = null;
         }
      }
      
      public static function §_-GY§() : void
      {
         §_-zI§ = false;
         §_-Vl§ = 0;
         if(§_-uC§)
         {
            §_-uC§ = null;
         }
      }
      
      public static function §_-db§() : Number
      {
         if(!§_-gB§())
         {
            §_-R4§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-zI§ || !§_-uC§ || !§_-gB§())
         {
            §_-R4§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-Vl§ == 0)
         {
            if(§_-Br§)
            {
               if(§_-Br§.§_-la§)
               {
                  return 1;
               }
               return (§_-qR§ - 0.5) / §_-Vl§;
            }
            return 1;
         }
         return §_-qR§ / §_-Vl§;
      }
   }
}
