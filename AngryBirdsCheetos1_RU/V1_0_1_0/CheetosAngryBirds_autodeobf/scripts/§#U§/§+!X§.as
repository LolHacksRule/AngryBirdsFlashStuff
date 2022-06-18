package §#U§
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
   
   public class §+!X§ extends EventDispatcher
   {
      
      static const §0X§:uint = 33639248;
      
      static const §%!'§:uint = 808471376;
      
      static const §"<§:uint = 67324752;
      
      static const §=1§:uint = 84233040;
      
      static const §@!`§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §`!C§:uint = 134695760;
      
      static const §5j§:uint = 134630224;
      
      static const §"d§:uint = 134695760;
       
      
      protected var §%Z§:Array;
      
      protected var §^b§:Dictionary;
      
      protected var §<! §:URLStream;
      
      protected var § W§:String;
      
      protected var §,P§:Function;
      
      protected var §-!S§:§ !`§;
      
      protected var §'!7§:ByteArray;
      
      protected var §?_§:uint;
      
      protected var §#!Y§:uint;
      
      public function §+!X§(param1:String = "utf-8")
      {
         super();
         this.§ W§ = param1;
         this.§,P§ = this.§=!F§;
      }
      
      public function get §3w§() : Boolean
      {
         return this.§,P§ !== this.§=!F§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§<! § && this.§,P§ == this.§=!F§)
         {
            this.§<! § = new URLStream();
            this.§<! §.endian = Endian.LITTLE_ENDIAN;
            this.§4^§();
            this.§%Z§ = [];
            this.§^b§ = new Dictionary();
            this.§,P§ = this.§,c§;
            this.§<! §.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§<! § && this.§,P§ == this.§=!F§)
         {
            this.§%Z§ = [];
            this.§^b§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§,P§ = this.§,c§;
            if(this.parse(param1))
            {
               this.§,P§ = this.§=!F§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'!^§(§'!^§.§1!a§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§<! §)
         {
            this.§,P§ = this.§=!F§;
            this.§"O§();
            this.§<! §.close();
            this.§<! § = null;
         }
      }
      
      public function §use §(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§ !`§ = null;
         if(param1 != null && this.§%Z§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§%Z§.length)
            {
               if((_loc8_ = this.§%Z§[_loc7_] as § !`§) != null)
               {
                  _loc8_.§use §(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§use §(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@!`§);
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
      
      public function §7S§() : uint
      {
         return !!this.§%Z§ ? uint(this.§%Z§.length) : uint(0);
      }
      
      public function §-!,§(param1:uint) : § !`§
      {
         return !!this.§%Z§ ? this.§%Z§[param1] as § !`§ : null;
      }
      
      public function §%4§(param1:String) : § !`§
      {
         return !!this.§^b§[param1] ? this.§^b§[param1] as § !`§ : null;
      }
      
      public function §5!G§(param1:String, param2:ByteArray = null, param3:Boolean = true) : § !`§
      {
         return this.§3!=§(!!this.§%Z§ ? uint(this.§%Z§.length) : uint(0),param1,param2,param3);
      }
      
      public function §'!1§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : § !`§
      {
         return this.§"w§(!!this.§%Z§ ? uint(this.§%Z§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §3!=§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : § !`§
      {
         if(this.§%Z§ == null)
         {
            this.§%Z§ = [];
         }
         if(this.§^b§ == null)
         {
            this.§^b§ = new Dictionary();
         }
         else if(this.§^b§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§ !`§;
         (_loc5_ = new § !`§()).§;!F§ = param2;
         _loc5_.§-@§(param3,param4);
         if(param1 >= this.§%Z§.length)
         {
            this.§%Z§.push(_loc5_);
         }
         else
         {
            this.§%Z§.splice(param1,0,_loc5_);
         }
         this.§^b§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"w§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : § !`§
      {
         if(this.§%Z§ == null)
         {
            this.§%Z§ = [];
         }
         if(this.§^b§ == null)
         {
            this.§^b§ = new Dictionary();
         }
         else if(this.§^b§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§ !`§;
         (_loc6_ = new § !`§()).§;!F§ = param2;
         _loc6_.§<o§(param3,param4,param5);
         if(param1 >= this.§%Z§.length)
         {
            this.§%Z§.push(_loc6_);
         }
         else
         {
            this.§%Z§.splice(param1,0,_loc6_);
         }
         this.§^b§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §<u§(param1:uint) : § !`§
      {
         var _loc2_:§ !`§ = null;
         if(this.§%Z§ != null && this.§^b§ != null && param1 < this.§%Z§.length)
         {
            _loc2_ = this.§%Z§[param1] as § !`§;
            if(_loc2_ != null)
            {
               this.§%Z§.splice(param1,1);
               delete this.§^b§[_loc2_.§;!F§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§,P§(param1))
         {
         }
         return this.§,P§ === this.§=!F§;
      }
      
      protected function §=!F§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,c§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §"<§:
                  this.§,P§ = this.§80§;
                  this.§-!S§ = new § !`§(this.§ W§);
                  break;
               case §0X§:
               case §@!`§:
               case §%!'§:
               case §=1§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §`!C§:
               case §5j§:
               case §"d§:
                  this.§,P§ = this.§=!F§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §80§(param1:IDataInput) : Boolean
      {
         if(this.§-!S§.parse(param1))
         {
            if(this.§-!S§.§3!>§)
            {
               this.§,P§ = this.§ !P§;
               this.§'!7§ = new ByteArray();
               this.§?_§ = 0;
               this.§#!Y§ = 0;
               return true;
            }
            this.§6d§();
            if(this.§,P§ != this.§=!F§)
            {
               this.§,P§ = this.§,c§;
               return true;
            }
         }
         return false;
      }
      
      protected function § !P§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§?_§ = this.§?_§ >>> 8 | _loc2_ << 24;
            if(this.§?_§ == §`!C§)
            {
               this.§'!7§.length -= 3;
               this.§,P§ = this.§>!"§;
               return true;
            }
            this.§'!7§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §>!"§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§'!7§.length == _loc3_)
            {
               this.§'!7§.position = 0;
               this.§-!S§.§?!F§ = _loc2_;
               this.§-!S§.§1m§ = _loc3_;
               this.§-!S§.§ 0§ = _loc4_;
               this.§-!S§.§1!^§(this.§'!7§);
               this.§6d§();
               this.§,P§ = this.§,c§;
            }
            else
            {
               this.§'!7§.writeUnsignedInt(_loc2_);
               this.§'!7§.writeUnsignedInt(_loc3_);
               this.§'!7§.writeUnsignedInt(_loc4_);
               this.§,P§ = this.§ !P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6d§() : void
      {
         this.§%Z§.push(this.§-!S§);
         if(this.§-!S§.§;!F§)
         {
            this.§^b§[this.§-!S§.§;!F§] = this.§-!S§;
         }
         dispatchEvent(new §;!a§(§;!a§.§^6§,this.§-!S§));
         this.§-!S§ = null;
      }
      
      protected function §+!;§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§<! §))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'!^§.§1!a§))
            {
               throw e;
            }
            dispatchEvent(new §'!^§(§'!^§.§1!a§,e.message));
         }
      }
      
      protected function §&!'§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §5!Z§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §4^§() : void
      {
         this.§<! §.addEventListener(Event.COMPLETE,this.§&!'§);
         this.§<! §.addEventListener(Event.OPEN,this.§&!'§);
         this.§<! §.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&!'§);
         this.§<! §.addEventListener(IOErrorEvent.IO_ERROR,this.§5!Z§);
         this.§<! §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!Z§);
         this.§<! §.addEventListener(ProgressEvent.PROGRESS,this.§+!;§);
      }
      
      protected function §"O§() : void
      {
         this.§<! §.removeEventListener(Event.COMPLETE,this.§&!'§);
         this.§<! §.removeEventListener(Event.OPEN,this.§&!'§);
         this.§<! §.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&!'§);
         this.§<! §.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!Z§);
         this.§<! §.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!Z§);
         this.§<! §.removeEventListener(ProgressEvent.PROGRESS,this.§+!;§);
      }
   }
}
