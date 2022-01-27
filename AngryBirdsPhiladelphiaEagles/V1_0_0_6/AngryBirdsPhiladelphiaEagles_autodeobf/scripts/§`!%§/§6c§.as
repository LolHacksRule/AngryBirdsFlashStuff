package §`!%§
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
   
   public class §6c§ extends EventDispatcher
   {
      
      static const §=p§:uint = 33639248;
      
      static const §2g§:uint = 808471376;
      
      static const §7U§:uint = 67324752;
      
      static const §>q§:uint = 84233040;
      
      static const §,!L§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §=!+§:uint = 134695760;
      
      static const §1]§:uint = 134630224;
      
      static const §'N§:uint = 134695760;
       
      
      protected var §3C§:Array;
      
      protected var §'!9§:Dictionary;
      
      protected var §1w§:URLStream;
      
      protected var §=+§:String;
      
      protected var §`! §:Function;
      
      protected var § !M§:§-d§;
      
      protected var §7g§:ByteArray;
      
      protected var §,!+§:uint;
      
      protected var §^!9§:uint;
      
      public function §6c§(param1:String = "utf-8")
      {
         super();
         this.§=+§ = param1;
         this.§`! § = this.§3!I§;
      }
      
      public function get active() : Boolean
      {
         return this.§`! § !== this.§3!I§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1w§ && this.§`! § == this.§3!I§)
         {
            this.§1w§ = new URLStream();
            this.§1w§.endian = Endian.LITTLE_ENDIAN;
            this.§1h§();
            this.§3C§ = [];
            this.§'!9§ = new Dictionary();
            this.§`! § = this.§#0§;
            this.§1w§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1w§ && this.§`! § == this.§3!I§)
         {
            this.§3C§ = [];
            this.§'!9§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§`! § = this.§#0§;
            if(this.parse(param1))
            {
               this.§`! § = this.§3!I§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §%W§(§%W§.§=x§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1w§)
         {
            this.§`! § = this.§3!I§;
            this.§%!9§();
            this.§1w§.close();
            this.§1w§ = null;
         }
      }
      
      public function §^1§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§-d§ = null;
         if(param1 != null && this.§3C§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§3C§.length)
            {
               if((_loc8_ = this.§3C§[_loc7_] as §-d§) != null)
               {
                  _loc8_.§^1§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§^1§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§,!L§);
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
      
      public function §!3§() : uint
      {
         return !!this.§3C§ ? uint(this.§3C§.length) : uint(0);
      }
      
      public function §]G§(param1:uint) : §-d§
      {
         return !!this.§3C§ ? this.§3C§[param1] as §-d§ : null;
      }
      
      public function §[n§(param1:String) : §-d§
      {
         return !!this.§'!9§[param1] ? this.§'!9§[param1] as §-d§ : null;
      }
      
      public function §%P§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §-d§
      {
         return this.§5!L§(!!this.§3C§ ? uint(this.§3C§.length) : uint(0),param1,param2,param3);
      }
      
      public function §2_§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §-d§
      {
         return this.§5<§(!!this.§3C§ ? uint(this.§3C§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §5!L§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §-d§
      {
         if(this.§3C§ == null)
         {
            this.§3C§ = [];
         }
         if(this.§'!9§ == null)
         {
            this.§'!9§ = new Dictionary();
         }
         else if(this.§'!9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§-d§;
         (_loc5_ = new §-d§()).§8!1§ = param2;
         _loc5_.§;Q§(param3,param4);
         if(param1 >= this.§3C§.length)
         {
            this.§3C§.push(_loc5_);
         }
         else
         {
            this.§3C§.splice(param1,0,_loc5_);
         }
         this.§'!9§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §5<§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §-d§
      {
         if(this.§3C§ == null)
         {
            this.§3C§ = [];
         }
         if(this.§'!9§ == null)
         {
            this.§'!9§ = new Dictionary();
         }
         else if(this.§'!9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§-d§;
         (_loc6_ = new §-d§()).§8!1§ = param2;
         _loc6_.§=!,§(param3,param4,param5);
         if(param1 >= this.§3C§.length)
         {
            this.§3C§.push(_loc6_);
         }
         else
         {
            this.§3C§.splice(param1,0,_loc6_);
         }
         this.§'!9§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §+@§(param1:uint) : §-d§
      {
         var _loc2_:§-d§ = null;
         if(this.§3C§ != null && this.§'!9§ != null && param1 < this.§3C§.length)
         {
            _loc2_ = this.§3C§[param1] as §-d§;
            if(_loc2_ != null)
            {
               this.§3C§.splice(param1,1);
               delete this.§'!9§[_loc2_.§8!1§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`! §(param1))
         {
         }
         return this.§`! § === this.§3!I§;
      }
      
      protected function §3!I§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#0§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §7U§:
                  this.§`! § = this.§,O§;
                  this.§ !M§ = new §-d§(this.§=+§);
                  break;
               case §=p§:
               case §,!L§:
               case §2g§:
               case §>q§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §=!+§:
               case §1]§:
               case §'N§:
                  this.§`! § = this.§3!I§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §,O§(param1:IDataInput) : Boolean
      {
         if(this.§ !M§.parse(param1))
         {
            if(this.§ !M§.§ !H§)
            {
               this.§`! § = this.§[D§;
               this.§7g§ = new ByteArray();
               this.§,!+§ = 0;
               this.§^!9§ = 0;
               return true;
            }
            this.§3!!§();
            if(this.§`! § != this.§3!I§)
            {
               this.§`! § = this.§#0§;
               return true;
            }
         }
         return false;
      }
      
      protected function §[D§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§,!+§ = this.§,!+§ >>> 8 | _loc2_ << 24;
            if(this.§,!+§ == §=!+§)
            {
               this.§7g§.length -= 3;
               this.§`! § = this.§ 3§;
               return true;
            }
            this.§7g§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function § 3§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7g§.length == _loc3_)
            {
               this.§7g§.position = 0;
               this.§ !M§.§;F§ = _loc2_;
               this.§ !M§.§4I§ = _loc3_;
               this.§ !M§.§=S§ = _loc4_;
               this.§ !M§.§"$§(this.§7g§);
               this.§3!!§();
               this.§`! § = this.§#0§;
            }
            else
            {
               this.§7g§.writeUnsignedInt(_loc2_);
               this.§7g§.writeUnsignedInt(_loc3_);
               this.§7g§.writeUnsignedInt(_loc4_);
               this.§`! § = this.§[D§;
            }
            return true;
         }
         return false;
      }
      
      protected function §3!!§() : void
      {
         this.§3C§.push(this.§ !M§);
         if(this.§ !M§.§8!1§)
         {
            this.§'!9§[this.§ !M§.§8!1§] = this.§ !M§;
         }
         dispatchEvent(new §'T§(§'T§.§^!>§,this.§ !M§));
         this.§ !M§ = null;
      }
      
      protected function §7=§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1w§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§%W§.§=x§))
            {
               throw e;
            }
            dispatchEvent(new §%W§(§%W§.§=x§,e.message));
         }
      }
      
      protected function §]!J§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function § case§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §1h§() : void
      {
         this.§1w§.addEventListener(Event.COMPLETE,this.§]!J§);
         this.§1w§.addEventListener(Event.OPEN,this.§]!J§);
         this.§1w§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!J§);
         this.§1w§.addEventListener(IOErrorEvent.IO_ERROR,this.§ case§);
         this.§1w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ case§);
         this.§1w§.addEventListener(ProgressEvent.PROGRESS,this.§7=§);
      }
      
      protected function §%!9§() : void
      {
         this.§1w§.removeEventListener(Event.COMPLETE,this.§]!J§);
         this.§1w§.removeEventListener(Event.OPEN,this.§]!J§);
         this.§1w§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!J§);
         this.§1w§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ case§);
         this.§1w§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ case§);
         this.§1w§.removeEventListener(ProgressEvent.PROGRESS,this.§7=§);
      }
   }
}
