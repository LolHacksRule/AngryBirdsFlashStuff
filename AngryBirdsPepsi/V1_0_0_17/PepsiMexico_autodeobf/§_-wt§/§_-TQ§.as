package §_-wt§
{
   import §_-0S§.§_-z1§;
   import §_-IV§.§_-tX§;
   import §_-e3§.§_-54§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §_-TQ§
   {
      
      private static var §_-NF§:Vector.<XML>;
      
      private static var §_-Qo§:Boolean = false;
      
      private static var §_-ip§:int;
      
      private static var §_-n9§:int;
      
      private static var §_-Va§:Function;
      
      private static var §_-Cj§:Function;
      
      private static var §_-Pc§:Loader;
      
      private static var §_-u3§:URLLoader;
      
      private static var §_-JD§:XML;
      
      private static var §_-PV§:String = "";
      
      private static var §_-GR§:int = 0;
      
      private static var §_-kT§:Vector.<String>;
      
      private static var §use §:String = "external_assets/LoadTest.swf";
      
      private static var §_-Wd§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-er§:String;
      
      private static var §_-xh§:String;
      
      private static var §_-34§:§_-8C§;
       
      
      public function §_-TQ§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-8C§, param5:Function = null) : void
      {
         §_-er§ = param2;
         §_-xh§ = param3;
         §_-Wd§ = true;
         §_-Qo§ = false;
         §_-34§ = param4;
         §_-Va§ = param5;
      }
      
      private static function §_-l5§() : void
      {
         §_-Wd§ = true;
         §_-Qo§ = false;
      }
      
      public static function §_-pc§() : Boolean
      {
         return §_-Wd§;
      }
      
      public static function §_-ts§() : Boolean
      {
         if(§_-Qo§ || !§_-pc§())
         {
            return false;
         }
         §_-NF§ = new Vector.<XML>();
         §_-ip§ = 0;
         return true;
      }
      
      public static function §_-VO§(param1:XML) : void
      {
         if(§_-Qo§ && §_-pc§())
         {
            return;
         }
         §_-NF§.push(param1);
         ++§_-ip§;
      }
      
      public static function §_-TH§(param1:Function = null) : void
      {
         if(§_-Qo§ && §_-pc§())
         {
            return;
         }
         §_-Cj§ = param1;
         §_-ip§ = §_-NF§.length;
         if(§_-NF§.length > 0)
         {
            §_-Qo§ = true;
            §_-h9§();
         }
         else if(§_-NF§.length == 0)
         {
            §_-Qo§ = true;
            §_-gm§();
         }
      }
      
      private static function §_-h9§() : void
      {
         var _loc1_:String = null;
         if(§_-Qo§ && §_-pc§())
         {
            _loc1_ = "";
            if(§_-xh§ != null && §_-xh§.length > 0)
            {
               _loc1_ = "?version=" + §_-xh§;
            }
            §_-JD§ = §_-NF§.shift();
            if(§_-JD§.localName() == "pack")
            {
               §_-u3§ = new URLLoader();
               §_-u3§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-u3§.addEventListener(Event.COMPLETE,§_-9k§);
               §_-u3§.load(new URLRequest(§_-er§ + §_-JD§.@url.toString() + _loc1_));
            }
            else
            {
               §_-Pc§ = new Loader();
               §_-Pc§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-aL§);
               §_-Pc§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
               §_-Pc§.load(new URLRequest(§_-er§ + §_-PV§ + §_-JD§.@swf.toString() + _loc1_));
            }
         }
      }
      
      private static function §_-Fr§(param1:IOErrorEvent) : void
      {
         §_-Pc§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-aL§);
         §_-Pc§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-Pc§.contentLoaderInfo.url,§_-tX§.§_-7I§);
      }
      
      private static function §_-9k§(param1:Event) : void
      {
         §_-u3§.removeEventListener(Event.COMPLETE,§_-9k§);
         packages.push(§_-u3§.data);
         if(§_-Va§ != null)
         {
            §_-Va§(§_-u3§.data);
         }
         if(§_-34§)
         {
            §_-34§.§_-nS§(§_-u3§.data);
         }
         §_-dX§();
         ++§_-n9§;
         if(§_-NF§.length > 0)
         {
            §_-h9§();
         }
         else
         {
            §_-gm§();
         }
      }
      
      private static function §_-aL§(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:Class = null;
         §_-Pc§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-aL§);
         §_-Pc§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Fr§);
         var _loc2_:* = §_-Pc§.content;
         for each(_loc3_ in §_-JD§.Asset)
         {
            _loc4_ = §_-JD§;
            if(_loc2_ == null)
            {
               throw new Error("[LoadManager] Library is NULL (This should NEVER HAPPEN!!)");
            }
            if((_loc5_ = _loc2_.loaderInfo.applicationDomain.getDefinition(_loc3_.@name.toString()) as Class) == null)
            {
               §_-54§.log("ASSET CACHING FAILED!" + _loc3_.@name.toString() + ", src:" + §_-JD§.@swf);
            }
            else
            {
               §_-z1§.§_-SK§(_loc3_.@name.toString(),_loc5_);
               §_-54§.log("ASSET CACHED: " + _loc3_.@name.toString());
            }
         }
         §_-dX§();
         ++§_-n9§;
         if(§_-NF§.length > 0)
         {
            §_-h9§();
         }
         else
         {
            §_-gm§();
         }
      }
      
      private static function §_-dX§() : void
      {
         §_-Pc§ = null;
         §_-u3§ = null;
         §_-JD§ = null;
      }
      
      private static function §_-gm§() : void
      {
         if(§_-Cj§ != null)
         {
            §_-Cj§.call();
            §_-Cj§ = null;
         }
      }
      
      public static function §_-qj§() : void
      {
         §_-Qo§ = false;
         §_-ip§ = 0;
         if(§_-NF§)
         {
            §_-NF§ = null;
         }
      }
      
      public static function §_-1H§() : Number
      {
         if(!§_-pc§())
         {
            §_-54§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-Qo§ || !§_-NF§ || !§_-pc§())
         {
            §_-54§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-ip§ == 0)
         {
            if(§_-34§)
            {
               if(§_-34§.§_-pi§)
               {
                  return 1;
               }
               return (§_-n9§ - 0.5) / §_-ip§;
            }
            return 1;
         }
         return §_-n9§ / §_-ip§;
      }
   }
}
