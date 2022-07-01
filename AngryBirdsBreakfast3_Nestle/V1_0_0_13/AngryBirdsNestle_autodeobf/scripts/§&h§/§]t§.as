package §&h§
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
   
   public class §]t§ extends EventDispatcher
   {
      
      static const §%1§:uint = 33639248;
      
      static const §]g§:uint = 808471376;
      
      static const §%S§:uint = 67324752;
      
      static const §[!J§:uint = 84233040;
      
      static const §!v§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-k§:uint = 134695760;
      
      static const §7!$§:uint = 134630224;
      
      static const §7!>§:uint = 134695760;
       
      
      protected var native:Array;
      
      protected var §+-§:Dictionary;
      
      protected var §+!O§:URLStream;
      
      protected var §0"2§:String;
      
      protected var §3>§:Function;
      
      protected var §0"%§:§@"%§;
      
      protected var §[!K§:ByteArray;
      
      protected var §+1§:uint;
      
      protected var §;E§:uint;
      
      public function §]t§(param1:String = "utf-8")
      {
         super();
         this.§0"2§ = param1;
         this.§3>§ = this.§4?§;
      }
      
      public function get active() : Boolean
      {
         return this.§3>§ !== this.§4?§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§+!O§ && this.§3>§ == this.§4?§)
         {
            this.§+!O§ = new URLStream();
            this.§+!O§.endian = Endian.LITTLE_ENDIAN;
            this.§3"6§();
            this.native = [];
            this.§+-§ = new Dictionary();
            this.§3>§ = this.§5!S§;
            this.§+!O§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§+!O§ && this.§3>§ == this.§4?§)
         {
            this.native = [];
            this.§+-§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§3>§ = this.§5!S§;
            if(this.parse(param1))
            {
               this.§3>§ = this.§4?§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §@w§(§@w§.§,!2§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§+!O§)
         {
            this.§3>§ = this.§4?§;
            this.§9@§();
            this.§+!O§.close();
            this.§+!O§ = null;
         }
      }
      
      public function §=_§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§@"%§ = null;
         if(param1 != null && this.native.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.native.length)
            {
               if((_loc8_ = this.native[_loc7_] as §@"%§) != null)
               {
                  _loc8_.§=_§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§=_§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!v§);
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
      
      public function §9o§() : uint
      {
         return !!this.native ? uint(this.native.length) : uint(0);
      }
      
      public function § !H§(param1:uint) : §@"%§
      {
         return !!this.native ? this.native[param1] as §@"%§ : null;
      }
      
      public function §7+§(param1:String) : §@"%§
      {
         return !!this.§+-§[param1] ? this.§+-§[param1] as §@"%§ : null;
      }
      
      public function §-!A§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §@"%§
      {
         return this.§-p§(!!this.native ? uint(this.native.length) : uint(0),param1,param2,param3);
      }
      
      public function §=Y§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §@"%§
      {
         return this.§,9§(!!this.native ? uint(this.native.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §-p§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §@"%§
      {
         if(this.native == null)
         {
            this.native = [];
         }
         if(this.§+-§ == null)
         {
            this.§+-§ = new Dictionary();
         }
         else if(this.§+-§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§@"%§;
         (_loc5_ = new §@"%§()).§'r§ = param2;
         _loc5_.§+!Z§(param3,param4);
         if(param1 >= this.native.length)
         {
            this.native.push(_loc5_);
         }
         else
         {
            this.native.splice(param1,0,_loc5_);
         }
         this.§+-§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §,9§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §@"%§
      {
         if(this.native == null)
         {
            this.native = [];
         }
         if(this.§+-§ == null)
         {
            this.§+-§ = new Dictionary();
         }
         else if(this.§+-§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§@"%§;
         (_loc6_ = new §@"%§()).§'r§ = param2;
         _loc6_.§%!^§(param3,param4,param5);
         if(param1 >= this.native.length)
         {
            this.native.push(_loc6_);
         }
         else
         {
            this.native.splice(param1,0,_loc6_);
         }
         this.§+-§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §7[§(param1:uint) : §@"%§
      {
         var _loc2_:§@"%§ = null;
         if(this.native != null && this.§+-§ != null && param1 < this.native.length)
         {
            _loc2_ = this.native[param1] as §@"%§;
            if(_loc2_ != null)
            {
               this.native.splice(param1,1);
               delete this.§+-§[_loc2_.§'r§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§3>§(param1))
         {
         }
         return this.§3>§ === this.§4?§;
      }
      
      protected function §4?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §5!S§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §%S§:
                  this.§3>§ = this.§7!<§;
                  this.§0"%§ = new §@"%§(this.§0"2§);
                  break;
               case §%1§:
               case §!v§:
               case §]g§:
               case §[!J§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-k§:
               case §7!$§:
               case §7!>§:
                  this.§3>§ = this.§4?§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §7!<§(param1:IDataInput) : Boolean
      {
         if(this.§0"%§.parse(param1))
         {
            if(this.§0"%§.§8D§)
            {
               this.§3>§ = this.§="+§;
               this.§[!K§ = new ByteArray();
               this.§+1§ = 0;
               this.§;E§ = 0;
               return true;
            }
            this.§<""§();
            if(this.§3>§ != this.§4?§)
            {
               this.§3>§ = this.§5!S§;
               return true;
            }
         }
         return false;
      }
      
      protected function §="+§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§+1§ = this.§+1§ >>> 8 | _loc2_ << 24;
            if(this.§+1§ == §-k§)
            {
               this.§[!K§.length -= 3;
               this.§3>§ = this.§,!`§;
               return true;
            }
            this.§[!K§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §,!`§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§[!K§.length == _loc3_)
            {
               this.§[!K§.position = 0;
               this.§0"%§.§&!S§ = _loc2_;
               this.§0"%§.§@!§ = _loc3_;
               this.§0"%§.§ !k§ = _loc4_;
               this.§0"%§.parseContent(this.§[!K§);
               this.§<""§();
               this.§3>§ = this.§5!S§;
            }
            else
            {
               this.§[!K§.writeUnsignedInt(_loc2_);
               this.§[!K§.writeUnsignedInt(_loc3_);
               this.§[!K§.writeUnsignedInt(_loc4_);
               this.§3>§ = this.§="+§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<""§() : void
      {
         this.native.push(this.§0"%§);
         if(this.§0"%§.§'r§)
         {
            this.§+-§[this.§0"%§.§'r§] = this.§0"%§;
         }
         dispatchEvent(new §["0§(§["0§.§9"%§,this.§0"%§));
         this.§0"%§ = null;
      }
      
      protected function §0!J§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§+!O§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§@w§.§,!2§))
            {
               throw e;
            }
            dispatchEvent(new §@w§(§@w§.§,!2§,e.message));
         }
      }
      
      protected function §]!P§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §3"6§() : void
      {
         this.§+!O§.addEventListener(Event.COMPLETE,this.§]!P§);
         this.§+!O§.addEventListener(Event.OPEN,this.§]!P§);
         this.§+!O§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!P§);
         this.§+!O§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§+!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§+!O§.addEventListener(ProgressEvent.PROGRESS,this.§0!J§);
      }
      
      protected function §9@§() : void
      {
         this.§+!O§.removeEventListener(Event.COMPLETE,this.§]!P§);
         this.§+!O§.removeEventListener(Event.OPEN,this.§]!P§);
         this.§+!O§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!P§);
         this.§+!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§+!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§+!O§.removeEventListener(ProgressEvent.PROGRESS,this.§0!J§);
      }
   }
}
