package §0b§
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
   
   public class §0!=§ extends EventDispatcher
   {
      
      static const §,9§:uint = 33639248;
      
      static const §break§:uint = 808471376;
      
      static const §8!V§:uint = 67324752;
      
      static const §3g§:uint = 84233040;
      
      static const §!c§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §%T§:uint = 134695760;
      
      static const §]!2§:uint = 134630224;
      
      static const §#`§:uint = 134695760;
       
      
      protected var §,!C§:Array;
      
      protected var §9!;§:Dictionary;
      
      protected var §^A§:URLStream;
      
      protected var §0r§:String;
      
      protected var §[6§:Function;
      
      protected var §"V§:§2!#§;
      
      protected var §6!@§:ByteArray;
      
      protected var §%!!§:uint;
      
      protected var §-b§:uint;
      
      public function §0!=§(param1:String = "utf-8")
      {
         super();
         this.§0r§ = param1;
         this.§[6§ = this.§0O§;
      }
      
      public function get §3?§() : Boolean
      {
         return this.§[6§ !== this.§0O§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§^A§ && this.§[6§ == this.§0O§)
         {
            this.§^A§ = new URLStream();
            this.§^A§.endian = Endian.LITTLE_ENDIAN;
            this.§'!B§();
            this.§,!C§ = [];
            this.§9!;§ = new Dictionary();
            this.§[6§ = this.§8o§;
            this.§^A§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§^A§ && this.§[6§ == this.§0O§)
         {
            this.§,!C§ = [];
            this.§9!;§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[6§ = this.§8o§;
            if(this.parse(param1))
            {
               this.§[6§ = this.§0O§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §^!L§(§^!L§.§0d§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§^A§)
         {
            this.§[6§ = this.§0O§;
            this.§ 3§();
            this.§^A§.close();
            this.§^A§ = null;
         }
      }
      
      public function §&!A§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§2!#§ = null;
         if(param1 != null && this.§,!C§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§,!C§.length)
            {
               if((_loc8_ = this.§,!C§[_loc7_] as §2!#§) != null)
               {
                  _loc8_.§&!A§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&!A§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!c§);
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
      
      public function §1N§() : uint
      {
         return !!this.§,!C§ ? uint(this.§,!C§.length) : uint(0);
      }
      
      public function §4P§(param1:uint) : §2!#§
      {
         return !!this.§,!C§ ? this.§,!C§[param1] as §2!#§ : null;
      }
      
      public function § !C§(param1:String) : §2!#§
      {
         return !!this.§9!;§[param1] ? this.§9!;§[param1] as §2!#§ : null;
      }
      
      public function §9!D§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §2!#§
      {
         return this.§&v§(!!this.§,!C§ ? uint(this.§,!C§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^Q§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §2!#§
      {
         return this.§4!"§(!!this.§,!C§ ? uint(this.§,!C§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §&v§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §2!#§
      {
         if(this.§,!C§ == null)
         {
            this.§,!C§ = [];
         }
         if(this.§9!;§ == null)
         {
            this.§9!;§ = new Dictionary();
         }
         else if(this.§9!;§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§2!#§;
         (_loc5_ = new §2!#§()).§``§ = param2;
         _loc5_.§;!%§(param3,param4);
         if(param1 >= this.§,!C§.length)
         {
            this.§,!C§.push(_loc5_);
         }
         else
         {
            this.§,!C§.splice(param1,0,_loc5_);
         }
         this.§9!;§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §4!"§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §2!#§
      {
         if(this.§,!C§ == null)
         {
            this.§,!C§ = [];
         }
         if(this.§9!;§ == null)
         {
            this.§9!;§ = new Dictionary();
         }
         else if(this.§9!;§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§2!#§;
         (_loc6_ = new §2!#§()).§``§ = param2;
         _loc6_.§7s§(param3,param4,param5);
         if(param1 >= this.§,!C§.length)
         {
            this.§,!C§.push(_loc6_);
         }
         else
         {
            this.§,!C§.splice(param1,0,_loc6_);
         }
         this.§9!;§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[k§(param1:uint) : §2!#§
      {
         var _loc2_:§2!#§ = null;
         if(this.§,!C§ != null && this.§9!;§ != null && param1 < this.§,!C§.length)
         {
            _loc2_ = this.§,!C§[param1] as §2!#§;
            if(_loc2_ != null)
            {
               this.§,!C§.splice(param1,1);
               delete this.§9!;§[_loc2_.§``§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[6§(param1))
         {
         }
         return this.§[6§ === this.§0O§;
      }
      
      protected function §0O§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §8o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §8!V§:
                  this.§[6§ = this.§2!B§;
                  this.§"V§ = new §2!#§(this.§0r§);
                  break;
               case §,9§:
               case §!c§:
               case §break§:
               case §3g§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §%T§:
               case §]!2§:
               case §#`§:
                  this.§[6§ = this.§0O§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §2!B§(param1:IDataInput) : Boolean
      {
         if(this.§"V§.parse(param1))
         {
            if(this.§"V§.§-[§)
            {
               this.§[6§ = this.§>!A§;
               this.§6!@§ = new ByteArray();
               this.§%!!§ = 0;
               this.§-b§ = 0;
               return true;
            }
            this.§#!L§();
            if(this.§[6§ != this.§0O§)
            {
               this.§[6§ = this.§8o§;
               return true;
            }
         }
         return false;
      }
      
      protected function §>!A§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%!!§ = this.§%!!§ >>> 8 | _loc2_ << 24;
            if(this.§%!!§ == §%T§)
            {
               this.§6!@§.length -= 3;
               this.§[6§ = this.§@!W§;
               return true;
            }
            this.§6!@§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §@!W§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§6!@§.length == _loc3_)
            {
               this.§6!@§.position = 0;
               this.§"V§.§]!P§ = _loc2_;
               this.§"V§.§3^§ = _loc3_;
               this.§"V§.§>!2§ = _loc4_;
               this.§"V§.§'S§(this.§6!@§);
               this.§#!L§();
               this.§[6§ = this.§8o§;
            }
            else
            {
               this.§6!@§.writeUnsignedInt(_loc2_);
               this.§6!@§.writeUnsignedInt(_loc3_);
               this.§6!@§.writeUnsignedInt(_loc4_);
               this.§[6§ = this.§>!A§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#!L§() : void
      {
         this.§,!C§.push(this.§"V§);
         if(this.§"V§.§``§)
         {
            this.§9!;§[this.§"V§.§``§] = this.§"V§;
         }
         dispatchEvent(new §8@§(§8@§.§`9§,this.§"V§));
         this.§"V§ = null;
      }
      
      protected function §[!3§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§^A§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§^!L§.§0d§))
            {
               throw e;
            }
            dispatchEvent(new §^!L§(§^!L§.§0d§,e.message));
         }
      }
      
      protected function §"!C§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §8%§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §'!B§() : void
      {
         this.§^A§.addEventListener(Event.COMPLETE,this.§"!C§);
         this.§^A§.addEventListener(Event.OPEN,this.§"!C§);
         this.§^A§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§"!C§);
         this.§^A§.addEventListener(IOErrorEvent.IO_ERROR,this.§8%§);
         this.§^A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8%§);
         this.§^A§.addEventListener(ProgressEvent.PROGRESS,this.§[!3§);
      }
      
      protected function § 3§() : void
      {
         this.§^A§.removeEventListener(Event.COMPLETE,this.§"!C§);
         this.§^A§.removeEventListener(Event.OPEN,this.§"!C§);
         this.§^A§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§"!C§);
         this.§^A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8%§);
         this.§^A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8%§);
         this.§^A§.removeEventListener(ProgressEvent.PROGRESS,this.§[!3§);
      }
   }
}
