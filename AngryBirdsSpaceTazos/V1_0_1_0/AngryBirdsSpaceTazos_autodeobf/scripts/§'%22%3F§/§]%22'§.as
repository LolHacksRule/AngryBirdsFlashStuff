package §'"?§
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
   
   public class §]"'§ extends EventDispatcher
   {
      
      static const §@4§:uint = 33639248;
      
      static const §&!N§:uint = 808471376;
      
      static const §^o§:uint = 67324752;
      
      static const §1"2§:uint = 84233040;
      
      static const §3!5§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-2§:uint = 134695760;
      
      static const §import§:uint = 134630224;
      
      static const §"!a§:uint = 134695760;
       
      
      protected var §9!V§:Array;
      
      protected var §<$§:Dictionary;
      
      protected var §!!V§:URLStream;
      
      protected var §3"-§:String;
      
      protected var §@!V§:Function;
      
      protected var §8!O§:§]"!§;
      
      protected var §?!7§:ByteArray;
      
      protected var §=3§:uint;
      
      protected var §!!e§:uint;
      
      public function §]"'§(param1:String = "utf-8")
      {
         super();
         this.§3"-§ = param1;
         this.§@!V§ = this.§;5§;
      }
      
      public function get §`^§() : Boolean
      {
         return this.§@!V§ !== this.§;5§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§!!V§ && this.§@!V§ == this.§;5§)
         {
            this.§!!V§ = new URLStream();
            this.§!!V§.endian = Endian.LITTLE_ENDIAN;
            this.§8W§();
            this.§9!V§ = [];
            this.§<$§ = new Dictionary();
            this.§@!V§ = this.§4!R§;
            this.§!!V§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§!!V§ && this.§@!V§ == this.§;5§)
         {
            this.§9!V§ = [];
            this.§<$§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§@!V§ = this.§4!R§;
            if(this.parse(param1))
            {
               this.§@!V§ = this.§;5§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §-!!§(§-!!§.§6H§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§!!V§)
         {
            this.§@!V§ = this.§;5§;
            this.§8!p§();
            this.§!!V§.close();
            this.§!!V§ = null;
         }
      }
      
      public function §?l§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§]"!§ = null;
         if(param1 != null && this.§9!V§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§9!V§.length)
            {
               if((_loc8_ = this.§9!V§[_loc7_] as §]"!§) != null)
               {
                  _loc8_.§?l§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?l§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§3!5§);
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
      
      public function §<!k§() : uint
      {
         return !!this.§9!V§ ? uint(this.§9!V§.length) : uint(0);
      }
      
      public function §7&§(param1:uint) : §]"!§
      {
         return !!this.§9!V§ ? this.§9!V§[param1] as §]"!§ : null;
      }
      
      public function §["2§(param1:String) : §]"!§
      {
         return !!this.§<$§[param1] ? this.§<$§[param1] as §]"!§ : null;
      }
      
      public function §2!I§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]"!§
      {
         return this.§;!w§(!!this.§9!V§ ? uint(this.§9!V§.length) : uint(0),param1,param2,param3);
      }
      
      public function §"!E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]"!§
      {
         return this.§;-§(!!this.§9!V§ ? uint(this.§9!V§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;!w§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]"!§
      {
         if(this.§9!V§ == null)
         {
            this.§9!V§ = [];
         }
         if(this.§<$§ == null)
         {
            this.§<$§ = new Dictionary();
         }
         else if(this.§<$§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§]"!§;
         (_loc5_ = new §]"!§()).§0^§ = param2;
         _loc5_.§`!5§(param3,param4);
         if(param1 >= this.§9!V§.length)
         {
            this.§9!V§.push(_loc5_);
         }
         else
         {
            this.§9!V§.splice(param1,0,_loc5_);
         }
         this.§<$§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;-§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]"!§
      {
         if(this.§9!V§ == null)
         {
            this.§9!V§ = [];
         }
         if(this.§<$§ == null)
         {
            this.§<$§ = new Dictionary();
         }
         else if(this.§<$§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§]"!§;
         (_loc6_ = new §]"!§()).§0^§ = param2;
         _loc6_.§@7§(param3,param4,param5);
         if(param1 >= this.§9!V§.length)
         {
            this.§9!V§.push(_loc6_);
         }
         else
         {
            this.§9!V§.splice(param1,0,_loc6_);
         }
         this.§<$§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §2!c§(param1:uint) : §]"!§
      {
         var _loc2_:§]"!§ = null;
         if(this.§9!V§ != null && this.§<$§ != null && param1 < this.§9!V§.length)
         {
            _loc2_ = this.§9!V§[param1] as §]"!§;
            if(_loc2_ != null)
            {
               this.§9!V§.splice(param1,1);
               delete this.§<$§[_loc2_.§0^§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!V§(param1))
         {
         }
         return this.§@!V§ === this.§;5§;
      }
      
      protected function §;5§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4!R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §^o§:
                  this.§@!V§ = this.§8P§;
                  this.§8!O§ = new §]"!§(this.§3"-§);
                  break;
               case §@4§:
               case §3!5§:
               case §&!N§:
               case §1"2§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-2§:
               case §import§:
               case §"!a§:
                  this.§@!V§ = this.§;5§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §8P§(param1:IDataInput) : Boolean
      {
         if(this.§8!O§.parse(param1))
         {
            if(this.§8!O§.§='§)
            {
               this.§@!V§ = this.§0X§;
               this.§?!7§ = new ByteArray();
               this.§=3§ = 0;
               this.§!!e§ = 0;
               return true;
            }
            this.§&"C§();
            if(this.§@!V§ != this.§;5§)
            {
               this.§@!V§ = this.§4!R§;
               return true;
            }
         }
         return false;
      }
      
      protected function §0X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§=3§ = this.§=3§ >>> 8 | _loc2_ << 24;
            if(this.§=3§ == §-2§)
            {
               this.§?!7§.length -= 3;
               this.§@!V§ = this.§-"=§;
               return true;
            }
            this.§?!7§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-"=§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§?!7§.length == _loc3_)
            {
               this.§?!7§.position = 0;
               this.§8!O§.§%0§ = _loc2_;
               this.§8!O§.§2!p§ = _loc3_;
               this.§8!O§.§5!M§ = _loc4_;
               this.§8!O§.§&S§(this.§?!7§);
               this.§&"C§();
               this.§@!V§ = this.§4!R§;
            }
            else
            {
               this.§?!7§.writeUnsignedInt(_loc2_);
               this.§?!7§.writeUnsignedInt(_loc3_);
               this.§?!7§.writeUnsignedInt(_loc4_);
               this.§@!V§ = this.§0X§;
            }
            return true;
         }
         return false;
      }
      
      protected function §&"C§() : void
      {
         this.§9!V§.push(this.§8!O§);
         if(this.§8!O§.§0^§)
         {
            this.§<$§[this.§8!O§.§0^§] = this.§8!O§;
         }
         dispatchEvent(new §#";§(§#";§.§9"'§,this.§8!O§));
         this.§8!O§ = null;
      }
      
      protected function §]y§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§!!V§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§-!!§.§6H§))
            {
               throw e;
            }
            dispatchEvent(new §-!!§(§-!!§.§6H§,e.message));
         }
      }
      
      protected function §6"F§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §4!v§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §8W§() : void
      {
         this.§!!V§.addEventListener(Event.COMPLETE,this.§6"F§);
         this.§!!V§.addEventListener(Event.OPEN,this.§6"F§);
         this.§!!V§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"F§);
         this.§!!V§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!v§);
         this.§!!V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!v§);
         this.§!!V§.addEventListener(ProgressEvent.PROGRESS,this.§]y§);
      }
      
      protected function §8!p§() : void
      {
         this.§!!V§.removeEventListener(Event.COMPLETE,this.§6"F§);
         this.§!!V§.removeEventListener(Event.OPEN,this.§6"F§);
         this.§!!V§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"F§);
         this.§!!V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!v§);
         this.§!!V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!v§);
         this.§!!V§.removeEventListener(ProgressEvent.PROGRESS,this.§]y§);
      }
   }
}
