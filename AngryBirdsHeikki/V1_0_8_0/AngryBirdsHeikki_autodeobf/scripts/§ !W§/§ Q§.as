package § !W§
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
   
   public class § Q§ extends EventDispatcher
   {
      
      static const § K§:uint = 33639248;
      
      static const §7![§:uint = 808471376;
      
      static const §<_§:uint = 67324752;
      
      static const §%R§:uint = 84233040;
      
      static const §[!b§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §+O§:uint = 134695760;
      
      static const §2!W§:uint = 134630224;
      
      static const §=![§:uint = 134695760;
       
      
      protected var §6P§:Array;
      
      protected var §0u§:Dictionary;
      
      protected var §8!_§:URLStream;
      
      protected var §+U§:String;
      
      protected var §;!a§:Function;
      
      protected var §4^§:§!#§;
      
      protected var §54§:ByteArray;
      
      protected var §3!8§:uint;
      
      protected var §^!§:uint;
      
      public function § Q§(param1:String = "utf-8")
      {
         super();
         this.§+U§ = param1;
         this.§;!a§ = this.§=I§;
      }
      
      public function get §4w§() : Boolean
      {
         return this.§;!a§ !== this.§=I§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8!_§ && this.§;!a§ == this.§=I§)
         {
            this.§8!_§ = new URLStream();
            this.§8!_§.endian = Endian.LITTLE_ENDIAN;
            this.§=!B§();
            this.§6P§ = [];
            this.§0u§ = new Dictionary();
            this.§;!a§ = this.§8E§;
            this.§8!_§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8!_§ && this.§;!a§ == this.§=I§)
         {
            this.§6P§ = [];
            this.§0u§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;!a§ = this.§8E§;
            if(this.parse(param1))
            {
               this.§;!a§ = this.§=I§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §!!5§(§!!5§.§;!N§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8!_§)
         {
            this.§;!a§ = this.§=I§;
            this.§2B§();
            this.§8!_§.close();
            this.§8!_§ = null;
         }
      }
      
      public function §#3§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§!#§ = null;
         if(param1 != null && this.§6P§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§6P§.length)
            {
               if((_loc8_ = this.§6P§[_loc7_] as §!#§) != null)
               {
                  _loc8_.§#3§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§#3§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§[!b§);
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
      
      public function §^U§() : uint
      {
         return !!this.§6P§ ? uint(this.§6P§.length) : uint(0);
      }
      
      public function §8`§(param1:uint) : §!#§
      {
         return !!this.§6P§ ? this.§6P§[param1] as §!#§ : null;
      }
      
      public function §&![§(param1:String) : §!#§
      {
         return !!this.§0u§[param1] ? this.§0u§[param1] as §!#§ : null;
      }
      
      public function §#?§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §!#§
      {
         return this.§"V§(!!this.§6P§ ? uint(this.§6P§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^d§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §!#§
      {
         return this.§2!G§(!!this.§6P§ ? uint(this.§6P§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §"V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §!#§
      {
         if(this.§6P§ == null)
         {
            this.§6P§ = [];
         }
         if(this.§0u§ == null)
         {
            this.§0u§ = new Dictionary();
         }
         else if(this.§0u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§!#§;
         (_loc5_ = new §!#§()).§+!<§ = param2;
         _loc5_.§%<§(param3,param4);
         if(param1 >= this.§6P§.length)
         {
            this.§6P§.push(_loc5_);
         }
         else
         {
            this.§6P§.splice(param1,0,_loc5_);
         }
         this.§0u§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §2!G§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §!#§
      {
         if(this.§6P§ == null)
         {
            this.§6P§ = [];
         }
         if(this.§0u§ == null)
         {
            this.§0u§ = new Dictionary();
         }
         else if(this.§0u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§!#§;
         (_loc6_ = new §!#§()).§+!<§ = param2;
         _loc6_.§'j§(param3,param4,param5);
         if(param1 >= this.§6P§.length)
         {
            this.§6P§.push(_loc6_);
         }
         else
         {
            this.§6P§.splice(param1,0,_loc6_);
         }
         this.§0u§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §+s§(param1:uint) : §!#§
      {
         var _loc2_:§!#§ = null;
         if(this.§6P§ != null && this.§0u§ != null && param1 < this.§6P§.length)
         {
            _loc2_ = this.§6P§[param1] as §!#§;
            if(_loc2_ != null)
            {
               this.§6P§.splice(param1,1);
               delete this.§0u§[_loc2_.§+!<§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;!a§(param1))
         {
         }
         return this.§;!a§ === this.§=I§;
      }
      
      protected function §=I§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §8E§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §<_§:
                  this.§;!a§ = this.§4J§;
                  this.§4^§ = new §!#§(this.§+U§);
                  break;
               case § K§:
               case §[!b§:
               case §7![§:
               case §%R§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §+O§:
               case §2!W§:
               case §=![§:
                  this.§;!a§ = this.§=I§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §4J§(param1:IDataInput) : Boolean
      {
         if(this.§4^§.parse(param1))
         {
            if(this.§4^§.§8;§)
            {
               this.§;!a§ = this.§9h§;
               this.§54§ = new ByteArray();
               this.§3!8§ = 0;
               this.§^!§ = 0;
               return true;
            }
            this.§98§();
            if(this.§;!a§ != this.§=I§)
            {
               this.§;!a§ = this.§8E§;
               return true;
            }
         }
         return false;
      }
      
      protected function §9h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§3!8§ = this.§3!8§ >>> 8 | _loc2_ << 24;
            if(this.§3!8§ == §+O§)
            {
               this.§54§.length -= 3;
               this.§;!a§ = this.§=!9§;
               return true;
            }
            this.§54§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §=!9§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§54§.length == _loc3_)
            {
               this.§54§.position = 0;
               this.§4^§.§@]§ = _loc2_;
               this.§4^§.§&H§ = _loc3_;
               this.§4^§.§-!?§ = _loc4_;
               this.§4^§.§;!X§(this.§54§);
               this.§98§();
               this.§;!a§ = this.§8E§;
            }
            else
            {
               this.§54§.writeUnsignedInt(_loc2_);
               this.§54§.writeUnsignedInt(_loc3_);
               this.§54§.writeUnsignedInt(_loc4_);
               this.§;!a§ = this.§9h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §98§() : void
      {
         this.§6P§.push(this.§4^§);
         if(this.§4^§.§+!<§)
         {
            this.§0u§[this.§4^§.§+!<§] = this.§4^§;
         }
         dispatchEvent(new §throw§(§throw§.§;!9§,this.§4^§));
         this.§4^§ = null;
      }
      
      protected function §%!4§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8!_§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§!!5§.§;!N§))
            {
               throw e;
            }
            dispatchEvent(new §!!5§(§!!5§.§;!N§,e.message));
         }
      }
      
      protected function §%!a§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §?s§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §=!B§() : void
      {
         this.§8!_§.addEventListener(Event.COMPLETE,this.§%!a§);
         this.§8!_§.addEventListener(Event.OPEN,this.§%!a§);
         this.§8!_§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!a§);
         this.§8!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§?s§);
         this.§8!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?s§);
         this.§8!_§.addEventListener(ProgressEvent.PROGRESS,this.§%!4§);
      }
      
      protected function §2B§() : void
      {
         this.§8!_§.removeEventListener(Event.COMPLETE,this.§%!a§);
         this.§8!_§.removeEventListener(Event.OPEN,this.§%!a§);
         this.§8!_§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!a§);
         this.§8!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?s§);
         this.§8!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?s§);
         this.§8!_§.removeEventListener(ProgressEvent.PROGRESS,this.§%!4§);
      }
   }
}
