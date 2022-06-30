package §?!G§
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
   
   public class §?!^§ extends EventDispatcher
   {
      
      static const §8y§:uint = 33639248;
      
      static const §?B§:uint = 808471376;
      
      static const §+L§:uint = 67324752;
      
      static const §2!b§:uint = 84233040;
      
      static const §2+§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §=§:uint = 134695760;
      
      static const §[j§:uint = 134630224;
      
      static const §@+§:uint = 134695760;
       
      
      protected var §]!0§:Array;
      
      protected var §0!]§:Dictionary;
      
      protected var §1$§:URLStream;
      
      protected var §4c§:String;
      
      protected var §[V§:Function;
      
      protected var §-&§:§#<§;
      
      protected var §#P§:ByteArray;
      
      protected var § !A§:uint;
      
      protected var §57§:uint;
      
      public function §?!^§(param1:String = "utf-8")
      {
         super();
         this.§4c§ = param1;
         this.§[V§ = this.§3!'§;
      }
      
      public function get §40§() : Boolean
      {
         return this.§[V§ !== this.§3!'§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1$§ && this.§[V§ == this.§3!'§)
         {
            this.§1$§ = new URLStream();
            this.§1$§.endian = Endian.LITTLE_ENDIAN;
            this.§]J§();
            this.§]!0§ = [];
            this.§0!]§ = new Dictionary();
            this.§[V§ = this.§6^§;
            this.§1$§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1$§ && this.§[V§ == this.§3!'§)
         {
            this.§]!0§ = [];
            this.§0!]§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[V§ = this.§6^§;
            if(this.parse(param1))
            {
               this.§[V§ = this.§3!'§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §4!"§(§4!"§.§!#§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1$§)
         {
            this.§[V§ = this.§3!'§;
            this.§'!f§();
            this.§1$§.close();
            this.§1$§ = null;
         }
      }
      
      public function §7!X§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§#<§ = null;
         if(param1 != null && this.§]!0§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§]!0§.length)
            {
               if((_loc8_ = this.§]!0§[_loc7_] as §#<§) != null)
               {
                  _loc8_.§7!X§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§7!X§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§2+§);
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
      
      public function §;!M§() : uint
      {
         return !!this.§]!0§ ? uint(this.§]!0§.length) : uint(0);
      }
      
      public function § n§(param1:uint) : §#<§
      {
         return !!this.§]!0§ ? this.§]!0§[param1] as §#<§ : null;
      }
      
      public function § Z§(param1:String) : §#<§
      {
         return !!this.§0!]§[param1] ? this.§0!]§[param1] as §#<§ : null;
      }
      
      public function §2![§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#<§
      {
         return this.§+§(!!this.§]!0§ ? uint(this.§]!0§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;9§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#<§
      {
         return this.§;!I§(!!this.§]!0§ ? uint(this.§]!0§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §+§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#<§
      {
         if(this.§]!0§ == null)
         {
            this.§]!0§ = [];
         }
         if(this.§0!]§ == null)
         {
            this.§0!]§ = new Dictionary();
         }
         else if(this.§0!]§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§#<§;
         (_loc5_ = new §#<§()).§<l§ = param2;
         _loc5_.§7o§(param3,param4);
         if(param1 >= this.§]!0§.length)
         {
            this.§]!0§.push(_loc5_);
         }
         else
         {
            this.§]!0§.splice(param1,0,_loc5_);
         }
         this.§0!]§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;!I§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#<§
      {
         if(this.§]!0§ == null)
         {
            this.§]!0§ = [];
         }
         if(this.§0!]§ == null)
         {
            this.§0!]§ = new Dictionary();
         }
         else if(this.§0!]§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§#<§;
         (_loc6_ = new §#<§()).§<l§ = param2;
         _loc6_.§`i§(param3,param4,param5);
         if(param1 >= this.§]!0§.length)
         {
            this.§]!0§.push(_loc6_);
         }
         else
         {
            this.§]!0§.splice(param1,0,_loc6_);
         }
         this.§0!]§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function § >§(param1:uint) : §#<§
      {
         var _loc2_:§#<§ = null;
         if(this.§]!0§ != null && this.§0!]§ != null && param1 < this.§]!0§.length)
         {
            _loc2_ = this.§]!0§[param1] as §#<§;
            if(_loc2_ != null)
            {
               this.§]!0§.splice(param1,1);
               delete this.§0!]§[_loc2_.§<l§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[V§(param1))
         {
         }
         return this.§[V§ === this.§3!'§;
      }
      
      protected function §3!'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6^§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §+L§:
                  this.§[V§ = this.§8!5§;
                  this.§-&§ = new §#<§(this.§4c§);
                  break;
               case §8y§:
               case §2+§:
               case §?B§:
               case §2!b§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §=§:
               case §[j§:
               case §@+§:
                  this.§[V§ = this.§3!'§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §8!5§(param1:IDataInput) : Boolean
      {
         if(this.§-&§.parse(param1))
         {
            if(this.§-&§.§^X§)
            {
               this.§[V§ = this.§?!8§;
               this.§#P§ = new ByteArray();
               this.§ !A§ = 0;
               this.§57§ = 0;
               return true;
            }
            this.§[]§();
            if(this.§[V§ != this.§3!'§)
            {
               this.§[V§ = this.§6^§;
               return true;
            }
         }
         return false;
      }
      
      protected function §?!8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§ !A§ = this.§ !A§ >>> 8 | _loc2_ << 24;
            if(this.§ !A§ == §=§)
            {
               this.§#P§.length -= 3;
               this.§[V§ = this.§?!5§;
               return true;
            }
            this.§#P§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §?!5§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§#P§.length == _loc3_)
            {
               this.§#P§.position = 0;
               this.§-&§.§8!$§ = _loc2_;
               this.§-&§.§=X§ = _loc3_;
               this.§-&§.§;Z§ = _loc4_;
               this.§-&§.§;!G§(this.§#P§);
               this.§[]§();
               this.§[V§ = this.§6^§;
            }
            else
            {
               this.§#P§.writeUnsignedInt(_loc2_);
               this.§#P§.writeUnsignedInt(_loc3_);
               this.§#P§.writeUnsignedInt(_loc4_);
               this.§[V§ = this.§?!8§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[]§() : void
      {
         this.§]!0§.push(this.§-&§);
         if(this.§-&§.§<l§)
         {
            this.§0!]§[this.§-&§.§<l§] = this.§-&§;
         }
         dispatchEvent(new §#x§(§#x§.§ !`§,this.§-&§));
         this.§-&§ = null;
      }
      
      protected function §^!S§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1$§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§4!"§.§!#§))
            {
               throw e;
            }
            dispatchEvent(new §4!"§(§4!"§.§!#§,e.message));
         }
      }
      
      protected function §#!7§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §&!;§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §]J§() : void
      {
         this.§1$§.addEventListener(Event.COMPLETE,this.§#!7§);
         this.§1$§.addEventListener(Event.OPEN,this.§#!7§);
         this.§1$§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!7§);
         this.§1$§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!;§);
         this.§1$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!;§);
         this.§1$§.addEventListener(ProgressEvent.PROGRESS,this.§^!S§);
      }
      
      protected function §'!f§() : void
      {
         this.§1$§.removeEventListener(Event.COMPLETE,this.§#!7§);
         this.§1$§.removeEventListener(Event.OPEN,this.§#!7§);
         this.§1$§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!7§);
         this.§1$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!;§);
         this.§1$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!;§);
         this.§1$§.removeEventListener(ProgressEvent.PROGRESS,this.§^!S§);
      }
   }
}
