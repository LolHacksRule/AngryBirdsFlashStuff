package §2%§
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
   
   public class §&!7§ extends EventDispatcher
   {
      
      static const §2Y§:uint = 33639248;
      
      static const §"!;§:uint = 808471376;
      
      static const §!!O§:uint = 67324752;
      
      static const §=L§:uint = 84233040;
      
      static const §1l§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#p§:uint = 134695760;
      
      static const §-D§:uint = 134630224;
      
      static const §8T§:uint = 134695760;
       
      
      protected var §`+§:Array;
      
      protected var §"u§:Dictionary;
      
      protected var §]!H§:URLStream;
      
      protected var §8x§:String;
      
      protected var § &§:Function;
      
      protected var §0I§:§&i§;
      
      protected var §>e§:ByteArray;
      
      protected var §%!C§:uint;
      
      protected var §9D§:uint;
      
      public function §&!7§(param1:String = "utf-8")
      {
         super();
         this.§8x§ = param1;
         this.§ &§ = this.§#a§;
      }
      
      public function get active() : Boolean
      {
         return this.§ &§ !== this.§#a§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§]!H§ && this.§ &§ == this.§#a§)
         {
            this.§]!H§ = new URLStream();
            this.§]!H§.endian = Endian.LITTLE_ENDIAN;
            this.§!l§();
            this.§`+§ = [];
            this.§"u§ = new Dictionary();
            this.§ &§ = this.§=[§;
            this.§]!H§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§]!H§ && this.§ &§ == this.§#a§)
         {
            this.§`+§ = [];
            this.§"u§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§ &§ = this.§=[§;
            if(this.parse(param1))
            {
               this.§ &§ = this.§#a§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §#7§(§#7§.§"O§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§]!H§)
         {
            this.§ &§ = this.§#a§;
            this.§!`§();
            this.§]!H§.close();
            this.§]!H§ = null;
         }
      }
      
      public function §?M§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§&i§ = null;
         if(param1 != null && this.§`+§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§`+§.length)
            {
               if((_loc8_ = this.§`+§[_loc7_] as §&i§) != null)
               {
                  _loc8_.§?M§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?M§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§1l§);
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
      
      public function § h§() : uint
      {
         return !!this.§`+§ ? uint(this.§`+§.length) : uint(0);
      }
      
      public function §6s§(param1:uint) : §&i§
      {
         return !!this.§`+§ ? this.§`+§[param1] as §&i§ : null;
      }
      
      public function §?2§(param1:String) : §&i§
      {
         return !!this.§"u§[param1] ? this.§"u§[param1] as §&i§ : null;
      }
      
      public function §@v§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §&i§
      {
         return this.§%9§(!!this.§`+§ ? uint(this.§`+§.length) : uint(0),param1,param2,param3);
      }
      
      public function §2^§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §&i§
      {
         return this.§8!0§(!!this.§`+§ ? uint(this.§`+§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §%9§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §&i§
      {
         if(this.§`+§ == null)
         {
            this.§`+§ = [];
         }
         if(this.§"u§ == null)
         {
            this.§"u§ = new Dictionary();
         }
         else if(this.§"u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§&i§;
         (_loc5_ = new §&i§()).§1p§ = param2;
         _loc5_.§9!L§(param3,param4);
         if(param1 >= this.§`+§.length)
         {
            this.§`+§.push(_loc5_);
         }
         else
         {
            this.§`+§.splice(param1,0,_loc5_);
         }
         this.§"u§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §8!0§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §&i§
      {
         if(this.§`+§ == null)
         {
            this.§`+§ = [];
         }
         if(this.§"u§ == null)
         {
            this.§"u§ = new Dictionary();
         }
         else if(this.§"u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§&i§;
         (_loc6_ = new §&i§()).§1p§ = param2;
         _loc6_.§%;§(param3,param4,param5);
         if(param1 >= this.§`+§.length)
         {
            this.§`+§.push(_loc6_);
         }
         else
         {
            this.§`+§.splice(param1,0,_loc6_);
         }
         this.§"u§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §'!C§(param1:uint) : §&i§
      {
         var _loc2_:§&i§ = null;
         if(this.§`+§ != null && this.§"u§ != null && param1 < this.§`+§.length)
         {
            _loc2_ = this.§`+§[param1] as §&i§;
            if(_loc2_ != null)
            {
               this.§`+§.splice(param1,1);
               delete this.§"u§[_loc2_.§1p§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§ &§(param1))
         {
         }
         return this.§ &§ === this.§#a§;
      }
      
      protected function §#a§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=[§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §!!O§:
                  this.§ &§ = this.§1f§;
                  this.§0I§ = new §&i§(this.§8x§);
                  break;
               case §2Y§:
               case §1l§:
               case §"!;§:
               case §=L§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §#p§:
               case §-D§:
               case §8T§:
                  this.§ &§ = this.§#a§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §1f§(param1:IDataInput) : Boolean
      {
         if(this.§0I§.parse(param1))
         {
            if(this.§0I§.§2I§)
            {
               this.§ &§ = this.§]X§;
               this.§>e§ = new ByteArray();
               this.§%!C§ = 0;
               this.§9D§ = 0;
               return true;
            }
            this.§"=§();
            if(this.§ &§ != this.§#a§)
            {
               this.§ &§ = this.§=[§;
               return true;
            }
         }
         return false;
      }
      
      protected function §]X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%!C§ = this.§%!C§ >>> 8 | _loc2_ << 24;
            if(this.§%!C§ == §#p§)
            {
               this.§>e§.length -= 3;
               this.§ &§ = this.§8L§;
               return true;
            }
            this.§>e§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §8L§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§>e§.length == _loc3_)
            {
               this.§>e§.position = 0;
               this.§0I§.§[v§ = _loc2_;
               this.§0I§.§2y§ = _loc3_;
               this.§0I§.§"K§ = _loc4_;
               this.§0I§.§6]§(this.§>e§);
               this.§"=§();
               this.§ &§ = this.§=[§;
            }
            else
            {
               this.§>e§.writeUnsignedInt(_loc2_);
               this.§>e§.writeUnsignedInt(_loc3_);
               this.§>e§.writeUnsignedInt(_loc4_);
               this.§ &§ = this.§]X§;
            }
            return true;
         }
         return false;
      }
      
      protected function §"=§() : void
      {
         this.§`+§.push(this.§0I§);
         if(this.§0I§.§1p§)
         {
            this.§"u§[this.§0I§.§1p§] = this.§0I§;
         }
         dispatchEvent(new §3!§(§3!§.§^C§,this.§0I§));
         this.§0I§ = null;
      }
      
      protected function §=d§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§]!H§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§#7§.§"O§))
            {
               throw e;
            }
            dispatchEvent(new §#7§(§#7§.§"O§,e.message));
         }
      }
      
      protected function §2m§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §"c§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §!l§() : void
      {
         this.§]!H§.addEventListener(Event.COMPLETE,this.§2m§);
         this.§]!H§.addEventListener(Event.OPEN,this.§2m§);
         this.§]!H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2m§);
         this.§]!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§"c§);
         this.§]!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"c§);
         this.§]!H§.addEventListener(ProgressEvent.PROGRESS,this.§=d§);
      }
      
      protected function §!`§() : void
      {
         this.§]!H§.removeEventListener(Event.COMPLETE,this.§2m§);
         this.§]!H§.removeEventListener(Event.OPEN,this.§2m§);
         this.§]!H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2m§);
         this.§]!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"c§);
         this.§]!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"c§);
         this.§]!H§.removeEventListener(ProgressEvent.PROGRESS,this.§=d§);
      }
   }
}
