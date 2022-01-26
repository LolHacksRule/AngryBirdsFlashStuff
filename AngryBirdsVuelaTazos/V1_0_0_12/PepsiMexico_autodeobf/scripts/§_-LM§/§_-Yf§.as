package §_-LM§
{
   import §_-RG§.§_-HT§;
   import §_-Xr§.§_-B§;
   import §_-vA§.§_-XO§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-Yf§
   {
      
      private static var §_-D2§:Vector.<XML>;
      
      private static var §_-RW§:Boolean = false;
      
      private static var §_-A1§:int;
      
      private static var §_-NX§:int;
      
      private static var §_-kn§:Function;
      
      private static var §_-ck§:Function;
      
      private static var §_-vT§:Loader;
      
      private static var §_-7y§:URLLoader;
      
      private static var §_-rw§:XML;
      
      private static var §_-Bq§:String = "";
      
      private static var §_-3W§:int = 0;
      
      private static var §_-vc§:Vector.<String>;
      
      private static var §_-jY§:String = "external_assets/LoadTest.swf";
      
      private static var §_-93§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-Qk§:String;
      
      private static var §_-2F§:String;
      
      private static var §_-57§:§_-vR§;
       
      
      public function §_-Yf§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-vR§, param5:Function = null) : void
      {
         §_-Qk§ = param2;
         §_-2F§ = param3;
         §_-93§ = true;
         §_-RW§ = false;
         §_-57§ = param4;
         §_-kn§ = param5;
      }
      
      private static function §_-0c§() : void
      {
         §_-93§ = true;
         §_-RW§ = false;
      }
      
      public static function §_-Pa§() : Boolean
      {
         return §_-93§;
      }
      
      public static function §_-x-§() : Boolean
      {
         if(§_-RW§ || !§_-Pa§())
         {
            return false;
         }
         §_-D2§ = new Vector.<XML>();
         §_-A1§ = 0;
         return true;
      }
      
      public static function §_-Kz§(param1:XML) : void
      {
         if(§_-RW§ && §_-Pa§())
         {
            return;
         }
         §_-D2§.push(param1);
         ++§_-A1§;
      }
      
      public static function §_-Rq§(param1:Function = null) : void
      {
         if(§_-RW§ && §_-Pa§())
         {
            return;
         }
         §_-ck§ = param1;
         §_-A1§ = §_-D2§.length;
         if(§_-D2§.length > 0)
         {
            §_-RW§ = true;
            §_-Ie§();
         }
         else if(§_-D2§.length == 0)
         {
            §_-RW§ = true;
            §_-M§();
         }
      }
      
      private static function §_-Ie§() : void
      {
         var _loc1_:String = null;
         if(§_-RW§ && §_-Pa§())
         {
            _loc1_ = "";
            if(§_-2F§ != null && §_-2F§.length > 0)
            {
               _loc1_ = "?version=" + §_-2F§;
            }
            §_-rw§ = §_-D2§.shift();
            if(§_-rw§.localName() == "pack")
            {
               §_-7y§ = new URLLoader();
               §_-7y§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-7y§.addEventListener(Event.COMPLETE,§var§);
               §_-7y§.load(new URLRequest(§_-Qk§ + §_-rw§.@url.toString() + _loc1_));
            }
            else
            {
               §_-vT§ = new Loader();
               §_-vT§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-b9§);
               §_-vT§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-VP§);
               §_-vT§.load(new URLRequest(§_-Qk§ + §_-Bq§ + §_-rw§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-VP§(param1:IOErrorEvent) : void
      {
         §_-vT§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-b9§);
         §_-vT§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-VP§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-vT§.contentLoaderInfo.url,§_-B§.§_-c3§);
      }
      
      private static function §var§(param1:Event) : void
      {
         §_-7y§.removeEventListener(Event.COMPLETE,§var§);
         packages.push(§_-7y§.data);
         if(§_-kn§ != null)
         {
            §_-kn§(§_-7y§.data);
         }
         if(§_-57§)
         {
            §_-57§.§_-08§(§_-7y§.data);
         }
         §_-bb§();
         ++§_-NX§;
         if(§_-D2§.length > 0)
         {
            §_-Ie§();
         }
         else
         {
            §_-M§();
         }
      }
      
      private static function §_-b9§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-vT§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-b9§);
         §_-vT§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-VP§);
         var _loc2_:* = §_-vT§.content;
         for each(_loc3_ in §_-rw§.Asset)
         {
            _loc4_ = §_-rw§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-HT§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-rw§.@swf);
            }
            else
            {
               §_-XO§.§_-7x§(_loc3_.@name.toString(),_loc5_);
               §_-HT§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-bb§();
         ++§_-NX§;
         if(§_-D2§.length > 0)
         {
            §_-Ie§();
         }
         else
         {
            §_-M§();
         }
      }
      
      private static function §_-bb§() : void
      {
         §_-vT§ = null;
         §_-7y§ = null;
         §_-rw§ = null;
      }
      
      private static function §_-M§() : void
      {
         if(§_-ck§ != null)
         {
            §_-ck§.call();
            §_-ck§ = null;
         }
      }
      
      public static function §_-o9§() : void
      {
         §_-RW§ = false;
         §_-A1§ = 0;
         if(§_-D2§)
         {
            §_-D2§ = null;
         }
      }
      
      public static function §_-fh§() : Number
      {
         if(!§_-Pa§())
         {
            §_-HT§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-RW§ || !§_-D2§ || !§_-Pa§())
         {
            §_-HT§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-A1§ == 0)
         {
            if(§_-57§)
            {
               if(§_-57§.§_-UB§)
               {
                  return 1;
               }
               return (§_-NX§ - 0.5) / §_-A1§;
            }
            return 1;
         }
         return §_-NX§ / §_-A1§;
      }
   }
}
