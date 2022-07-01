package §@!G§
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
   
   public class §4!Z§ extends EventDispatcher
   {
      
      static const §1!d§:uint = 33639248;
      
      static const §4k§:uint = 808471376;
      
      static const §[G§:uint = 67324752;
      
      static const §[&§:uint = 84233040;
      
      static const §^Z§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §;!'§:uint = 134695760;
      
      static const §4!q§:uint = 134630224;
      
      static const §+t§:uint = 134695760;
       
      
      protected var §1B§:Array;
      
      protected var §-W§:Dictionary;
      
      protected var §[!m§:URLStream;
      
      protected var §^!V§:String;
      
      protected var §"!L§:Function;
      
      protected var §>9§:§]b§;
      
      protected var §9v§:ByteArray;
      
      protected var §%N§:uint;
      
      protected var §=!y§:uint;
      
      public function §4!Z§(param1:String = "utf-8")
      {
         super();
         this.§^!V§ = param1;
         this.§"!L§ = this.§%T§;
      }
      
      public function get active() : Boolean
      {
         return this.§"!L§ !== this.§%T§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§[!m§ && this.§"!L§ == this.§%T§)
         {
            this.§[!m§ = new URLStream();
            this.§[!m§.endian = Endian.LITTLE_ENDIAN;
            this.§79§();
            this.§1B§ = [];
            this.§-W§ = new Dictionary();
            this.§"!L§ = this.§!"3§;
            this.§[!m§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§[!m§ && this.§"!L§ == this.§%T§)
         {
            this.§1B§ = [];
            this.§-W§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§"!L§ = this.§!"3§;
            if(this.parse(param1))
            {
               this.§"!L§ = this.§%T§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §%e§(§%e§.§@!f§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§[!m§)
         {
            this.§"!L§ = this.§%T§;
            this.§!" §();
            this.§[!m§.close();
            this.§[!m§ = null;
         }
      }
      
      public function §6!&§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§]b§ = null;
         if(param1 != null && this.§1B§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§1B§.length)
            {
               if((_loc8_ = this.§1B§[_loc7_] as §]b§) != null)
               {
                  _loc8_.§6!&§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§6!&§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§^Z§);
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
      
      public function §%!1§() : uint
      {
         return !!this.§1B§ ? uint(this.§1B§.length) : uint(0);
      }
      
      public function §76§(param1:uint) : §]b§
      {
         return !!this.§1B§ ? this.§1B§[param1] as §]b§ : null;
      }
      
      public function §-Z§(param1:String) : §]b§
      {
         return !!this.§-W§[param1] ? this.§-W§[param1] as §]b§ : null;
      }
      
      public function §!!D§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]b§
      {
         return this.§0&§(!!this.§1B§ ? uint(this.§1B§.length) : uint(0),param1,param2,param3);
      }
      
      public function §1!D§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]b§
      {
         return this.§'V§(!!this.§1B§ ? uint(this.§1B§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §0&§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]b§
      {
         if(this.§1B§ == null)
         {
            this.§1B§ = [];
         }
         if(this.§-W§ == null)
         {
            this.§-W§ = new Dictionary();
         }
         else if(this.§-W§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§]b§;
         (_loc5_ = new §]b§()).§@z§ = param2;
         _loc5_.§,!R§(param3,param4);
         if(param1 >= this.§1B§.length)
         {
            this.§1B§.push(_loc5_);
         }
         else
         {
            this.§1B§.splice(param1,0,_loc5_);
         }
         this.§-W§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §'V§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]b§
      {
         if(this.§1B§ == null)
         {
            this.§1B§ = [];
         }
         if(this.§-W§ == null)
         {
            this.§-W§ = new Dictionary();
         }
         else if(this.§-W§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§]b§;
         (_loc6_ = new §]b§()).§@z§ = param2;
         _loc6_.§+!F§(param3,param4,param5);
         if(param1 >= this.§1B§.length)
         {
            this.§1B§.push(_loc6_);
         }
         else
         {
            this.§1B§.splice(param1,0,_loc6_);
         }
         this.§-W§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §7!7§(param1:uint) : §]b§
      {
         var _loc2_:§]b§ = null;
         if(this.§1B§ != null && this.§-W§ != null && param1 < this.§1B§.length)
         {
            _loc2_ = this.§1B§[param1] as §]b§;
            if(_loc2_ != null)
            {
               this.§1B§.splice(param1,1);
               delete this.§-W§[_loc2_.§@z§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§"!L§(param1))
         {
         }
         return this.§"!L§ === this.§%T§;
      }
      
      protected function §%T§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!"3§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §[G§:
                  this.§"!L§ = this.§1!O§;
                  this.§>9§ = new §]b§(this.§^!V§);
                  break;
               case §1!d§:
               case §^Z§:
               case §4k§:
               case §[&§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §;!'§:
               case §4!q§:
               case §+t§:
                  this.§"!L§ = this.§%T§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §1!O§(param1:IDataInput) : Boolean
      {
         if(this.§>9§.parse(param1))
         {
            if(this.§>9§.§8!8§)
            {
               this.§"!L§ = this.§;!%§;
               this.§9v§ = new ByteArray();
               this.§%N§ = 0;
               this.§=!y§ = 0;
               return true;
            }
            this.§#!^§();
            if(this.§"!L§ != this.§%T§)
            {
               this.§"!L§ = this.§!"3§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;!%§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%N§ = this.§%N§ >>> 8 | _loc2_ << 24;
            if(this.§%N§ == §;!'§)
            {
               this.§9v§.length -= 3;
               this.§"!L§ = this.§&_§;
               return true;
            }
            this.§9v§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §&_§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§9v§.length == _loc3_)
            {
               this.§9v§.position = 0;
               this.§>9§.§`!M§ = _loc2_;
               this.§>9§.§;"&§ = _loc3_;
               this.§>9§.§"!6§ = _loc4_;
               this.§>9§.parseContent(this.§9v§);
               this.§#!^§();
               this.§"!L§ = this.§!"3§;
            }
            else
            {
               this.§9v§.writeUnsignedInt(_loc2_);
               this.§9v§.writeUnsignedInt(_loc3_);
               this.§9v§.writeUnsignedInt(_loc4_);
               this.§"!L§ = this.§;!%§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#!^§() : void
      {
         this.§1B§.push(this.§>9§);
         if(this.§>9§.§@z§)
         {
            this.§-W§[this.§>9§.§@z§] = this.§>9§;
         }
         dispatchEvent(new §4"4§(§4"4§.§7!2§,this.§>9§));
         this.§>9§ = null;
      }
      
      protected function §`r§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§[!m§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§%e§.§@!f§))
            {
               throw e;
            }
            dispatchEvent(new §%e§(§%e§.§@!f§,e.message));
         }
      }
      
      protected function §+!j§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §79§() : void
      {
         this.§[!m§.addEventListener(Event.COMPLETE,this.§+!j§);
         this.§[!m§.addEventListener(Event.OPEN,this.§+!j§);
         this.§[!m§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!j§);
         this.§[!m§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§[!m§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§[!m§.addEventListener(ProgressEvent.PROGRESS,this.§`r§);
      }
      
      protected function §!" §() : void
      {
         this.§[!m§.removeEventListener(Event.COMPLETE,this.§+!j§);
         this.§[!m§.removeEventListener(Event.OPEN,this.§+!j§);
         this.§[!m§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!j§);
         this.§[!m§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§[!m§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§[!m§.removeEventListener(ProgressEvent.PROGRESS,this.§`r§);
      }
   }
}
