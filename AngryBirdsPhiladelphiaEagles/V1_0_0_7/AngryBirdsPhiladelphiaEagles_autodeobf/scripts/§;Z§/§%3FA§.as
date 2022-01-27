package §;Z§
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public class §?A§ extends EventDispatcher
   {
      
      static const §"Z§:uint = 33639248;
      
      static const § !J§:uint = 808471376;
      
      static const §4^§:uint = 67324752;
      
      static const §=H§:uint = 84233040;
      
      static const §&a§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §3!+§:uint = 134695760;
      
      static const §@L§:uint = 134630224;
      
      static const §`F§:uint = 134695760;
       
      
      protected var §7!D§:Array;
      
      protected var § L§:Dictionary;
      
      protected var §7m§:URLStream;
      
      protected var §1!#§:String;
      
      protected var §@!'§:Function;
      
      protected var §8!8§:§>E§;
      
      protected var §`U§:ByteArray;
      
      protected var §"O§:uint;
      
      protected var §!w§:uint;
      
      public function §?A§(param1:String = "utf-8")
      {
         super();
         this.§1!#§ = param1;
         this.§@!'§ = this.§[H§;
      }
      
      public function get active() : Boolean
      {
         return this.§@!'§ !== this.§[H§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§7m§ && this.§@!'§ == this.§[H§)
         {
            this.§7m§ = new URLStream();
            this.§7m§.endian = Endian.LITTLE_ENDIAN;
            this.§00§();
            this.§7!D§ = [];
            this.§ L§ = new Dictionary();
            this.§@!'§ = this.§var §;
            this.§7m§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§7m§ && this.§@!'§ == this.§[H§)
         {
            this.§7!D§ = [];
            this.§ L§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§@!'§ = this.§var §;
            if(this.parse(param1))
            {
               this.§@!'§ = this.§[H§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §]D§(§]D§.§ c§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§7m§)
         {
            this.§@!'§ = this.§[H§;
            this.§2F§();
            this.§7m§.close();
            this.§7m§ = null;
         }
      }
      
      public function § m§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>E§ = null;
         if(param1 != null && this.§7!D§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7!D§.length)
            {
               if((_loc8_ = this.§7!D§[_loc7_] as §>E§) != null)
               {
                  _loc8_.§ m§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§ m§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§&a§);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeShort(_loc6_);
            param1.writeShort(_loc6_);
            param1.writeUnsignedInt(_loc4_.length);
            param1.writeUnsignedInt(_loc5_);
            param1.writeShort(0);
            param1.endian = _loc3_;
         }
      }
      
      public function §,`§() : uint
      {
         return !!this.§7!D§ ? uint(this.§7!D§.length) : uint(0);
      }
      
      public function §7s§(param1:uint) : §>E§
      {
         return !!this.§7!D§ ? this.§7!D§[param1] as §>E§ : null;
      }
      
      public function §2x§(param1:String) : §>E§
      {
         return !!this.§ L§[param1] ? this.§ L§[param1] as §>E§ : null;
      }
      
      public function §'o§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>E§
      {
         return this.§3r§(!!this.§7!D§ ? uint(this.§7!D§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>!-§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>E§
      {
         return this.§8f§(!!this.§7!D§ ? uint(this.§7!D§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §3r§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>E§
      {
         if(this.§7!D§ == null)
         {
            this.§7!D§ = [];
         }
         if(this.§ L§ == null)
         {
            this.§ L§ = new Dictionary();
         }
         else if(this.§ L§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>E§;
         (_loc5_ = new §>E§()).§<n§ = param2;
         _loc5_.§=_§(param3,param4);
         if(param1 >= this.§7!D§.length)
         {
            this.§7!D§.push(_loc5_);
         }
         else
         {
            this.§7!D§.splice(param1,0,_loc5_);
         }
         this.§ L§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §8f§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>E§
      {
         if(this.§7!D§ == null)
         {
            this.§7!D§ = [];
         }
         if(this.§ L§ == null)
         {
            this.§ L§ = new Dictionary();
         }
         else if(this.§ L§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>E§;
         (_loc6_ = new §>E§()).§<n§ = param2;
         _loc6_.§!?§(param3,param4,param5);
         if(param1 >= this.§7!D§.length)
         {
            this.§7!D§.push(_loc6_);
         }
         else
         {
            this.§7!D§.splice(param1,0,_loc6_);
         }
         this.§ L§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §]U§(param1:uint) : §>E§
      {
         var _loc2_:§>E§ = null;
         if(this.§7!D§ != null && this.§ L§ != null && param1 < this.§7!D§.length)
         {
            _loc2_ = this.§7!D§[param1] as §>E§;
            if(_loc2_ != null)
            {
               this.§7!D§.splice(param1,1);
               delete this.§ L§[_loc2_.§<n§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!'§(param1))
         {
         }
         return this.§@!'§ === this.§[H§;
      }
      
      protected function §[H§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §var §(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §4^§:
                  this.§@!'§ = this.§8k§;
                  this.§8!8§ = new §>E§(this.§1!#§);
                  break;
               case §"Z§:
               case §&a§:
               case § !J§:
               case §=H§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §3!+§:
               case §@L§:
               case §`F§:
                  this.§@!'§ = this.§[H§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §8k§(param1:IDataInput) : Boolean
      {
         if(this.§8!8§.parse(param1))
         {
            if(this.§8!8§.§<^§)
            {
               this.§@!'§ = this.§"!I§;
               this.§`U§ = new ByteArray();
               this.§"O§ = 0;
               this.§!w§ = 0;
               return true;
            }
            this.§&3§();
            if(this.§@!'§ != this.§[H§)
            {
               this.§@!'§ = this.§var §;
               return true;
            }
         }
         return false;
      }
      
      protected function §"!I§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§"O§ = this.§"O§ >>> 8 | _loc2_ << 24;
            if(this.§"O§ == §3!+§)
            {
               this.§`U§.length -= 3;
               this.§@!'§ = this.§"K§;
               return true;
            }
            this.§`U§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §"K§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§`U§.length == _loc3_)
            {
               this.§`U§.position = 0;
               this.§8!8§.§4g§ = _loc2_;
               this.§8!8§.§<!J§ = _loc3_;
               this.§8!8§.§-+§ = _loc4_;
               this.§8!8§.§;7§(this.§`U§);
               this.§&3§();
               this.§@!'§ = this.§var §;
            }
            else
            {
               this.§`U§.writeUnsignedInt(_loc2_);
               this.§`U§.writeUnsignedInt(_loc3_);
               this.§`U§.writeUnsignedInt(_loc4_);
               this.§@!'§ = this.§"!I§;
            }
            return true;
         }
         return false;
      }
      
      protected function §&3§() : void
      {
         this.§7!D§.push(this.§8!8§);
         if(this.§8!8§.§<n§)
         {
            this.§ L§[this.§8!8§.§<n§] = this.§8!8§;
         }
         dispatchEvent(new §0z§(§0z§.§!I§,this.§8!8§));
         this.§8!8§ = null;
      }
      
      protected function §%!+§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§7m§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§]D§.§ c§))
            {
               throw e;
            }
            dispatchEvent(new §]D§(§]D§.§ c§,e.message));
         }
      }
      
      protected function §@s§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §"p§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §00§() : void
      {
         this.§7m§.addEventListener(Event.COMPLETE,this.§@s§);
         this.§7m§.addEventListener(Event.OPEN,this.§@s§);
         this.§7m§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§@s§);
         this.§7m§.addEventListener(IOErrorEvent.IO_ERROR,this.§"p§);
         this.§7m§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"p§);
         this.§7m§.addEventListener(ProgressEvent.PROGRESS,this.§%!+§);
      }
      
      protected function §2F§() : void
      {
         this.§7m§.removeEventListener(Event.COMPLETE,this.§@s§);
         this.§7m§.removeEventListener(Event.OPEN,this.§@s§);
         this.§7m§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§@s§);
         this.§7m§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"p§);
         this.§7m§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"p§);
         this.§7m§.removeEventListener(ProgressEvent.PROGRESS,this.§%!+§);
      }
   }
}
