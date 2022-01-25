package §-$§
{
   import §#!q§.§!!"§;
   import §0i§.§4!%§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §!!h§
   {
      
      private static var §5! §:§!!h§;
       
      
      private var §8!!§:Vector.<XML>;
      
      private var §;!5§:Boolean = false;
      
      private var §2!B§:int;
      
      private var §3! §:int;
      
      private var §4!J§:Function;
      
      private var §1! §:Function;
      
      private var §@![§:Loader;
      
      private var §"I§:URLLoader;
      
      private var §!m§:XML;
      
      private var §[!7§:String = "";
      
      private var §-!g§:int = 0;
      
      private var §>!M§:Vector.<String>;
      
      private var §4D§:String = "external_assets/LoadTest.swf";
      
      private var §&A§:Boolean = false;
      
      private var § K§:Array;
      
      private var §0G§:String;
      
      private var §,!p§:String;
      
      private var §+!h§:Number = 0;
      
      private var §[j§:String = "";
      
      private var §"!-§:§1!2§;
      
      public function §!!h§()
      {
         this.§ K§ = [];
         super();
      }
      
      public static function get §9$§() : §!!h§
      {
         if(!§5! §)
         {
            §5! § = new §!!h§();
         }
         return §5! §;
      }
      
      public static function §?!%§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §&8§() : void
      {
         this.§ K§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§1!2§, param5:Function = null) : void
      {
         this.§0G§ = param2;
         this.§,!p§ = param3;
         this.§&A§ = true;
         this.§;!5§ = false;
         this.§"!-§ = param4;
         this.§4!J§ = param5;
      }
      
      private function §4L§() : void
      {
         this.§&A§ = true;
         this.§;!5§ = false;
      }
      
      public function §^+§() : Boolean
      {
         return this.§&A§;
      }
      
      public function §]!V§() : Boolean
      {
         if(this.§;!5§ || !this.§^+§())
         {
            return false;
         }
         this.§8!!§ = new Vector.<XML>();
         this.§2!B§ = 0;
         return true;
      }
      
      public function §?!F§(param1:XML) : void
      {
         if(this.§;!5§ && this.§^+§())
         {
            return;
         }
         this.§8!!§.push(param1);
         ++this.§2!B§;
      }
      
      public function §?2§(param1:Function = null) : void
      {
         if(this.§;!5§ && this.§^+§())
         {
            return;
         }
         this.§1! § = param1;
         this.§2!B§ = this.§8!!§.length;
         this.§;!5§ = true;
         this.§[Q§();
      }
      
      private function §[7§() : Boolean
      {
         if(this.§"!-§ && !this.§"!-§.§!!>§)
         {
            this.§"!-§.removeEventListener(Event.COMPLETE,this.§&J§);
            this.§"!-§.addEventListener(Event.COMPLETE,this.§&J§);
            return true;
         }
         return false;
      }
      
      private function §&J§(param1:Event) : void
      {
         this.§"!-§.removeEventListener(Event.COMPLETE,this.§&J§);
         this.§[Q§();
      }
      
      private function §[Q§() : void
      {
         if(this.§8!!§.length > 0)
         {
            this.§4!5§();
         }
         else if(this.§<!Z§() >= 1)
         {
            this.§'!g§();
         }
      }
      
      private function §4!5§() : void
      {
         var _loc1_:String = null;
         if(this.§;!5§ && this.§^+§())
         {
            if(this.§[7§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§,!p§ != null && this.§,!p§.length > 0)
            {
               _loc1_ = "?version=" + this.§,!p§;
            }
            this.§+!h§ = 0;
            this.§!m§ = this.§8!!§.shift();
            if(this.§!m§.localName() == "pack")
            {
               this.§"I§ = new URLLoader();
               this.§"I§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§"I§.addEventListener(Event.COMPLETE,this.§>>§);
               this.§"I§.addEventListener(IOErrorEvent.IO_ERROR,this.§;c§);
               this.§"I§.addEventListener(ProgressEvent.PROGRESS,this.§#!!§);
               this.§[j§ = this.§0G§ + this.§!m§.@url.toString() + _loc1_;
               this.§"I§.load(new URLRequest(this.§[j§));
            }
            else
            {
               this.§@![§ = new Loader();
               this.§@![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^!^§);
               this.§@![§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§;c§);
               this.§@![§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§#!!§);
               this.§[j§ = this.§0G§ + this.§[!7§ + this.§!m§.@swf.toString() + _loc1_;
               this.§@![§.load(new URLRequest(this.§[j§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §;c§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§[j§;
         this.§`!E§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§[j§,§!!"§.§]!T§);
      }
      
      private function §>>§(param1:Event) : void
      {
         this.§ K§.push(this.§"I§.data);
         if(this.§4!J§ != null)
         {
            this.§4!J§(this.§"I§.data);
         }
         if(this.§"!-§)
         {
            this.§"!-§.§>p§(this.§"I§.data);
         }
         this.§`!E§();
         ++this.§3! §;
         this.§[Q§();
      }
      
      private function §#!!§(param1:ProgressEvent) : void
      {
         this.§+!h§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §^!^§(param1:Event) : void
      {
         this.§`!E§();
         ++this.§3! §;
         this.§[Q§();
      }
      
      private function §`!E§() : void
      {
         if(this.§@![§)
         {
            this.§@![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^!^§);
            this.§@![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;c§);
            this.§@![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^!^§);
            this.§@![§ = null;
         }
         if(this.§"I§)
         {
            this.§"I§.removeEventListener(Event.COMPLETE,this.§>>§);
            this.§"I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;c§);
            this.§"I§.removeEventListener(ProgressEvent.PROGRESS,this.§#!!§);
            this.§"I§ = null;
         }
         this.§!m§ = null;
      }
      
      private function §'!g§() : void
      {
         this.§+!h§ = 0;
         if(this.§1! § != null)
         {
            this.§1! §.call();
            this.§1! § = null;
         }
      }
      
      public function §=a§() : void
      {
         this.§+!h§ = 0;
         this.§;!5§ = false;
         this.§2!B§ = 0;
         if(this.§8!!§)
         {
            this.§8!!§ = null;
         }
         this.§1! § = null;
         this.§`!E§();
      }
      
      public function §<!Z§() : Number
      {
         if(!this.§^+§())
         {
            §4!%§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;!5§ || !this.§8!!§ || !this.§^+§())
         {
            §4!%§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3! § == this.§2!B§)
         {
            if(this.§"!-§ && this.§2!B§ > 0)
            {
               if(this.§"!-§.§!!>§)
               {
                  return 1;
               }
               return (this.§3! § + this.§+!h§ - 0.5) / this.§2!B§;
            }
            return 1;
         }
         return this.§3! § / this.§2!B§;
      }
   }
}
