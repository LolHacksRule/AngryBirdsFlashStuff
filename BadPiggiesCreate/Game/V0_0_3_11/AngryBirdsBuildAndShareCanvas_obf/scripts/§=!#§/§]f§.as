package §=!#§
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
   
   public class §]f§ extends EventDispatcher
   {
      
      static const §<L§:uint = 33639248;
      
      static const §+!-§:uint = 808471376;
      
      static const §40§:uint = 67324752;
      
      static const §3!a§:uint = 84233040;
      
      static const §-!w§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §9K§:uint = 134695760;
      
      static const §9<§:uint = 134630224;
      
      static const §#i§:uint = 134695760;
       
      
      protected var §#!P§:Array;
      
      protected var §6!d§:Dictionary;
      
      protected var §`!7§:URLStream;
      
      protected var §'"9§:String;
      
      protected var § !y§:Function;
      
      protected var §,!y§:§-!W§;
      
      protected var §?!B§:ByteArray;
      
      protected var §]!q§:uint;
      
      protected var §#!S§:uint;
      
      public function §]f§(param1:String = "utf-8")
      {
         super();
         this.§'"9§ = param1;
         this.§ !y§ = this.§"z§;
      }
      
      public function get §8Y§() : Boolean
      {
         return this.§ !y§ !== this.§"z§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§`!7§ && this.§ !y§ == this.§"z§)
         {
            this.§`!7§ = new URLStream();
            this.§`!7§.endian = Endian.LITTLE_ENDIAN;
            this.§^v§();
            this.§#!P§ = [];
            this.§6!d§ = new Dictionary();
            this.§ !y§ = this.§<!1§;
            this.§`!7§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§`!7§ && this.§ !y§ == this.§"z§)
         {
            this.§#!P§ = [];
            this.§6!d§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§ !y§ = this.§<!1§;
            if(this.parse(param1))
            {
               this.§ !y§ = this.§"z§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §7!1§(§7!1§.§%!S§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§`!7§)
         {
            this.§ !y§ = this.§"z§;
            this.§9"8§();
            this.§`!7§.close();
            this.§`!7§ = null;
         }
      }
      
      public function §6h§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§-!W§ = null;
         if(param1 != null && this.§#!P§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§#!P§.length)
            {
               if((_loc8_ = this.§#!P§[_loc7_] as §-!W§) != null)
               {
                  _loc8_.§6h§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§6h§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§-!w§);
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
      
      public function §^u§() : uint
      {
         return !!this.§#!P§ ? uint(this.§#!P§.length) : uint(0);
      }
      
      public function §9!Y§(param1:uint) : §-!W§
      {
         return !!this.§#!P§ ? this.§#!P§[param1] as §-!W§ : null;
      }
      
      public function §!!5§(param1:String) : §-!W§
      {
         return !!this.§6!d§[param1] ? this.§6!d§[param1] as §-!W§ : null;
      }
      
      public function §-p§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §-!W§
      {
         return this.§-"#§(!!this.§#!P§ ? uint(this.§#!P§.length) : uint(0),param1,param2,param3);
      }
      
      public function §[!^§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §-!W§
      {
         return this.§8!%§(!!this.§#!P§ ? uint(this.§#!P§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §-"#§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §-!W§
      {
         if(this.§#!P§ == null)
         {
            this.§#!P§ = [];
         }
         if(this.§6!d§ == null)
         {
            this.§6!d§ = new Dictionary();
         }
         else if(this.§6!d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§-!W§;
         (_loc5_ = new §-!W§()).§<i§ = param2;
         _loc5_.§;"&§(param3,param4);
         if(param1 >= this.§#!P§.length)
         {
            this.§#!P§.push(_loc5_);
         }
         else
         {
            this.§#!P§.splice(param1,0,_loc5_);
         }
         this.§6!d§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §8!%§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §-!W§
      {
         if(this.§#!P§ == null)
         {
            this.§#!P§ = [];
         }
         if(this.§6!d§ == null)
         {
            this.§6!d§ = new Dictionary();
         }
         else if(this.§6!d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§-!W§;
         (_loc6_ = new §-!W§()).§<i§ = param2;
         _loc6_.§7E§(param3,param4,param5);
         if(param1 >= this.§#!P§.length)
         {
            this.§#!P§.push(_loc6_);
         }
         else
         {
            this.§#!P§.splice(param1,0,_loc6_);
         }
         this.§6!d§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §#!D§(param1:uint) : §-!W§
      {
         var _loc2_:§-!W§ = null;
         if(this.§#!P§ != null && this.§6!d§ != null && param1 < this.§#!P§.length)
         {
            _loc2_ = this.§#!P§[param1] as §-!W§;
            if(_loc2_ != null)
            {
               this.§#!P§.splice(param1,1);
               delete this.§6!d§[_loc2_.§<i§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§ !y§(param1))
         {
         }
         return this.§ !y§ === this.§"z§;
      }
      
      protected function §"z§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<!1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §40§:
                  this.§ !y§ = this.§7!E§;
                  this.§,!y§ = new §-!W§(this.§'"9§);
                  break;
               case §<L§:
               case §-!w§:
               case §+!-§:
               case §3!a§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §9K§:
               case §9<§:
               case §#i§:
                  this.§ !y§ = this.§"z§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §7!E§(param1:IDataInput) : Boolean
      {
         if(this.§,!y§.parse(param1))
         {
            if(this.§,!y§.§,"1§)
            {
               this.§ !y§ = this.§;!7§;
               this.§?!B§ = new ByteArray();
               this.§]!q§ = 0;
               this.§#!S§ = 0;
               return true;
            }
            this.§%!d§();
            if(this.§ !y§ != this.§"z§)
            {
               this.§ !y§ = this.§<!1§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;!7§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§]!q§ = this.§]!q§ >>> 8 | _loc2_ << 24;
            if(this.§]!q§ == §9K§)
            {
               this.§?!B§.length -= 3;
               this.§ !y§ = this.§=!K§;
               return true;
            }
            this.§?!B§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §=!K§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§?!B§.length == _loc3_)
            {
               this.§?!B§.position = 0;
               this.§,!y§.§-!U§ = _loc2_;
               this.§,!y§.§1,§ = _loc3_;
               this.§,!y§.§0!j§ = _loc4_;
               this.§,!y§.§0!U§(this.§?!B§);
               this.§%!d§();
               this.§ !y§ = this.§<!1§;
            }
            else
            {
               this.§?!B§.writeUnsignedInt(_loc2_);
               this.§?!B§.writeUnsignedInt(_loc3_);
               this.§?!B§.writeUnsignedInt(_loc4_);
               this.§ !y§ = this.§;!7§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%!d§() : void
      {
         this.§#!P§.push(this.§,!y§);
         if(this.§,!y§.§<i§)
         {
            this.§6!d§[this.§,!y§.§<i§] = this.§,!y§;
         }
         dispatchEvent(new §#!1§(§#!1§.§[%§,this.§,!y§));
         this.§,!y§ = null;
      }
      
      protected function §[R§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§`!7§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§7!1§.§%!S§))
            {
               throw e;
            }
            dispatchEvent(new §7!1§(§7!1§.§%!S§,e.message));
         }
      }
      
      protected function §-!f§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §6"3§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §^v§() : void
      {
         this.§`!7§.addEventListener(Event.COMPLETE,this.§-!f§);
         this.§`!7§.addEventListener(Event.OPEN,this.§-!f§);
         this.§`!7§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-!f§);
         this.§`!7§.addEventListener(IOErrorEvent.IO_ERROR,this.§6"3§);
         this.§`!7§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6"3§);
         this.§`!7§.addEventListener(ProgressEvent.PROGRESS,this.§[R§);
      }
      
      protected function §9"8§() : void
      {
         this.§`!7§.removeEventListener(Event.COMPLETE,this.§-!f§);
         this.§`!7§.removeEventListener(Event.OPEN,this.§-!f§);
         this.§`!7§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-!f§);
         this.§`!7§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6"3§);
         this.§`!7§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6"3§);
         this.§`!7§.removeEventListener(ProgressEvent.PROGRESS,this.§[R§);
      }
   }
}
