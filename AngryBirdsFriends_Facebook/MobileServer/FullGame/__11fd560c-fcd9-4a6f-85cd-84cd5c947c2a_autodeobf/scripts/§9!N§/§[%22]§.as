package §9!N§
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
   
   public class §["]§ extends EventDispatcher
   {
      
      static const §6j§:uint = 33639248;
      
      static const §%"l§:uint = 808471376;
      
      static const §8!m§:uint = 67324752;
      
      static const §]!P§:uint = 84233040;
      
      static const §@!L§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §1$@§:uint = 134695760;
      
      static const §3"_§:uint = 134630224;
      
      static const §;"^§:uint = 134695760;
       
      
      protected var §-L§:Array;
      
      protected var §"#B§:Dictionary;
      
      protected var §'h§:URLStream;
      
      protected var §]!5§:String;
      
      protected var §;#M§:Function;
      
      protected var § "!§:§1" §;
      
      protected var §0"3§:ByteArray;
      
      protected var §0,§:uint;
      
      protected var §&#=§:uint;
      
      public function §["]§(param1:String = "utf-8")
      {
         super();
         this.§]!5§ = param1;
         this.§;#M§ = this.§0!!§;
      }
      
      public function get active() : Boolean
      {
         return this.§;#M§ !== this.§0!!§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§'h§ && this.§;#M§ == this.§0!!§)
         {
            this.§'h§ = new URLStream();
            this.§'h§.endian = Endian.LITTLE_ENDIAN;
            this.§"4§();
            this.§-L§ = [];
            this.§"#B§ = new Dictionary();
            this.§;#M§ = this.§+"u§;
            this.§'h§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§'h§ && this.§;#M§ == this.§0!!§)
         {
            this.§-L§ = [];
            this.§"#B§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;#M§ = this.§+"u§;
            if(this.parse(param1))
            {
               this.§;#M§ = this.§0!!§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §=#'§(§=#'§.§5;§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§'h§)
         {
            this.§;#M§ = this.§0!!§;
            this.§ v§();
            this.§'h§.close();
            this.§'h§ = null;
         }
      }
      
      public function §`!I§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§1" § = null;
         if(param1 != null && this.§-L§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§-L§.length)
            {
               if((_loc8_ = this.§-L§[_loc7_] as §1" §) != null)
               {
                  _loc8_.§`!I§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§`!I§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@!L§);
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
      
      public function §3]§() : uint
      {
         return !!this.§-L§ ? uint(this.§-L§.length) : uint(0);
      }
      
      public function §?c§(param1:uint) : §1" §
      {
         return !!this.§-L§ ? this.§-L§[param1] as §1" § : null;
      }
      
      public function §'K§(param1:String) : §1" §
      {
         return !!this.§"#B§[param1] ? this.§"#B§[param1] as §1" § : null;
      }
      
      public function §%!,§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §1" §
      {
         return this.§6!u§(!!this.§-L§ ? uint(this.§-L§.length) : uint(0),param1,param2,param3);
      }
      
      public function §'E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §1" §
      {
         return this.§55§(!!this.§-L§ ? uint(this.§-L§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §6!u§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §1" §
      {
         if(this.§-L§ == null)
         {
            this.§-L§ = [];
         }
         if(this.§"#B§ == null)
         {
            this.§"#B§ = new Dictionary();
         }
         else if(this.§"#B§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§1" §;
         (_loc5_ = new §1" §()).filename = param2;
         _loc5_.§7C§(param3,param4);
         if(param1 >= this.§-L§.length)
         {
            this.§-L§.push(_loc5_);
         }
         else
         {
            this.§-L§.splice(param1,0,_loc5_);
         }
         this.§"#B§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §55§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §1" §
      {
         if(this.§-L§ == null)
         {
            this.§-L§ = [];
         }
         if(this.§"#B§ == null)
         {
            this.§"#B§ = new Dictionary();
         }
         else if(this.§"#B§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§1" §;
         (_loc6_ = new §1" §()).filename = param2;
         _loc6_.§,$ §(param3,param4,param5);
         if(param1 >= this.§-L§.length)
         {
            this.§-L§.push(_loc6_);
         }
         else
         {
            this.§-L§.splice(param1,0,_loc6_);
         }
         this.§"#B§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §]"'§(param1:uint) : §1" §
      {
         var _loc2_:§1" § = null;
         if(this.§-L§ != null && this.§"#B§ != null && param1 < this.§-L§.length)
         {
            _loc2_ = this.§-L§[param1] as §1" §;
            if(_loc2_ != null)
            {
               this.§-L§.splice(param1,1);
               delete this.§"#B§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;#M§(param1))
         {
         }
         return this.§;#M§ === this.§0!!§;
      }
      
      protected function §0!!§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+"u§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §8!m§:
                  this.§;#M§ = this.§1$<§;
                  this.§ "!§ = new §1" §(this.§]!5§);
                  break;
               case §6j§:
               case §@!L§:
               case §%"l§:
               case §]!P§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §1$@§:
               case §3"_§:
               case §;"^§:
                  this.§;#M§ = this.§0!!§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §1$<§(param1:IDataInput) : Boolean
      {
         if(this.§ "!§.parse(param1))
         {
            if(this.§ "!§.§@"7§)
            {
               this.§;#M§ = this.§;"h§;
               this.§0"3§ = new ByteArray();
               this.§0,§ = 0;
               this.§&#=§ = 0;
               return true;
            }
            this.§7"2§();
            if(this.§;#M§ != this.§0!!§)
            {
               this.§;#M§ = this.§+"u§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;"h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§0,§ = this.§0,§ >>> 8 | _loc2_ << 24;
            if(this.§0,§ == §1$@§)
            {
               this.§0"3§.length -= 3;
               this.§;#M§ = this.§1"I§;
               return true;
            }
            this.§0"3§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §1"I§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§0"3§.length == _loc3_)
            {
               this.§0"3§.position = 0;
               this.§ "!§.§]!?§ = _loc2_;
               this.§ "!§.§^#r§ = _loc3_;
               this.§ "!§.§ Q§ = _loc4_;
               this.§ "!§.§0G§(this.§0"3§);
               this.§7"2§();
               this.§;#M§ = this.§+"u§;
            }
            else
            {
               this.§0"3§.writeUnsignedInt(_loc2_);
               this.§0"3§.writeUnsignedInt(_loc3_);
               this.§0"3§.writeUnsignedInt(_loc4_);
               this.§;#M§ = this.§;"h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §7"2§() : void
      {
         this.§-L§.push(this.§ "!§);
         if(this.§ "!§.filename)
         {
            this.§"#B§[this.§ "!§.filename] = this.§ "!§;
         }
         dispatchEvent(new §""E§(§""E§.§%"T§,this.§ "!§));
         this.§ "!§ = null;
      }
      
      protected function §2J§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§'h§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§=#'§.§5;§))
            {
               throw e;
            }
            dispatchEvent(new §=#'§(§=#'§.§5;§,e.message));
         }
      }
      
      protected function §>Q§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §@![§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"4§() : void
      {
         this.§'h§.addEventListener(Event.COMPLETE,this.§>Q§);
         this.§'h§.addEventListener(Event.OPEN,this.§>Q§);
         this.§'h§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>Q§);
         this.§'h§.addEventListener(IOErrorEvent.IO_ERROR,this.§@![§);
         this.§'h§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@![§);
         this.§'h§.addEventListener(ProgressEvent.PROGRESS,this.§2J§);
      }
      
      protected function § v§() : void
      {
         this.§'h§.removeEventListener(Event.COMPLETE,this.§>Q§);
         this.§'h§.removeEventListener(Event.OPEN,this.§>Q§);
         this.§'h§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>Q§);
         this.§'h§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@![§);
         this.§'h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@![§);
         this.§'h§.removeEventListener(ProgressEvent.PROGRESS,this.§2J§);
      }
   }
}
