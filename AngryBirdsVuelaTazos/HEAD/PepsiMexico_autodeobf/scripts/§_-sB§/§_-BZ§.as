package §_-sB§
{
   import §_-2F§.override;
   import §_-9k§.§_-X7§;
   import §_-gM§.§_-yj§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §_-BZ§
   {
      
      private static var §_-1r§:Vector.<XML>;
      
      private static var §_-kQ§:Boolean = false;
      
      private static var §_-zu§:int;
      
      private static var §_-Fw§:int;
      
      private static var §_-jf§:Function;
      
      private static var §_-pA§:Function;
      
      private static var §_-6F§:Loader;
      
      private static var §_-jK§:URLLoader;
      
      private static var §_-Lx§:XML;
      
      private static var §_-FT§:String = "";
      
      private static var §_-zW§:int = 0;
      
      private static var §_-PE§:Vector.<String>;
      
      private static var §_-me§:String = "external_assets/LoadTest.swf";
      
      private static var §_-9l§:Boolean = false;
      
      public static var packages:Array = [];
      
      private static var §_-9X§:String;
      
      private static var §_-AS§:String;
      
      private static var §_-h2§:Number = 0;
      
      private static var §_-jw§:§_-7G§;
       
      
      public function §_-BZ§()
      {
         super();
      }
      
      public static function init(param1:XML, param2:String, param3:String, param4:§_-7G§, param5:Function = null) : void
      {
         §_-9X§ = param2;
         §_-AS§ = param3;
         §_-9l§ = true;
         §_-kQ§ = false;
         §_-jw§ = param4;
         §_-jf§ = param5;
      }
      
      private static function §_-k9§() : void
      {
         §_-9l§ = true;
         §_-kQ§ = false;
      }
      
      public static function §_-8O§() : Boolean
      {
         return §_-9l§;
      }
      
      public static function §_-yc§() : Boolean
      {
         if(§_-kQ§ || !§_-8O§())
         {
            return false;
         }
         §_-1r§ = new Vector.<XML>();
         §_-zu§ = 0;
         return true;
      }
      
      public static function §_-fU§(param1:XML) : void
      {
         if(§_-kQ§ && §_-8O§())
         {
            return;
         }
         §_-1r§.push(param1);
         ++§_-zu§;
      }
      
      public static function §_-kp§(param1:Function = null) : void
      {
         if(§_-kQ§ && §_-8O§())
         {
            return;
         }
         §_-pA§ = param1;
         §_-zu§ = §_-1r§.length;
         §_-kQ§ = true;
         § each§();
      }
      
      private static function §_-Z2§() : Boolean
      {
         if(§_-jw§ && !§_-jw§.§_-rU§)
         {
            §_-jw§.removeEventListener(Event.COMPLETE,§_-qM§);
            §_-jw§.addEventListener(Event.COMPLETE,§_-qM§);
            return true;
         }
         return false;
      }
      
      private static function §_-qM§(param1:Event) : void
      {
         §_-jw§.removeEventListener(Event.COMPLETE,§_-qM§);
         § each§();
      }
      
      private static function § each§() : void
      {
         if(§_-1r§.length > 0)
         {
            §_-4Q§();
         }
         else if(§_-B1§() >= 1)
         {
            §_-aq§();
         }
      }
      
      private static function §_-4Q§() : void
      {
         var _loc1_:String = null;
         if(§_-kQ§ && §_-8O§())
         {
            if(§_-Z2§())
            {
               return;
            }
            _loc1_ = "";
            if(§_-AS§ != null && §_-AS§.length > 0)
            {
               _loc1_ = "?version=" + §_-AS§;
            }
            §_-h2§ = 0;
            §_-Lx§ = §_-1r§.shift();
            if(§_-Lx§.localName() == "pack")
            {
               §_-jK§ = new URLLoader();
               §_-jK§.dataFormat = URLLoaderDataFormat.BINARY;
               §_-jK§.addEventListener(Event.COMPLETE,§_-dt§);
               §_-jK§.addEventListener(ProgressEvent.PROGRESS,§_-Vi§);
               §_-jK§.load(new URLRequest(§_-9X§ + §_-Lx§.@url.toString() + _loc1_));
            }
            else
            {
               §_-6F§ = new Loader();
               §_-6F§.contentLoaderInfo.addEventListener(Event.COMPLETE,§_-OA§);
               §_-6F§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,§_-Q9§);
               §_-6F§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,§_-Vi§);
               §_-6F§.load(new URLRequest(§_-9X§ + §_-FT§ + §_-Lx§.@swf.toString() + _loc1_),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private static function §_-Q9§(param1:IOErrorEvent) : void
      {
         §_-6F§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-OA§);
         §_-6F§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Q9§);
         §_-6F§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-OA§);
         throw new Error("[LoadManager] FILE NOT FOUND: " + §_-6F§.contentLoaderInfo.url,override.§_-AA§);
      }
      
      private static function §_-dt§(param1:Event) : void
      {
         §_-jK§.removeEventListener(Event.COMPLETE,§_-dt§);
         §_-jK§.removeEventListener(ProgressEvent.PROGRESS,§_-Vi§);
         packages.push(§_-jK§.data);
         if(§_-jf§ != null)
         {
            §_-jf§(§_-jK§.data);
         }
         if(§_-jw§)
         {
            §_-jw§.§_-HE§(§_-jK§.data);
         }
         §_-Oq§();
         ++§_-Fw§;
         § each§();
      }
      
      public static function §_-mZ§(param1:Loader, param2:XML) : void
      {
         var asset:XML = null;
         var assetCls:Class = null;
         var loader:Loader = param1;
         var library:XML = param2;
         for each(asset in library.Asset)
         {
            try
            {
               assetCls = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
            }
            catch(e:ReferenceError)
            {
               throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
            }
            §_-X7§.§_-NG§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      private static function §_-Vi§(param1:ProgressEvent) : void
      {
         §_-h2§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private static function §_-OA§(param1:Event) : void
      {
         §_-6F§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-OA§);
         §_-6F§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,§_-Q9§);
         §_-6F§.contentLoaderInfo.removeEventListener(Event.COMPLETE,§_-OA§);
         §_-mZ§(§_-6F§,§_-Lx§);
         §_-Oq§();
         ++§_-Fw§;
         § each§();
      }
      
      private static function §_-Oq§() : void
      {
         §_-6F§ = null;
         §_-jK§ = null;
         §_-Lx§ = null;
      }
      
      private static function §_-aq§() : void
      {
         §_-h2§ = 0;
         if(§_-pA§ != null)
         {
            §_-pA§.call();
            §_-pA§ = null;
         }
      }
      
      public static function §_-aO§() : void
      {
         §_-h2§ = 0;
         §_-kQ§ = false;
         §_-zu§ = 0;
         if(§_-1r§)
         {
            §_-1r§ = null;
         }
      }
      
      public static function §_-B1§() : Number
      {
         if(!§_-8O§())
         {
            §_-yj§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!§_-kQ§ || !§_-1r§ || !§_-8O§())
         {
            §_-yj§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(§_-Fw§ == §_-zu§)
         {
            if(§_-jw§ && §_-zu§ > 0)
            {
               if(§_-jw§.§_-rU§)
               {
                  return 1;
               }
               return (§_-Fw§ + §_-h2§ - 0.5) / §_-zu§;
            }
            return 1;
         }
         return §_-Fw§ / §_-zu§;
      }
   }
}
