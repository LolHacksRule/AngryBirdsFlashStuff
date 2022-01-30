package §^!D§
{
   import §&!&§.§!p§;
   import §9!G§.§]!e§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;^§
   {
      
      private static var §,5§:§;^§;
       
      
      private var §5!"§:Vector.<XML>;
      
      private var §?" §:Boolean = false;
      
      private var §#"'§:int;
      
      private var §'!X§:int;
      
      private var §>!s§:Function;
      
      private var §4!y§:Function;
      
      private var §?Q§:Loader;
      
      private var §^!9§:URLLoader;
      
      private var §%!0§:XML;
      
      private var §7y§:String = "";
      
      private var §>W§:int = 0;
      
      private var §#!N§:Vector.<String>;
      
      private var §1e§:String = "external_assets/LoadTest.swf";
      
      private var §7!"§:Boolean = false;
      
      private var §9a§:Array;
      
      private var §4!,§:String;
      
      private var §>"§:String;
      
      private var §[!j§:Number = 0;
      
      private var §%"3§:String = "";
      
      private var §>!F§:§#;§;
      
      public function §;^§()
      {
         this.§9a§ = [];
         super();
      }
      
      public static function get §,l§() : §;^§
      {
         if(!§,5§)
         {
            §,5§ = new §;^§();
         }
         return §,5§;
      }
      
      public static function §&6§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §0w§() : void
      {
         this.§9a§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§#;§, param5:Function = null) : void
      {
         this.§4!,§ = param2;
         this.§>"§ = param3;
         this.§7!"§ = true;
         this.§?" § = false;
         this.§>!F§ = param4;
         this.§>!s§ = param5;
      }
      
      private function §<"9§() : void
      {
         this.§7!"§ = true;
         this.§?" § = false;
      }
      
      public function §#!6§() : Boolean
      {
         return this.§7!"§;
      }
      
      public function §[x§() : Boolean
      {
         if(this.§?" § || !this.§#!6§())
         {
            return false;
         }
         this.§5!"§ = new Vector.<XML>();
         this.§#"'§ = 0;
         return true;
      }
      
      public function §%A§(param1:XML) : void
      {
         if(this.§?" § && this.§#!6§())
         {
            return;
         }
         this.§5!"§.push(param1);
         ++this.§#"'§;
      }
      
      public function §6i§(param1:Function = null) : void
      {
         if(this.§?" § && this.§#!6§())
         {
            return;
         }
         this.§4!y§ = param1;
         this.§#"'§ = this.§5!"§.length;
         this.§?" § = true;
         this.§@!'§();
      }
      
      private function §class§() : Boolean
      {
         if(this.§>!F§ && !this.§>!F§.§'!4§)
         {
            this.§>!F§.removeEventListener(Event.COMPLETE,this.§%!M§);
            this.§>!F§.addEventListener(Event.COMPLETE,this.§%!M§);
            return true;
         }
         return false;
      }
      
      private function §%!M§(param1:Event) : void
      {
         this.§>!F§.removeEventListener(Event.COMPLETE,this.§%!M§);
         this.§@!'§();
      }
      
      private function §@!'§() : void
      {
         if(this.§5!"§.length > 0)
         {
            this.§#!c§();
         }
         else if(this.§&!X§() >= 1)
         {
            this.§]!%§();
         }
      }
      
      private function §#!c§() : void
      {
         var _loc1_:String = null;
         if(this.§?" § && this.§#!6§())
         {
            if(this.§class§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>"§ != null && this.§>"§.length > 0)
            {
               _loc1_ = "?version=" + this.§>"§;
            }
            this.§[!j§ = 0;
            this.§%!0§ = this.§5!"§.shift();
            if(this.§%!0§.localName() == "pack")
            {
               this.§^!9§ = new URLLoader();
               this.§^!9§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§^!9§.addEventListener(Event.COMPLETE,this.§ !;§);
               this.§^!9§.addEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
               this.§^!9§.addEventListener(ProgressEvent.PROGRESS,this.§'"1§);
               this.§%"3§ = this.§4!,§ + this.§%!0§.@url.toString() + _loc1_;
               this.§^!9§.load(new URLRequest(this.§%"3§));
            }
            else
            {
               this.§?Q§ = new Loader();
               this.§?Q§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!>§);
               this.§?Q§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
               this.§?Q§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§'"1§);
               this.§%"3§ = this.§4!,§ + this.§7y§ + this.§%!0§.@swf.toString() + _loc1_;
               this.§?Q§.load(new URLRequest(this.§%"3§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §]4§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§%"3§;
         this.§@b§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§%"3§,§!p§.§;!H§);
      }
      
      private function § !;§(param1:Event) : void
      {
         this.§9a§.push(this.§^!9§.data);
         if(this.§>!s§ != null)
         {
            this.§>!s§(this.§^!9§.data);
         }
         if(this.§>!F§)
         {
            this.§>!F§.§'8§(this.§^!9§.data);
         }
         this.§@b§();
         ++this.§'!X§;
         this.§@!'§();
      }
      
      private function §'"1§(param1:ProgressEvent) : void
      {
         this.§[!j§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §!>§(param1:Event) : void
      {
         this.§@b§();
         ++this.§'!X§;
         this.§@!'§();
      }
      
      private function §@b§() : void
      {
         if(this.§?Q§)
         {
            this.§?Q§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!>§);
            this.§?Q§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
            this.§?Q§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!>§);
            this.§?Q§ = null;
         }
         if(this.§^!9§)
         {
            this.§^!9§.removeEventListener(Event.COMPLETE,this.§ !;§);
            this.§^!9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]4§);
            this.§^!9§.removeEventListener(ProgressEvent.PROGRESS,this.§'"1§);
            this.§^!9§ = null;
         }
         this.§%!0§ = null;
      }
      
      private function §]!%§() : void
      {
         this.§[!j§ = 0;
         if(this.§4!y§ != null)
         {
            this.§4!y§.call();
            this.§4!y§ = null;
         }
      }
      
      public function §5!I§() : void
      {
         this.§[!j§ = 0;
         this.§?" § = false;
         this.§#"'§ = 0;
         if(this.§5!"§)
         {
            this.§5!"§ = null;
         }
         this.§4!y§ = null;
         this.§@b§();
      }
      
      public function §&!X§() : Number
      {
         if(!this.§#!6§())
         {
            §]!e§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§?" § || !this.§5!"§ || !this.§#!6§())
         {
            §]!e§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§'!X§ == this.§#"'§)
         {
            if(this.§>!F§ && this.§#"'§ > 0)
            {
               if(this.§>!F§.§'!4§)
               {
                  return 1;
               }
               return (this.§'!X§ + this.§[!j§ - 0.5) / this.§#"'§;
            }
            return 1;
         }
         return this.§'!X§ / this.§#"'§;
      }
   }
}
