package §9#o§
{
   import §>"9§.§[#%§;
   import §>"Q§.§7"2§;
   import §^"[§.§=#;§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §=!=§ extends EventDispatcher
   {
       
      
      private var §^;§:String = "";
      
      private var §8"l§:String;
      
      private var §=$@§:Dictionary;
      
      private var §^"g§:Vector.<String>;
      
      private var §3"&§:String = null;
      
      private var §"#u§:String = null;
      
      private var §`!y§:Array;
      
      private var §5#]§:String = null;
      
      private var §6t§:Array;
      
      private var §7"w§:Array;
      
      private var §<U§:Boolean;
      
      private var §[!z§:String = null;
      
      private var §1V§:Array;
      
      private var §,">§:URLLoader;
      
      protected var §`"z§:§5@§;
      
      protected var §2!b§:§=#;§;
      
      protected var §&!"§:Vector.<§=#;§>;
      
      private var §=$?§:String = "pak";
      
      private var §,#7§:Boolean = true;
      
      private var §@!E§:int = 1;
      
      public function §=!=§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=$@§ = new Dictionary();
         this.§^"g§ = new Vector.<String>();
         this.§`!y§ = [];
         this.§6t§ = [];
         this.§7"w§ = [];
         this.§1V§ = [];
         this.§&!"§ = new Vector.<§=#;§>();
         super();
         this.§^;§ = param2;
         this.§8"l§ = param1;
         this.§,#7§ = param3;
         this.§@!E§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §=#;§
      {
         return this.§2!b§;
      }
      
      private function §1F§(param1:String) : Boolean
      {
         var _loc3_:§=#;§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!"§.length)
         {
            _loc3_ = this.§&!"§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§2!b§ = _loc3_;
               this.§3"&§ = param1;
               this.§&!"§.splice(_loc2_,1);
               this.§&!"§.unshift(this.§2!b§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § for§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=$@§[param1] != null;
      }
      
      public function §"#H§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§,!j§(_loc2_);
            if(!this.§ for§(_loc3_))
            {
               if(§[#%§.§+"&§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §,%§(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.§0"§())
         {
            if(!this.§8#1§())
            {
               this.§[!z§ = param1;
               this.§1V§ = param2.concat();
               return;
            }
         }
         this.§"#u§ = param1;
         if(this.§"#H§(param2))
         {
            this.§1F§(param1);
            if(param1 == this.§3"&§ || !this.§,#7§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§@$;§(param2);
            }
         }
         else
         {
            this.§9#s§(param2);
         }
      }
      
      private function §6"z§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §,!j§(param1:Object) : String
      {
         var _loc2_:String = null;
         if(param1 is XML)
         {
            _loc2_ = (param1 as XML).@url;
         }
         else
         {
            _loc2_ = String(param1);
         }
         return _loc2_;
      }
      
      private function §#=§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§7"w§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§,!j§(_loc2_);
            if(!this.§ for§(_loc3_))
            {
               this.§7"w§.push(_loc2_);
            }
         }
      }
      
      private function §9#s§(param1:Array) : void
      {
         this.§`!y§ = param1.concat();
         this.§#=§(param1);
         this.§,5§();
      }
      
      private function §,5§() : Boolean
      {
         if(this.§7"w§.length == 0)
         {
            this.§5#]§ = null;
            return false;
         }
         var _loc1_:Object = this.§7"w§.pop();
         this.§5#]§ = this.§,!j§(_loc1_);
         var _loc2_:String = "";
         if(this.§^;§ != null && this.§^;§.length > 0)
         {
            _loc2_ = "?version=" + this.§^;§;
         }
         this.§,">§ = new §7"2§(null,3,50);
         this.§,">§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§,">§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§,">§.addEventListener(IOErrorEvent.IO_ERROR,this.§;#w§);
         this.§,">§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#w§);
         var _loc3_:String = this.getFullFilename(this.§5#]§);
         this.§,">§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§=$?§;
      }
      
      private function §0"§() : Boolean
      {
         return this.§,">§ || this.§<U§;
      }
      
      private function §8#1§() : Boolean
      {
         if(this.§,">§)
         {
            this.§,">§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§,">§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;#w§);
            this.§,">§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#w§);
            try
            {
               this.§,">§.close();
            }
            catch(e:Error)
            {
            }
            this.§,">§ = null;
         }
         if(this.§<U§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§,">§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§,">§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;#w§);
         this.§,">§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#w§);
         this.§=$@§[this.§5#]§] = this.§,">§.data;
         this.§,">§ = null;
         if(!this.§,5§())
         {
            this.§@$;§(this.§`!y§);
         }
      }
      
      private function §;#w§(param1:Event) : void
      {
         this.§,">§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§,">§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;#w§);
         this.§,">§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#w§);
         this.§,">§.close();
         this.§,">§ = null;
         this.§"#u§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §5@§
      {
         return new §5@§();
      }
      
      protected function § #&§() : void
      {
         if(this.§`"z§)
         {
            this.§`"z§.dispose();
            this.§`"z§ = null;
         }
      }
      
      private function §@$;§(param1:Array) : void
      {
         var _loc2_:§=#;§ = null;
         this.§<U§ = true;
         while(this.§&!"§.length >= this.§@!E§)
         {
            _loc2_ = this.§&!"§.pop();
            _loc2_.dispose();
         }
         this.§ #&§();
         this.§2!b§ = new §=#;§(this.§"#u§);
         this.§&!"§.unshift(this.§2!b§);
         this.§`"z§ = this.initPackageLoader();
         this.§6t§ = param1.concat();
         this.§12§();
      }
      
      private function §12§() : Boolean
      {
         if(this.§6t§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§6t§.pop();
         var _loc2_:String = this.§,!j§(_loc1_);
         this.§`"z§.addEventListener(Event.COMPLETE,this.§;#,§);
         var _loc3_:* = this.§^"g§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§^"g§.push(_loc2_);
         }
         this.§`"z§.§7"V§(this.§=$@§[_loc1_],_loc2_,_loc3_,!!this.§6"z§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §;#,§(param1:Event) : void
      {
         this.§<U§ = false;
         this.§`"z§.removeEventListener(Event.COMPLETE,this.§;#,§);
         if(this.§[!z§)
         {
            this.§,%§(this.§[!z§,this.§1V§);
            this.§[!z§ = null;
            this.§1V§ = null;
            return;
         }
         if(this.§12§())
         {
            return;
         }
         var _loc2_:int = this.§`"z§.§9"K§.§<!>§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2!b§.§-$1§(this.§`"z§.§9"K§.§5o§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§4d§();
         }
         else
         {
            this.§%#P§();
         }
      }
      
      public function §4d§() : void
      {
         if(this.§0"§() || this.§`"z§ == null)
         {
            return;
         }
         this.§2!b§.removeEventListener(Event.INIT,this.§7$<§);
         if(this.§2!b§.§4d§())
         {
            this.§%#P§();
         }
         else
         {
            this.§2!b§.addEventListener(Event.INIT,this.§7$<§);
         }
      }
      
      private function §%#P§() : void
      {
         this.§ #&§();
         this.§3"&§ = this.§"#u§;
         this.§"#u§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §7$<§(param1:Event) : void
      {
         this.§%#P§();
      }
   }
}
