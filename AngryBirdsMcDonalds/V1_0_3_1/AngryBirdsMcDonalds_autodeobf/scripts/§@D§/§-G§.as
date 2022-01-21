package §@D§
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
   
   public class §-G§ extends EventDispatcher
   {
      
      static const §?b§:uint = 33639248;
      
      static const §76§:uint = 808471376;
      
      static const §+!^§:uint = 67324752;
      
      static const §4U§:uint = 84233040;
      
      static const §3!0§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §1>§:uint = 134695760;
      
      static const §<!%§:uint = 134630224;
      
      static const §1!g§:uint = 134695760;
       
      
      protected var §7%§:Array;
      
      protected var § var§:Dictionary;
      
      protected var §8!9§:URLStream;
      
      protected var §#U§:String;
      
      protected var §+!§:Function;
      
      protected var §-!1§:§+y§;
      
      protected var § !h§:ByteArray;
      
      protected var §%#§:uint;
      
      protected var §+&§:uint;
      
      public function §-G§(param1:String = "utf-8")
      {
         super();
         this.§#U§ = param1;
         this.§+!§ = this.§;!A§;
      }
      
      public function get §+!n§() : Boolean
      {
         return this.§+!§ !== this.§;!A§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8!9§ && this.§+!§ == this.§;!A§)
         {
            this.§8!9§ = new URLStream();
            this.§8!9§.endian = Endian.LITTLE_ENDIAN;
            this.§]8§();
            this.§7%§ = [];
            this.§ var§ = new Dictionary();
            this.§+!§ = this.§ c§;
            this.§8!9§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8!9§ && this.§+!§ == this.§;!A§)
         {
            this.§7%§ = [];
            this.§ var§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§+!§ = this.§ c§;
            if(this.parse(param1))
            {
               this.§+!§ = this.§;!A§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?y§(§?y§.§`v§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8!9§)
         {
            this.§+!§ = this.§;!A§;
            this.§?!<§();
            this.§8!9§.close();
            this.§8!9§ = null;
         }
      }
      
      public function §]#§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§+y§ = null;
         if(param1 != null && this.§7%§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7%§.length)
            {
               if((_loc8_ = this.§7%§[_loc7_] as §+y§) != null)
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
            param1.writeUnsignedInt(§3!0§);
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
      
      public function §-!@§() : uint
      {
         return !!this.§7%§ ? uint(this.§7%§.length) : uint(0);
      }
      
      public function §8!X§(param1:uint) : §+y§
      {
         return !!this.§7%§ ? this.§7%§[param1] as §+y§ : null;
      }
      
      public function § !G§(param1:String) : §+y§
      {
         return !!this.§ var§[param1] ? this.§ var§[param1] as §+y§ : null;
      }
      
      public function §6!l§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §+y§
      {
         return this.§"Y§(!!this.§7%§ ? uint(this.§7%§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;`§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §+y§
      {
         return this.§5!D§(!!this.§7%§ ? uint(this.§7%§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §"Y§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §+y§
      {
         if(this.§7%§ == null)
         {
            this.§7%§ = [];
         }
         if(this.§ var§ == null)
         {
            this.§ var§ = new Dictionary();
         }
         else if(this.§ var§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§+y§;
         (_loc5_ = new §+y§()).§@!X§ = param2;
         _loc5_.§?!Y§(param3,param4);
         if(param1 >= this.§7%§.length)
         {
            this.§7%§.push(_loc5_);
         }
         else
         {
            this.§7%§.splice(param1,0,_loc5_);
         }
         this.§ var§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §5!D§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §+y§
      {
         if(this.§7%§ == null)
         {
            this.§7%§ = [];
         }
         if(this.§ var§ == null)
         {
            this.§ var§ = new Dictionary();
         }
         else if(this.§ var§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§+y§;
         (_loc6_ = new §+y§()).§@!X§ = param2;
         _loc6_.§2!4§(param3,param4,param5);
         if(param1 >= this.§7%§.length)
         {
            this.§7%§.push(_loc6_);
         }
         else
         {
            this.§7%§.splice(param1,0,_loc6_);
         }
         this.§ var§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §'l§(param1:uint) : §+y§
      {
         var _loc2_:§+y§ = null;
         if(this.§7%§ != null && this.§ var§ != null && param1 < this.§7%§.length)
         {
            _loc2_ = this.§7%§[param1] as §+y§;
            if(_loc2_ != null)
            {
               this.§7%§.splice(param1,1);
               delete this.§ var§[_loc2_.§@!X§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§+!§(param1))
         {
         }
         return this.§+!§ === this.§;!A§;
      }
      
      protected function §;!A§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function § c§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §+!^§:
                  this.§+!§ = this.§#y§;
                  this.§-!1§ = new §+y§(this.§#U§);
                  break;
               case §?b§:
               case §3!0§:
               case §76§:
               case §4U§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §1>§:
               case §<!%§:
               case §1!g§:
                  this.§+!§ = this.§;!A§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §#y§(param1:IDataInput) : Boolean
      {
         if(this.§-!1§.parse(param1))
         {
            if(this.§-!1§.§7b§)
            {
               this.§+!§ = this.§3[§;
               this.§ !h§ = new ByteArray();
               this.§%#§ = 0;
               this.§+&§ = 0;
               return true;
            }
            this.§@!_§();
            if(this.§+!§ != this.§;!A§)
            {
               this.§+!§ = this.§ c§;
               return true;
            }
         }
         return false;
      }
      
      protected function §3[§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%#§ = this.§%#§ >>> 8 | _loc2_ << 24;
            if(this.§%#§ == §1>§)
            {
               this.§ !h§.length -= 3;
               this.§+!§ = this.§&!&§;
               return true;
            }
            this.§ !h§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §&!&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§ !h§.length == _loc3_)
            {
               this.§ !h§.position = 0;
               this.§-!1§.§"!^§ = _loc2_;
               this.§-!1§.§`j§ = _loc3_;
               this.§-!1§.§+c§ = _loc4_;
               this.§-!1§.§]!i§(this.§ !h§);
               this.§@!_§();
               this.§+!§ = this.§ c§;
            }
            else
            {
               this.§ !h§.writeUnsignedInt(_loc2_);
               this.§ !h§.writeUnsignedInt(_loc3_);
               this.§ !h§.writeUnsignedInt(_loc4_);
               this.§+!§ = this.§3[§;
            }
            return true;
         }
         return false;
      }
      
      protected function §@!_§() : void
      {
         this.§7%§.push(this.§-!1§);
         if(this.§-!1§.§@!X§)
         {
            this.§ var§[this.§-!1§.§@!X§] = this.§-!1§;
         }
         dispatchEvent(new §+S§(§+S§.§-9§,this.§-!1§));
         this.§-!1§ = null;
      }
      
      protected function §1!D§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8!9§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?y§.§`v§))
            {
               throw e;
            }
            dispatchEvent(new §?y§(§?y§.§`v§,e.message));
         }
      }
      
      protected function §[]§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §]R§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §]8§() : void
      {
         this.§8!9§.addEventListener(Event.COMPLETE,this.§[]§);
         this.§8!9§.addEventListener(Event.OPEN,this.§[]§);
         this.§8!9§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[]§);
         this.§8!9§.addEventListener(IOErrorEvent.IO_ERROR,this.§]R§);
         this.§8!9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]R§);
         this.§8!9§.addEventListener(ProgressEvent.PROGRESS,this.§1!D§);
      }
      
      protected function §?!<§() : void
      {
         this.§8!9§.removeEventListener(Event.COMPLETE,this.§[]§);
         this.§8!9§.removeEventListener(Event.OPEN,this.§[]§);
         this.§8!9§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[]§);
         this.§8!9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]R§);
         this.§8!9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]R§);
         this.§8!9§.removeEventListener(ProgressEvent.PROGRESS,this.§1!D§);
      }
   }
}
