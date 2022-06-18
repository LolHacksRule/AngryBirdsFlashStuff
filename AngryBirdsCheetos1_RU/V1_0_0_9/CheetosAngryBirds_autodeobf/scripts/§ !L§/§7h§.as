package § !L§
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
   
   public class §7h§ extends EventDispatcher
   {
      
      static const §,!P§:uint = 33639248;
      
      static const §@x§:uint = 808471376;
      
      static const §2k§:uint = 67324752;
      
      static const § G§:uint = 84233040;
      
      static const §<l§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#k§:uint = 134695760;
      
      static const §>!4§:uint = 134630224;
      
      static const §5!_§:uint = 134695760;
       
      
      protected var §4j§:Array;
      
      protected var §<0§:Dictionary;
      
      protected var §@!D§:URLStream;
      
      protected var §;I§:String;
      
      protected var §"D§:Function;
      
      protected var §0!O§:§"a§;
      
      protected var §=H§:ByteArray;
      
      protected var §?1§:uint;
      
      protected var §5J§:uint;
      
      public function §7h§(param1:String = "utf-8")
      {
         super();
         this.§;I§ = param1;
         this.§"D§ = this.§!!1§;
      }
      
      public function get §'!M§() : Boolean
      {
         return this.§"D§ !== this.§!!1§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§@!D§ && this.§"D§ == this.§!!1§)
         {
            this.§@!D§ = new URLStream();
            this.§@!D§.endian = Endian.LITTLE_ENDIAN;
            this.§-!P§();
            this.§4j§ = [];
            this.§<0§ = new Dictionary();
            this.§"D§ = this.§=!>§;
            this.§@!D§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§@!D§ && this.§"D§ == this.§!!1§)
         {
            this.§4j§ = [];
            this.§<0§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§"D§ = this.§=!>§;
            if(this.parse(param1))
            {
               this.§"D§ = this.§!!1§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §6q§(§6q§.§8u§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§@!D§)
         {
            this.§"D§ = this.§!!1§;
            this.§"G§();
            this.§@!D§.close();
            this.§@!D§ = null;
         }
      }
      
      public function §+!Y§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"a§ = null;
         if(param1 != null && this.§4j§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§4j§.length)
            {
               if((_loc8_ = this.§4j§[_loc7_] as §"a§) != null)
               {
                  _loc8_.§+!Y§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§+!Y§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§<l§);
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
      
      public function §`W§() : uint
      {
         return !!this.§4j§ ? uint(this.§4j§.length) : uint(0);
      }
      
      public function §+!&§(param1:uint) : §"a§
      {
         return !!this.§4j§ ? this.§4j§[param1] as §"a§ : null;
      }
      
      public function §1!>§(param1:String) : §"a§
      {
         return !!this.§<0§[param1] ? this.§<0§[param1] as §"a§ : null;
      }
      
      public function §7m§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"a§
      {
         return this.§`! §(!!this.§4j§ ? uint(this.§4j§.length) : uint(0),param1,param2,param3);
      }
      
      public function §0u§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"a§
      {
         return this.§4[§(!!this.§4j§ ? uint(this.§4j§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §`! §(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"a§
      {
         if(this.§4j§ == null)
         {
            this.§4j§ = [];
         }
         if(this.§<0§ == null)
         {
            this.§<0§ = new Dictionary();
         }
         else if(this.§<0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"a§;
         (_loc5_ = new §"a§()).§+!N§ = param2;
         _loc5_.§]!S§(param3,param4);
         if(param1 >= this.§4j§.length)
         {
            this.§4j§.push(_loc5_);
         }
         else
         {
            this.§4j§.splice(param1,0,_loc5_);
         }
         this.§<0§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §4[§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"a§
      {
         if(this.§4j§ == null)
         {
            this.§4j§ = [];
         }
         if(this.§<0§ == null)
         {
            this.§<0§ = new Dictionary();
         }
         else if(this.§<0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"a§;
         (_loc6_ = new §"a§()).§+!N§ = param2;
         _loc6_.§]A§(param3,param4,param5);
         if(param1 >= this.§4j§.length)
         {
            this.§4j§.push(_loc6_);
         }
         else
         {
            this.§4j§.splice(param1,0,_loc6_);
         }
         this.§<0§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §,W§(param1:uint) : §"a§
      {
         var _loc2_:§"a§ = null;
         if(this.§4j§ != null && this.§<0§ != null && param1 < this.§4j§.length)
         {
            _loc2_ = this.§4j§[param1] as §"a§;
            if(_loc2_ != null)
            {
               this.§4j§.splice(param1,1);
               delete this.§<0§[_loc2_.§+!N§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§"D§(param1))
         {
         }
         return this.§"D§ === this.§!!1§;
      }
      
      protected function §!!1§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=!>§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §2k§:
                  this.§"D§ = this.§5!L§;
                  this.§0!O§ = new §"a§(this.§;I§);
                  break;
               case §,!P§:
               case §<l§:
               case §@x§:
               case § G§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §#k§:
               case §>!4§:
               case §5!_§:
                  this.§"D§ = this.§!!1§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5!L§(param1:IDataInput) : Boolean
      {
         if(this.§0!O§.parse(param1))
         {
            if(this.§0!O§.§+!4§)
            {
               this.§"D§ = this.§!!4§;
               this.§=H§ = new ByteArray();
               this.§?1§ = 0;
               this.§5J§ = 0;
               return true;
            }
            this.§,!F§();
            if(this.§"D§ != this.§!!1§)
            {
               this.§"D§ = this.§=!>§;
               return true;
            }
         }
         return false;
      }
      
      protected function §!!4§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§?1§ = this.§?1§ >>> 8 | _loc2_ << 24;
            if(this.§?1§ == §#k§)
            {
               this.§=H§.length -= 3;
               this.§"D§ = this.§1!V§;
               return true;
            }
            this.§=H§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §1!V§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§=H§.length == _loc3_)
            {
               this.§=H§.position = 0;
               this.§0!O§.§?!F§ = _loc2_;
               this.§0!O§.§<![§ = _loc3_;
               this.§0!O§.§'f§ = _loc4_;
               this.§0!O§.§=!"§(this.§=H§);
               this.§,!F§();
               this.§"D§ = this.§=!>§;
            }
            else
            {
               this.§=H§.writeUnsignedInt(_loc2_);
               this.§=H§.writeUnsignedInt(_loc3_);
               this.§=H§.writeUnsignedInt(_loc4_);
               this.§"D§ = this.§!!4§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,!F§() : void
      {
         this.§4j§.push(this.§0!O§);
         if(this.§0!O§.§+!N§)
         {
            this.§<0§[this.§0!O§.§+!N§] = this.§0!O§;
         }
         dispatchEvent(new §"p§(§"p§.§1z§,this.§0!O§));
         this.§0!O§ = null;
      }
      
      protected function §2W§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§@!D§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§6q§.§8u§))
            {
               throw e;
            }
            dispatchEvent(new §6q§(§6q§.§8u§,e.message));
         }
      }
      
      protected function §!!S§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §8D§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §-!P§() : void
      {
         this.§@!D§.addEventListener(Event.COMPLETE,this.§!!S§);
         this.§@!D§.addEventListener(Event.OPEN,this.§!!S§);
         this.§@!D§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!S§);
         this.§@!D§.addEventListener(IOErrorEvent.IO_ERROR,this.§8D§);
         this.§@!D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8D§);
         this.§@!D§.addEventListener(ProgressEvent.PROGRESS,this.§2W§);
      }
      
      protected function §"G§() : void
      {
         this.§@!D§.removeEventListener(Event.COMPLETE,this.§!!S§);
         this.§@!D§.removeEventListener(Event.OPEN,this.§!!S§);
         this.§@!D§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!S§);
         this.§@!D§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8D§);
         this.§@!D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8D§);
         this.§@!D§.removeEventListener(ProgressEvent.PROGRESS,this.§2W§);
      }
   }
}
