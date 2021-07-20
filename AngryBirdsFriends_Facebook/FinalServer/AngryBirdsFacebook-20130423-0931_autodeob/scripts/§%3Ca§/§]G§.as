package §<a§
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
   
   public class §]G§ extends EventDispatcher
   {
      
      static const §=!k§:uint = 33639248;
      
      static const §=!-§:uint = 808471376;
      
      static const §;!,§:uint = 67324752;
      
      static const § 9§:uint = 84233040;
      
      static const §3!"§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6!B§:uint = 134695760;
      
      static const §6!5§:uint = 134630224;
      
      static const §2d§:uint = 134695760;
       
      
      protected var §+"!§:Array;
      
      protected var §!m§:Dictionary;
      
      protected var §;4§:URLStream;
      
      protected var §=!f§:String;
      
      protected var §^4§:Function;
      
      protected var §8"E§:§;L§;
      
      protected var §>!M§:ByteArray;
      
      protected var §7!c§:uint;
      
      protected var §#Q§:uint;
      
      public function §]G§(param1:String = "utf-8")
      {
         super();
         this.§=!f§ = param1;
         this.§^4§ = this.§^"%§;
      }
      
      public function get §""D§() : Boolean
      {
         return this.§^4§ !== this.§^"%§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;4§ && this.§^4§ == this.§^"%§)
         {
            this.§;4§ = new URLStream();
            this.§;4§.endian = Endian.LITTLE_ENDIAN;
            this.§5F§();
            this.§+"!§ = [];
            this.§!m§ = new Dictionary();
            this.§^4§ = this.§>1§;
            this.§;4§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;4§ && this.§^4§ == this.§^"%§)
         {
            this.§+"!§ = [];
            this.§!m§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§^4§ = this.§>1§;
            if(this.parse(param1))
            {
               this.§^4§ = this.§^"%§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §2!>§(§2!>§.§'"W§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;4§)
         {
            this.§^4§ = this.§^"%§;
            this.§4"W§();
            this.§;4§.close();
            this.§;4§ = null;
         }
      }
      
      public function §9"K§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§;L§ = null;
         if(param1 != null && this.§+"!§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§+"!§.length)
            {
               if((_loc8_ = this.§+"!§[_loc7_] as §;L§) != null)
               {
                  _loc8_.§9"K§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§9"K§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§3!"§);
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
      
      public function §6"A§() : uint
      {
         return !!this.§+"!§ ? uint(this.§+"!§.length) : uint(0);
      }
      
      public function §=![§(param1:uint) : §;L§
      {
         return !!this.§+"!§ ? this.§+"!§[param1] as §;L§ : null;
      }
      
      public function §"!n§(param1:String) : §;L§
      {
         return !!this.§!m§[param1] ? this.§!m§[param1] as §;L§ : null;
      }
      
      public function §7"#§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;L§
      {
         return this.§7"5§(!!this.§+"!§ ? uint(this.§+"!§.length) : uint(0),param1,param2,param3);
      }
      
      public function §<I§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;L§
      {
         return this.§5!5§(!!this.§+"!§ ? uint(this.§+"!§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §7"5§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;L§
      {
         if(this.§+"!§ == null)
         {
            this.§+"!§ = [];
         }
         if(this.§!m§ == null)
         {
            this.§!m§ = new Dictionary();
         }
         else if(this.§!m§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§;L§;
         (_loc5_ = new §;L§()).§@"2§ = param2;
         _loc5_.§2!E§(param3,param4);
         if(param1 >= this.§+"!§.length)
         {
            this.§+"!§.push(_loc5_);
         }
         else
         {
            this.§+"!§.splice(param1,0,_loc5_);
         }
         this.§!m§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §5!5§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;L§
      {
         if(this.§+"!§ == null)
         {
            this.§+"!§ = [];
         }
         if(this.§!m§ == null)
         {
            this.§!m§ = new Dictionary();
         }
         else if(this.§!m§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§;L§;
         (_loc6_ = new §;L§()).§@"2§ = param2;
         _loc6_.§1!P§(param3,param4,param5);
         if(param1 >= this.§+"!§.length)
         {
            this.§+"!§.push(_loc6_);
         }
         else
         {
            this.§+"!§.splice(param1,0,_loc6_);
         }
         this.§!m§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §-"8§(param1:uint) : §;L§
      {
         var _loc2_:§;L§ = null;
         if(this.§+"!§ != null && this.§!m§ != null && param1 < this.§+"!§.length)
         {
            _loc2_ = this.§+"!§[param1] as §;L§;
            if(_loc2_ != null)
            {
               this.§+"!§.splice(param1,1);
               delete this.§!m§[_loc2_.§@"2§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§^4§(param1))
         {
         }
         return this.§^4§ === this.§^"%§;
      }
      
      protected function §^"%§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §;!,§:
                  this.§^4§ = this.§#j§;
                  this.§8"E§ = new §;L§(this.§=!f§);
                  break;
               case §=!k§:
               case §3!"§:
               case §=!-§:
               case § 9§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §6!B§:
               case §6!5§:
               case §2d§:
                  this.§^4§ = this.§^"%§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §#j§(param1:IDataInput) : Boolean
      {
         if(this.§8"E§.parse(param1))
         {
            if(this.§8"E§.§,"9§)
            {
               this.§^4§ = this.§-V§;
               this.§>!M§ = new ByteArray();
               this.§7!c§ = 0;
               this.§#Q§ = 0;
               return true;
            }
            this.§1!n§();
            if(this.§^4§ != this.§^"%§)
            {
               this.§^4§ = this.§>1§;
               return true;
            }
         }
         return false;
      }
      
      protected function §-V§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§7!c§ = this.§7!c§ >>> 8 | _loc2_ << 24;
            if(this.§7!c§ == §6!B§)
            {
               this.§>!M§.length -= 3;
               this.§^4§ = this.§6K§;
               return true;
            }
            this.§>!M§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §6K§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§>!M§.length == _loc3_)
            {
               this.§>!M§.position = 0;
               this.§8"E§.§"!<§ = _loc2_;
               this.§8"E§.§`e§ = _loc3_;
               this.§8"E§.§0"K§ = _loc4_;
               this.§8"E§.§4J§(this.§>!M§);
               this.§1!n§();
               this.§^4§ = this.§>1§;
            }
            else
            {
               this.§>!M§.writeUnsignedInt(_loc2_);
               this.§>!M§.writeUnsignedInt(_loc3_);
               this.§>!M§.writeUnsignedInt(_loc4_);
               this.§^4§ = this.§-V§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!n§() : void
      {
         this.§+"!§.push(this.§8"E§);
         if(this.§8"E§.§@"2§)
         {
            this.§!m§[this.§8"E§.§@"2§] = this.§8"E§;
         }
         dispatchEvent(new §7p§(§7p§.§ "S§,this.§8"E§));
         this.§8"E§ = null;
      }
      
      protected function §&!m§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;4§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§2!>§.§'"W§))
            {
               throw e;
            }
            dispatchEvent(new §2!>§(§2!>§.§'"W§,e.message));
         }
      }
      
      protected function §&I§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §5"H§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §5F§() : void
      {
         this.§;4§.addEventListener(Event.COMPLETE,this.§&I§);
         this.§;4§.addEventListener(Event.OPEN,this.§&I§);
         this.§;4§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&I§);
         this.§;4§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"H§);
         this.§;4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"H§);
         this.§;4§.addEventListener(ProgressEvent.PROGRESS,this.§&!m§);
      }
      
      protected function §4"W§() : void
      {
         this.§;4§.removeEventListener(Event.COMPLETE,this.§&I§);
         this.§;4§.removeEventListener(Event.OPEN,this.§&I§);
         this.§;4§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&I§);
         this.§;4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"H§);
         this.§;4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5"H§);
         this.§;4§.removeEventListener(ProgressEvent.PROGRESS,this.§&!m§);
      }
   }
}
