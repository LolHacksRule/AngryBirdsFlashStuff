package §1§#2
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
   
   public class §1#§ extends EventDispatcher
   {
      
      static const §`_§:uint = 33639248;
      
      static const §<"c§:uint = 808471376;
      
      static const §,"8§:uint = 67324752;
      
      static const §%!x§:uint = 84233040;
      
      static const §-"d§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §+s§:uint = 134695760;
      
      static const §""6§:uint = 134630224;
      
      static const §;!Y§:uint = 134695760;
       
      
      protected var §'"4§:Array;
      
      protected var §-9§:Dictionary;
      
      protected var §2!R§:URLStream;
      
      protected var §,"9§:String;
      
      protected var §5"3§:Function;
      
      protected var §"!k§:§%"e§;
      
      protected var §""-§:ByteArray;
      
      protected var §'"<§:uint;
      
      protected var §!L§:uint;
      
      public function §1#§(param1:String = "utf-8")
      {
         super();
         this.§,"9§ = param1;
         this.§5"3§ = this.§,Y§;
      }
      
      public function get active() : Boolean
      {
         return this.§5"3§ !== this.§,Y§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§2!R§ && this.§5"3§ == this.§,Y§)
         {
            this.§2!R§ = new URLStream();
            this.§2!R§.endian = Endian.LITTLE_ENDIAN;
            this.§4!e§();
            this.§'"4§ = [];
            this.§-9§ = new Dictionary();
            this.§5"3§ = this.§1j§;
            this.§2!R§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§2!R§ && this.§5"3§ == this.§,Y§)
         {
            this.§'"4§ = [];
            this.§-9§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§5"3§ = this.§1j§;
            if(this.parse(param1))
            {
               this.§5"3§ = this.§,Y§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §9§(§9§.§^!+§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§2!R§)
         {
            this.§5"3§ = this.§,Y§;
            this.§`Q§();
            this.§2!R§.close();
            this.§2!R§ = null;
         }
      }
      
      public function §8U§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§%"e§ = null;
         if(param1 != null && this.§'"4§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§'"4§.length)
            {
               if((_loc8_ = this.§'"4§[_loc7_] as §%"e§) != null)
               {
                  _loc8_.§8U§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§8U§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§-"d§);
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
      
      public function §2"N§() : uint
      {
         return !!this.§'"4§ ? uint(this.§'"4§.length) : uint(0);
      }
      
      public function §1!S§(param1:uint) : §%"e§
      {
         return !!this.§'"4§ ? this.§'"4§[param1] as §%"e§ : null;
      }
      
      public function §+!z§(param1:String) : §%"e§
      {
         return !!this.§-9§[param1] ? this.§-9§[param1] as §%"e§ : null;
      }
      
      public function §%";§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §%"e§
      {
         return this.§&#$§(!!this.§'"4§ ? uint(this.§'"4§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;!;§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §%"e§
      {
         return this.§7"E§(!!this.§'"4§ ? uint(this.§'"4§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §&#$§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §%"e§
      {
         if(this.§'"4§ == null)
         {
            this.§'"4§ = [];
         }
         if(this.§-9§ == null)
         {
            this.§-9§ = new Dictionary();
         }
         else if(this.§-9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§%"e§;
         (_loc5_ = new §%"e§()).§0!q§ = param2;
         _loc5_.§-"S§(param3,param4);
         if(param1 >= this.§'"4§.length)
         {
            this.§'"4§.push(_loc5_);
         }
         else
         {
            this.§'"4§.splice(param1,0,_loc5_);
         }
         this.§-9§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §7"E§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §%"e§
      {
         if(this.§'"4§ == null)
         {
            this.§'"4§ = [];
         }
         if(this.§-9§ == null)
         {
            this.§-9§ = new Dictionary();
         }
         else if(this.§-9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§%"e§;
         (_loc6_ = new §%"e§()).§0!q§ = param2;
         _loc6_.§-<§(param3,param4,param5);
         if(param1 >= this.§'"4§.length)
         {
            this.§'"4§.push(_loc6_);
         }
         else
         {
            this.§'"4§.splice(param1,0,_loc6_);
         }
         this.§-9§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §;#§(param1:uint) : §%"e§
      {
         var _loc2_:§%"e§ = null;
         if(this.§'"4§ != null && this.§-9§ != null && param1 < this.§'"4§.length)
         {
            _loc2_ = this.§'"4§[param1] as §%"e§;
            if(_loc2_ != null)
            {
               this.§'"4§.splice(param1,1);
               delete this.§-9§[_loc2_.§0!q§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5"3§(param1))
         {
         }
         return this.§5"3§ === this.§,Y§;
      }
      
      protected function §,Y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1j§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §,"8§:
                  this.§5"3§ = this.§'"=§;
                  this.§"!k§ = new §%"e§(this.§,"9§);
                  break;
               case §`_§:
               case §-"d§:
               case §<"c§:
               case §%!x§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §+s§:
               case §""6§:
               case §;!Y§:
                  this.§5"3§ = this.§,Y§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §'"=§(param1:IDataInput) : Boolean
      {
         if(this.§"!k§.parse(param1))
         {
            if(this.§"!k§.§]!X§)
            {
               this.§5"3§ = this.§7"_§;
               this.§""-§ = new ByteArray();
               this.§'"<§ = 0;
               this.§!L§ = 0;
               return true;
            }
            this.§1b§();
            if(this.§5"3§ != this.§,Y§)
            {
               this.§5"3§ = this.§1j§;
               return true;
            }
         }
         return false;
      }
      
      protected function §7"_§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§'"<§ = this.§'"<§ >>> 8 | _loc2_ << 24;
            if(this.§'"<§ == §+s§)
            {
               this.§""-§.length -= 3;
               this.§5"3§ = this.§ !m§;
               return true;
            }
            this.§""-§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function § !m§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§""-§.length == _loc3_)
            {
               this.§""-§.position = 0;
               this.§"!k§.§`#0§ = _loc2_;
               this.§"!k§.§?'§ = _loc3_;
               this.§"!k§.§^!W§ = _loc4_;
               this.§"!k§.§8!N§(this.§""-§);
               this.§1b§();
               this.§5"3§ = this.§1j§;
            }
            else
            {
               this.§""-§.writeUnsignedInt(_loc2_);
               this.§""-§.writeUnsignedInt(_loc3_);
               this.§""-§.writeUnsignedInt(_loc4_);
               this.§5"3§ = this.§7"_§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1b§() : void
      {
         this.§'"4§.push(this.§"!k§);
         if(this.§"!k§.§0!q§)
         {
            this.§-9§[this.§"!k§.§0!q§] = this.§"!k§;
         }
         dispatchEvent(new §<c§(§<c§.§,D§,this.§"!k§));
         this.§"!k§ = null;
      }
      
      protected function §7!+§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§2!R§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§9§.§^!+§))
            {
               throw e;
            }
            dispatchEvent(new §9§(§9§.§^!+§,e.message));
         }
      }
      
      protected function §0e§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §`"i§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §4!e§() : void
      {
         this.§2!R§.addEventListener(Event.COMPLETE,this.§0e§);
         this.§2!R§.addEventListener(Event.OPEN,this.§0e§);
         this.§2!R§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0e§);
         this.§2!R§.addEventListener(IOErrorEvent.IO_ERROR,this.§`"i§);
         this.§2!R§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`"i§);
         this.§2!R§.addEventListener(ProgressEvent.PROGRESS,this.§7!+§);
      }
      
      protected function §`Q§() : void
      {
         this.§2!R§.removeEventListener(Event.COMPLETE,this.§0e§);
         this.§2!R§.removeEventListener(Event.OPEN,this.§0e§);
         this.§2!R§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0e§);
         this.§2!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`"i§);
         this.§2!R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`"i§);
         this.§2!R§.removeEventListener(ProgressEvent.PROGRESS,this.§7!+§);
      }
   }
}
