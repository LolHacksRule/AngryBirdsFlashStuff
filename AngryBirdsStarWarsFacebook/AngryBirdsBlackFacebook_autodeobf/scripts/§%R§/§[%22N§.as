package §%R§
{
   import §1!i§.§,#_§;
   import §1!i§.§8"x§;
   import §5t§.Log;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §["N§
   {
      
      private static var §=!h§:§["N§;
       
      
      private var §8"9§:Vector.<XML>;
      
      private var §,2§:Boolean = false;
      
      private var §!"i§:int;
      
      private var §&b§:int;
      
      private var §;#8§:Function;
      
      private var §0L§:Function;
      
      private var §9v§:Loader;
      
      private var §+!&§:URLLoader;
      
      private var §3!0§:XML;
      
      private var §6!n§:Vector.<String>;
      
      private var §@"=§:String = "external_assets/LoadTest.swf";
      
      private var §<#O§:Boolean = false;
      
      private var §3!H§:Array;
      
      private var §8#!§:String;
      
      private var §;#[§:String;
      
      private var §[!V§:§,#_§;
      
      private var § !K§:String = "";
      
      private var §?A§:Number = 0;
      
      private var §0!s§:String = "";
      
      private var §9"T§:§[!a§;
      
      public function §["N§()
      {
         this.§3!H§ = [];
         this.§[!V§ = new §,#_§();
         super();
      }
      
      public static function get §%!E§() : §["N§
      {
         if(!§=!h§)
         {
            §=!h§ = new §["N§();
         }
         return §=!h§;
      }
      
      public static function §0y§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §!" §() : void
      {
         this.§3!H§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§[!a§, param5:Function = null) : void
      {
         this.§8#!§ = param2;
         this.§;#[§ = param3;
         this.§<#O§ = true;
         this.§,2§ = false;
         this.§9"T§ = param4;
         this.§;#8§ = param5;
      }
      
      private function §4#2§() : void
      {
         this.§<#O§ = true;
         this.§,2§ = false;
      }
      
      public function §8!#§() : Boolean
      {
         return this.§<#O§;
      }
      
      public function §;r§() : Boolean
      {
         if(this.§,2§ || !this.§8!#§())
         {
            return false;
         }
         this.§8"9§ = new Vector.<XML>();
         this.§!"i§ = 0;
         return true;
      }
      
      public function §"#]§(param1:XML) : void
      {
         if(this.§,2§ && this.§8!#§())
         {
            return;
         }
         this.§8"9§.push(param1);
         ++this.§!"i§;
      }
      
      public function §,=§(param1:Function = null) : void
      {
         if(this.§,2§ && this.§8!#§())
         {
            return;
         }
         this.§0L§ = param1;
         this.§!"i§ = this.§8"9§.length;
         this.§&b§ = 0;
         this.§,2§ = true;
         this.§,<§();
      }
      
      private function §>!v§() : Boolean
      {
         if(this.§9"T§ && !this.§9"T§.§^!p§)
         {
            this.§9"T§.removeEventListener(Event.COMPLETE,this.§'"#§);
            this.§9"T§.addEventListener(Event.COMPLETE,this.§'"#§);
            return true;
         }
         return false;
      }
      
      private function §'"#§(param1:Event) : void
      {
         this.§9"T§.removeEventListener(Event.COMPLETE,this.§'"#§);
         this.§,<§();
      }
      
      private function §,<§() : void
      {
         if(!this.§8"9§)
         {
            return;
         }
         if(this.§8"9§.length > 0)
         {
            this.§'"K§();
         }
         else if(this.§]!c§() >= 1)
         {
            this.§@"G§();
         }
         else
         {
            this.§>!v§();
         }
      }
      
      private function §'"K§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§,2§ && this.§8!#§())
         {
            if(this.§>!v§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§;#[§ != null && this.§;#[§.length > 0)
            {
               _loc1_ = "?version=" + this.§;#[§;
            }
            this.§?A§ = 0;
            this.§3!0§ = this.§8"9§.shift();
            if(this.§3!0§.localName() == "pack")
            {
               _loc2_ = this.§3!0§.@url.toString();
               _loc2_ = §^#%§.§%!E§.§2G§(_loc2_);
               this.§+!&§ = new URLLoader();
               this.§+!&§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§+!&§.addEventListener(Event.COMPLETE,this.§0b§);
               this.§+!&§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"5§);
               this.§+!&§.addEventListener(ProgressEvent.PROGRESS,this.§@"?§);
               this.§0!s§ = this.§8#!§ + _loc2_ + _loc1_;
               this.§+!&§.load(new URLRequest(this.§0!s§));
            }
            else if(this.§3!0§.localName() == "xml")
            {
               _loc3_ = this.§3!0§.@url.toString();
               _loc3_ = §^#%§.§%!E§.§2G§(_loc3_);
               this.§ !K§ = this.§3!0§.@name;
               this.§+!&§ = new URLLoader();
               this.§+!&§.addEventListener(Event.COMPLETE,this.§`!E§);
               this.§+!&§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"5§);
               this.§+!&§.addEventListener(ProgressEvent.PROGRESS,this.§@"?§);
               this.§0!s§ = this.§8#!§ + _loc3_ + _loc1_;
               this.§+!&§.load(new URLRequest(this.§0!s§));
            }
            else
            {
               _loc4_ = this.§3!0§.@swf.toString();
               _loc4_ = §^#%§.§%!E§.§2G§(_loc4_);
               this.§9v§ = new Loader();
               this.§9v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&!l§);
               this.§9v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5"5§);
               this.§9v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§@"?§);
               this.§0!s§ = this.§8#!§ + _loc4_ + _loc1_;
               this.§9v§.load(new URLRequest(this.§0!s§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §5"5§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§0!s§;
         this.§64§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§0!s§,§8"x§.§-!0§);
      }
      
      private function §`!E§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§+!&§.data);
         this.§[!V§[this.§ !K§] = _loc2_;
         this.§64§();
         ++this.§&b§;
         this.§,<§();
      }
      
      public function §=L§(param1:String) : XML
      {
         return this.§[!V§[param1];
      }
      
      private function §0b§(param1:Event) : void
      {
         this.§3!H§.push(this.§+!&§.data);
         if(this.§;#8§ != null)
         {
            this.§;#8§(this.§+!&§.data);
         }
         if(this.§9"T§)
         {
            this.§9"T§.§[#!§(this.§+!&§.data,this.§throw§(this.§3!0§.@url),true,this.§3!0§);
         }
         this.§64§();
         ++this.§&b§;
         this.§,<§();
      }
      
      private function §throw§(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:int = _loc2_.indexOf(".pak");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(0,_loc3_);
         }
         _loc3_ = _loc2_.lastIndexOf("/");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(_loc3_ + 1);
         }
         return _loc2_;
      }
      
      private function §@"?§(param1:ProgressEvent) : void
      {
         this.§?A§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §&!l§(param1:Event) : void
      {
         this.§64§();
         ++this.§&b§;
         this.§,<§();
      }
      
      private function §64§() : void
      {
         if(this.§9v§)
         {
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!l§);
            this.§9v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"5§);
            this.§9v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!l§);
            this.§9v§ = null;
         }
         if(this.§+!&§)
         {
            this.§+!&§.removeEventListener(Event.COMPLETE,this.§0b§);
            this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"5§);
            this.§+!&§.removeEventListener(ProgressEvent.PROGRESS,this.§@"?§);
            this.§+!&§ = null;
         }
         this.§3!0§ = null;
      }
      
      private function §@"G§() : void
      {
         this.§?A§ = 0;
         if(this.§0L§ != null)
         {
            this.§0L§.call();
            this.§0L§ = null;
         }
      }
      
      public function §6q§() : void
      {
         this.§?A§ = 0;
         this.§,2§ = false;
         this.§!"i§ = 0;
         if(this.§8"9§)
         {
            this.§8"9§ = null;
         }
         this.§0L§ = null;
         this.§64§();
         if(this.§9"T§)
         {
            this.§9"T§.§6q§();
         }
      }
      
      public function §]!c§() : Number
      {
         if(!this.§8!#§())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§,2§ || !this.§8"9§ || !this.§8!#§())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§&b§ == this.§!"i§)
         {
            if(this.§9"T§ && this.§!"i§ > 0)
            {
               if(this.§9"T§.§^!p§)
               {
                  return 1;
               }
               return (this.§&b§ - 0.1) / this.§!"i§;
            }
            return 1;
         }
         return this.§&b§ / this.§!"i§;
      }
   }
}
