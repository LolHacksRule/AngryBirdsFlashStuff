package §^g§
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
   
   public class § 1§ extends EventDispatcher
   {
      
      static const §;=§:uint = 33639248;
      
      static const §]!&§:uint = 808471376;
      
      static const §+`§:uint = 67324752;
      
      static const §"!X§:uint = 84233040;
      
      static const §0!I§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §4!B§:uint = 134695760;
      
      static const §?i§:uint = 134630224;
      
      static const §"9§:uint = 134695760;
       
      
      protected var §-!J§:Array;
      
      protected var §-Q§:Dictionary;
      
      protected var §9j§:URLStream;
      
      protected var §8d§:String;
      
      protected var §2w§:Function;
      
      protected var §@!§:§0!8§;
      
      protected var §2!7§:ByteArray;
      
      protected var §8s§:uint;
      
      protected var §[;§:uint;
      
      public function § 1§(param1:String = "utf-8")
      {
         super();
         this.§8d§ = param1;
         this.§2w§ = this.§9B§;
      }
      
      public function get §=S§() : Boolean
      {
         return this.§2w§ !== this.§9B§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§9j§ && this.§2w§ == this.§9B§)
         {
            this.§9j§ = new URLStream();
            this.§9j§.endian = Endian.LITTLE_ENDIAN;
            this.§ %§();
            this.§-!J§ = [];
            this.§-Q§ = new Dictionary();
            this.§2w§ = this.§6!!§;
            this.§9j§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§9j§ && this.§2w§ == this.§9B§)
         {
            this.§-!J§ = [];
            this.§-Q§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§2w§ = this.§6!!§;
            if(this.parse(param1))
            {
               this.§2w§ = this.§9B§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new § null§(§ null§.§'$§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§9j§)
         {
            this.§2w§ = this.§9B§;
            this.§ !Z§();
            this.§9j§.close();
            this.§9j§ = null;
         }
      }
      
      public function §3Y§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§0!8§ = null;
         if(param1 != null && this.§-!J§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§-!J§.length)
            {
               if((_loc8_ = this.§-!J§[_loc7_] as §0!8§) != null)
               {
                  _loc8_.§3Y§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§3Y§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§0!I§);
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
      
      public function §2X§() : uint
      {
         return !!this.§-!J§ ? uint(this.§-!J§.length) : uint(0);
      }
      
      public function §%t§(param1:uint) : §0!8§
      {
         return !!this.§-!J§ ? this.§-!J§[param1] as §0!8§ : null;
      }
      
      public function §&! §(param1:String) : §0!8§
      {
         return !!this.§-Q§[param1] ? this.§-Q§[param1] as §0!8§ : null;
      }
      
      public function §@A§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §0!8§
      {
         return this.§;m§(!!this.§-!J§ ? uint(this.§-!J§.length) : uint(0),param1,param2,param3);
      }
      
      public function §%!C§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §0!8§
      {
         return this.§ z§(!!this.§-!J§ ? uint(this.§-!J§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;m§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §0!8§
      {
         if(this.§-!J§ == null)
         {
            this.§-!J§ = [];
         }
         if(this.§-Q§ == null)
         {
            this.§-Q§ = new Dictionary();
         }
         else if(this.§-Q§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§0!8§;
         (_loc5_ = new §0!8§()).§^9§ = param2;
         _loc5_.§ 4§(param3,param4);
         if(param1 >= this.§-!J§.length)
         {
            this.§-!J§.push(_loc5_);
         }
         else
         {
            this.§-!J§.splice(param1,0,_loc5_);
         }
         this.§-Q§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function § z§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §0!8§
      {
         if(this.§-!J§ == null)
         {
            this.§-!J§ = [];
         }
         if(this.§-Q§ == null)
         {
            this.§-Q§ = new Dictionary();
         }
         else if(this.§-Q§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§0!8§;
         (_loc6_ = new §0!8§()).§^9§ = param2;
         _loc6_.§9x§(param3,param4,param5);
         if(param1 >= this.§-!J§.length)
         {
            this.§-!J§.push(_loc6_);
         }
         else
         {
            this.§-!J§.splice(param1,0,_loc6_);
         }
         this.§-Q§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[E§(param1:uint) : §0!8§
      {
         var _loc2_:§0!8§ = null;
         if(this.§-!J§ != null && this.§-Q§ != null && param1 < this.§-!J§.length)
         {
            _loc2_ = this.§-!J§[param1] as §0!8§;
            if(_loc2_ != null)
            {
               this.§-!J§.splice(param1,1);
               delete this.§-Q§[_loc2_.§^9§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§2w§(param1))
         {
         }
         return this.§2w§ === this.§9B§;
      }
      
      protected function §9B§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6!!§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §+`§:
                  this.§2w§ = this.§-!A§;
                  this.§@!§ = new §0!8§(this.§8d§);
                  break;
               case §;=§:
               case §0!I§:
               case §]!&§:
               case §"!X§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §4!B§:
               case §?i§:
               case §"9§:
                  this.§2w§ = this.§9B§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-!A§(param1:IDataInput) : Boolean
      {
         if(this.§@!§.parse(param1))
         {
            if(this.§@!§.§;!E§)
            {
               this.§2w§ = this.§-I§;
               this.§2!7§ = new ByteArray();
               this.§8s§ = 0;
               this.§[;§ = 0;
               return true;
            }
            this.§,V§();
            if(this.§2w§ != this.§9B§)
            {
               this.§2w§ = this.§6!!§;
               return true;
            }
         }
         return false;
      }
      
      protected function §-I§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§8s§ = this.§8s§ >>> 8 | _loc2_ << 24;
            if(this.§8s§ == §4!B§)
            {
               this.§2!7§.length -= 3;
               this.§2w§ = this.§!M§;
               return true;
            }
            this.§2!7§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §!M§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§2!7§.length == _loc3_)
            {
               this.§2!7§.position = 0;
               this.§@!§.§[!!§ = _loc2_;
               this.§@!§.§%!S§ = _loc3_;
               this.§@!§.§^!K§ = _loc4_;
               this.§@!§.§35§(this.§2!7§);
               this.§,V§();
               this.§2w§ = this.§6!!§;
            }
            else
            {
               this.§2!7§.writeUnsignedInt(_loc2_);
               this.§2!7§.writeUnsignedInt(_loc3_);
               this.§2!7§.writeUnsignedInt(_loc4_);
               this.§2w§ = this.§-I§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,V§() : void
      {
         this.§-!J§.push(this.§@!§);
         if(this.§@!§.§^9§)
         {
            this.§-Q§[this.§@!§.§^9§] = this.§@!§;
         }
         dispatchEvent(new §05§(§05§.§7!G§,this.§@!§));
         this.§@!§ = null;
      }
      
      protected function §1!-§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§9j§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§ null§.§'$§))
            {
               throw e;
            }
            dispatchEvent(new § null§(§ null§.§'$§,e.message));
         }
      }
      
      protected function §;!6§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §[!H§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § %§() : void
      {
         this.§9j§.addEventListener(Event.COMPLETE,this.§;!6§);
         this.§9j§.addEventListener(Event.OPEN,this.§;!6§);
         this.§9j§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!6§);
         this.§9j§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!H§);
         this.§9j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!H§);
         this.§9j§.addEventListener(ProgressEvent.PROGRESS,this.§1!-§);
      }
      
      protected function § !Z§() : void
      {
         this.§9j§.removeEventListener(Event.COMPLETE,this.§;!6§);
         this.§9j§.removeEventListener(Event.OPEN,this.§;!6§);
         this.§9j§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!6§);
         this.§9j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!H§);
         this.§9j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!H§);
         this.§9j§.removeEventListener(ProgressEvent.PROGRESS,this.§1!-§);
      }
   }
}
