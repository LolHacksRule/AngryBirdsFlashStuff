package §2m§
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
   
   public class §<7§ extends EventDispatcher
   {
      
      static const § !9§:uint = 33639248;
      
      static const §>!5§:uint = 808471376;
      
      static const §1!O§:uint = 67324752;
      
      static const §'!G§:uint = 84233040;
      
      static const §'I§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §5!R§:uint = 134695760;
      
      static const §^!<§:uint = 134630224;
      
      static const §'!A§:uint = 134695760;
       
      
      protected var §`z§:Array;
      
      protected var §!@§:Dictionary;
      
      protected var §0Q§:URLStream;
      
      protected var §3X§:String;
      
      protected var §9!;§:Function;
      
      protected var §3z§:§,p§;
      
      protected var §7_§:ByteArray;
      
      protected var §9z§:uint;
      
      protected var §5! §:uint;
      
      public function §<7§(param1:String = "utf-8")
      {
         super();
         this.§3X§ = param1;
         this.§9!;§ = this.§ R§;
      }
      
      public function get §2!1§() : Boolean
      {
         return this.§9!;§ !== this.§ R§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§0Q§ && this.§9!;§ == this.§ R§)
         {
            this.§0Q§ = new URLStream();
            this.§0Q§.endian = Endian.LITTLE_ENDIAN;
            this.§0!B§();
            this.§`z§ = [];
            this.§!@§ = new Dictionary();
            this.§9!;§ = this.§%y§;
            this.§0Q§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§0Q§ && this.§9!;§ == this.§ R§)
         {
            this.§`z§ = [];
            this.§!@§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§9!;§ = this.§%y§;
            if(this.parse(param1))
            {
               this.§9!;§ = this.§ R§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §!!2§(§!!2§.§5R§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§0Q§)
         {
            this.§9!;§ = this.§ R§;
            this.§"r§();
            this.§0Q§.close();
            this.§0Q§ = null;
         }
      }
      
      public function §;!]§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§,p§ = null;
         if(param1 != null && this.§`z§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§`z§.length)
            {
               if((_loc8_ = this.§`z§[_loc7_] as §,p§) != null)
               {
                  _loc8_.§;!]§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;!]§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§'I§);
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
      
      public function §0E§() : uint
      {
         return !!this.§`z§ ? uint(this.§`z§.length) : uint(0);
      }
      
      public function §]!9§(param1:uint) : §,p§
      {
         return !!this.§`z§ ? this.§`z§[param1] as §,p§ : null;
      }
      
      public function §0x§(param1:String) : §,p§
      {
         return !!this.§!@§[param1] ? this.§!@§[param1] as §,p§ : null;
      }
      
      public function §`h§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,p§
      {
         return this.§&G§(!!this.§`z§ ? uint(this.§`z§.length) : uint(0),param1,param2,param3);
      }
      
      public function § 6§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,p§
      {
         return this.§8V§(!!this.§`z§ ? uint(this.§`z§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §&G§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,p§
      {
         if(this.§`z§ == null)
         {
            this.§`z§ = [];
         }
         if(this.§!@§ == null)
         {
            this.§!@§ = new Dictionary();
         }
         else if(this.§!@§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§,p§;
         (_loc5_ = new §,p§()).§49§ = param2;
         _loc5_.§6j§(param3,param4);
         if(param1 >= this.§`z§.length)
         {
            this.§`z§.push(_loc5_);
         }
         else
         {
            this.§`z§.splice(param1,0,_loc5_);
         }
         this.§!@§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §8V§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,p§
      {
         if(this.§`z§ == null)
         {
            this.§`z§ = [];
         }
         if(this.§!@§ == null)
         {
            this.§!@§ = new Dictionary();
         }
         else if(this.§!@§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§,p§;
         (_loc6_ = new §,p§()).§49§ = param2;
         _loc6_.§+!Q§(param3,param4,param5);
         if(param1 >= this.§`z§.length)
         {
            this.§`z§.push(_loc6_);
         }
         else
         {
            this.§`z§.splice(param1,0,_loc6_);
         }
         this.§!@§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §-3§(param1:uint) : §,p§
      {
         var _loc2_:§,p§ = null;
         if(this.§`z§ != null && this.§!@§ != null && param1 < this.§`z§.length)
         {
            _loc2_ = this.§`z§[param1] as §,p§;
            if(_loc2_ != null)
            {
               this.§`z§.splice(param1,1);
               delete this.§!@§[_loc2_.§49§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§9!;§(param1))
         {
         }
         return this.§9!;§ === this.§ R§;
      }
      
      protected function § R§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §%y§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §1!O§:
                  this.§9!;§ = this.§,!'§;
                  this.§3z§ = new §,p§(this.§3X§);
                  break;
               case § !9§:
               case §'I§:
               case §>!5§:
               case §'!G§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §5!R§:
               case §^!<§:
               case §'!A§:
                  this.§9!;§ = this.§ R§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §,!'§(param1:IDataInput) : Boolean
      {
         if(this.§3z§.parse(param1))
         {
            if(this.§3z§.§[!1§)
            {
               this.§9!;§ = this.§+!X§;
               this.§7_§ = new ByteArray();
               this.§9z§ = 0;
               this.§5! § = 0;
               return true;
            }
            this.§=!%§();
            if(this.§9!;§ != this.§ R§)
            {
               this.§9!;§ = this.§%y§;
               return true;
            }
         }
         return false;
      }
      
      protected function §+!X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§9z§ = this.§9z§ >>> 8 | _loc2_ << 24;
            if(this.§9z§ == §5!R§)
            {
               this.§7_§.length -= 3;
               this.§9!;§ = this.§1!$§;
               return true;
            }
            this.§7_§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §1!$§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7_§.length == _loc3_)
            {
               this.§7_§.position = 0;
               this.§3z§.§&R§ = _loc2_;
               this.§3z§.§^<§ = _loc3_;
               this.§3z§.§ ]§ = _loc4_;
               this.§3z§.§06§(this.§7_§);
               this.§=!%§();
               this.§9!;§ = this.§%y§;
            }
            else
            {
               this.§7_§.writeUnsignedInt(_loc2_);
               this.§7_§.writeUnsignedInt(_loc3_);
               this.§7_§.writeUnsignedInt(_loc4_);
               this.§9!;§ = this.§+!X§;
            }
            return true;
         }
         return false;
      }
      
      protected function §=!%§() : void
      {
         this.§`z§.push(this.§3z§);
         if(this.§3z§.§49§)
         {
            this.§!@§[this.§3z§.§49§] = this.§3z§;
         }
         dispatchEvent(new §&!@§(§&!@§.§7z§,this.§3z§));
         this.§3z§ = null;
      }
      
      protected function §=g§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§0Q§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§!!2§.§5R§))
            {
               throw e;
            }
            dispatchEvent(new §!!2§(§!!2§.§5R§,e.message));
         }
      }
      
      protected function §'S§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §4!Z§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §0!B§() : void
      {
         this.§0Q§.addEventListener(Event.COMPLETE,this.§'S§);
         this.§0Q§.addEventListener(Event.OPEN,this.§'S§);
         this.§0Q§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'S§);
         this.§0Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!Z§);
         this.§0Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!Z§);
         this.§0Q§.addEventListener(ProgressEvent.PROGRESS,this.§=g§);
      }
      
      protected function §"r§() : void
      {
         this.§0Q§.removeEventListener(Event.COMPLETE,this.§'S§);
         this.§0Q§.removeEventListener(Event.OPEN,this.§'S§);
         this.§0Q§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'S§);
         this.§0Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!Z§);
         this.§0Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!Z§);
         this.§0Q§.removeEventListener(ProgressEvent.PROGRESS,this.§=g§);
      }
   }
}
