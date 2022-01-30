package §[$§
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
   
   public class §^!6§ extends EventDispatcher
   {
      
      static const §"!C§:uint = 33639248;
      
      static const §7"<§:uint = 808471376;
      
      static const §@"5§:uint = 67324752;
      
      static const §1Q§:uint = 84233040;
      
      static const §+!%§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §`!a§:uint = 134695760;
      
      static const §%q§:uint = 134630224;
      
      static const §,!s§:uint = 134695760;
       
      
      protected var §`5§:Array;
      
      protected var §<1§:Dictionary;
      
      protected var §3-§:URLStream;
      
      protected var §?"4§:String;
      
      protected var §?N§:Function;
      
      protected var §4!1§:§0!U§;
      
      protected var §&!"§:ByteArray;
      
      protected var §@!]§:uint;
      
      protected var §>!P§:uint;
      
      public function §^!6§(param1:String = "utf-8")
      {
         super();
         this.§?"4§ = param1;
         this.§?N§ = this.§!]§;
      }
      
      public function get §,!R§() : Boolean
      {
         return this.§?N§ !== this.§!]§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§3-§ && this.§?N§ == this.§!]§)
         {
            this.§3-§ = new URLStream();
            this.§3-§.endian = Endian.LITTLE_ENDIAN;
            this.§9"4§();
            this.§`5§ = [];
            this.§<1§ = new Dictionary();
            this.§?N§ = this.§1'§;
            this.§3-§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§3-§ && this.§?N§ == this.§!]§)
         {
            this.§`5§ = [];
            this.§<1§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§?N§ = this.§1'§;
            if(this.parse(param1))
            {
               this.§?N§ = this.§!]§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §0[§(§0[§.§9!3§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§3-§)
         {
            this.§?N§ = this.§!]§;
            this.§%!7§();
            this.§3-§.close();
            this.§3-§ = null;
         }
      }
      
      public function §%c§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§0!U§ = null;
         if(param1 != null && this.§`5§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§`5§.length)
            {
               if((_loc8_ = this.§`5§[_loc7_] as §0!U§) != null)
               {
                  _loc8_.§%c§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§%c§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§+!%§);
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
      
      public function §<!0§() : uint
      {
         return !!this.§`5§ ? uint(this.§`5§.length) : uint(0);
      }
      
      public function §"!v§(param1:uint) : §0!U§
      {
         return !!this.§`5§ ? this.§`5§[param1] as §0!U§ : null;
      }
      
      public function §<3§(param1:String) : §0!U§
      {
         return !!this.§<1§[param1] ? this.§<1§[param1] as §0!U§ : null;
      }
      
      public function §?d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §0!U§
      {
         return this.§`">§(!!this.§`5§ ? uint(this.§`5§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>!-§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §0!U§
      {
         return this.§;!h§(!!this.§`5§ ? uint(this.§`5§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §`">§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §0!U§
      {
         if(this.§`5§ == null)
         {
            this.§`5§ = [];
         }
         if(this.§<1§ == null)
         {
            this.§<1§ = new Dictionary();
         }
         else if(this.§<1§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§0!U§;
         (_loc5_ = new §0!U§()).§>!r§ = param2;
         _loc5_.§3Y§(param3,param4);
         if(param1 >= this.§`5§.length)
         {
            this.§`5§.push(_loc5_);
         }
         else
         {
            this.§`5§.splice(param1,0,_loc5_);
         }
         this.§<1§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;!h§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §0!U§
      {
         if(this.§`5§ == null)
         {
            this.§`5§ = [];
         }
         if(this.§<1§ == null)
         {
            this.§<1§ = new Dictionary();
         }
         else if(this.§<1§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§0!U§;
         (_loc6_ = new §0!U§()).§>!r§ = param2;
         _loc6_.§!!X§(param3,param4,param5);
         if(param1 >= this.§`5§.length)
         {
            this.§`5§.push(_loc6_);
         }
         else
         {
            this.§`5§.splice(param1,0,_loc6_);
         }
         this.§<1§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §5X§(param1:uint) : §0!U§
      {
         var _loc2_:§0!U§ = null;
         if(this.§`5§ != null && this.§<1§ != null && param1 < this.§`5§.length)
         {
            _loc2_ = this.§`5§[param1] as §0!U§;
            if(_loc2_ != null)
            {
               this.§`5§.splice(param1,1);
               delete this.§<1§[_loc2_.§>!r§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§?N§(param1))
         {
         }
         return this.§?N§ === this.§!]§;
      }
      
      protected function §!]§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1'§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §@"5§:
                  this.§?N§ = this.§ _§;
                  this.§4!1§ = new §0!U§(this.§?"4§);
                  break;
               case §"!C§:
               case §+!%§:
               case §7"<§:
               case §1Q§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §`!a§:
               case §%q§:
               case §,!s§:
                  this.§?N§ = this.§!]§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function § _§(param1:IDataInput) : Boolean
      {
         if(this.§4!1§.parse(param1))
         {
            if(this.§4!1§.§#!j§)
            {
               this.§?N§ = this.§"!B§;
               this.§&!"§ = new ByteArray();
               this.§@!]§ = 0;
               this.§>!P§ = 0;
               return true;
            }
            this.§#"4§();
            if(this.§?N§ != this.§!]§)
            {
               this.§?N§ = this.§1'§;
               return true;
            }
         }
         return false;
      }
      
      protected function §"!B§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§@!]§ = this.§@!]§ >>> 8 | _loc2_ << 24;
            if(this.§@!]§ == §`!a§)
            {
               this.§&!"§.length -= 3;
               this.§?N§ = this.§;!F§;
               return true;
            }
            this.§&!"§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §;!F§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§&!"§.length == _loc3_)
            {
               this.§&!"§.position = 0;
               this.§4!1§.§45§ = _loc2_;
               this.§4!1§.§;"2§ = _loc3_;
               this.§4!1§.§',§ = _loc4_;
               this.§4!1§.§0!f§(this.§&!"§);
               this.§#"4§();
               this.§?N§ = this.§1'§;
            }
            else
            {
               this.§&!"§.writeUnsignedInt(_loc2_);
               this.§&!"§.writeUnsignedInt(_loc3_);
               this.§&!"§.writeUnsignedInt(_loc4_);
               this.§?N§ = this.§"!B§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#"4§() : void
      {
         this.§`5§.push(this.§4!1§);
         if(this.§4!1§.§>!r§)
         {
            this.§<1§[this.§4!1§.§>!r§] = this.§4!1§;
         }
         dispatchEvent(new §?!<§(§?!<§.§[<§,this.§4!1§));
         this.§4!1§ = null;
      }
      
      protected function §[!D§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§3-§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§0[§.§9!3§))
            {
               throw e;
            }
            dispatchEvent(new §0[§(§0[§.§9!3§,e.message));
         }
      }
      
      protected function §6"9§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §+!4§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §9"4§() : void
      {
         this.§3-§.addEventListener(Event.COMPLETE,this.§6"9§);
         this.§3-§.addEventListener(Event.OPEN,this.§6"9§);
         this.§3-§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"9§);
         this.§3-§.addEventListener(IOErrorEvent.IO_ERROR,this.§+!4§);
         this.§3-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!4§);
         this.§3-§.addEventListener(ProgressEvent.PROGRESS,this.§[!D§);
      }
      
      protected function §%!7§() : void
      {
         this.§3-§.removeEventListener(Event.COMPLETE,this.§6"9§);
         this.§3-§.removeEventListener(Event.OPEN,this.§6"9§);
         this.§3-§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6"9§);
         this.§3-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+!4§);
         this.§3-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!4§);
         this.§3-§.removeEventListener(ProgressEvent.PROGRESS,this.§[!D§);
      }
   }
}
