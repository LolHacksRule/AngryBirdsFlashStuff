package §@[§
{
   import §+d§.§2!g§;
   import §+d§.§8#&§;
   import §9"`§.§-"H§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §0"C§
   {
      
      private static var §7o§:§0"C§;
       
      
      private var §&g§:Vector.<XML>;
      
      private var §;"x§:Boolean = false;
      
      private var §4!$§:int;
      
      private var §7!"§:int;
      
      private var §2#6§:Function;
      
      private var §6"E§:Function;
      
      private var §&K§:Loader;
      
      private var §3$§:URLLoader;
      
      private var §?"q§:XML;
      
      private var §""+§:Vector.<String>;
      
      private var §""4§:String = "external_assets/LoadTest.swf";
      
      private var §#K§:Boolean = false;
      
      private var §5O§:Array;
      
      private var §@`§:String;
      
      private var §^g§:String;
      
      private var §8"4§:§2!g§;
      
      private var §]!6§:String = "";
      
      private var §4"@§:Number = 0;
      
      private var §4#5§:String = "";
      
      private var §2"z§:§1^§;
      
      public function §0"C§()
      {
         this.§5O§ = [];
         this.§8"4§ = new §2!g§();
         super();
      }
      
      public static function get §!6§() : §0"C§
      {
         if(!§7o§)
         {
            §7o§ = new §0"C§();
         }
         return §7o§;
      }
      
      public static function §2!<§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §1!6§() : void
      {
         this.§5O§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§1^§, param5:Function = null) : void
      {
         this.§@`§ = param2;
         this.§^g§ = param3;
         this.§#K§ = true;
         this.§;"x§ = false;
         this.§2"z§ = param4;
         this.§2#6§ = param5;
      }
      
      private function §1"E§() : void
      {
         this.§#K§ = true;
         this.§;"x§ = false;
      }
      
      public function §0z§() : Boolean
      {
         return this.§#K§;
      }
      
      public function §^"@§() : Boolean
      {
         if(this.§;"x§ || !this.§0z§())
         {
            return false;
         }
         this.§&g§ = new Vector.<XML>();
         this.§4!$§ = 0;
         return true;
      }
      
      public function §1!'§(param1:XML) : void
      {
         if(this.§;"x§ && this.§0z§())
         {
            return;
         }
         this.§&g§.push(param1);
         ++this.§4!$§;
      }
      
      public function §1S§(param1:Function = null) : void
      {
         if(this.§;"x§ && this.§0z§())
         {
            return;
         }
         this.§6"E§ = param1;
         this.§4!$§ = this.§&g§.length;
         this.§7!"§ = 0;
         this.§;"x§ = true;
         this.§,!&§();
      }
      
      private function §,"C§() : Boolean
      {
         if(this.§2"z§ && !this.§2"z§.§-^§)
         {
            this.§2"z§.removeEventListener(Event.COMPLETE,this.§[#4§);
            this.§2"z§.addEventListener(Event.COMPLETE,this.§[#4§);
            return true;
         }
         return false;
      }
      
      private function §[#4§(param1:Event) : void
      {
         this.§2"z§.removeEventListener(Event.COMPLETE,this.§[#4§);
         this.§,!&§();
      }
      
      private function §,!&§() : void
      {
         if(!this.§&g§)
         {
            return;
         }
         if(this.§&g§.length > 0)
         {
            this.§8!P§();
         }
         else if(this.§<!q§() >= 1)
         {
            this.§91§();
         }
         else
         {
            this.§,"C§();
         }
      }
      
      private function §8!P§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§;"x§ && this.§0z§())
         {
            if(this.§,"C§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§^g§ != null && this.§^g§.length > 0)
            {
               _loc1_ = "?version=" + this.§^g§;
            }
            this.§4"@§ = 0;
            this.§?"q§ = this.§&g§.shift();
            if(this.§?"q§.localName() == "pack")
            {
               _loc2_ = this.§?"q§.@url.toString();
               _loc2_ = §4"o§.§!6§.§^"X§(_loc2_);
               this.§3$§ = new URLLoader();
               this.§3$§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§3$§.addEventListener(Event.COMPLETE,this.§,"_§);
               this.§3$§.addEventListener(IOErrorEvent.IO_ERROR,this.§%A§);
               this.§3$§.addEventListener(ProgressEvent.PROGRESS,this.§]![§);
               this.§4#5§ = this.§@`§ + _loc2_ + _loc1_;
               this.§3$§.load(new URLRequest(this.§4#5§));
            }
            else if(this.§?"q§.localName() == "xml")
            {
               _loc3_ = this.§?"q§.@url.toString();
               _loc3_ = §4"o§.§!6§.§^"X§(_loc3_);
               this.§]!6§ = this.§?"q§.@name;
               this.§3$§ = new URLLoader();
               this.§3$§.addEventListener(Event.COMPLETE,this.§]"]§);
               this.§3$§.addEventListener(IOErrorEvent.IO_ERROR,this.§%A§);
               this.§3$§.addEventListener(ProgressEvent.PROGRESS,this.§]![§);
               this.§4#5§ = this.§@`§ + _loc3_ + _loc1_;
               this.§3$§.load(new URLRequest(this.§4#5§));
            }
            else
            {
               _loc4_ = this.§?"q§.@swf.toString();
               _loc4_ = §4"o§.§!6§.§^"X§(_loc4_);
               this.§&K§ = new Loader();
               this.§&K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?#1§);
               this.§&K§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%A§);
               this.§&K§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§]![§);
               this.§4#5§ = this.§@`§ + _loc4_ + _loc1_;
               this.§&K§.load(new URLRequest(this.§4#5§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%A§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4#5§;
         this.§9!F§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4#5§,§8#&§.§&"?§);
      }
      
      private function §]"]§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§3$§.data);
         this.§8"4§[this.§]!6§] = _loc2_;
         this.§9!F§();
         ++this.§7!"§;
         this.§,!&§();
      }
      
      public function §""i§(param1:String) : XML
      {
         return this.§8"4§[param1];
      }
      
      private function §,"_§(param1:Event) : void
      {
         this.§5O§.push(this.§3$§.data);
         if(this.§2#6§ != null)
         {
            this.§2#6§(this.§3$§.data);
         }
         if(this.§2"z§)
         {
            this.§2"z§.§-"@§(this.§3$§.data,this.§6A§(this.§?"q§.@url));
         }
         this.§9!F§();
         ++this.§7!"§;
         this.§,!&§();
      }
      
      private function §6A§(param1:String) : String
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
      
      private function §]![§(param1:ProgressEvent) : void
      {
         this.§4"@§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?#1§(param1:Event) : void
      {
         this.§9!F§();
         ++this.§7!"§;
         this.§,!&§();
      }
      
      private function §9!F§() : void
      {
         if(this.§&K§)
         {
            this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?#1§);
            this.§&K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%A§);
            this.§&K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?#1§);
            this.§&K§ = null;
         }
         if(this.§3$§)
         {
            this.§3$§.removeEventListener(Event.COMPLETE,this.§,"_§);
            this.§3$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%A§);
            this.§3$§.removeEventListener(ProgressEvent.PROGRESS,this.§]![§);
            this.§3$§ = null;
         }
         this.§?"q§ = null;
      }
      
      private function §91§() : void
      {
         this.§4"@§ = 0;
         if(this.§6"E§ != null)
         {
            this.§6"E§.call();
            this.§6"E§ = null;
         }
      }
      
      public function §>"h§() : void
      {
         this.§4"@§ = 0;
         this.§;"x§ = false;
         this.§4!$§ = 0;
         if(this.§&g§)
         {
            this.§&g§ = null;
         }
         this.§6"E§ = null;
         this.§9!F§();
         if(this.§2"z§)
         {
            this.§2"z§.§>"h§();
         }
      }
      
      public function §<!q§() : Number
      {
         if(!this.§0z§())
         {
            §-"H§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;"x§ || !this.§&g§ || !this.§0z§())
         {
            §-"H§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§7!"§ == this.§4!$§)
         {
            if(this.§2"z§ && this.§4!$§ > 0)
            {
               if(this.§2"z§.§-^§)
               {
                  return 1;
               }
               return (this.§7!"§ - 0.1) / this.§4!$§;
            }
            return 1;
         }
         return this.§7!"§ / this.§4!$§;
      }
   }
}
