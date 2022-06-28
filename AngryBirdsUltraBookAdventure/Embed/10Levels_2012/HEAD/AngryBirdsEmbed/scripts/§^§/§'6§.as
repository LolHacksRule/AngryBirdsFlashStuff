package §^§
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
   
   public class §'6§ extends EventDispatcher
   {
      
      static const §?<§:uint = 33639248;
      
      static const §1v§:uint = 808471376;
      
      static const §]!A§:uint = 67324752;
      
      static const §==§:uint = 84233040;
      
      static const §=!2§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §"! §:uint = 134695760;
      
      static const §<0§:uint = 134630224;
      
      static const §-b§:uint = 134695760;
       
      
      protected var §[!8§:Array;
      
      protected var §+7§:Dictionary;
      
      protected var § K§:URLStream;
      
      protected var §?5§:String;
      
      protected var §[B§:Function;
      
      protected var §5!8§:§"!0§;
      
      protected var §&8§:ByteArray;
      
      protected var §&W§:uint;
      
      protected var §7@§:uint;
      
      public function §'6§(param1:String = "utf-8")
      {
         super();
         this.§?5§ = param1;
         this.§[B§ = this.§5h§;
      }
      
      public function get active() : Boolean
      {
         return this.§[B§ !== this.§5h§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§ K§ && this.§[B§ == this.§5h§)
         {
            this.§ K§ = new URLStream();
            this.§ K§.endian = Endian.LITTLE_ENDIAN;
            this.§&!0§();
            this.§[!8§ = [];
            this.§+7§ = new Dictionary();
            this.§[B§ = this.§ J§;
            this.§ K§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§ K§ && this.§[B§ == this.§5h§)
         {
            this.§[!8§ = [];
            this.§+7§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[B§ = this.§ J§;
            if(this.parse(param1))
            {
               this.§[B§ = this.§5h§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new § !,§(§ !,§.§"!E§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§ K§)
         {
            this.§[B§ = this.§5h§;
            this.§4S§();
            this.§ K§.close();
            this.§ K§ = null;
         }
      }
      
      public function §9<§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"!0§ = null;
         if(param1 != null && this.§[!8§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§[!8§.length)
            {
               if((_loc8_ = this.§[!8§[_loc7_] as §"!0§) != null)
               {
                  _loc8_.§9<§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§9<§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§=!2§);
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
      
      public function § ^§() : uint
      {
         return !!this.§[!8§ ? uint(this.§[!8§.length) : uint(0);
      }
      
      public function §+$§(param1:uint) : §"!0§
      {
         return !!this.§[!8§ ? this.§[!8§[param1] as §"!0§ : null;
      }
      
      public function §=$§(param1:String) : §"!0§
      {
         return !!this.§+7§[param1] ? this.§+7§[param1] as §"!0§ : null;
      }
      
      public function §5j§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"!0§
      {
         return this.§39§(!!this.§[!8§ ? uint(this.§[!8§.length) : uint(0),param1,param2,param3);
      }
      
      public function §3X§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"!0§
      {
         return this.§!N§(!!this.§[!8§ ? uint(this.§[!8§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §39§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"!0§
      {
         if(this.§[!8§ == null)
         {
            this.§[!8§ = [];
         }
         if(this.§+7§ == null)
         {
            this.§+7§ = new Dictionary();
         }
         else if(this.§+7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"!0§;
         (_loc5_ = new §"!0§()).§4T§ = param2;
         _loc5_.§%!2§(param3,param4);
         if(param1 >= this.§[!8§.length)
         {
            this.§[!8§.push(_loc5_);
         }
         else
         {
            this.§[!8§.splice(param1,0,_loc5_);
         }
         this.§+7§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §!N§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"!0§
      {
         if(this.§[!8§ == null)
         {
            this.§[!8§ = [];
         }
         if(this.§+7§ == null)
         {
            this.§+7§ = new Dictionary();
         }
         else if(this.§+7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"!0§;
         (_loc6_ = new §"!0§()).§4T§ = param2;
         _loc6_.§=Y§(param3,param4,param5);
         if(param1 >= this.§[!8§.length)
         {
            this.§[!8§.push(_loc6_);
         }
         else
         {
            this.§[!8§.splice(param1,0,_loc6_);
         }
         this.§+7§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[`§(param1:uint) : §"!0§
      {
         var _loc2_:§"!0§ = null;
         if(this.§[!8§ != null && this.§+7§ != null && param1 < this.§[!8§.length)
         {
            _loc2_ = this.§[!8§[param1] as §"!0§;
            if(_loc2_ != null)
            {
               this.§[!8§.splice(param1,1);
               delete this.§+7§[_loc2_.§4T§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[B§(param1))
         {
         }
         return this.§[B§ === this.§5h§;
      }
      
      protected function §5h§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function § J§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §]!A§:
                  this.§[B§ = this.§7U§;
                  this.§5!8§ = new §"!0§(this.§?5§);
                  break;
               case §?<§:
               case §=!2§:
               case §1v§:
               case §==§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §"! §:
               case §<0§:
               case §-b§:
                  this.§[B§ = this.§5h§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §7U§(param1:IDataInput) : Boolean
      {
         if(this.§5!8§.parse(param1))
         {
            if(this.§5!8§.§`"§)
            {
               this.§[B§ = this.§!§;
               this.§&8§ = new ByteArray();
               this.§&W§ = 0;
               this.§7@§ = 0;
               return true;
            }
            this.§`4§();
            if(this.§[B§ != this.§5h§)
            {
               this.§[B§ = this.§ J§;
               return true;
            }
         }
         return false;
      }
      
      protected function §!§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§&W§ = this.§&W§ >>> 8 | _loc2_ << 24;
            if(this.§&W§ == §"! §)
            {
               this.§&8§.length -= 3;
               this.§[B§ = this.§2!'§;
               return true;
            }
            this.§&8§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §2!'§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§&8§.length == _loc3_)
            {
               this.§&8§.position = 0;
               this.§5!8§.§10§ = _loc2_;
               this.§5!8§.§0a§ = _loc3_;
               this.§5!8§.§"!2§ = _loc4_;
               this.§5!8§.§90§(this.§&8§);
               this.§`4§();
               this.§[B§ = this.§ J§;
            }
            else
            {
               this.§&8§.writeUnsignedInt(_loc2_);
               this.§&8§.writeUnsignedInt(_loc3_);
               this.§&8§.writeUnsignedInt(_loc4_);
               this.§[B§ = this.§!§;
            }
            return true;
         }
         return false;
      }
      
      protected function §`4§() : void
      {
         this.§[!8§.push(this.§5!8§);
         if(this.§5!8§.§4T§)
         {
            this.§+7§[this.§5!8§.§4T§] = this.§5!8§;
         }
         dispatchEvent(new §"!+§(§"!+§.§0!C§,this.§5!8§));
         this.§5!8§ = null;
      }
      
      protected function §&j§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§ K§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§ !,§.§"!E§))
            {
               throw e;
            }
            dispatchEvent(new § !,§(§ !,§.§"!E§,e.message));
         }
      }
      
      protected function § do§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §4R§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §&!0§() : void
      {
         this.§ K§.addEventListener(Event.COMPLETE,this.§ do§);
         this.§ K§.addEventListener(Event.OPEN,this.§ do§);
         this.§ K§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ do§);
         this.§ K§.addEventListener(IOErrorEvent.IO_ERROR,this.§4R§);
         this.§ K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4R§);
         this.§ K§.addEventListener(ProgressEvent.PROGRESS,this.§&j§);
      }
      
      protected function §4S§() : void
      {
         this.§ K§.removeEventListener(Event.COMPLETE,this.§ do§);
         this.§ K§.removeEventListener(Event.OPEN,this.§ do§);
         this.§ K§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ do§);
         this.§ K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4R§);
         this.§ K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4R§);
         this.§ K§.removeEventListener(ProgressEvent.PROGRESS,this.§&j§);
      }
   }
}
