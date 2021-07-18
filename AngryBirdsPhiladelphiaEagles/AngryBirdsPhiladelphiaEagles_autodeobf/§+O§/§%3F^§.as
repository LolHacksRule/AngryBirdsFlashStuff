package §+O§
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
   
   public class §?^§ extends EventDispatcher
   {
      
      static const § e§:uint = 33639248;
      
      static const §'v§:uint = 808471376;
      
      static const §5"§:uint = 67324752;
      
      static const §]Z§:uint = 84233040;
      
      static const §=!4§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §]J§:uint = 134695760;
      
      static const §`_§:uint = 134630224;
      
      static const §;!7§:uint = 134695760;
       
      
      protected var §=!#§:Array;
      
      protected var §@M§:Dictionary;
      
      protected var §2;§:URLStream;
      
      protected var §=e§:String;
      
      protected var §1S§:Function;
      
      protected var §true§:§=F§;
      
      protected var §,t§:ByteArray;
      
      protected var § h§:uint;
      
      protected var §%!'§:uint;
      
      public function §?^§(param1:String = "utf-8")
      {
         super();
         this.§=e§ = param1;
         this.§1S§ = this.§with§;
      }
      
      public function get active() : Boolean
      {
         return this.§1S§ !== this.§with§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§2;§ && this.§1S§ == this.§with§)
         {
            this.§2;§ = new URLStream();
            this.§2;§.endian = Endian.LITTLE_ENDIAN;
            this.§;! §();
            this.§=!#§ = [];
            this.§@M§ = new Dictionary();
            this.§1S§ = this.§switch§;
            this.§2;§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§2;§ && this.§1S§ == this.§with§)
         {
            this.§=!#§ = [];
            this.§@M§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§1S§ = this.§switch§;
            if(this.parse(param1))
            {
               this.§1S§ = this.§with§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?Q§(§?Q§.§#!>§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§2;§)
         {
            this.§1S§ = this.§with§;
            this.§>z§();
            this.§2;§.close();
            this.§2;§ = null;
         }
      }
      
      public function §?!E§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§=F§ = null;
         if(param1 != null && this.§=!#§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§=!#§.length)
            {
               if((_loc8_ = this.§=!#§[_loc7_] as §=F§) != null)
               {
                  _loc8_.§?!E§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?!E§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§=!4§);
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
      
      public function §65§() : uint
      {
         return !!this.§=!#§ ? uint(this.§=!#§.length) : uint(0);
      }
      
      public function §,!;§(param1:uint) : §=F§
      {
         return !!this.§=!#§ ? this.§=!#§[param1] as §=F§ : null;
      }
      
      public function §[F§(param1:String) : §=F§
      {
         return !!this.§@M§[param1] ? this.§@M§[param1] as §=F§ : null;
      }
      
      public function §;=§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §=F§
      {
         return this.§;h§(!!this.§=!#§ ? uint(this.§=!#§.length) : uint(0),param1,param2,param3);
      }
      
      public function §9G§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §=F§
      {
         return this.§"-§(!!this.§=!#§ ? uint(this.§=!#§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;h§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §=F§
      {
         if(this.§=!#§ == null)
         {
            this.§=!#§ = [];
         }
         if(this.§@M§ == null)
         {
            this.§@M§ = new Dictionary();
         }
         else if(this.§@M§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§=F§;
         (_loc5_ = new §=F§()).§26§ = param2;
         _loc5_.§!!N§(param3,param4);
         if(param1 >= this.§=!#§.length)
         {
            this.§=!#§.push(_loc5_);
         }
         else
         {
            this.§=!#§.splice(param1,0,_loc5_);
         }
         this.§@M§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"-§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §=F§
      {
         if(this.§=!#§ == null)
         {
            this.§=!#§ = [];
         }
         if(this.§@M§ == null)
         {
            this.§@M§ = new Dictionary();
         }
         else if(this.§@M§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§=F§;
         (_loc6_ = new §=F§()).§26§ = param2;
         _loc6_.§3o§(param3,param4,param5);
         if(param1 >= this.§=!#§.length)
         {
            this.§=!#§.push(_loc6_);
         }
         else
         {
            this.§=!#§.splice(param1,0,_loc6_);
         }
         this.§@M§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §!+§(param1:uint) : §=F§
      {
         var _loc2_:§=F§ = null;
         if(this.§=!#§ != null && this.§@M§ != null && param1 < this.§=!#§.length)
         {
            _loc2_ = this.§=!#§[param1] as §=F§;
            if(_loc2_ != null)
            {
               this.§=!#§.splice(param1,1);
               delete this.§@M§[_loc2_.§26§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§1S§(param1))
         {
         }
         return this.§1S§ === this.§with§;
      }
      
      protected function §with§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §switch§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §5"§:
                  this.§1S§ = this.§-!G§;
                  this.§true§ = new §=F§(this.§=e§);
                  break;
               case § e§:
               case §=!4§:
               case §'v§:
               case §]Z§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §]J§:
               case §`_§:
               case §;!7§:
                  this.§1S§ = this.§with§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-!G§(param1:IDataInput) : Boolean
      {
         if(this.§true§.parse(param1))
         {
            if(this.§true§.§'!>§)
            {
               this.§1S§ = this.§9n§;
               this.§,t§ = new ByteArray();
               this.§ h§ = 0;
               this.§%!'§ = 0;
               return true;
            }
            this.each();
            if(this.§1S§ != this.§with§)
            {
               this.§1S§ = this.§switch§;
               return true;
            }
         }
         return false;
      }
      
      protected function §9n§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§ h§ = this.§ h§ >>> 8 | _loc2_ << 24;
            if(this.§ h§ == §]J§)
            {
               this.§,t§.length -= 3;
               this.§1S§ = this.§7!#§;
               return true;
            }
            this.§,t§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §7!#§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§,t§.length == _loc3_)
            {
               this.§,t§.position = 0;
               this.§true§.§;!I§ = _loc2_;
               this.§true§.§59§ = _loc3_;
               this.§true§.§;!Q§ = _loc4_;
               this.§true§.§5!6§(this.§,t§);
               this.each();
               this.§1S§ = this.§switch§;
            }
            else
            {
               this.§,t§.writeUnsignedInt(_loc2_);
               this.§,t§.writeUnsignedInt(_loc3_);
               this.§,t§.writeUnsignedInt(_loc4_);
               this.§1S§ = this.§9n§;
            }
            return true;
         }
         return false;
      }
      
      protected function each() : void
      {
         this.§=!#§.push(this.§true§);
         if(this.§true§.§26§)
         {
            this.§@M§[this.§true§.§26§] = this.§true§;
         }
         dispatchEvent(new §0!G§(§0!G§.§,K§,this.§true§));
         this.§true§ = null;
      }
      
      protected function §6z§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§2;§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?Q§.§#!>§))
            {
               throw e;
            }
            dispatchEvent(new §?Q§(§?Q§.§#!>§,e.message));
         }
      }
      
      protected function §,!$§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §&!,§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §;! §() : void
      {
         this.§2;§.addEventListener(Event.COMPLETE,this.§,!$§);
         this.§2;§.addEventListener(Event.OPEN,this.§,!$§);
         this.§2;§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,!$§);
         this.§2;§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!,§);
         this.§2;§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!,§);
         this.§2;§.addEventListener(ProgressEvent.PROGRESS,this.§6z§);
      }
      
      protected function §>z§() : void
      {
         this.§2;§.removeEventListener(Event.COMPLETE,this.§,!$§);
         this.§2;§.removeEventListener(Event.OPEN,this.§,!$§);
         this.§2;§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,!$§);
         this.§2;§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!,§);
         this.§2;§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!,§);
         this.§2;§.removeEventListener(ProgressEvent.PROGRESS,this.§6z§);
      }
   }
}
