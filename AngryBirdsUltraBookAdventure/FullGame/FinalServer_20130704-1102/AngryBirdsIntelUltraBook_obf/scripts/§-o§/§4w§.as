package §-o§
{
   import §1!B§.§<m§;
   import §<-§.§"K§;
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
   
   public class §4w§
   {
      
      private static var §&F§:§4w§;
       
      
      private var §7!y§:Vector.<XML>;
      
      private var §+!C§:Boolean = false;
      
      private var §7!q§:int;
      
      private var §6! §:int;
      
      private var §;!^§:Function;
      
      private var §#2§:Function;
      
      private var §,!a§:Loader;
      
      private var §>n§:URLLoader;
      
      private var §='§:XML;
      
      private var §6!Z§:String = "";
      
      private var §0h§:int = 0;
      
      private var §&!p§:Vector.<String>;
      
      private var §9F§:String = "external_assets/LoadTest.swf";
      
      private var §]&§:Boolean = false;
      
      private var §,!5§:Array;
      
      private var § 6§:String;
      
      private var §`!f§:String;
      
      private var §,8§:Dictionary;
      
      private var §2Z§:String = "";
      
      private var §;""§:Number = 0;
      
      private var §[O§:String = "";
      
      private var §^!E§:§2!4§;
      
      private var §8a§:Object;
      
      public function §4w§()
      {
         this.§,!5§ = [];
         this.§,8§ = new Dictionary();
         super();
      }
      
      public static function get §[U§() : §4w§
      {
         if(!§&F§)
         {
            §&F§ = new §4w§();
         }
         return §&F§;
      }
      
      public static function §<!r§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §74§() : void
      {
         this.§,!5§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§2!4§, param5:Function = null, param6:String = "") : void
      {
         this.§ 6§ = param2;
         this.§`!f§ = param3;
         this.§]&§ = true;
         this.§+!C§ = false;
         this.§^!E§ = param4;
         this.§;!^§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§8a§ = JSON.parse(param6);
         }
      }
      
      private function §[y§() : void
      {
         this.§]&§ = true;
         this.§+!C§ = false;
      }
      
      public function §`q§() : Boolean
      {
         return this.§]&§;
      }
      
      public function §5@§() : Boolean
      {
         if(this.§+!C§ || !this.§`q§())
         {
            return false;
         }
         this.§7!y§ = new Vector.<XML>();
         this.§7!q§ = 0;
         return true;
      }
      
      public function §&!D§(param1:XML) : void
      {
         if(this.§+!C§ && this.§`q§())
         {
            return;
         }
         this.§7!y§.push(param1);
         ++this.§7!q§;
      }
      
      public function §!e§(param1:Function = null) : void
      {
         if(this.§+!C§ && this.§`q§())
         {
            return;
         }
         this.§#2§ = param1;
         this.§7!q§ = this.§7!y§.length;
         this.§+!C§ = true;
         this.§3!,§();
      }
      
      private function §<c§() : Boolean
      {
         if(this.§^!E§ && !this.§^!E§.§+<§)
         {
            this.§^!E§.removeEventListener(Event.COMPLETE,this.§1I§);
            this.§^!E§.addEventListener(Event.COMPLETE,this.§1I§);
            return true;
         }
         return false;
      }
      
      private function §1I§(param1:Event) : void
      {
         this.§^!E§.removeEventListener(Event.COMPLETE,this.§1I§);
         this.§3!,§();
      }
      
      private function §3!,§() : void
      {
         if(this.§7!y§.length > 0)
         {
            this.§@K§();
         }
         else if(this.§=!^§() >= 1)
         {
            this.§3l§();
         }
      }
      
      private function §@K§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§+!C§ && this.§`q§())
         {
            if(this.§<c§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§`!f§ != null && this.§`!f§.length > 0)
            {
               _loc1_ = "?version=" + this.§`!f§;
            }
            this.§;""§ = 0;
            this.§='§ = this.§7!y§.shift();
            if(this.§='§.localName() == "pack")
            {
               _loc2_ = this.§ 6§ + this.§='§.@url.toString();
               if(this.§8a§)
               {
                  _loc2_ = this.§8a§[_loc2_];
               }
               this.§>n§ = new URLLoader();
               this.§>n§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§>n§.addEventListener(Event.COMPLETE,this.§"!n§);
               this.§>n§.addEventListener(IOErrorEvent.IO_ERROR,this.§7A§);
               this.§>n§.addEventListener(ProgressEvent.PROGRESS,this.§%!v§);
               this.§[O§ = _loc2_ + _loc1_;
               this.§>n§.load(new URLRequest(this.§[O§));
            }
            else if(this.§='§.localName() == "xml")
            {
               this.§2Z§ = this.§='§.@name;
               this.§>n§ = new URLLoader();
               this.§>n§.addEventListener(Event.COMPLETE,this.§&!a§);
               this.§>n§.addEventListener(IOErrorEvent.IO_ERROR,this.§7A§);
               this.§>n§.addEventListener(ProgressEvent.PROGRESS,this.§%!v§);
               this.§[O§ = this.§ 6§ + this.§='§.@url.toString() + _loc1_;
               this.§>n§.load(new URLRequest(this.§[O§));
            }
            else
            {
               _loc3_ = this.§ 6§ + this.§6!Z§ + this.§='§.@swf.toString();
               if(this.§8a§)
               {
                  _loc3_ = this.§8a§[_loc3_];
               }
               this.§,!a§ = new Loader();
               this.§,!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§79§);
               this.§,!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§7A§);
               this.§,!a§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§%!v§);
               this.§[O§ = _loc3_ + _loc1_;
               this.§,!a§.load(new URLRequest(this.§[O§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §7A§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§[O§;
         this.§`P§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§[O§,§"K§.§![§);
      }
      
      private function §&!a§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§>n§.data);
         this.§,8§[this.§2Z§] = _loc2_;
         this.§`P§();
         ++this.§6! §;
         this.§3!,§();
      }
      
      public function §^!v§(param1:String) : XML
      {
         return this.§,8§[param1];
      }
      
      private function §"!n§(param1:Event) : void
      {
         this.§,!5§.push(this.§>n§.data);
         if(this.§;!^§ != null)
         {
            this.§;!^§(this.§>n§.data);
         }
         if(this.§^!E§)
         {
            this.§^!E§.§?O§(this.§>n§.data);
         }
         this.§`P§();
         ++this.§6! §;
         this.§3!,§();
      }
      
      private function §%!v§(param1:ProgressEvent) : void
      {
         this.§;""§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §79§(param1:Event) : void
      {
         this.§`P§();
         ++this.§6! §;
         this.§3!,§();
      }
      
      private function §`P§() : void
      {
         if(this.§,!a§)
         {
            this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§79§);
            this.§,!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§7A§);
            this.§,!a§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§%!v§);
            this.§,!a§ = null;
         }
         if(this.§>n§)
         {
            this.§>n§.removeEventListener(Event.COMPLETE,this.§"!n§);
            this.§>n§.removeEventListener(Event.COMPLETE,this.§&!a§);
            this.§>n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7A§);
            this.§>n§.removeEventListener(ProgressEvent.PROGRESS,this.§%!v§);
            this.§>n§ = null;
         }
         this.§='§ = null;
      }
      
      private function §3l§() : void
      {
         this.§;""§ = 0;
         if(this.§#2§ != null)
         {
            this.§#2§.call();
            this.§#2§ = null;
         }
      }
      
      public function §]!@§() : void
      {
         this.§;""§ = 0;
         this.§+!C§ = false;
         this.§7!q§ = 0;
         if(this.§7!y§)
         {
            this.§7!y§ = null;
         }
         this.§#2§ = null;
         this.§`P§();
      }
      
      public function §=!^§() : Number
      {
         if(!this.§`q§())
         {
            §<m§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§+!C§ || !this.§7!y§ || !this.§`q§())
         {
            §<m§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§6! § == this.§7!q§)
         {
            if(this.§^!E§ && this.§7!q§ > 0)
            {
               if(this.§^!E§.§+<§)
               {
                  return 1;
               }
               return (this.§6! § + this.§;""§ - 0.5) / this.§7!q§;
            }
            return 1;
         }
         return this.§6! § / this.§7!q§;
      }
   }
}
