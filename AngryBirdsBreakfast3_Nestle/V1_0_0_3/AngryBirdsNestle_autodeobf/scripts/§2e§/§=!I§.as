package §2e§
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
   
   public class §=!I§ extends EventDispatcher
   {
      
      static const §=!+§:uint = 33639248;
      
      static const §!!j§:uint = 808471376;
      
      static const §6O§:uint = 67324752;
      
      static const §6![§:uint = 84233040;
      
      static const §#a§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §8p§:uint = 134695760;
      
      static const §4!'§:uint = 134630224;
      
      static const §;!o§:uint = 134695760;
       
      
      protected var §`!i§:Array;
      
      protected var §[!@§:Dictionary;
      
      protected var §6!U§:URLStream;
      
      protected var §2""§:String;
      
      protected var §8!&§:Function;
      
      protected var §;!P§:§+!H§;
      
      protected var §2"-§:ByteArray;
      
      protected var §?Y§:uint;
      
      protected var §!!3§:uint;
      
      public function §=!I§(param1:String = "utf-8")
      {
         super();
         this.§2""§ = param1;
         this.§8!&§ = this.§1P§;
      }
      
      public function get active() : Boolean
      {
         return this.§8!&§ !== this.§1P§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§6!U§ && this.§8!&§ == this.§1P§)
         {
            this.§6!U§ = new URLStream();
            this.§6!U§.endian = Endian.LITTLE_ENDIAN;
            this.§9!H§();
            this.§`!i§ = [];
            this.§[!@§ = new Dictionary();
            this.§8!&§ = this.§[!T§;
            this.§6!U§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§6!U§ && this.§8!&§ == this.§1P§)
         {
            this.§`!i§ = [];
            this.§[!@§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§8!&§ = this.§[!T§;
            if(this.parse(param1))
            {
               this.§8!&§ = this.§1P§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §[F§(§[F§.§@]§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§6!U§)
         {
            this.§8!&§ = this.§1P§;
            this.§9!B§();
            this.§6!U§.close();
            this.§6!U§ = null;
         }
      }
      
      public function §]#§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§+!H§ = null;
         if(param1 != null && this.§`!i§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§`!i§.length)
            {
               if((_loc8_ = this.§`!i§[_loc7_] as §+!H§) != null)
               {
                  _loc8_.§]#§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§]#§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§#a§);
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
      
      public function §-!-§() : uint
      {
         return !!this.§`!i§ ? uint(this.§`!i§.length) : uint(0);
      }
      
      public function §0y§(param1:uint) : §+!H§
      {
         return !!this.§`!i§ ? this.§`!i§[param1] as §+!H§ : null;
      }
      
      public function §2!0§(param1:String) : §+!H§
      {
         return !!this.§[!@§[param1] ? this.§[!@§[param1] as §+!H§ : null;
      }
      
      public function §=![§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §+!H§
      {
         return this.§7!y§(!!this.§`!i§ ? uint(this.§`!i§.length) : uint(0),param1,param2,param3);
      }
      
      public function §["4§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §+!H§
      {
         return this.§"!U§(!!this.§`!i§ ? uint(this.§`!i§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §7!y§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §+!H§
      {
         if(this.§`!i§ == null)
         {
            this.§`!i§ = [];
         }
         if(this.§[!@§ == null)
         {
            this.§[!@§ = new Dictionary();
         }
         else if(this.§[!@§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§+!H§;
         (_loc5_ = new §+!H§()).§=!N§ = param2;
         _loc5_.§,F§(param3,param4);
         if(param1 >= this.§`!i§.length)
         {
            this.§`!i§.push(_loc5_);
         }
         else
         {
            this.§`!i§.splice(param1,0,_loc5_);
         }
         this.§[!@§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"!U§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §+!H§
      {
         if(this.§`!i§ == null)
         {
            this.§`!i§ = [];
         }
         if(this.§[!@§ == null)
         {
            this.§[!@§ = new Dictionary();
         }
         else if(this.§[!@§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§+!H§;
         (_loc6_ = new §+!H§()).§=!N§ = param2;
         _loc6_.§1!E§(param3,param4,param5);
         if(param1 >= this.§`!i§.length)
         {
            this.§`!i§.push(_loc6_);
         }
         else
         {
            this.§`!i§.splice(param1,0,_loc6_);
         }
         this.§[!@§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §,!]§(param1:uint) : §+!H§
      {
         var _loc2_:§+!H§ = null;
         if(this.§`!i§ != null && this.§[!@§ != null && param1 < this.§`!i§.length)
         {
            _loc2_ = this.§`!i§[param1] as §+!H§;
            if(_loc2_ != null)
            {
               this.§`!i§.splice(param1,1);
               delete this.§[!@§[_loc2_.§=!N§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§8!&§(param1))
         {
         }
         return this.§8!&§ === this.§1P§;
      }
      
      protected function §1P§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!T§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §6O§:
                  this.§8!&§ = this.§0a§;
                  this.§;!P§ = new §+!H§(this.§2""§);
                  break;
               case §=!+§:
               case §#a§:
               case §!!j§:
               case §6![§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §8p§:
               case §4!'§:
               case §;!o§:
                  this.§8!&§ = this.§1P§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §0a§(param1:IDataInput) : Boolean
      {
         if(this.§;!P§.parse(param1))
         {
            if(this.§;!P§.§41§)
            {
               this.§8!&§ = this.§=!-§;
               this.§2"-§ = new ByteArray();
               this.§?Y§ = 0;
               this.§!!3§ = 0;
               return true;
            }
            this.§'!<§();
            if(this.§8!&§ != this.§1P§)
            {
               this.§8!&§ = this.§[!T§;
               return true;
            }
         }
         return false;
      }
      
      protected function §=!-§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§?Y§ = this.§?Y§ >>> 8 | _loc2_ << 24;
            if(this.§?Y§ == §8p§)
            {
               this.§2"-§.length -= 3;
               this.§8!&§ = this.§-!]§;
               return true;
            }
            this.§2"-§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-!]§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§2"-§.length == _loc3_)
            {
               this.§2"-§.position = 0;
               this.§;!P§.§+Z§ = _loc2_;
               this.§;!P§.§-!M§ = _loc3_;
               this.§;!P§.§0?§ = _loc4_;
               this.§;!P§.parseContent(this.§2"-§);
               this.§'!<§();
               this.§8!&§ = this.§[!T§;
            }
            else
            {
               this.§2"-§.writeUnsignedInt(_loc2_);
               this.§2"-§.writeUnsignedInt(_loc3_);
               this.§2"-§.writeUnsignedInt(_loc4_);
               this.§8!&§ = this.§=!-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'!<§() : void
      {
         this.§`!i§.push(this.§;!P§);
         if(this.§;!P§.§=!N§)
         {
            this.§[!@§[this.§;!P§.§=!N§] = this.§;!P§;
         }
         dispatchEvent(new §]]§(§]]§.§[T§,this.§;!P§));
         this.§;!P§ = null;
      }
      
      protected function §5!C§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§6!U§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§[F§.§@]§))
            {
               throw e;
            }
            dispatchEvent(new §[F§(§[F§.§@]§,e.message));
         }
      }
      
      protected function §7!"§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §9!H§() : void
      {
         this.§6!U§.addEventListener(Event.COMPLETE,this.§7!"§);
         this.§6!U§.addEventListener(Event.OPEN,this.§7!"§);
         this.§6!U§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7!"§);
         this.§6!U§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§6!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§6!U§.addEventListener(ProgressEvent.PROGRESS,this.§5!C§);
      }
      
      protected function §9!B§() : void
      {
         this.§6!U§.removeEventListener(Event.COMPLETE,this.§7!"§);
         this.§6!U§.removeEventListener(Event.OPEN,this.§7!"§);
         this.§6!U§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7!"§);
         this.§6!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§6!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§6!U§.removeEventListener(ProgressEvent.PROGRESS,this.§5!C§);
      }
   }
}
