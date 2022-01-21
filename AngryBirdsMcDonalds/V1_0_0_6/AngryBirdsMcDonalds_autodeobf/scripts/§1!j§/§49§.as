package §1!j§
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
   
   public class §49§ extends EventDispatcher
   {
      
      static const §2A§:uint = 33639248;
      
      static const §;b§:uint = 808471376;
      
      static const §!$§:uint = 67324752;
      
      static const §7!F§:uint = 84233040;
      
      static const §]@§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §&b§:uint = 134695760;
      
      static const § $§:uint = 134630224;
      
      static const §;D§:uint = 134695760;
       
      
      protected var §1s§:Array;
      
      protected var §]!6§:Dictionary;
      
      protected var § c§:URLStream;
      
      protected var §!B§:String;
      
      protected var §^W§:Function;
      
      protected var §0e§:§&v§;
      
      protected var §3!+§:ByteArray;
      
      protected var §]!"§:uint;
      
      protected var §<!`§:uint;
      
      public function §49§(param1:String = "utf-8")
      {
         super();
         this.§!B§ = param1;
         this.§^W§ = this.§0f§;
      }
      
      public function get §0r§() : Boolean
      {
         return this.§^W§ !== this.§0f§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§ c§ && this.§^W§ == this.§0f§)
         {
            this.§ c§ = new URLStream();
            this.§ c§.endian = Endian.LITTLE_ENDIAN;
            this.§17§();
            this.§1s§ = [];
            this.§]!6§ = new Dictionary();
            this.§^W§ = this.§%E§;
            this.§ c§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§ c§ && this.§^W§ == this.§0f§)
         {
            this.§1s§ = [];
            this.§]!6§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§^W§ = this.§%E§;
            if(this.parse(param1))
            {
               this.§^W§ = this.§0f§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §2F§(§2F§.§=!i§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§ c§)
         {
            this.§^W§ = this.§0f§;
            this.§"!!§();
            this.§ c§.close();
            this.§ c§ = null;
         }
      }
      
      public function §&#§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§&v§ = null;
         if(param1 != null && this.§1s§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§1s§.length)
            {
               if((_loc8_ = this.§1s§[_loc7_] as §&v§) != null)
               {
                  _loc8_.§&#§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&#§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§]@§);
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
      
      public function §@i§() : uint
      {
         return !!this.§1s§ ? uint(this.§1s§.length) : uint(0);
      }
      
      public function §8!T§(param1:uint) : §&v§
      {
         return !!this.§1s§ ? this.§1s§[param1] as §&v§ : null;
      }
      
      public function §>!B§(param1:String) : §&v§
      {
         return !!this.§]!6§[param1] ? this.§]!6§[param1] as §&v§ : null;
      }
      
      public function §8!N§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §&v§
      {
         return this.§#6§(!!this.§1s§ ? uint(this.§1s§.length) : uint(0),param1,param2,param3);
      }
      
      public function §]b§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §&v§
      {
         return this.§9!M§(!!this.§1s§ ? uint(this.§1s§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §#6§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §&v§
      {
         if(this.§1s§ == null)
         {
            this.§1s§ = [];
         }
         if(this.§]!6§ == null)
         {
            this.§]!6§ = new Dictionary();
         }
         else if(this.§]!6§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§&v§;
         (_loc5_ = new §&v§()).§5!O§ = param2;
         _loc5_.§1E§(param3,param4);
         if(param1 >= this.§1s§.length)
         {
            this.§1s§.push(_loc5_);
         }
         else
         {
            this.§1s§.splice(param1,0,_loc5_);
         }
         this.§]!6§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §9!M§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §&v§
      {
         if(this.§1s§ == null)
         {
            this.§1s§ = [];
         }
         if(this.§]!6§ == null)
         {
            this.§]!6§ = new Dictionary();
         }
         else if(this.§]!6§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§&v§;
         (_loc6_ = new §&v§()).§5!O§ = param2;
         _loc6_.§8b§(param3,param4,param5);
         if(param1 >= this.§1s§.length)
         {
            this.§1s§.push(_loc6_);
         }
         else
         {
            this.§1s§.splice(param1,0,_loc6_);
         }
         this.§]!6§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §="§(param1:uint) : §&v§
      {
         var _loc2_:§&v§ = null;
         if(this.§1s§ != null && this.§]!6§ != null && param1 < this.§1s§.length)
         {
            _loc2_ = this.§1s§[param1] as §&v§;
            if(_loc2_ != null)
            {
               this.§1s§.splice(param1,1);
               delete this.§]!6§[_loc2_.§5!O§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§^W§(param1))
         {
         }
         return this.§^W§ === this.§0f§;
      }
      
      protected function §0f§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §%E§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §!$§:
                  this.§^W§ = this.§%§;
                  this.§0e§ = new §&v§(this.§!B§);
                  break;
               case §2A§:
               case §]@§:
               case §;b§:
               case §7!F§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §&b§:
               case § $§:
               case §;D§:
                  this.§^W§ = this.§0f§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §%§(param1:IDataInput) : Boolean
      {
         if(this.§0e§.parse(param1))
         {
            if(this.§0e§.§-!&§)
            {
               this.§^W§ = this.§6`§;
               this.§3!+§ = new ByteArray();
               this.§]!"§ = 0;
               this.§<!`§ = 0;
               return true;
            }
            this.§-I§();
            if(this.§^W§ != this.§0f§)
            {
               this.§^W§ = this.§%E§;
               return true;
            }
         }
         return false;
      }
      
      protected function §6`§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§]!"§ = this.§]!"§ >>> 8 | _loc2_ << 24;
            if(this.§]!"§ == §&b§)
            {
               this.§3!+§.length -= 3;
               this.§^W§ = this.§ do§;
               return true;
            }
            this.§3!+§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function § do§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§3!+§.length == _loc3_)
            {
               this.§3!+§.position = 0;
               this.§0e§.§<!"§ = _loc2_;
               this.§0e§.§1_§ = _loc3_;
               this.§0e§.§!;§ = _loc4_;
               this.§0e§.§'[§(this.§3!+§);
               this.§-I§();
               this.§^W§ = this.§%E§;
            }
            else
            {
               this.§3!+§.writeUnsignedInt(_loc2_);
               this.§3!+§.writeUnsignedInt(_loc3_);
               this.§3!+§.writeUnsignedInt(_loc4_);
               this.§^W§ = this.§6`§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-I§() : void
      {
         this.§1s§.push(this.§0e§);
         if(this.§0e§.§5!O§)
         {
            this.§]!6§[this.§0e§.§5!O§] = this.§0e§;
         }
         dispatchEvent(new §%!-§(§%!-§.§2I§,this.§0e§));
         this.§0e§ = null;
      }
      
      protected function §<§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§ c§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§2F§.§=!i§))
            {
               throw e;
            }
            dispatchEvent(new §2F§(§2F§.§=!i§,e.message));
         }
      }
      
      protected function §!!&§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §!!4§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §17§() : void
      {
         this.§ c§.addEventListener(Event.COMPLETE,this.§!!&§);
         this.§ c§.addEventListener(Event.OPEN,this.§!!&§);
         this.§ c§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!&§);
         this.§ c§.addEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
         this.§ c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
         this.§ c§.addEventListener(ProgressEvent.PROGRESS,this.§<§);
      }
      
      protected function §"!!§() : void
      {
         this.§ c§.removeEventListener(Event.COMPLETE,this.§!!&§);
         this.§ c§.removeEventListener(Event.OPEN,this.§!!&§);
         this.§ c§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!&§);
         this.§ c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
         this.§ c§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
         this.§ c§.removeEventListener(ProgressEvent.PROGRESS,this.§<§);
      }
   }
}
