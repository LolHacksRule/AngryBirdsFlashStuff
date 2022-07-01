package §0!l§
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
   
   public class §3"§ extends EventDispatcher
   {
      
      static const §["2§:uint = 33639248;
      
      static const §2v§:uint = 808471376;
      
      static const §&'§:uint = 67324752;
      
      static const § "$§:uint = 84233040;
      
      static const §!<§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6!a§:uint = 134695760;
      
      static const §3!Z§:uint = 134630224;
      
      static const §=!R§:uint = 134695760;
       
      
      protected var §]I§:Array;
      
      protected var §;!L§:Dictionary;
      
      protected var §#!n§:URLStream;
      
      protected var §43§:String;
      
      protected var §%W§:Function;
      
      protected var §=D§:§,H§;
      
      protected var §'P§:ByteArray;
      
      protected var §%O§:uint;
      
      protected var §?>§:uint;
      
      public function §3"§(param1:String = "utf-8")
      {
         super();
         this.§43§ = param1;
         this.§%W§ = this.§#!F§;
      }
      
      public function get active() : Boolean
      {
         return this.§%W§ !== this.§#!F§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§#!n§ && this.§%W§ == this.§#!F§)
         {
            this.§#!n§ = new URLStream();
            this.§#!n§.endian = Endian.LITTLE_ENDIAN;
            this.§6!Q§();
            this.§]I§ = [];
            this.§;!L§ = new Dictionary();
            this.§%W§ = this.§-"-§;
            this.§#!n§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§#!n§ && this.§%W§ == this.§#!F§)
         {
            this.§]I§ = [];
            this.§;!L§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§%W§ = this.§-"-§;
            if(this.parse(param1))
            {
               this.§%W§ = this.§#!F§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §-!E§(§-!E§.§&!k§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§#!n§)
         {
            this.§%W§ = this.§#!F§;
            this.§?J§();
            this.§#!n§.close();
            this.§#!n§ = null;
         }
      }
      
      public function § "-§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§,H§ = null;
         if(param1 != null && this.§]I§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§]I§.length)
            {
               if((_loc8_ = this.§]I§[_loc7_] as §,H§) != null)
               {
                  _loc8_.§ "-§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§ "-§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!<§);
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
      
      public function §>!5§() : uint
      {
         return !!this.§]I§ ? uint(this.§]I§.length) : uint(0);
      }
      
      public function §+! §(param1:uint) : §,H§
      {
         return !!this.§]I§ ? this.§]I§[param1] as §,H§ : null;
      }
      
      public function §'!Y§(param1:String) : §,H§
      {
         return !!this.§;!L§[param1] ? this.§;!L§[param1] as §,H§ : null;
      }
      
      public function §5!$§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,H§
      {
         return this.§?M§(!!this.§]I§ ? uint(this.§]I§.length) : uint(0),param1,param2,param3);
      }
      
      public function §=!Z§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,H§
      {
         return this.§get §(!!this.§]I§ ? uint(this.§]I§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §?M§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,H§
      {
         if(this.§]I§ == null)
         {
            this.§]I§ = [];
         }
         if(this.§;!L§ == null)
         {
            this.§;!L§ = new Dictionary();
         }
         else if(this.§;!L§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§,H§;
         (_loc5_ = new §,H§()).§!O§ = param2;
         _loc5_.§'!#§(param3,param4);
         if(param1 >= this.§]I§.length)
         {
            this.§]I§.push(_loc5_);
         }
         else
         {
            this.§]I§.splice(param1,0,_loc5_);
         }
         this.§;!L§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §get §(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,H§
      {
         if(this.§]I§ == null)
         {
            this.§]I§ = [];
         }
         if(this.§;!L§ == null)
         {
            this.§;!L§ = new Dictionary();
         }
         else if(this.§;!L§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§,H§;
         (_loc6_ = new §,H§()).§!O§ = param2;
         _loc6_.§>!p§(param3,param4,param5);
         if(param1 >= this.§]I§.length)
         {
            this.§]I§.push(_loc6_);
         }
         else
         {
            this.§]I§.splice(param1,0,_loc6_);
         }
         this.§;!L§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[_§(param1:uint) : §,H§
      {
         var _loc2_:§,H§ = null;
         if(this.§]I§ != null && this.§;!L§ != null && param1 < this.§]I§.length)
         {
            _loc2_ = this.§]I§[param1] as §,H§;
            if(_loc2_ != null)
            {
               this.§]I§.splice(param1,1);
               delete this.§;!L§[_loc2_.§!O§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§%W§(param1))
         {
         }
         return this.§%W§ === this.§#!F§;
      }
      
      protected function §#!F§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §-"-§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §&'§:
                  this.§%W§ = this.§5%§;
                  this.§=D§ = new §,H§(this.§43§);
                  break;
               case §["2§:
               case §!<§:
               case §2v§:
               case § "$§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §6!a§:
               case §3!Z§:
               case §=!R§:
                  this.§%W§ = this.§#!F§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5%§(param1:IDataInput) : Boolean
      {
         if(this.§=D§.parse(param1))
         {
            if(this.§=D§.§+!r§)
            {
               this.§%W§ = this.§5!X§;
               this.§'P§ = new ByteArray();
               this.§%O§ = 0;
               this.§?>§ = 0;
               return true;
            }
            this.§3!x§();
            if(this.§%W§ != this.§#!F§)
            {
               this.§%W§ = this.§-"-§;
               return true;
            }
         }
         return false;
      }
      
      protected function §5!X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%O§ = this.§%O§ >>> 8 | _loc2_ << 24;
            if(this.§%O§ == §6!a§)
            {
               this.§'P§.length -= 3;
               this.§%W§ = this.§6!o§;
               return true;
            }
            this.§'P§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §6!o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§'P§.length == _loc3_)
            {
               this.§'P§.position = 0;
               this.§=D§.§9n§ = _loc2_;
               this.§=D§.§&?§ = _loc3_;
               this.§=D§.§`!d§ = _loc4_;
               this.§=D§.parseContent(this.§'P§);
               this.§3!x§();
               this.§%W§ = this.§-"-§;
            }
            else
            {
               this.§'P§.writeUnsignedInt(_loc2_);
               this.§'P§.writeUnsignedInt(_loc3_);
               this.§'P§.writeUnsignedInt(_loc4_);
               this.§%W§ = this.§5!X§;
            }
            return true;
         }
         return false;
      }
      
      protected function §3!x§() : void
      {
         this.§]I§.push(this.§=D§);
         if(this.§=D§.§!O§)
         {
            this.§;!L§[this.§=D§.§!O§] = this.§=D§;
         }
         dispatchEvent(new §#!s§(§#!s§.§%A§,this.§=D§));
         this.§=D§ = null;
      }
      
      protected function §"!9§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§#!n§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§-!E§.§&!k§))
            {
               throw e;
            }
            dispatchEvent(new §-!E§(§-!E§.§&!k§,e.message));
         }
      }
      
      protected function §?`§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §6!Q§() : void
      {
         this.§#!n§.addEventListener(Event.COMPLETE,this.§?`§);
         this.§#!n§.addEventListener(Event.OPEN,this.§?`§);
         this.§#!n§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?`§);
         this.§#!n§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§#!n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§#!n§.addEventListener(ProgressEvent.PROGRESS,this.§"!9§);
      }
      
      protected function §?J§() : void
      {
         this.§#!n§.removeEventListener(Event.COMPLETE,this.§?`§);
         this.§#!n§.removeEventListener(Event.OPEN,this.§?`§);
         this.§#!n§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?`§);
         this.§#!n§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§#!n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§#!n§.removeEventListener(ProgressEvent.PROGRESS,this.§"!9§);
      }
   }
}
