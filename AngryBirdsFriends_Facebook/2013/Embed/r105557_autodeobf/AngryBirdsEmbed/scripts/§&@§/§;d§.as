package §&@§
{
   import §8!=§.§#!&§;
   import §?!8§.§2>§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class §;d§
   {
      
      private static var §6!K§:§;d§;
       
      
      private var §9!G§:Vector.<XML>;
      
      private var §-3§:Boolean = false;
      
      private var §^!$§:int;
      
      private var §<_§:int;
      
      private var §@Q§:Function;
      
      private var §,!M§:Function;
      
      private var §7G§:Loader;
      
      private var §"p§:URLLoader;
      
      private var §;!#§:XML;
      
      private var §!F§:String = "";
      
      private var §35§:int = 0;
      
      private var §[!@§:Vector.<String>;
      
      private var §<P§:String = "external_assets/LoadTest.swf";
      
      private var §9>§:Boolean = false;
      
      private var §2g§:Array;
      
      private var §,j§:String;
      
      private var §'!K§:String;
      
      private var §8Y§:Dictionary;
      
      private var §&!N§:String = "";
      
      private var §'C§:Number = 0;
      
      private var §'J§:String = "";
      
      private var §"!2§:§6c§;
      
      private var §2!=§:Object;
      
      public function §;d§()
      {
         this.§2g§ = [];
         this.§8Y§ = new Dictionary();
         super();
      }
      
      public static function get §&e§() : §;d§
      {
         if(!§6!K§)
         {
            §6!K§ = new §;d§();
         }
         return §6!K§;
      }
      
      public static function §@E§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §]$§() : void
      {
         this.§2g§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§6c§, param5:Function = null, param6:String = "") : void
      {
         this.§,j§ = param2;
         this.§'!K§ = param3;
         this.§9>§ = true;
         this.§-3§ = false;
         this.§"!2§ = param4;
         this.§@Q§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§2!=§ = JSON.parse(param6);
         }
      }
      
      private function §"^§() : void
      {
         this.§9>§ = true;
         this.§-3§ = false;
      }
      
      public function §#!7§() : Boolean
      {
         return this.§9>§;
      }
      
      public function § 5§() : Boolean
      {
         if(this.§-3§ || !this.§#!7§())
         {
            return false;
         }
         this.§9!G§ = new Vector.<XML>();
         this.§^!$§ = 0;
         return true;
      }
      
      public function §"!M§(param1:XML) : void
      {
         if(this.§-3§ && this.§#!7§())
         {
            return;
         }
         this.§9!G§.push(param1);
         ++this.§^!$§;
      }
      
      public function §;!"§(param1:Function = null) : void
      {
         if(this.§-3§ && this.§#!7§())
         {
            return;
         }
         this.§,!M§ = param1;
         this.§^!$§ = this.§9!G§.length;
         this.§-3§ = true;
         this.§&!@§();
      }
      
      private function §&'§() : Boolean
      {
         if(this.§"!2§ && !this.§"!2§.§2!<§)
         {
            this.§"!2§.removeEventListener(Event.COMPLETE,this.§%-§);
            this.§"!2§.addEventListener(Event.COMPLETE,this.§%-§);
            return true;
         }
         return false;
      }
      
      private function §%-§(param1:Event) : void
      {
         this.§"!2§.removeEventListener(Event.COMPLETE,this.§%-§);
         this.§&!@§();
      }
      
      private function §&!@§() : void
      {
         if(this.§9!G§.length > 0)
         {
            this.§0!B§();
         }
         else if(this.§'e§() >= 1)
         {
            this.§!!5§();
         }
      }
      
      private function §0!B§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§-3§ && this.§#!7§())
         {
            if(this.§&'§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§'!K§ != null && this.§'!K§.length > 0)
            {
               _loc1_ = "?version=" + this.§'!K§;
            }
            this.§'C§ = 0;
            this.§;!#§ = this.§9!G§.shift();
            if(this.§;!#§.localName() == "pack")
            {
               _loc2_ = this.§,j§ + this.§;!#§.@url.toString();
               if(this.§2!=§)
               {
                  _loc2_ = this.§2!=§[_loc2_];
               }
               this.§"p§ = new URLLoader();
               this.§"p§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§"p§.addEventListener(Event.COMPLETE,this.§8!?§);
               this.§"p§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!8§);
               this.§"p§.addEventListener(ProgressEvent.PROGRESS,this.§3!L§);
               this.§'J§ = _loc2_ + _loc1_;
               this.§"p§.load(new URLRequest(this.§'J§));
            }
            else if(this.§;!#§.localName() == "xml")
            {
               this.§&!N§ = this.§;!#§.@name;
               this.§"p§ = new URLLoader();
               this.§"p§.addEventListener(Event.COMPLETE,this.§"y§);
               this.§"p§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!8§);
               this.§"p§.addEventListener(ProgressEvent.PROGRESS,this.§3!L§);
               this.§'J§ = this.§,j§ + this.§;!#§.@url.toString() + _loc1_;
               this.§"p§.load(new URLRequest(this.§'J§));
            }
            else
            {
               _loc3_ = this.§,j§ + this.§!F§ + this.§;!#§.@swf.toString();
               if(this.§2!=§)
               {
                  _loc3_ = this.§2!=§[_loc3_];
               }
               this.§7G§ = new Loader();
               this.§7G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^!>§);
               this.§7G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!8§);
               this.§7G§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§3!L§);
               this.§'J§ = _loc3_ + _loc1_;
               this.§7G§.load(new URLRequest(this.§'J§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!8§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§'J§;
         this.§^c§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§'J§,§#!&§.§-q§);
      }
      
      private function §"y§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§"p§.data);
         this.§8Y§[this.§&!N§] = _loc2_;
         this.§^c§();
         ++this.§<_§;
         this.§&!@§();
      }
      
      public function §9D§(param1:String) : XML
      {
         return this.§8Y§[param1];
      }
      
      private function §8!?§(param1:Event) : void
      {
         this.§2g§.push(this.§"p§.data);
         if(this.§@Q§ != null)
         {
            this.§@Q§(this.§"p§.data);
         }
         if(this.§"!2§)
         {
            this.§"!2§.§%4§(this.§"p§.data);
         }
         this.§^c§();
         ++this.§<_§;
         this.§&!@§();
      }
      
      private function §3!L§(param1:ProgressEvent) : void
      {
         this.§'C§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §^!>§(param1:Event) : void
      {
         this.§^c§();
         ++this.§<_§;
         this.§&!@§();
      }
      
      private function §^c§() : void
      {
         if(this.§7G§)
         {
            this.§7G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^!>§);
            this.§7G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!8§);
            this.§7G§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§3!L§);
            this.§7G§ = null;
         }
         if(this.§"p§)
         {
            this.§"p§.removeEventListener(Event.COMPLETE,this.§8!?§);
            this.§"p§.removeEventListener(Event.COMPLETE,this.§"y§);
            this.§"p§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!8§);
            this.§"p§.removeEventListener(ProgressEvent.PROGRESS,this.§3!L§);
            this.§"p§ = null;
         }
         this.§;!#§ = null;
      }
      
      private function §!!5§() : void
      {
         this.§'C§ = 0;
         if(this.§,!M§ != null)
         {
            this.§,!M§.call();
            this.§,!M§ = null;
         }
      }
      
      public function §=O§() : void
      {
         this.§'C§ = 0;
         this.§-3§ = false;
         this.§^!$§ = 0;
         if(this.§9!G§)
         {
            this.§9!G§ = null;
         }
         this.§,!M§ = null;
         this.§^c§();
      }
      
      public function §'e§() : Number
      {
         if(!this.§#!7§())
         {
            §2>§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-3§ || !this.§9!G§ || !this.§#!7§())
         {
            §2>§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§<_§ == this.§^!$§)
         {
            if(this.§"!2§ && this.§^!$§ > 0)
            {
               if(this.§"!2§.§2!<§)
               {
                  return 1;
               }
               return (this.§<_§ + this.§'C§ - 0.5) / this.§^!$§;
            }
            return 1;
         }
         return this.§<_§ / this.§^!$§;
      }
   }
}
