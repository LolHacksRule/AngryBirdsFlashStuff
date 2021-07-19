package §;"j§
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
   
   public class §[h§ extends EventDispatcher
   {
      
      static const §[!M§:uint = 33639248;
      
      static const §&F§:uint = 808471376;
      
      static const § #%§:uint = 67324752;
      
      static const §6"t§:uint = 84233040;
      
      static const §@!v§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §&"R§:uint = 134695760;
      
      static const §5!0§:uint = 134630224;
      
      static const §5"g§:uint = 134695760;
       
      
      protected var §>!u§:Array;
      
      protected var §9!i§:Dictionary;
      
      protected var §?"_§:URLStream;
      
      protected var §"!y§:String;
      
      protected var §;L§:Function;
      
      protected var §5K§:§4"W§;
      
      protected var §-q§:ByteArray;
      
      protected var §4[§:uint;
      
      protected var §7;§:uint;
      
      public function §[h§(param1:String = "utf-8")
      {
         super();
         this.§"!y§ = param1;
         this.§;L§ = this.§["Z§;
      }
      
      public function get active() : Boolean
      {
         return this.§;L§ !== this.§["Z§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§?"_§ && this.§;L§ == this.§["Z§)
         {
            this.§?"_§ = new URLStream();
            this.§?"_§.endian = Endian.LITTLE_ENDIAN;
            this.§"#U§();
            this.§>!u§ = [];
            this.§9!i§ = new Dictionary();
            this.§;L§ = this.§2"&§;
            this.§?"_§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§?"_§ && this.§;L§ == this.§["Z§)
         {
            this.§>!u§ = [];
            this.§9!i§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;L§ = this.§2"&§;
            if(this.parse(param1))
            {
               this.§;L§ = this.§["Z§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §1X§(§1X§.§="`§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§?"_§)
         {
            this.§;L§ = this.§["Z§;
            this.§6E§();
            this.§?"_§.close();
            this.§?"_§ = null;
         }
      }
      
      public function §?" §(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§4"W§ = null;
         if(param1 != null && this.§>!u§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§>!u§.length)
            {
               if((_loc8_ = this.§>!u§[_loc7_] as §4"W§) != null)
               {
                  _loc8_.§?" §(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?" §(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@!v§);
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
      
      public function §[B§() : uint
      {
         return !!this.§>!u§ ? uint(this.§>!u§.length) : uint(0);
      }
      
      public function §[!<§(param1:uint) : §4"W§
      {
         return !!this.§>!u§ ? this.§>!u§[param1] as §4"W§ : null;
      }
      
      public function §5+§(param1:String) : §4"W§
      {
         return !!this.§9!i§[param1] ? this.§9!i§[param1] as §4"W§ : null;
      }
      
      public function §"Z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §4"W§
      {
         return this.§^D§(!!this.§>!u§ ? uint(this.§>!u§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>"&§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §4"W§
      {
         return this.§3!V§(!!this.§>!u§ ? uint(this.§>!u§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §^D§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §4"W§
      {
         if(this.§>!u§ == null)
         {
            this.§>!u§ = [];
         }
         if(this.§9!i§ == null)
         {
            this.§9!i§ = new Dictionary();
         }
         else if(this.§9!i§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§4"W§;
         (_loc5_ = new §4"W§()).§1"n§ = param2;
         _loc5_.§58§(param3,param4);
         if(param1 >= this.§>!u§.length)
         {
            this.§>!u§.push(_loc5_);
         }
         else
         {
            this.§>!u§.splice(param1,0,_loc5_);
         }
         this.§9!i§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §3!V§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §4"W§
      {
         if(this.§>!u§ == null)
         {
            this.§>!u§ = [];
         }
         if(this.§9!i§ == null)
         {
            this.§9!i§ = new Dictionary();
         }
         else if(this.§9!i§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§4"W§;
         (_loc6_ = new §4"W§()).§1"n§ = param2;
         _loc6_.§-"D§(param3,param4,param5);
         if(param1 >= this.§>!u§.length)
         {
            this.§>!u§.push(_loc6_);
         }
         else
         {
            this.§>!u§.splice(param1,0,_loc6_);
         }
         this.§9!i§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §?#]§(param1:uint) : §4"W§
      {
         var _loc2_:§4"W§ = null;
         if(this.§>!u§ != null && this.§9!i§ != null && param1 < this.§>!u§.length)
         {
            _loc2_ = this.§>!u§[param1] as §4"W§;
            if(_loc2_ != null)
            {
               this.§>!u§.splice(param1,1);
               delete this.§9!i§[_loc2_.§1"n§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;L§(param1))
         {
         }
         return this.§;L§ === this.§["Z§;
      }
      
      protected function §["Z§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2"&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case § #%§:
                  this.§;L§ = this.§+3§;
                  this.§5K§ = new §4"W§(this.§"!y§);
                  break;
               case §[!M§:
               case §@!v§:
               case §&F§:
               case §6"t§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §&"R§:
               case §5!0§:
               case §5"g§:
                  this.§;L§ = this.§["Z§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §+3§(param1:IDataInput) : Boolean
      {
         if(this.§5K§.parse(param1))
         {
            if(this.§5K§.§["@§)
            {
               this.§;L§ = this.§-#P§;
               this.§-q§ = new ByteArray();
               this.§4[§ = 0;
               this.§7;§ = 0;
               return true;
            }
            this.§^!w§();
            if(this.§;L§ != this.§["Z§)
            {
               this.§;L§ = this.§2"&§;
               return true;
            }
         }
         return false;
      }
      
      protected function §-#P§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§4[§ = this.§4[§ >>> 8 | _loc2_ << 24;
            if(this.§4[§ == §&"R§)
            {
               this.§-q§.length -= 3;
               this.§;L§ = this.§9"j§;
               return true;
            }
            this.§-q§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §9"j§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§-q§.length == _loc3_)
            {
               this.§-q§.position = 0;
               this.§5K§.§?!+§ = _loc2_;
               this.§5K§.§-"U§ = _loc3_;
               this.§5K§.§`!+§ = _loc4_;
               this.§5K§.§2!u§(this.§-q§);
               this.§^!w§();
               this.§;L§ = this.§2"&§;
            }
            else
            {
               this.§-q§.writeUnsignedInt(_loc2_);
               this.§-q§.writeUnsignedInt(_loc3_);
               this.§-q§.writeUnsignedInt(_loc4_);
               this.§;L§ = this.§-#P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §^!w§() : void
      {
         this.§>!u§.push(this.§5K§);
         if(this.§5K§.§1"n§)
         {
            this.§9!i§[this.§5K§.§1"n§] = this.§5K§;
         }
         dispatchEvent(new §'##§(§'##§.§,"6§,this.§5K§));
         this.§5K§ = null;
      }
      
      protected function §#i§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§?"_§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§1X§.§="`§))
            {
               throw e;
            }
            dispatchEvent(new §1X§(§1X§.§="`§,e.message));
         }
      }
      
      protected function §1"!§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §-!w§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"#U§() : void
      {
         this.§?"_§.addEventListener(Event.COMPLETE,this.§1"!§);
         this.§?"_§.addEventListener(Event.OPEN,this.§1"!§);
         this.§?"_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1"!§);
         this.§?"_§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!w§);
         this.§?"_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!w§);
         this.§?"_§.addEventListener(ProgressEvent.PROGRESS,this.§#i§);
      }
      
      protected function §6E§() : void
      {
         this.§?"_§.removeEventListener(Event.COMPLETE,this.§1"!§);
         this.§?"_§.removeEventListener(Event.OPEN,this.§1"!§);
         this.§?"_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1"!§);
         this.§?"_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!w§);
         this.§?"_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!w§);
         this.§?"_§.removeEventListener(ProgressEvent.PROGRESS,this.§#i§);
      }
   }
}
