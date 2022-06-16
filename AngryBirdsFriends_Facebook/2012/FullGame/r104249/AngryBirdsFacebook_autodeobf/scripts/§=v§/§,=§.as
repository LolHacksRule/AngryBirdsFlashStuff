package §=v§
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
   
   public class §,=§ extends EventDispatcher
   {
      
      static const §[]§:uint = 33639248;
      
      static const §,o§:uint = 808471376;
      
      static const §"!0§:uint = 67324752;
      
      static const §2o§:uint = 84233040;
      
      static const §+!j§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §"",§:uint = 134695760;
      
      static const §-!A§:uint = 134630224;
      
      static const §-"2§:uint = 134695760;
       
      
      protected var §3w§:Array;
      
      protected var §%N§:Dictionary;
      
      protected var §'!y§:URLStream;
      
      protected var § !7§:String;
      
      protected var §5I§:Function;
      
      protected var §"a§:§`!'§;
      
      protected var §5"+§:ByteArray;
      
      protected var §<!M§:uint;
      
      protected var §;"§:uint;
      
      public function §,=§(param1:String = "utf-8")
      {
         super();
         this.§ !7§ = param1;
         this.§5I§ = this.§=!b§;
      }
      
      public function get §;!R§() : Boolean
      {
         return this.§5I§ !== this.§=!b§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§'!y§ && this.§5I§ == this.§=!b§)
         {
            this.§'!y§ = new URLStream();
            this.§'!y§.endian = Endian.LITTLE_ENDIAN;
            this.§ each§();
            this.§3w§ = [];
            this.§%N§ = new Dictionary();
            this.§5I§ = this.§'!r§;
            this.§'!y§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§'!y§ && this.§5I§ == this.§=!b§)
         {
            this.§3w§ = [];
            this.§%N§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§5I§ = this.§'!r§;
            if(this.parse(param1))
            {
               this.§5I§ = this.§=!b§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §#!r§(§#!r§.§0!Q§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§'!y§)
         {
            this.§5I§ = this.§=!b§;
            this.§4!U§();
            this.§'!y§.close();
            this.§'!y§ = null;
         }
      }
      
      public function §7!G§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§`!'§ = null;
         if(param1 != null && this.§3w§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§3w§.length)
            {
               if((_loc8_ = this.§3w§[_loc7_] as §`!'§) != null)
               {
                  _loc8_.§7!G§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§7!G§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§+!j§);
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
      
      public function §!L§() : uint
      {
         return !!this.§3w§ ? uint(this.§3w§.length) : uint(0);
      }
      
      public function §'"4§(param1:uint) : §`!'§
      {
         return !!this.§3w§ ? this.§3w§[param1] as §`!'§ : null;
      }
      
      public function §>E§(param1:String) : §`!'§
      {
         return !!this.§%N§[param1] ? this.§%N§[param1] as §`!'§ : null;
      }
      
      public function §2N§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §`!'§
      {
         return this.§'"I§(!!this.§3w§ ? uint(this.§3w§.length) : uint(0),param1,param2,param3);
      }
      
      public function §+!P§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §`!'§
      {
         return this.§%@§(!!this.§3w§ ? uint(this.§3w§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §'"I§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §`!'§
      {
         if(this.§3w§ == null)
         {
            this.§3w§ = [];
         }
         if(this.§%N§ == null)
         {
            this.§%N§ = new Dictionary();
         }
         else if(this.§%N§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§`!'§;
         (_loc5_ = new §`!'§()).§%!V§ = param2;
         _loc5_.§4!t§(param3,param4);
         if(param1 >= this.§3w§.length)
         {
            this.§3w§.push(_loc5_);
         }
         else
         {
            this.§3w§.splice(param1,0,_loc5_);
         }
         this.§%N§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §%@§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §`!'§
      {
         if(this.§3w§ == null)
         {
            this.§3w§ = [];
         }
         if(this.§%N§ == null)
         {
            this.§%N§ = new Dictionary();
         }
         else if(this.§%N§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§`!'§;
         (_loc6_ = new §`!'§()).§%!V§ = param2;
         _loc6_.§9!W§(param3,param4,param5);
         if(param1 >= this.§3w§.length)
         {
            this.§3w§.push(_loc6_);
         }
         else
         {
            this.§3w§.splice(param1,0,_loc6_);
         }
         this.§%N§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §"!w§(param1:uint) : §`!'§
      {
         var _loc2_:§`!'§ = null;
         if(this.§3w§ != null && this.§%N§ != null && param1 < this.§3w§.length)
         {
            _loc2_ = this.§3w§[param1] as §`!'§;
            if(_loc2_ != null)
            {
               this.§3w§.splice(param1,1);
               delete this.§%N§[_loc2_.§%!V§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5I§(param1))
         {
         }
         return this.§5I§ === this.§=!b§;
      }
      
      protected function §=!b§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §'!r§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §"!0§:
                  this.§5I§ = this.§-!8§;
                  this.§"a§ = new §`!'§(this.§ !7§);
                  break;
               case §[]§:
               case §+!j§:
               case §,o§:
               case §2o§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §"",§:
               case §-!A§:
               case §-"2§:
                  this.§5I§ = this.§=!b§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-!8§(param1:IDataInput) : Boolean
      {
         if(this.§"a§.parse(param1))
         {
            if(this.§"a§.§3"7§)
            {
               this.§5I§ = this.§<J§;
               this.§5"+§ = new ByteArray();
               this.§<!M§ = 0;
               this.§;"§ = 0;
               return true;
            }
            this.§<&§();
            if(this.§5I§ != this.§=!b§)
            {
               this.§5I§ = this.§'!r§;
               return true;
            }
         }
         return false;
      }
      
      protected function §<J§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§<!M§ = this.§<!M§ >>> 8 | _loc2_ << 24;
            if(this.§<!M§ == §"",§)
            {
               this.§5"+§.length -= 3;
               this.§5I§ = this.§-o§;
               return true;
            }
            this.§5"+§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§5"+§.length == _loc3_)
            {
               this.§5"+§.position = 0;
               this.§"a§.§4!s§ = _loc2_;
               this.§"a§.§7!7§ = _loc3_;
               this.§"a§.§+M§ = _loc4_;
               this.§"a§.§2>§(this.§5"+§);
               this.§<&§();
               this.§5I§ = this.§'!r§;
            }
            else
            {
               this.§5"+§.writeUnsignedInt(_loc2_);
               this.§5"+§.writeUnsignedInt(_loc3_);
               this.§5"+§.writeUnsignedInt(_loc4_);
               this.§5I§ = this.§<J§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<&§() : void
      {
         this.§3w§.push(this.§"a§);
         if(this.§"a§.§%!V§)
         {
            this.§%N§[this.§"a§.§%!V§] = this.§"a§;
         }
         dispatchEvent(new §%!+§(§%!+§.§!!P§,this.§"a§));
         this.§"a§ = null;
      }
      
      protected function §@"7§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§'!y§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§#!r§.§0!Q§))
            {
               throw e;
            }
            dispatchEvent(new §#!r§(§#!r§.§0!Q§,e.message));
         }
      }
      
      protected function §%a§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9!G§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § each§() : void
      {
         this.§'!y§.addEventListener(Event.COMPLETE,this.§%a§);
         this.§'!y§.addEventListener(Event.OPEN,this.§%a§);
         this.§'!y§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%a§);
         this.§'!y§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
         this.§'!y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!G§);
         this.§'!y§.addEventListener(ProgressEvent.PROGRESS,this.§@"7§);
      }
      
      protected function §4!U§() : void
      {
         this.§'!y§.removeEventListener(Event.COMPLETE,this.§%a§);
         this.§'!y§.removeEventListener(Event.OPEN,this.§%a§);
         this.§'!y§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%a§);
         this.§'!y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
         this.§'!y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!G§);
         this.§'!y§.removeEventListener(ProgressEvent.PROGRESS,this.§@"7§);
      }
   }
}
