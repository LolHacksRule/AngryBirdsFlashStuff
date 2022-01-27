package §?P§
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
   
   public class §]f§ extends EventDispatcher
   {
      
      static const § 4§:uint = 33639248;
      
      static const §=!=§:uint = 808471376;
      
      static const §[!6§:uint = 67324752;
      
      static const §1]§:uint = 84233040;
      
      static const §<m§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §81§:uint = 134695760;
      
      static const §-s§:uint = 134630224;
      
      static const §`g§:uint = 134695760;
       
      
      protected var §#X§:Array;
      
      protected var §+o§:Dictionary;
      
      protected var §^Z§:URLStream;
      
      protected var §>t§:String;
      
      protected var §8!J§:Function;
      
      protected var §5!D§:§,!Q§;
      
      protected var §&a§:ByteArray;
      
      protected var §1!C§:uint;
      
      protected var §'e§:uint;
      
      public function §]f§(param1:String = "utf-8")
      {
         super();
         this.§>t§ = param1;
         this.§8!J§ = this.§@!G§;
      }
      
      public function get active() : Boolean
      {
         return this.§8!J§ !== this.§@!G§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§^Z§ && this.§8!J§ == this.§@!G§)
         {
            this.§^Z§ = new URLStream();
            this.§^Z§.endian = Endian.LITTLE_ENDIAN;
            this.§6!2§();
            this.§#X§ = [];
            this.§+o§ = new Dictionary();
            this.§8!J§ = this.§6P§;
            this.§^Z§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§^Z§ && this.§8!J§ == this.§@!G§)
         {
            this.§#X§ = [];
            this.§+o§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§8!J§ = this.§6P§;
            if(this.parse(param1))
            {
               this.§8!J§ = this.§@!G§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §5z§(§5z§.§4!J§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§^Z§)
         {
            this.§8!J§ = this.§@!G§;
            this.§@1§();
            this.§^Z§.close();
            this.§^Z§ = null;
         }
      }
      
      public function §#!B§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§,!Q§ = null;
         if(param1 != null && this.§#X§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§#X§.length)
            {
               if((_loc8_ = this.§#X§[_loc7_] as §,!Q§) != null)
               {
                  _loc8_.§#!B§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§#!B§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§<m§);
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
      
      public function §1o§() : uint
      {
         return !!this.§#X§ ? uint(this.§#X§.length) : uint(0);
      }
      
      public function §"!>§(param1:uint) : §,!Q§
      {
         return !!this.§#X§ ? this.§#X§[param1] as §,!Q§ : null;
      }
      
      public function §@E§(param1:String) : §,!Q§
      {
         return !!this.§+o§[param1] ? this.§+o§[param1] as §,!Q§ : null;
      }
      
      public function §19§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,!Q§
      {
         return this.§!=§(!!this.§#X§ ? uint(this.§#X§.length) : uint(0),param1,param2,param3);
      }
      
      public function §3d§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,!Q§
      {
         return this.§<"§(!!this.§#X§ ? uint(this.§#X§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §!=§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,!Q§
      {
         if(this.§#X§ == null)
         {
            this.§#X§ = [];
         }
         if(this.§+o§ == null)
         {
            this.§+o§ = new Dictionary();
         }
         else if(this.§+o§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§,!Q§;
         (_loc5_ = new §,!Q§()).§<!K§ = param2;
         _loc5_.§[t§(param3,param4);
         if(param1 >= this.§#X§.length)
         {
            this.§#X§.push(_loc5_);
         }
         else
         {
            this.§#X§.splice(param1,0,_loc5_);
         }
         this.§+o§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §<"§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,!Q§
      {
         if(this.§#X§ == null)
         {
            this.§#X§ = [];
         }
         if(this.§+o§ == null)
         {
            this.§+o§ = new Dictionary();
         }
         else if(this.§+o§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§,!Q§;
         (_loc6_ = new §,!Q§()).§<!K§ = param2;
         _loc6_.§!y§(param3,param4,param5);
         if(param1 >= this.§#X§.length)
         {
            this.§#X§.push(_loc6_);
         }
         else
         {
            this.§#X§.splice(param1,0,_loc6_);
         }
         this.§+o§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §>r§(param1:uint) : §,!Q§
      {
         var _loc2_:§,!Q§ = null;
         if(this.§#X§ != null && this.§+o§ != null && param1 < this.§#X§.length)
         {
            _loc2_ = this.§#X§[param1] as §,!Q§;
            if(_loc2_ != null)
            {
               this.§#X§.splice(param1,1);
               delete this.§+o§[_loc2_.§<!K§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§8!J§(param1))
         {
         }
         return this.§8!J§ === this.§@!G§;
      }
      
      protected function §@!G§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6P§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §[!6§:
                  this.§8!J§ = this.§?a§;
                  this.§5!D§ = new §,!Q§(this.§>t§);
                  break;
               case § 4§:
               case §<m§:
               case §=!=§:
               case §1]§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §81§:
               case §-s§:
               case §`g§:
                  this.§8!J§ = this.§@!G§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §?a§(param1:IDataInput) : Boolean
      {
         if(this.§5!D§.parse(param1))
         {
            if(this.§5!D§.§&U§)
            {
               this.§8!J§ = this.§1;§;
               this.§&a§ = new ByteArray();
               this.§1!C§ = 0;
               this.§'e§ = 0;
               return true;
            }
            this.§6k§();
            if(this.§8!J§ != this.§@!G§)
            {
               this.§8!J§ = this.§6P§;
               return true;
            }
         }
         return false;
      }
      
      protected function §1;§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§1!C§ = this.§1!C§ >>> 8 | _loc2_ << 24;
            if(this.§1!C§ == §81§)
            {
               this.§&a§.length -= 3;
               this.§8!J§ = this.§?!@§;
               return true;
            }
            this.§&a§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §?!@§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§&a§.length == _loc3_)
            {
               this.§&a§.position = 0;
               this.§5!D§.§-2§ = _loc2_;
               this.§5!D§.§&I§ = _loc3_;
               this.§5!D§.§]!&§ = _loc4_;
               this.§5!D§.§2q§(this.§&a§);
               this.§6k§();
               this.§8!J§ = this.§6P§;
            }
            else
            {
               this.§&a§.writeUnsignedInt(_loc2_);
               this.§&a§.writeUnsignedInt(_loc3_);
               this.§&a§.writeUnsignedInt(_loc4_);
               this.§8!J§ = this.§1;§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6k§() : void
      {
         this.§#X§.push(this.§5!D§);
         if(this.§5!D§.§<!K§)
         {
            this.§+o§[this.§5!D§.§<!K§] = this.§5!D§;
         }
         dispatchEvent(new §8!4§(§8!4§.§^!7§,this.§5!D§));
         this.§5!D§ = null;
      }
      
      protected function §`l§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§^Z§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§5z§.§4!J§))
            {
               throw e;
            }
            dispatchEvent(new §5z§(§5z§.§4!J§,e.message));
         }
      }
      
      protected function §[!0§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §[7§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §6!2§() : void
      {
         this.§^Z§.addEventListener(Event.COMPLETE,this.§[!0§);
         this.§^Z§.addEventListener(Event.OPEN,this.§[!0§);
         this.§^Z§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[!0§);
         this.§^Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§[7§);
         this.§^Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[7§);
         this.§^Z§.addEventListener(ProgressEvent.PROGRESS,this.§`l§);
      }
      
      protected function §@1§() : void
      {
         this.§^Z§.removeEventListener(Event.COMPLETE,this.§[!0§);
         this.§^Z§.removeEventListener(Event.OPEN,this.§[!0§);
         this.§^Z§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[!0§);
         this.§^Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[7§);
         this.§^Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[7§);
         this.§^Z§.removeEventListener(ProgressEvent.PROGRESS,this.§`l§);
      }
   }
}
