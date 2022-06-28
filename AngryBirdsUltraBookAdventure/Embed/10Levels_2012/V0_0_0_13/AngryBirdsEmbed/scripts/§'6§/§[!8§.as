package §'6§
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
   
   public class §[!8§ extends EventDispatcher
   {
      
      static const §1v§:uint = 33639248;
      
      static const §]!A§:uint = 808471376;
      
      static const §==§:uint = 67324752;
      
      static const §=!2§:uint = 84233040;
      
      static const §"! §:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §<0§:uint = 134695760;
      
      static const §-b§:uint = 134630224;
      
      static const §"!0§:uint = 134695760;
       
      
      protected var §+7§:Array;
      
      protected var § K§:Dictionary;
      
      protected var §?5§:URLStream;
      
      protected var §[B§:String;
      
      protected var §5!8§:Function;
      
      protected var §&8§:§7!>§;
      
      protected var §&W§:ByteArray;
      
      protected var §7@§:uint;
      
      protected var §9<§:uint;
      
      public function §[!8§(param1:String = "utf-8")
      {
         super();
         this.§[B§ = param1;
         this.§5!8§ = this.§ J§;
      }
      
      public function get active() : Boolean
      {
         return this.§5!8§ !== this.§ J§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§?5§ && this.§5!8§ == this.§ J§)
         {
            this.§?5§ = new URLStream();
            this.§?5§.endian = Endian.LITTLE_ENDIAN;
            this.§4S§();
            this.§+7§ = [];
            this.§ K§ = new Dictionary();
            this.§5!8§ = this.§7U§;
            this.§?5§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§?5§ && this.§5!8§ == this.§ J§)
         {
            this.§+7§ = [];
            this.§ K§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§5!8§ = this.§7U§;
            if(this.parse(param1))
            {
               this.§5!8§ = this.§ J§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §"!E§(§"!E§.§^@§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§?5§)
         {
            this.§5!8§ = this.§ J§;
            this.§?<§();
            this.§?5§.close();
            this.§?5§ = null;
         }
      }
      
      public function § ^§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§7!>§ = null;
         if(param1 != null && this.§+7§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§+7§.length)
            {
               if((_loc8_ = this.§+7§[_loc7_] as §7!>§) != null)
               {
                  _loc8_.§ ^§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§ ^§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§"! §);
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
      
      public function §+$§() : uint
      {
         return !!this.§+7§ ? uint(this.§+7§.length) : uint(0);
      }
      
      public function §=$§(param1:uint) : §7!>§
      {
         return !!this.§+7§ ? this.§+7§[param1] as §7!>§ : null;
      }
      
      public function §5j§(param1:String) : §7!>§
      {
         return !!this.§ K§[param1] ? this.§ K§[param1] as §7!>§ : null;
      }
      
      public function §3X§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §7!>§
      {
         return this.§!N§(!!this.§+7§ ? uint(this.§+7§.length) : uint(0),param1,param2,param3);
      }
      
      public function §39§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §7!>§
      {
         return this.§[`§(!!this.§+7§ ? uint(this.§+7§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §!N§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §7!>§
      {
         if(this.§+7§ == null)
         {
            this.§+7§ = [];
         }
         if(this.§ K§ == null)
         {
            this.§ K§ = new Dictionary();
         }
         else if(this.§ K§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§7!>§;
         (_loc5_ = new §7!>§()).§`"§ = param2;
         _loc5_.§'r§(param3,param4);
         if(param1 >= this.§+7§.length)
         {
            this.§+7§.push(_loc5_);
         }
         else
         {
            this.§+7§.splice(param1,0,_loc5_);
         }
         this.§ K§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §[`§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §7!>§
      {
         if(this.§+7§ == null)
         {
            this.§+7§ = [];
         }
         if(this.§ K§ == null)
         {
            this.§ K§ = new Dictionary();
         }
         else if(this.§ K§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§7!>§;
         (_loc6_ = new §7!>§()).§`"§ = param2;
         _loc6_.§ j§(param3,param4,param5);
         if(param1 >= this.§+7§.length)
         {
            this.§+7§.push(_loc6_);
         }
         else
         {
            this.§+7§.splice(param1,0,_loc6_);
         }
         this.§ K§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §5h§(param1:uint) : §7!>§
      {
         var _loc2_:§7!>§ = null;
         if(this.§+7§ != null && this.§ K§ != null && param1 < this.§+7§.length)
         {
            _loc2_ = this.§+7§[param1] as §7!>§;
            if(_loc2_ != null)
            {
               this.§+7§.splice(param1,1);
               delete this.§ K§[_loc2_.§`"§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5!8§(param1))
         {
         }
         return this.§5!8§ === this.§ J§;
      }
      
      protected function § J§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7U§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §==§:
                  this.§5!8§ = this.§!§;
                  this.§&8§ = new §7!>§(this.§[B§);
                  break;
               case §1v§:
               case §"! §:
               case §]!A§:
               case §=!2§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §<0§:
               case §-b§:
               case §"!0§:
                  this.§5!8§ = this.§ J§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §!§(param1:IDataInput) : Boolean
      {
         if(this.§&8§.parse(param1))
         {
            if(this.§&8§.§%!2§)
            {
               this.§5!8§ = this.§2!'§;
               this.§&W§ = new ByteArray();
               this.§7@§ = 0;
               this.§9<§ = 0;
               return true;
            }
            this.§&j§();
            if(this.§5!8§ != this.§ J§)
            {
               this.§5!8§ = this.§7U§;
               return true;
            }
         }
         return false;
      }
      
      protected function §2!'§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§7@§ = this.§7@§ >>> 8 | _loc2_ << 24;
            if(this.§7@§ == §<0§)
            {
               this.§&W§.length -= 3;
               this.§5!8§ = this.§`4§;
               return true;
            }
            this.§&W§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`4§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§&W§.length == _loc3_)
            {
               this.§&W§.position = 0;
               this.§&8§.§0a§ = _loc2_;
               this.§&8§.§"!2§ = _loc3_;
               this.§&8§.§6-§ = _loc4_;
               this.§&8§.§6!'§(this.§&W§);
               this.§&j§();
               this.§5!8§ = this.§7U§;
            }
            else
            {
               this.§&W§.writeUnsignedInt(_loc2_);
               this.§&W§.writeUnsignedInt(_loc3_);
               this.§&W§.writeUnsignedInt(_loc4_);
               this.§5!8§ = this.§2!'§;
            }
            return true;
         }
         return false;
      }
      
      protected function §&j§() : void
      {
         this.§+7§.push(this.§&8§);
         if(this.§&8§.§`"§)
         {
            this.§ K§[this.§&8§.§`"§] = this.§&8§;
         }
         dispatchEvent(new §0!C§(§0!C§.§ !,§,this.§&8§));
         this.§&8§ = null;
      }
      
      protected function § do§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§?5§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§"!E§.§^@§))
            {
               throw e;
            }
            dispatchEvent(new §"!E§(§"!E§.§^@§,e.message));
         }
      }
      
      protected function §4R§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §&!0§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §4S§() : void
      {
         this.§?5§.addEventListener(Event.COMPLETE,this.§4R§);
         this.§?5§.addEventListener(Event.OPEN,this.§4R§);
         this.§?5§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4R§);
         this.§?5§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!0§);
         this.§?5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!0§);
         this.§?5§.addEventListener(ProgressEvent.PROGRESS,this.§ do§);
      }
      
      protected function §?<§() : void
      {
         this.§?5§.removeEventListener(Event.COMPLETE,this.§4R§);
         this.§?5§.removeEventListener(Event.OPEN,this.§4R§);
         this.§?5§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4R§);
         this.§?5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!0§);
         this.§?5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!0§);
         this.§?5§.removeEventListener(ProgressEvent.PROGRESS,this.§ do§);
      }
   }
}
