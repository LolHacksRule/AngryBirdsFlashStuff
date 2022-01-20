package §"!B§
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
   
   public class §&,§ extends EventDispatcher
   {
      
      static const §?F§:uint = 33639248;
      
      static const §+8§:uint = 808471376;
      
      static const §'!a§:uint = 67324752;
      
      static const §7!^§:uint = 84233040;
      
      static const §@%§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §!!H§:uint = 134695760;
      
      static const §1!a§:uint = 134630224;
      
      static const §8A§:uint = 134695760;
       
      
      protected var §2b§:Array;
      
      protected var §`a§:Dictionary;
      
      protected var § !L§:URLStream;
      
      protected var §,U§:String;
      
      protected var §;!j§:Function;
      
      protected var §7!-§:§;o§;
      
      protected var §!h§:ByteArray;
      
      protected var §6-§:uint;
      
      protected var §@!0§:uint;
      
      public function §&,§(param1:String = "utf-8")
      {
         super();
         this.§,U§ = param1;
         this.§;!j§ = this.§3!?§;
      }
      
      public function get §!a§() : Boolean
      {
         return this.§;!j§ !== this.§3!?§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§ !L§ && this.§;!j§ == this.§3!?§)
         {
            this.§ !L§ = new URLStream();
            this.§ !L§.endian = Endian.LITTLE_ENDIAN;
            this.§"l§();
            this.§2b§ = [];
            this.§`a§ = new Dictionary();
            this.§;!j§ = this.§"&§;
            this.§ !L§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§ !L§ && this.§;!j§ == this.§3!?§)
         {
            this.§2b§ = [];
            this.§`a§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;!j§ = this.§"&§;
            if(this.parse(param1))
            {
               this.§;!j§ = this.§3!?§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §-!#§(§-!#§.§2!9§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§ !L§)
         {
            this.§;!j§ = this.§3!?§;
            this.§-!L§();
            this.§ !L§.close();
            this.§ !L§ = null;
         }
      }
      
      public function §2u§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§;o§ = null;
         if(param1 != null && this.§2b§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§2b§.length)
            {
               if((_loc8_ = this.§2b§[_loc7_] as §;o§) != null)
               {
                  _loc8_.§2u§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§2u§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@%§);
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
      
      public function §6!W§() : uint
      {
         return !!this.§2b§ ? uint(this.§2b§.length) : uint(0);
      }
      
      public function §=;§(param1:uint) : §;o§
      {
         return !!this.§2b§ ? this.§2b§[param1] as §;o§ : null;
      }
      
      public function §`1§(param1:String) : §;o§
      {
         return !!this.§`a§[param1] ? this.§`a§[param1] as §;o§ : null;
      }
      
      public function §?m§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;o§
      {
         return this.§?[§(!!this.§2b§ ? uint(this.§2b§.length) : uint(0),param1,param2,param3);
      }
      
      public function §=!8§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;o§
      {
         return this.§`h§(!!this.§2b§ ? uint(this.§2b§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §?[§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;o§
      {
         if(this.§2b§ == null)
         {
            this.§2b§ = [];
         }
         if(this.§`a§ == null)
         {
            this.§`a§ = new Dictionary();
         }
         else if(this.§`a§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§;o§;
         (_loc5_ = new §;o§()).§#!G§ = param2;
         _loc5_.§&b§(param3,param4);
         if(param1 >= this.§2b§.length)
         {
            this.§2b§.push(_loc5_);
         }
         else
         {
            this.§2b§.splice(param1,0,_loc5_);
         }
         this.§`a§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §`h§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;o§
      {
         if(this.§2b§ == null)
         {
            this.§2b§ = [];
         }
         if(this.§`a§ == null)
         {
            this.§`a§ = new Dictionary();
         }
         else if(this.§`a§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§;o§;
         (_loc6_ = new §;o§()).§#!G§ = param2;
         _loc6_.§1!^§(param3,param4,param5);
         if(param1 >= this.§2b§.length)
         {
            this.§2b§.push(_loc6_);
         }
         else
         {
            this.§2b§.splice(param1,0,_loc6_);
         }
         this.§`a§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §8!e§(param1:uint) : §;o§
      {
         var _loc2_:§;o§ = null;
         if(this.§2b§ != null && this.§`a§ != null && param1 < this.§2b§.length)
         {
            _loc2_ = this.§2b§[param1] as §;o§;
            if(_loc2_ != null)
            {
               this.§2b§.splice(param1,1);
               delete this.§`a§[_loc2_.§#!G§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;!j§(param1))
         {
         }
         return this.§;!j§ === this.§3!?§;
      }
      
      protected function §3!?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §'!a§:
                  this.§;!j§ = this.§&!%§;
                  this.§7!-§ = new §;o§(this.§,U§);
                  break;
               case §?F§:
               case §@%§:
               case §+8§:
               case §7!^§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §!!H§:
               case §1!a§:
               case §8A§:
                  this.§;!j§ = this.§3!?§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §&!%§(param1:IDataInput) : Boolean
      {
         if(this.§7!-§.parse(param1))
         {
            if(this.§7!-§.§@c§)
            {
               this.§;!j§ = this.§];§;
               this.§!h§ = new ByteArray();
               this.§6-§ = 0;
               this.§@!0§ = 0;
               return true;
            }
            this.§ [§();
            if(this.§;!j§ != this.§3!?§)
            {
               this.§;!j§ = this.§"&§;
               return true;
            }
         }
         return false;
      }
      
      protected function §];§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§6-§ = this.§6-§ >>> 8 | _loc2_ << 24;
            if(this.§6-§ == §!!H§)
            {
               this.§!h§.length -= 3;
               this.§;!j§ = this.§3_§;
               return true;
            }
            this.§!h§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §3_§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§!h§.length == _loc3_)
            {
               this.§!h§.position = 0;
               this.§7!-§.§]!5§ = _loc2_;
               this.§7!-§.§9!'§ = _loc3_;
               this.§7!-§.§@o§ = _loc4_;
               this.§7!-§.§"z§(this.§!h§);
               this.§ [§();
               this.§;!j§ = this.§"&§;
            }
            else
            {
               this.§!h§.writeUnsignedInt(_loc2_);
               this.§!h§.writeUnsignedInt(_loc3_);
               this.§!h§.writeUnsignedInt(_loc4_);
               this.§;!j§ = this.§];§;
            }
            return true;
         }
         return false;
      }
      
      protected function § [§() : void
      {
         this.§2b§.push(this.§7!-§);
         if(this.§7!-§.§#!G§)
         {
            this.§`a§[this.§7!-§.§#!G§] = this.§7!-§;
         }
         dispatchEvent(new §'!l§(§'!l§.§%f§,this.§7!-§));
         this.§7!-§ = null;
      }
      
      protected function §]!E§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§ !L§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§-!#§.§2!9§))
            {
               throw e;
            }
            dispatchEvent(new §-!#§(§-!#§.§2!9§,e.message));
         }
      }
      
      protected function §5x§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §`k§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"l§() : void
      {
         this.§ !L§.addEventListener(Event.COMPLETE,this.§5x§);
         this.§ !L§.addEventListener(Event.OPEN,this.§5x§);
         this.§ !L§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5x§);
         this.§ !L§.addEventListener(IOErrorEvent.IO_ERROR,this.§`k§);
         this.§ !L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`k§);
         this.§ !L§.addEventListener(ProgressEvent.PROGRESS,this.§]!E§);
      }
      
      protected function §-!L§() : void
      {
         this.§ !L§.removeEventListener(Event.COMPLETE,this.§5x§);
         this.§ !L§.removeEventListener(Event.OPEN,this.§5x§);
         this.§ !L§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5x§);
         this.§ !L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`k§);
         this.§ !L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`k§);
         this.§ !L§.removeEventListener(ProgressEvent.PROGRESS,this.§]!E§);
      }
   }
}
