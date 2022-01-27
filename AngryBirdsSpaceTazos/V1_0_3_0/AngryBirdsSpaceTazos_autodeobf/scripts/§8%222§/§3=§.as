package §8"2§
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
   
   public class §3=§ extends EventDispatcher
   {
      
      static const §-]§:uint = 33639248;
      
      static const §!!M§:uint = 808471376;
      
      static const §51§:uint = 67324752;
      
      static const §,!+§:uint = 84233040;
      
      static const §^!A§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §1!U§:uint = 134695760;
      
      static const §6!j§:uint = 134630224;
      
      static const §4;§:uint = 134695760;
       
      
      protected var §2!-§:Array;
      
      protected var §`"0§:Dictionary;
      
      protected var §1!i§:URLStream;
      
      protected var §!!"§:String;
      
      protected var §]O§:Function;
      
      protected var §;_§:§[!T§;
      
      protected var §6"#§:ByteArray;
      
      protected var §@!F§:uint;
      
      protected var §;!6§:uint;
      
      public function §3=§(param1:String = "utf-8")
      {
         super();
         this.§!!"§ = param1;
         this.§]O§ = this.§&r§;
      }
      
      public function get §`!p§() : Boolean
      {
         return this.§]O§ !== this.§&r§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1!i§ && this.§]O§ == this.§&r§)
         {
            this.§1!i§ = new URLStream();
            this.§1!i§.endian = Endian.LITTLE_ENDIAN;
            this.§2m§();
            this.§2!-§ = [];
            this.§`"0§ = new Dictionary();
            this.§]O§ = this.§6"+§;
            this.§1!i§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1!i§ && this.§]O§ == this.§&r§)
         {
            this.§2!-§ = [];
            this.§`"0§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§]O§ = this.§6"+§;
            if(this.parse(param1))
            {
               this.§]O§ = this.§&r§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §1!d§(§1!d§.§0"&§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1!i§)
         {
            this.§]O§ = this.§&r§;
            this.§5!t§();
            this.§1!i§.close();
            this.§1!i§ = null;
         }
      }
      
      public function §%!I§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§[!T§ = null;
         if(param1 != null && this.§2!-§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§2!-§.length)
            {
               if((_loc8_ = this.§2!-§[_loc7_] as §[!T§) != null)
               {
                  _loc8_.§%!I§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§%!I§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§^!A§);
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
      
      public function §%!=§() : uint
      {
         return !!this.§2!-§ ? uint(this.§2!-§.length) : uint(0);
      }
      
      public function §`c§(param1:uint) : §[!T§
      {
         return !!this.§2!-§ ? this.§2!-§[param1] as §[!T§ : null;
      }
      
      public function §;"A§(param1:String) : §[!T§
      {
         return !!this.§`"0§[param1] ? this.§`"0§[param1] as §[!T§ : null;
      }
      
      public function §5!E§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §[!T§
      {
         return this.§@!T§(!!this.§2!-§ ? uint(this.§2!-§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,!E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §[!T§
      {
         return this.§+!L§(!!this.§2!-§ ? uint(this.§2!-§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §@!T§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §[!T§
      {
         if(this.§2!-§ == null)
         {
            this.§2!-§ = [];
         }
         if(this.§`"0§ == null)
         {
            this.§`"0§ = new Dictionary();
         }
         else if(this.§`"0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§[!T§;
         (_loc5_ = new §[!T§()).§2"-§ = param2;
         _loc5_.§-"0§(param3,param4);
         if(param1 >= this.§2!-§.length)
         {
            this.§2!-§.push(_loc5_);
         }
         else
         {
            this.§2!-§.splice(param1,0,_loc5_);
         }
         this.§`"0§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §+!L§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §[!T§
      {
         if(this.§2!-§ == null)
         {
            this.§2!-§ = [];
         }
         if(this.§`"0§ == null)
         {
            this.§`"0§ = new Dictionary();
         }
         else if(this.§`"0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§[!T§;
         (_loc6_ = new §[!T§()).§2"-§ = param2;
         _loc6_.§`]§(param3,param4,param5);
         if(param1 >= this.§2!-§.length)
         {
            this.§2!-§.push(_loc6_);
         }
         else
         {
            this.§2!-§.splice(param1,0,_loc6_);
         }
         this.§`"0§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §+!3§(param1:uint) : §[!T§
      {
         var _loc2_:§[!T§ = null;
         if(this.§2!-§ != null && this.§`"0§ != null && param1 < this.§2!-§.length)
         {
            _loc2_ = this.§2!-§[param1] as §[!T§;
            if(_loc2_ != null)
            {
               this.§2!-§.splice(param1,1);
               delete this.§`"0§[_loc2_.§2"-§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§]O§(param1))
         {
         }
         return this.§]O§ === this.§&r§;
      }
      
      protected function §&r§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6"+§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §51§:
                  this.§]O§ = this.§>!I§;
                  this.§;_§ = new §[!T§(this.§!!"§);
                  break;
               case §-]§:
               case §^!A§:
               case §!!M§:
               case §,!+§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §1!U§:
               case §6!j§:
               case §4;§:
                  this.§]O§ = this.§&r§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §>!I§(param1:IDataInput) : Boolean
      {
         if(this.§;_§.parse(param1))
         {
            if(this.§;_§.§?"+§)
            {
               this.§]O§ = this.§9W§;
               this.§6"#§ = new ByteArray();
               this.§@!F§ = 0;
               this.§;!6§ = 0;
               return true;
            }
            this.§0![§();
            if(this.§]O§ != this.§&r§)
            {
               this.§]O§ = this.§6"+§;
               return true;
            }
         }
         return false;
      }
      
      protected function §9W§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§@!F§ = this.§@!F§ >>> 8 | _loc2_ << 24;
            if(this.§@!F§ == §1!U§)
            {
               this.§6"#§.length -= 3;
               this.§]O§ = this.§2"?§;
               return true;
            }
            this.§6"#§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §2"?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§6"#§.length == _loc3_)
            {
               this.§6"#§.position = 0;
               this.§;_§.§&v§ = _loc2_;
               this.§;_§.§<!h§ = _loc3_;
               this.§;_§.§]"$§ = _loc4_;
               this.§;_§.§-"5§(this.§6"#§);
               this.§0![§();
               this.§]O§ = this.§6"+§;
            }
            else
            {
               this.§6"#§.writeUnsignedInt(_loc2_);
               this.§6"#§.writeUnsignedInt(_loc3_);
               this.§6"#§.writeUnsignedInt(_loc4_);
               this.§]O§ = this.§9W§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0![§() : void
      {
         this.§2!-§.push(this.§;_§);
         if(this.§;_§.§2"-§)
         {
            this.§`"0§[this.§;_§.§2"-§] = this.§;_§;
         }
         dispatchEvent(new §@"7§(§@"7§.§;"-§,this.§;_§));
         this.§;_§ = null;
      }
      
      protected function §+"H§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1!i§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§1!d§.§0"&§))
            {
               throw e;
            }
            dispatchEvent(new §1!d§(§1!d§.§0"&§,e.message));
         }
      }
      
      protected function §5!P§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §5!U§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2m§() : void
      {
         this.§1!i§.addEventListener(Event.COMPLETE,this.§5!P§);
         this.§1!i§.addEventListener(Event.OPEN,this.§5!P§);
         this.§1!i§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5!P§);
         this.§1!i§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!U§);
         this.§1!i§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!U§);
         this.§1!i§.addEventListener(ProgressEvent.PROGRESS,this.§+"H§);
      }
      
      protected function §5!t§() : void
      {
         this.§1!i§.removeEventListener(Event.COMPLETE,this.§5!P§);
         this.§1!i§.removeEventListener(Event.OPEN,this.§5!P§);
         this.§1!i§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5!P§);
         this.§1!i§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!U§);
         this.§1!i§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!U§);
         this.§1!i§.removeEventListener(ProgressEvent.PROGRESS,this.§+"H§);
      }
   }
}
