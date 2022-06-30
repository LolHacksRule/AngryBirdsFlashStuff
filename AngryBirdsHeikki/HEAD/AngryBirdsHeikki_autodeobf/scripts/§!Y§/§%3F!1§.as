package §!Y§
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
   
   public class §?!1§ extends EventDispatcher
   {
      
      static const §7Y§:uint = 33639248;
      
      static const §+Y§:uint = 808471376;
      
      static const §'m§:uint = 67324752;
      
      static const §;!K§:uint = 84233040;
      
      static const § n§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §5d§:uint = 134695760;
      
      static const §,!g§:uint = 134630224;
      
      static const §=!O§:uint = 134695760;
       
      
      protected var §?0§:Array;
      
      protected var §2§:Dictionary;
      
      protected var §5P§:URLStream;
      
      protected var §&D§:String;
      
      protected var §`!$§:Function;
      
      protected var § %§:§<S§;
      
      protected var §]k§:ByteArray;
      
      protected var §1p§:uint;
      
      protected var §&P§:uint;
      
      public function §?!1§(param1:String = "utf-8")
      {
         super();
         this.§&D§ = param1;
         this.§`!$§ = this.§!L§;
      }
      
      public function get §<F§() : Boolean
      {
         return this.§`!$§ !== this.§!L§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§5P§ && this.§`!$§ == this.§!L§)
         {
            this.§5P§ = new URLStream();
            this.§5P§.endian = Endian.LITTLE_ENDIAN;
            this.§1F§();
            this.§?0§ = [];
            this.§2§ = new Dictionary();
            this.§`!$§ = this.§`!!§;
            this.§5P§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§5P§ && this.§`!$§ == this.§!L§)
         {
            this.§?0§ = [];
            this.§2§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§`!$§ = this.§`!!§;
            if(this.parse(param1))
            {
               this.§`!$§ = this.§!L§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new § k§(§ k§.§4D§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§5P§)
         {
            this.§`!$§ = this.§!L§;
            this.§3%§();
            this.§5P§.close();
            this.§5P§ = null;
         }
      }
      
      public function §;!D§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§<S§ = null;
         if(param1 != null && this.§?0§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§?0§.length)
            {
               if((_loc8_ = this.§?0§[_loc7_] as §<S§) != null)
               {
                  _loc8_.§;!D§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;!D§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§ n§);
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
      
      public function §7p§() : uint
      {
         return !!this.§?0§ ? uint(this.§?0§.length) : uint(0);
      }
      
      public function §'!=§(param1:uint) : §<S§
      {
         return !!this.§?0§ ? this.§?0§[param1] as §<S§ : null;
      }
      
      public function §!p§(param1:String) : §<S§
      {
         return !!this.§2§[param1] ? this.§2§[param1] as §<S§ : null;
      }
      
      public function §-8§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §<S§
      {
         return this.§#!Z§(!!this.§?0§ ? uint(this.§?0§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;!>§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §<S§
      {
         return this.§6!+§(!!this.§?0§ ? uint(this.§?0§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §#!Z§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §<S§
      {
         if(this.§?0§ == null)
         {
            this.§?0§ = [];
         }
         if(this.§2§ == null)
         {
            this.§2§ = new Dictionary();
         }
         else if(this.§2§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§<S§;
         (_loc5_ = new §<S§()).§5'§ = param2;
         _loc5_.§8v§(param3,param4);
         if(param1 >= this.§?0§.length)
         {
            this.§?0§.push(_loc5_);
         }
         else
         {
            this.§?0§.splice(param1,0,_loc5_);
         }
         this.§2§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §6!+§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §<S§
      {
         if(this.§?0§ == null)
         {
            this.§?0§ = [];
         }
         if(this.§2§ == null)
         {
            this.§2§ = new Dictionary();
         }
         else if(this.§2§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§<S§;
         (_loc6_ = new §<S§()).§5'§ = param2;
         _loc6_.§;i§(param3,param4,param5);
         if(param1 >= this.§?0§.length)
         {
            this.§?0§.push(_loc6_);
         }
         else
         {
            this.§?0§.splice(param1,0,_loc6_);
         }
         this.§2§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §'R§(param1:uint) : §<S§
      {
         var _loc2_:§<S§ = null;
         if(this.§?0§ != null && this.§2§ != null && param1 < this.§?0§.length)
         {
            _loc2_ = this.§?0§[param1] as §<S§;
            if(_loc2_ != null)
            {
               this.§?0§.splice(param1,1);
               delete this.§2§[_loc2_.§5'§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`!$§(param1))
         {
         }
         return this.§`!$§ === this.§!L§;
      }
      
      protected function §!L§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`!!§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §'m§:
                  this.§`!$§ = this.§?!e§;
                  this.§ %§ = new §<S§(this.§&D§);
                  break;
               case §7Y§:
               case § n§:
               case §+Y§:
               case §;!K§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §5d§:
               case §,!g§:
               case §=!O§:
                  this.§`!$§ = this.§!L§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §?!e§(param1:IDataInput) : Boolean
      {
         if(this.§ %§.parse(param1))
         {
            if(this.§ %§.§5_§)
            {
               this.§`!$§ = this.§@A§;
               this.§]k§ = new ByteArray();
               this.§1p§ = 0;
               this.§&P§ = 0;
               return true;
            }
            this.§&]§();
            if(this.§`!$§ != this.§!L§)
            {
               this.§`!$§ = this.§`!!§;
               return true;
            }
         }
         return false;
      }
      
      protected function §@A§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§1p§ = this.§1p§ >>> 8 | _loc2_ << 24;
            if(this.§1p§ == §5d§)
            {
               this.§]k§.length -= 3;
               this.§`!$§ = this.§0!?§;
               return true;
            }
            this.§]k§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §0!?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§]k§.length == _loc3_)
            {
               this.§]k§.position = 0;
               this.§ %§.§"N§ = _loc2_;
               this.§ %§.§11§ = _loc3_;
               this.§ %§.§"!F§ = _loc4_;
               this.§ %§.§^!3§(this.§]k§);
               this.§&]§();
               this.§`!$§ = this.§`!!§;
            }
            else
            {
               this.§]k§.writeUnsignedInt(_loc2_);
               this.§]k§.writeUnsignedInt(_loc3_);
               this.§]k§.writeUnsignedInt(_loc4_);
               this.§`!$§ = this.§@A§;
            }
            return true;
         }
         return false;
      }
      
      protected function §&]§() : void
      {
         this.§?0§.push(this.§ %§);
         if(this.§ %§.§5'§)
         {
            this.§2§[this.§ %§.§5'§] = this.§ %§;
         }
         dispatchEvent(new §46§(§46§.§extends§,this.§ %§));
         this.§ %§ = null;
      }
      
      protected function §1A§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§5P§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§ k§.§4D§))
            {
               throw e;
            }
            dispatchEvent(new § k§(§ k§.§4D§,e.message));
         }
      }
      
      protected function §5n§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §1!8§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §1F§() : void
      {
         this.§5P§.addEventListener(Event.COMPLETE,this.§5n§);
         this.§5P§.addEventListener(Event.OPEN,this.§5n§);
         this.§5P§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5n§);
         this.§5P§.addEventListener(IOErrorEvent.IO_ERROR,this.§1!8§);
         this.§5P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!8§);
         this.§5P§.addEventListener(ProgressEvent.PROGRESS,this.§1A§);
      }
      
      protected function §3%§() : void
      {
         this.§5P§.removeEventListener(Event.COMPLETE,this.§5n§);
         this.§5P§.removeEventListener(Event.OPEN,this.§5n§);
         this.§5P§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5n§);
         this.§5P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1!8§);
         this.§5P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!8§);
         this.§5P§.removeEventListener(ProgressEvent.PROGRESS,this.§1A§);
      }
   }
}
