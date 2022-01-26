package §_-gl§
{
   import §_-Ay§.§_-nw§;
   import §_-XI§.§_-dD§;
   import §_-ex§.§_-mR§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-Fu§
   {
      
      private static var §_-iQ§:Vector.<XML>;
      
      private static var §_-Ha§:Boolean = false;
      
      private static var §_-30§:int;
      
      private static var §_-Ur§:int;
      
      private static var §_-sG§:Function;
      
      private static var §_-2L§:Function;
      
      private static var §_-L2§:Loader;
      
      private static var §_-6K§:URLLoader;
      
      private static var §_-KS§:XML;
      
      private static var §_-V7§:String = "";
      
      private static var §_-lN§:int = 0;
      
      private static var §_-xF§:Vector.<String>;
      
      private static var §_-Ea§:String = "external_assets/LoadTest.swf";
      
      private static var §_-Y1§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-0H§:String;
      
      private static var §_-va§:String;
      
      private static var §_-A0§:§_-8j§;
       
      
      public function §_-Fu§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-8j§, param5:Function = null) : void
      {
         §_-0H§ = param2;
         §_-va§ = param3;
         §_-Y1§ = true;
         §_-Ha§ = false;
         §_-A0§ = param4;
         §_-sG§ = param5;
      }
      
      private static function §_-Eh§() : void
      {
         §_-Y1§ = true;
         §_-Ha§ = false;
      }
      
      public static function §_-JU§() : Boolean
      {
         return §_-Y1§;
      }
      
      public static function §_-MD§() : Boolean
      {
         if(§_-Ha§ || !§_-JU§())
         {
            return false;
         }
         §_-iQ§ = new Vector.<XML>();
         §_-30§ = 0;
         return true;
      }
      
      public static function §_-xZ§(param1:XML) : void
      {
         if(§_-Ha§ && §_-JU§())
         {
            return;
         }
         §_-iQ§.push(param1);
         ++§_-30§;
      }
      
      public static function §_-nQ§(param1:Function = null) : void
      {
         if(§_-Ha§ && §_-JU§())
         {
            return;
         }
         §_-2L§ = param1;
         §_-30§ = §_-iQ§.length;
         if(§_-iQ§.length > 0)
         {
            §_-Ha§ = true;
            §_-Ux§();
         }
         else if(§_-iQ§.length == 0)
         {
            §_-Ha§ = true;
            §_-x5§();
         }
      }
      
      private static function §_-Ux§() : void
      {
         var _loc1_:String = null;
         if(§_-Ha§ && §_-JU§())
         {
            _loc1_ = "";
            if(§_-va§ != null && §_-va§.length > 0)
            {
               _loc1_ = "?version=" + §_-va§;
            }
            §_-KS§ = §_-iQ§.shift();
            if(§_-KS§.localName() == "pack")
            {
               §_-6K§ = new URLLoader();
               §_-6K§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-6K§.addEventListener(Event.COMPLETE,§_-OI§);
               §_-6K§.load(new URLRequest(§_-0H§ + §_-KS§.@url.toString() + _loc1_));
            }
            else
            {
               §_-L2§ = new Loader();
               §_-L2§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-8g§);
               §_-L2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-IG§);
               §_-L2§.load(new URLRequest(§_-0H§ + §_-V7§ + §_-KS§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-IG§(param1:IOErrorEvent) : void
      {
         §_-L2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-8g§);
         §_-L2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-IG§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-L2§.contentLoaderInfo.url,§_-dD§.§_-7x§);
      }
      
      private static function §_-OI§(param1:Event) : void
      {
         §_-6K§.removeEventListener(Event.COMPLETE,§_-OI§);
         packages.push(§_-6K§.data);
         if(§_-sG§ != null)
         {
            §_-sG§(§_-6K§.data);
         }
         if(§_-A0§)
         {
            §_-A0§.§_-KI§(§_-6K§.data);
         }
         §_-TE§();
         ++§_-Ur§;
         if(§_-iQ§.length > 0)
         {
            §_-Ux§();
         }
         else
         {
            §_-x5§();
         }
      }
      
      private static function §_-8g§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-L2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-8g§);
         §_-L2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-IG§);
         var _loc2_:* = §_-L2§.content;
         for each(_loc3_ in §_-KS§.Asset)
         {
            _loc4_ = §_-KS§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-mR§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-KS§.@swf);
            }
            else
            {
               §_-nw§.§_-vj§(_loc3_.@name.toString(),_loc5_);
               §_-mR§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-TE§();
         ++§_-Ur§;
         if(§_-iQ§.length > 0)
         {
            §_-Ux§();
         }
         else
         {
            §_-x5§();
         }
      }
      
      private static function §_-TE§() : void
      {
         §_-L2§ = null;
         §_-6K§ = null;
         §_-KS§ = null;
      }
      
      private static function §_-x5§() : void
      {
         if(§_-2L§ != null)
         {
            §_-2L§.call();
            §_-2L§ = null;
         }
      }
      
      public static function §_-M6§() : void
      {
         §_-Ha§ = false;
         §_-30§ = 0;
         if(§_-iQ§)
         {
            §_-iQ§ = null;
         }
      }
      
      public static function §_-iq§() : Number
      {
         if(!§_-JU§())
         {
            §_-mR§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-Ha§ || !§_-iQ§ || !§_-JU§())
         {
            §_-mR§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-30§ == 0)
         {
            if(§_-A0§)
            {
               if(§_-A0§.§_-2g§)
               {
                  return 1;
               }
               return (§_-Ur§ - 0.5) / §_-30§;
            }
            return 1;
         }
         return §_-Ur§ / §_-30§;
      }
   }
}
