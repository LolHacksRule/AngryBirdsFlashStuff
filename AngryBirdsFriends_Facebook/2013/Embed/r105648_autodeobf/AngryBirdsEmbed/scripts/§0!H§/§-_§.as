package §0!H§
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
   
   public class §-_§ extends EventDispatcher
   {
      
      static const §'h§:uint = 33639248;
      
      static const §%C§:uint = 808471376;
      
      static const §99§:uint = 67324752;
      
      static const §^O§:uint = 84233040;
      
      static const §=R§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §;C§:uint = 134695760;
      
      static const §#A§:uint = 134630224;
      
      static const §1o§:uint = 134695760;
       
      
      protected var §7u§:Array;
      
      protected var §,-§:Dictionary;
      
      protected var §3!#§:URLStream;
      
      protected var §9J§:String;
      
      protected var §?§:Function;
      
      protected var §0S§:§>&§;
      
      protected var §!N§:ByteArray;
      
      protected var §;5§:uint;
      
      protected var §3! §:uint;
      
      public function §-_§(param1:String = "utf-8")
      {
         super();
         this.§9J§ = param1;
         this.§?§ = this.§08§;
      }
      
      public function get active() : Boolean
      {
         return this.§?§ !== this.§08§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§3!#§ && this.§?§ == this.§08§)
         {
            this.§3!#§ = new URLStream();
            this.§3!#§.endian = Endian.LITTLE_ENDIAN;
            this.§"S§();
            this.§7u§ = [];
            this.§,-§ = new Dictionary();
            this.§?§ = this.§5i§;
            this.§3!#§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§3!#§ && this.§?§ == this.§08§)
         {
            this.§7u§ = [];
            this.§,-§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§?§ = this.§5i§;
            if(this.parse(param1))
            {
               this.§?§ = this.§08§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §4`§(§4`§.§^i§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§3!#§)
         {
            this.§?§ = this.§08§;
            this.§8#§();
            this.§3!#§.close();
            this.§3!#§ = null;
         }
      }
      
      public function §5O§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>&§ = null;
         if(param1 != null && this.§7u§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7u§.length)
            {
               if((_loc8_ = this.§7u§[_loc7_] as §>&§) != null)
               {
                  _loc8_.§5O§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§5O§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§=R§);
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
      
      public function §+M§() : uint
      {
         return !!this.§7u§ ? uint(this.§7u§.length) : uint(0);
      }
      
      public function §%#§(param1:uint) : §>&§
      {
         return !!this.§7u§ ? this.§7u§[param1] as §>&§ : null;
      }
      
      public function §<!I§(param1:String) : §>&§
      {
         return !!this.§,-§[param1] ? this.§,-§[param1] as §>&§ : null;
      }
      
      public function §var§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>&§
      {
         return this.§52§(!!this.§7u§ ? uint(this.§7u§.length) : uint(0),param1,param2,param3);
      }
      
      public function §8?§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>&§
      {
         return this.§ ;§(!!this.§7u§ ? uint(this.§7u§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §52§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>&§
      {
         if(this.§7u§ == null)
         {
            this.§7u§ = [];
         }
         if(this.§,-§ == null)
         {
            this.§,-§ = new Dictionary();
         }
         else if(this.§,-§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>&§;
         (_loc5_ = new §>&§()).§[u§ = param2;
         _loc5_.§%!M§(param3,param4);
         if(param1 >= this.§7u§.length)
         {
            this.§7u§.push(_loc5_);
         }
         else
         {
            this.§7u§.splice(param1,0,_loc5_);
         }
         this.§,-§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function § ;§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>&§
      {
         if(this.§7u§ == null)
         {
            this.§7u§ = [];
         }
         if(this.§,-§ == null)
         {
            this.§,-§ = new Dictionary();
         }
         else if(this.§,-§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>&§;
         (_loc6_ = new §>&§()).§[u§ = param2;
         _loc6_.§7v§(param3,param4,param5);
         if(param1 >= this.§7u§.length)
         {
            this.§7u§.push(_loc6_);
         }
         else
         {
            this.§7u§.splice(param1,0,_loc6_);
         }
         this.§,-§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §0n§(param1:uint) : §>&§
      {
         var _loc2_:§>&§ = null;
         if(this.§7u§ != null && this.§,-§ != null && param1 < this.§7u§.length)
         {
            _loc2_ = this.§7u§[param1] as §>&§;
            if(_loc2_ != null)
            {
               this.§7u§.splice(param1,1);
               delete this.§,-§[_loc2_.§[u§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§?§(param1))
         {
         }
         return this.§?§ === this.§08§;
      }
      
      protected function §08§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §5i§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §99§:
                  this.§?§ = this.§ !K§;
                  this.§0S§ = new §>&§(this.§9J§);
                  break;
               case §'h§:
               case §=R§:
               case §%C§:
               case §^O§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §;C§:
               case §#A§:
               case §1o§:
                  this.§?§ = this.§08§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function § !K§(param1:IDataInput) : Boolean
      {
         if(this.§0S§.parse(param1))
         {
            if(this.§0S§.§-!G§)
            {
               this.§?§ = this.§?P§;
               this.§!N§ = new ByteArray();
               this.§;5§ = 0;
               this.§3! § = 0;
               return true;
            }
            this.§"n§();
            if(this.§?§ != this.§08§)
            {
               this.§?§ = this.§5i§;
               return true;
            }
         }
         return false;
      }
      
      protected function §?P§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§;5§ = this.§;5§ >>> 8 | _loc2_ << 24;
            if(this.§;5§ == §;C§)
            {
               this.§!N§.length -= 3;
               this.§?§ = this.§6@§;
               return true;
            }
            this.§!N§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §6@§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§!N§.length == _loc3_)
            {
               this.§!N§.position = 0;
               this.§0S§.§>!I§ = _loc2_;
               this.§0S§.§7z§ = _loc3_;
               this.§0S§.§3Y§ = _loc4_;
               this.§0S§.§!d§(this.§!N§);
               this.§"n§();
               this.§?§ = this.§5i§;
            }
            else
            {
               this.§!N§.writeUnsignedInt(_loc2_);
               this.§!N§.writeUnsignedInt(_loc3_);
               this.§!N§.writeUnsignedInt(_loc4_);
               this.§?§ = this.§?P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §"n§() : void
      {
         this.§7u§.push(this.§0S§);
         if(this.§0S§.§[u§)
         {
            this.§,-§[this.§0S§.§[u§] = this.§0S§;
         }
         dispatchEvent(new §'6§(§'6§.§ try§,this.§0S§));
         this.§0S§ = null;
      }
      
      protected function §0!'§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§3!#§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§4`§.§^i§))
            {
               throw e;
            }
            dispatchEvent(new §4`§(§4`§.§^i§,e.message));
         }
      }
      
      protected function §6#§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §2C§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"S§() : void
      {
         this.§3!#§.addEventListener(Event.COMPLETE,this.§6#§);
         this.§3!#§.addEventListener(Event.OPEN,this.§6#§);
         this.§3!#§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6#§);
         this.§3!#§.addEventListener(IOErrorEvent.IO_ERROR,this.§2C§);
         this.§3!#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2C§);
         this.§3!#§.addEventListener(ProgressEvent.PROGRESS,this.§0!'§);
      }
      
      protected function §8#§() : void
      {
         this.§3!#§.removeEventListener(Event.COMPLETE,this.§6#§);
         this.§3!#§.removeEventListener(Event.OPEN,this.§6#§);
         this.§3!#§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6#§);
         this.§3!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2C§);
         this.§3!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2C§);
         this.§3!#§.removeEventListener(ProgressEvent.PROGRESS,this.§0!'§);
      }
   }
}
