package §5! §
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
   
   public class §27§ extends EventDispatcher
   {
      
      static const §'!7§:uint = 33639248;
      
      static const §2?§:uint = 808471376;
      
      static const §@!]§:uint = 67324752;
      
      static const §>%§:uint = 84233040;
      
      static const §6!Q§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#]§:uint = 134695760;
      
      static const §5!d§:uint = 134630224;
      
      static const §7u§:uint = 134695760;
       
      
      protected var §4T§:Array;
      
      protected var §7Y§:Dictionary;
      
      protected var §2!_§:URLStream;
      
      protected var §]!I§:String;
      
      protected var §&x§:Function;
      
      protected var §;H§:§#!E§;
      
      protected var §5!v§:ByteArray;
      
      protected var §5P§:uint;
      
      protected var §!w§:uint;
      
      public function §27§(param1:String = "utf-8")
      {
         super();
         this.§]!I§ = param1;
         this.§&x§ = this.§+!#§;
      }
      
      public function get active() : Boolean
      {
         return this.§&x§ !== this.§+!#§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§2!_§ && this.§&x§ == this.§+!#§)
         {
            this.§2!_§ = new URLStream();
            this.§2!_§.endian = Endian.LITTLE_ENDIAN;
            this.§6!'§();
            this.§4T§ = [];
            this.§7Y§ = new Dictionary();
            this.§&x§ = this.§"`§;
            this.§2!_§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§2!_§ && this.§&x§ == this.§+!#§)
         {
            this.§4T§ = [];
            this.§7Y§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§&x§ = this.§"`§;
            if(this.parse(param1))
            {
               this.§&x§ = this.§+!#§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §]A§(§]A§.§&!3§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§2!_§)
         {
            this.§&x§ = this.§+!#§;
            this.§?%§();
            this.§2!_§.close();
            this.§2!_§ = null;
         }
      }
      
      public function §=&§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§#!E§ = null;
         if(param1 != null && this.§4T§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§4T§.length)
            {
               if((_loc8_ = this.§4T§[_loc7_] as §#!E§) != null)
               {
                  _loc8_.§=&§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§=&§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§6!Q§);
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
      
      public function §-!p§() : uint
      {
         return !!this.§4T§ ? uint(this.§4T§.length) : uint(0);
      }
      
      public function §0!i§(param1:uint) : §#!E§
      {
         return !!this.§4T§ ? this.§4T§[param1] as §#!E§ : null;
      }
      
      public function §?w§(param1:String) : §#!E§
      {
         return !!this.§7Y§[param1] ? this.§7Y§[param1] as §#!E§ : null;
      }
      
      public function §4!p§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#!E§
      {
         return this.§1!Q§(!!this.§4T§ ? uint(this.§4T§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,T§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#!E§
      {
         return this.§1§(!!this.§4T§ ? uint(this.§4T§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §1!Q§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#!E§
      {
         if(this.§4T§ == null)
         {
            this.§4T§ = [];
         }
         if(this.§7Y§ == null)
         {
            this.§7Y§ = new Dictionary();
         }
         else if(this.§7Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§#!E§;
         (_loc5_ = new §#!E§()).§%n§ = param2;
         _loc5_.§2!6§(param3,param4);
         if(param1 >= this.§4T§.length)
         {
            this.§4T§.push(_loc5_);
         }
         else
         {
            this.§4T§.splice(param1,0,_loc5_);
         }
         this.§7Y§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §1§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#!E§
      {
         if(this.§4T§ == null)
         {
            this.§4T§ = [];
         }
         if(this.§7Y§ == null)
         {
            this.§7Y§ = new Dictionary();
         }
         else if(this.§7Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§#!E§;
         (_loc6_ = new §#!E§()).§%n§ = param2;
         _loc6_.§super§(param3,param4,param5);
         if(param1 >= this.§4T§.length)
         {
            this.§4T§.push(_loc6_);
         }
         else
         {
            this.§4T§.splice(param1,0,_loc6_);
         }
         this.§7Y§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §4!G§(param1:uint) : §#!E§
      {
         var _loc2_:§#!E§ = null;
         if(this.§4T§ != null && this.§7Y§ != null && param1 < this.§4T§.length)
         {
            _loc2_ = this.§4T§[param1] as §#!E§;
            if(_loc2_ != null)
            {
               this.§4T§.splice(param1,1);
               delete this.§7Y§[_loc2_.§%n§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§&x§(param1))
         {
         }
         return this.§&x§ === this.§+!#§;
      }
      
      protected function §+!#§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"`§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §@!]§:
                  this.§&x§ = this.§-!&§;
                  this.§;H§ = new §#!E§(this.§]!I§);
                  break;
               case §'!7§:
               case §6!Q§:
               case §2?§:
               case §>%§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §#]§:
               case §5!d§:
               case §7u§:
                  this.§&x§ = this.§+!#§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-!&§(param1:IDataInput) : Boolean
      {
         if(this.§;H§.parse(param1))
         {
            if(this.§;H§.§1x§)
            {
               this.§&x§ = this.§9!Z§;
               this.§5!v§ = new ByteArray();
               this.§5P§ = 0;
               this.§!w§ = 0;
               return true;
            }
            this.§ !I§();
            if(this.§&x§ != this.§+!#§)
            {
               this.§&x§ = this.§"`§;
               return true;
            }
         }
         return false;
      }
      
      protected function §9!Z§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§5P§ = this.§5P§ >>> 8 | _loc2_ << 24;
            if(this.§5P§ == §#]§)
            {
               this.§5!v§.length -= 3;
               this.§&x§ = this.§0h§;
               return true;
            }
            this.§5!v§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §0h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§5!v§.length == _loc3_)
            {
               this.§5!v§.position = 0;
               this.§;H§.§[!5§ = _loc2_;
               this.§;H§.§2!t§ = _loc3_;
               this.§;H§.§3!Q§ = _loc4_;
               this.§;H§.§"r§(this.§5!v§);
               this.§ !I§();
               this.§&x§ = this.§"`§;
            }
            else
            {
               this.§5!v§.writeUnsignedInt(_loc2_);
               this.§5!v§.writeUnsignedInt(_loc3_);
               this.§5!v§.writeUnsignedInt(_loc4_);
               this.§&x§ = this.§9!Z§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !I§() : void
      {
         this.§4T§.push(this.§;H§);
         if(this.§;H§.§%n§)
         {
            this.§7Y§[this.§;H§.§%n§] = this.§;H§;
         }
         dispatchEvent(new §4d§(§4d§.§&!4§,this.§;H§));
         this.§;H§ = null;
      }
      
      protected function §+!8§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§2!_§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§]A§.§&!3§))
            {
               throw e;
            }
            dispatchEvent(new §]A§(§]A§.§&!3§,e.message));
         }
      }
      
      protected function §!C§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §6!U§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §6!'§() : void
      {
         this.§2!_§.addEventListener(Event.COMPLETE,this.§!C§);
         this.§2!_§.addEventListener(Event.OPEN,this.§!C§);
         this.§2!_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!C§);
         this.§2!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§6!U§);
         this.§2!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!U§);
         this.§2!_§.addEventListener(ProgressEvent.PROGRESS,this.§+!8§);
      }
      
      protected function §?%§() : void
      {
         this.§2!_§.removeEventListener(Event.COMPLETE,this.§!C§);
         this.§2!_§.removeEventListener(Event.OPEN,this.§!C§);
         this.§2!_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!C§);
         this.§2!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!U§);
         this.§2!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!U§);
         this.§2!_§.removeEventListener(ProgressEvent.PROGRESS,this.§+!8§);
      }
   }
}
