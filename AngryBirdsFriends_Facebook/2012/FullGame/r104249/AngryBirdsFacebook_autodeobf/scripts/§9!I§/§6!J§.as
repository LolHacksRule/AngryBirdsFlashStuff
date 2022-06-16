package §9!I§
{
   import §%!'§.§8o§;
   import §[x§.§%3§;
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
   
   public class §6!J§
   {
      
      private static var §`"$§:§6!J§;
       
      
      private var §?p§:Vector.<XML>;
      
      private var §<"1§:Boolean = false;
      
      private var §2v§:int;
      
      private var §#P§:int;
      
      private var §@!<§:Function;
      
      private var §9"?§:Function;
      
      private var §?"<§:Loader;
      
      private var §#"G§:URLLoader;
      
      private var §^!F§:XML;
      
      private var §<w§:String = "";
      
      private var §#!?§:int = 0;
      
      private var §+"'§:Vector.<String>;
      
      private var §]?§:String = "external_assets/LoadTest.swf";
      
      private var §5!4§:Boolean = false;
      
      private var §4U§:Array;
      
      private var §!A§:String;
      
      private var §"0§:String;
      
      private var §0k§:Dictionary;
      
      private var §#J§:String = "";
      
      private var §="!§:Number = 0;
      
      private var §1!§:String = "";
      
      private var §2"5§:§@5§;
      
      private var §9N§:Object;
      
      public function §6!J§()
      {
         this.§4U§ = [];
         this.§0k§ = new Dictionary();
         super();
      }
      
      public static function get §1[§() : §6!J§
      {
         if(!§`"$§)
         {
            §`"$§ = new §6!J§();
         }
         return §`"$§;
      }
      
      public static function §5"$§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-7§() : void
      {
         this.§4U§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§@5§, param5:Function = null, param6:String = "") : void
      {
         this.§!A§ = param2;
         this.§"0§ = param3;
         this.§5!4§ = true;
         this.§<"1§ = false;
         this.§2"5§ = param4;
         this.§@!<§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§9N§ = JSON.parse(param6);
         }
      }
      
      private function §+"2§() : void
      {
         this.§5!4§ = true;
         this.§<"1§ = false;
      }
      
      public function §?"B§() : Boolean
      {
         return this.§5!4§;
      }
      
      public function §@!%§() : Boolean
      {
         if(this.§<"1§ || !this.§?"B§())
         {
            return false;
         }
         this.§?p§ = new Vector.<XML>();
         this.§2v§ = 0;
         return true;
      }
      
      public function §1!u§(param1:XML) : void
      {
         if(this.§<"1§ && this.§?"B§())
         {
            return;
         }
         this.§?p§.push(param1);
         ++this.§2v§;
      }
      
      public function §;!'§(param1:Function = null) : void
      {
         if(this.§<"1§ && this.§?"B§())
         {
            return;
         }
         this.§9"?§ = param1;
         this.§2v§ = this.§?p§.length;
         this.§<"1§ = true;
         this.§7"4§();
      }
      
      private function §<i§() : Boolean
      {
         if(this.§2"5§ && !this.§2"5§.§<N§)
         {
            this.§2"5§.removeEventListener(Event.COMPLETE,this.§="6§);
            this.§2"5§.addEventListener(Event.COMPLETE,this.§="6§);
            return true;
         }
         return false;
      }
      
      private function §="6§(param1:Event) : void
      {
         this.§2"5§.removeEventListener(Event.COMPLETE,this.§="6§);
         this.§7"4§();
      }
      
      private function §7"4§() : void
      {
         if(this.§?p§.length > 0)
         {
            this.§5!L§();
         }
         else if(this.§;"$§() >= 1)
         {
            this.§5z§();
         }
      }
      
      private function §5!L§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§<"1§ && this.§?"B§())
         {
            if(this.§<i§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§"0§ != null && this.§"0§.length > 0)
            {
               _loc1_ = "?version=" + this.§"0§;
            }
            this.§="!§ = 0;
            this.§^!F§ = this.§?p§.shift();
            if(this.§^!F§.localName() == "pack")
            {
               _loc2_ = this.§!A§ + this.§^!F§.@url.toString();
               if(this.§9N§)
               {
                  _loc2_ = this.§9N§[_loc2_];
               }
               this.§#"G§ = new URLLoader();
               this.§#"G§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§#"G§.addEventListener(Event.COMPLETE,this.§2"'§);
               this.§#"G§.addEventListener(IOErrorEvent.IO_ERROR,this.§6"§);
               this.§#"G§.addEventListener(ProgressEvent.PROGRESS,this.§'!f§);
               this.§1!§ = _loc2_ + _loc1_;
               this.§#"G§.load(new URLRequest(this.§1!§));
            }
            else if(this.§^!F§.localName() == "xml")
            {
               this.§#J§ = this.§^!F§.@name;
               this.§#"G§ = new URLLoader();
               this.§#"G§.addEventListener(Event.COMPLETE,this.§0Y§);
               this.§#"G§.addEventListener(IOErrorEvent.IO_ERROR,this.§6"§);
               this.§#"G§.addEventListener(ProgressEvent.PROGRESS,this.§'!f§);
               this.§1!§ = this.§!A§ + this.§^!F§.@url.toString() + _loc1_;
               this.§#"G§.load(new URLRequest(this.§1!§));
            }
            else
            {
               _loc3_ = this.§!A§ + this.§<w§ + this.§^!F§.@swf.toString();
               if(this.§9N§)
               {
                  _loc3_ = this.§9N§[_loc3_];
               }
               this.§?"<§ = new Loader();
               this.§?"<§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2!"§);
               this.§?"<§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6"§);
               this.§?"<§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§'!f§);
               this.§1!§ = _loc3_ + _loc1_;
               this.§?"<§.load(new URLRequest(this.§1!§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §6"§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1!§;
         this.§8![§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1!§,§8o§.§7!0§);
      }
      
      private function §0Y§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§#"G§.data);
         this.§0k§[this.§#J§] = _loc2_;
         this.§8![§();
         ++this.§#P§;
         this.§7"4§();
      }
      
      public function §?!]§(param1:String) : XML
      {
         return this.§0k§[param1];
      }
      
      private function §2"'§(param1:Event) : void
      {
         this.§4U§.push(this.§#"G§.data);
         if(this.§@!<§ != null)
         {
            this.§@!<§(this.§#"G§.data);
         }
         if(this.§2"5§)
         {
            this.§2"5§.§>x§(this.§#"G§.data);
         }
         this.§8![§();
         ++this.§#P§;
         this.§7"4§();
      }
      
      private function §'!f§(param1:ProgressEvent) : void
      {
         this.§="!§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2!"§(param1:Event) : void
      {
         this.§8![§();
         ++this.§#P§;
         this.§7"4§();
      }
      
      private function §8![§() : void
      {
         if(this.§?"<§)
         {
            this.§?"<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!"§);
            this.§?"<§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6"§);
            this.§?"<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!"§);
            this.§?"<§ = null;
         }
         if(this.§#"G§)
         {
            this.§#"G§.removeEventListener(Event.COMPLETE,this.§2"'§);
            this.§#"G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6"§);
            this.§#"G§.removeEventListener(ProgressEvent.PROGRESS,this.§'!f§);
            this.§#"G§ = null;
         }
         this.§^!F§ = null;
      }
      
      private function §5z§() : void
      {
         this.§="!§ = 0;
         if(this.§9"?§ != null)
         {
            this.§9"?§.call();
            this.§9"?§ = null;
         }
      }
      
      public function §8,§() : void
      {
         this.§="!§ = 0;
         this.§<"1§ = false;
         this.§2v§ = 0;
         if(this.§?p§)
         {
            this.§?p§ = null;
         }
         this.§9"?§ = null;
         this.§8![§();
      }
      
      public function §;"$§() : Number
      {
         if(!this.§?"B§())
         {
            §%3§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§<"1§ || !this.§?p§ || !this.§?"B§())
         {
            §%3§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§#P§ == this.§2v§)
         {
            if(this.§2"5§ && this.§2v§ > 0)
            {
               if(this.§2"5§.§<N§)
               {
                  return 1;
               }
               return (this.§#P§ + this.§="!§ - 0.5) / this.§2v§;
            }
            return 1;
         }
         return this.§#P§ / this.§2v§;
      }
   }
}
