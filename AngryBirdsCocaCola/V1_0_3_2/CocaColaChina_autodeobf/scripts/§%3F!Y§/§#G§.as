package §?!Y§
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
   
   public class §#G§ extends EventDispatcher
   {
      
      static const §"C§:uint = 33639248;
      
      static const §"b§:uint = 808471376;
      
      static const §"!2§:uint = 67324752;
      
      static const §>[§:uint = 84233040;
      
      static const §%!Y§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §79§:uint = 134695760;
      
      static const §9!?§:uint = 134630224;
      
      static const §1!<§:uint = 134695760;
       
      
      protected var §;Z§:Array;
      
      protected var §+!P§:Dictionary;
      
      protected var §;!J§:URLStream;
      
      protected var §7!F§:String;
      
      protected var §=H§:Function;
      
      protected var §&s§:§1K§;
      
      protected var §!!A§:ByteArray;
      
      protected var §+-§:uint;
      
      protected var §>%§:uint;
      
      public function §#G§(param1:String = "utf-8")
      {
         super();
         this.§7!F§ = param1;
         this.§=H§ = this.§>B§;
      }
      
      public function get §]!5§() : Boolean
      {
         return this.§=H§ !== this.§>B§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;!J§ && this.§=H§ == this.§>B§)
         {
            this.§;!J§ = new URLStream();
            this.§;!J§.endian = Endian.LITTLE_ENDIAN;
            this.§2!3§();
            this.§;Z§ = [];
            this.§+!P§ = new Dictionary();
            this.§=H§ = this.§8t§;
            this.§;!J§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;!J§ && this.§=H§ == this.§>B§)
         {
            this.§;Z§ = [];
            this.§+!P§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§=H§ = this.§8t§;
            if(this.parse(param1))
            {
               this.§=H§ = this.§>B§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §,!3§(§,!3§.§7h§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;!J§)
         {
            this.§=H§ = this.§>B§;
            this.§]!S§();
            this.§;!J§.close();
            this.§;!J§ = null;
         }
      }
      
      public function §;`§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§1K§ = null;
         if(param1 != null && this.§;Z§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§;Z§.length)
            {
               if((_loc8_ = this.§;Z§[_loc7_] as §1K§) != null)
               {
                  _loc8_.§;`§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;`§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§%!Y§);
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
      
      public function §!f§() : uint
      {
         return !!this.§;Z§ ? uint(this.§;Z§.length) : uint(0);
      }
      
      public function §[!]§(param1:uint) : §1K§
      {
         return !!this.§;Z§ ? this.§;Z§[param1] as §1K§ : null;
      }
      
      public function §6]§(param1:String) : §1K§
      {
         return !!this.§+!P§[param1] ? this.§+!P§[param1] as §1K§ : null;
      }
      
      public function §%d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §1K§
      {
         return this.§0u§(!!this.§;Z§ ? uint(this.§;Z§.length) : uint(0),param1,param2,param3);
      }
      
      public function §9!9§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §1K§
      {
         return this.§3!!§(!!this.§;Z§ ? uint(this.§;Z§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §0u§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §1K§
      {
         if(this.§;Z§ == null)
         {
            this.§;Z§ = [];
         }
         if(this.§+!P§ == null)
         {
            this.§+!P§ = new Dictionary();
         }
         else if(this.§+!P§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§1K§;
         (_loc5_ = new §1K§()).§7d§ = param2;
         _loc5_.§<!A§(param3,param4);
         if(param1 >= this.§;Z§.length)
         {
            this.§;Z§.push(_loc5_);
         }
         else
         {
            this.§;Z§.splice(param1,0,_loc5_);
         }
         this.§+!P§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §3!!§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §1K§
      {
         if(this.§;Z§ == null)
         {
            this.§;Z§ = [];
         }
         if(this.§+!P§ == null)
         {
            this.§+!P§ = new Dictionary();
         }
         else if(this.§+!P§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§1K§;
         (_loc6_ = new §1K§()).§7d§ = param2;
         _loc6_.§8O§(param3,param4,param5);
         if(param1 >= this.§;Z§.length)
         {
            this.§;Z§.push(_loc6_);
         }
         else
         {
            this.§;Z§.splice(param1,0,_loc6_);
         }
         this.§+!P§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §6J§(param1:uint) : §1K§
      {
         var _loc2_:§1K§ = null;
         if(this.§;Z§ != null && this.§+!P§ != null && param1 < this.§;Z§.length)
         {
            _loc2_ = this.§;Z§[param1] as §1K§;
            if(_loc2_ != null)
            {
               this.§;Z§.splice(param1,1);
               delete this.§+!P§[_loc2_.§7d§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§=H§(param1))
         {
         }
         return this.§=H§ === this.§>B§;
      }
      
      protected function §>B§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §8t§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §"!2§:
                  this.§=H§ = this.§0!K§;
                  this.§&s§ = new §1K§(this.§7!F§);
                  break;
               case §"C§:
               case §%!Y§:
               case §"b§:
               case §>[§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §79§:
               case §9!?§:
               case §1!<§:
                  this.§=H§ = this.§>B§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §0!K§(param1:IDataInput) : Boolean
      {
         if(this.§&s§.parse(param1))
         {
            if(this.§&s§.§7!H§)
            {
               this.§=H§ = this.§84§;
               this.§!!A§ = new ByteArray();
               this.§+-§ = 0;
               this.§>%§ = 0;
               return true;
            }
            this.§[l§();
            if(this.§=H§ != this.§>B§)
            {
               this.§=H§ = this.§8t§;
               return true;
            }
         }
         return false;
      }
      
      protected function §84§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§+-§ = this.§+-§ >>> 8 | _loc2_ << 24;
            if(this.§+-§ == §79§)
            {
               this.§!!A§.length -= 3;
               this.§=H§ = this.§%!<§;
               return true;
            }
            this.§!!A§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §%!<§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§!!A§.length == _loc3_)
            {
               this.§!!A§.position = 0;
               this.§&s§.§`V§ = _loc2_;
               this.§&s§.§[!%§ = _loc3_;
               this.§&s§.§%!c§ = _loc4_;
               this.§&s§.§`I§(this.§!!A§);
               this.§[l§();
               this.§=H§ = this.§8t§;
            }
            else
            {
               this.§!!A§.writeUnsignedInt(_loc2_);
               this.§!!A§.writeUnsignedInt(_loc3_);
               this.§!!A§.writeUnsignedInt(_loc4_);
               this.§=H§ = this.§84§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[l§() : void
      {
         this.§;Z§.push(this.§&s§);
         if(this.§&s§.§7d§)
         {
            this.§+!P§[this.§&s§.§7d§] = this.§&s§;
         }
         dispatchEvent(new §-!§(§-!§.§5!a§,this.§&s§));
         this.§&s§ = null;
      }
      
      protected function §%I§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;!J§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§,!3§.§7h§))
            {
               throw e;
            }
            dispatchEvent(new §,!3§(§,!3§.§7h§,e.message));
         }
      }
      
      protected function §-3§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §'!§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2!3§() : void
      {
         this.§;!J§.addEventListener(Event.COMPLETE,this.§-3§);
         this.§;!J§.addEventListener(Event.OPEN,this.§-3§);
         this.§;!J§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-3§);
         this.§;!J§.addEventListener(IOErrorEvent.IO_ERROR,this.§'!§);
         this.§;!J§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!§);
         this.§;!J§.addEventListener(ProgressEvent.PROGRESS,this.§%I§);
      }
      
      protected function §]!S§() : void
      {
         this.§;!J§.removeEventListener(Event.COMPLETE,this.§-3§);
         this.§;!J§.removeEventListener(Event.OPEN,this.§-3§);
         this.§;!J§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-3§);
         this.§;!J§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!§);
         this.§;!J§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!§);
         this.§;!J§.removeEventListener(ProgressEvent.PROGRESS,this.§%I§);
      }
   }
}
