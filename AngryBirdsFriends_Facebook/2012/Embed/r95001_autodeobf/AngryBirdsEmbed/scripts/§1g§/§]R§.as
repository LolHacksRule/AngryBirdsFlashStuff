package §1g§
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
   
   public class §]R§ extends EventDispatcher
   {
      
      static const §;k§:uint = 33639248;
      
      static const §4!-§:uint = 808471376;
      
      static const §09§:uint = 67324752;
      
      static const §^!F§:uint = 84233040;
      
      static const §%v§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §1L§:uint = 134695760;
      
      static const §2P§:uint = 134630224;
      
      static const §9§:uint = 134695760;
       
      
      protected var §>v§:Array;
      
      protected var §4d§:Dictionary;
      
      protected var §2N§:URLStream;
      
      protected var §^!'§:String;
      
      protected var §^;§:Function;
      
      protected var §@H§:§3[§;
      
      protected var §,!&§:ByteArray;
      
      protected var §"! §:uint;
      
      protected var §"$§:uint;
      
      public function §]R§(param1:String = "utf-8")
      {
         super();
         this.§^!'§ = param1;
         this.§^;§ = this.§7!;§;
      }
      
      public function get active() : Boolean
      {
         return this.§^;§ !== this.§7!;§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§2N§ && this.§^;§ == this.§7!;§)
         {
            this.§2N§ = new URLStream();
            this.§2N§.endian = Endian.LITTLE_ENDIAN;
            this.§'!4§();
            this.§>v§ = [];
            this.§4d§ = new Dictionary();
            this.§^;§ = this.§#j§;
            this.§2N§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§2N§ && this.§^;§ == this.§7!;§)
         {
            this.§>v§ = [];
            this.§4d§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§^;§ = this.§#j§;
            if(this.parse(param1))
            {
               this.§^;§ = this.§7!;§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §&G§(§&G§.§>+§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§2N§)
         {
            this.§^;§ = this.§7!;§;
            this.§2f§();
            this.§2N§.close();
            this.§2N§ = null;
         }
      }
      
      public function §&b§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§3[§ = null;
         if(param1 != null && this.§>v§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§>v§.length)
            {
               if((_loc8_ = this.§>v§[_loc7_] as §3[§) != null)
               {
                  _loc8_.§&b§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&b§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§%v§);
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
      
      public function §2!$§() : uint
      {
         return !!this.§>v§ ? uint(this.§>v§.length) : uint(0);
      }
      
      public function §<c§(param1:uint) : §3[§
      {
         return !!this.§>v§ ? this.§>v§[param1] as §3[§ : null;
      }
      
      public function §>"§(param1:String) : §3[§
      {
         return !!this.§4d§[param1] ? this.§4d§[param1] as §3[§ : null;
      }
      
      public function §0"§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §3[§
      {
         return this.§8!%§(!!this.§>v§ ? uint(this.§>v§.length) : uint(0),param1,param2,param3);
      }
      
      public function §'"§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §3[§
      {
         return this.§;O§(!!this.§>v§ ? uint(this.§>v§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §8!%§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §3[§
      {
         if(this.§>v§ == null)
         {
            this.§>v§ = [];
         }
         if(this.§4d§ == null)
         {
            this.§4d§ = new Dictionary();
         }
         else if(this.§4d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§3[§;
         (_loc5_ = new §3[§()).§<_§ = param2;
         _loc5_.§8Y§(param3,param4);
         if(param1 >= this.§>v§.length)
         {
            this.§>v§.push(_loc5_);
         }
         else
         {
            this.§>v§.splice(param1,0,_loc5_);
         }
         this.§4d§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;O§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §3[§
      {
         if(this.§>v§ == null)
         {
            this.§>v§ = [];
         }
         if(this.§4d§ == null)
         {
            this.§4d§ = new Dictionary();
         }
         else if(this.§4d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§3[§;
         (_loc6_ = new §3[§()).§<_§ = param2;
         _loc6_.§5Y§(param3,param4,param5);
         if(param1 >= this.§>v§.length)
         {
            this.§>v§.push(_loc6_);
         }
         else
         {
            this.§>v§.splice(param1,0,_loc6_);
         }
         this.§4d§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §"l§(param1:uint) : §3[§
      {
         var _loc2_:§3[§ = null;
         if(this.§>v§ != null && this.§4d§ != null && param1 < this.§>v§.length)
         {
            _loc2_ = this.§>v§[param1] as §3[§;
            if(_loc2_ != null)
            {
               this.§>v§.splice(param1,1);
               delete this.§4d§[_loc2_.§<_§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§^;§(param1))
         {
         }
         return this.§^;§ === this.§7!;§;
      }
      
      protected function §7!;§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#j§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §09§:
                  this.§^;§ = this.§`x§;
                  this.§@H§ = new §3[§(this.§^!'§);
                  break;
               case §;k§:
               case §%v§:
               case §4!-§:
               case §^!F§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §1L§:
               case §2P§:
               case §9§:
                  this.§^;§ = this.§7!;§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §`x§(param1:IDataInput) : Boolean
      {
         if(this.§@H§.parse(param1))
         {
            if(this.§@H§.§'r§)
            {
               this.§^;§ = this.§;W§;
               this.§,!&§ = new ByteArray();
               this.§"! § = 0;
               this.§"$§ = 0;
               return true;
            }
            this.§0!5§();
            if(this.§^;§ != this.§7!;§)
            {
               this.§^;§ = this.§#j§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;W§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§"! § = this.§"! § >>> 8 | _loc2_ << 24;
            if(this.§"! § == §1L§)
            {
               this.§,!&§.length -= 3;
               this.§^;§ = this.§-Z§;
               return true;
            }
            this.§,!&§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-Z§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§,!&§.length == _loc3_)
            {
               this.§,!&§.position = 0;
               this.§@H§.§;S§ = _loc2_;
               this.§@H§.§=U§ = _loc3_;
               this.§@H§.§5U§ = _loc4_;
               this.§@H§.§,m§(this.§,!&§);
               this.§0!5§();
               this.§^;§ = this.§#j§;
            }
            else
            {
               this.§,!&§.writeUnsignedInt(_loc2_);
               this.§,!&§.writeUnsignedInt(_loc3_);
               this.§,!&§.writeUnsignedInt(_loc4_);
               this.§^;§ = this.§;W§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0!5§() : void
      {
         this.§>v§.push(this.§@H§);
         if(this.§@H§.§<_§)
         {
            this.§4d§[this.§@H§.§<_§] = this.§@H§;
         }
         dispatchEvent(new §6"§(§6"§.§0[§,this.§@H§));
         this.§@H§ = null;
      }
      
      protected function §@!;§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§2N§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§&G§.§>+§))
            {
               throw e;
            }
            dispatchEvent(new §&G§(§&G§.§>+§,e.message));
         }
      }
      
      protected function §'X§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §%C§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §'!4§() : void
      {
         this.§2N§.addEventListener(Event.COMPLETE,this.§'X§);
         this.§2N§.addEventListener(Event.OPEN,this.§'X§);
         this.§2N§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'X§);
         this.§2N§.addEventListener(IOErrorEvent.IO_ERROR,this.§%C§);
         this.§2N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%C§);
         this.§2N§.addEventListener(ProgressEvent.PROGRESS,this.§@!;§);
      }
      
      protected function §2f§() : void
      {
         this.§2N§.removeEventListener(Event.COMPLETE,this.§'X§);
         this.§2N§.removeEventListener(Event.OPEN,this.§'X§);
         this.§2N§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'X§);
         this.§2N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%C§);
         this.§2N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%C§);
         this.§2N§.removeEventListener(ProgressEvent.PROGRESS,this.§@!;§);
      }
   }
}
