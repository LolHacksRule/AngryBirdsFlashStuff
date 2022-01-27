package §+!G§
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
   
   public class §!Y§ extends EventDispatcher
   {
      
      static const §+z§:uint = 33639248;
      
      static const §[!4§:uint = 808471376;
      
      static const §!§:uint = 67324752;
      
      static const §>+§:uint = 84233040;
      
      static const §@!6§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-!P§:uint = 134695760;
      
      static const §9G§:uint = 134630224;
      
      static const §&!"§:uint = 134695760;
       
      
      protected var §^d§:Array;
      
      protected var §"N§:Dictionary;
      
      protected var §,[§:URLStream;
      
      protected var § t§:String;
      
      protected var §8h§:Function;
      
      protected var §=m§:§6!!§;
      
      protected var §[U§:ByteArray;
      
      protected var §8q§:uint;
      
      protected var §>&§:uint;
      
      public function §!Y§(param1:String = "utf-8")
      {
         super();
         this.§ t§ = param1;
         this.§8h§ = this.§else §;
      }
      
      public function get active() : Boolean
      {
         return this.§8h§ !== this.§else §;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§,[§ && this.§8h§ == this.§else §)
         {
            this.§,[§ = new URLStream();
            this.§,[§.endian = Endian.LITTLE_ENDIAN;
            this.§0D§();
            this.§^d§ = [];
            this.§"N§ = new Dictionary();
            this.§8h§ = this.§0R§;
            this.§,[§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§,[§ && this.§8h§ == this.§else §)
         {
            this.§^d§ = [];
            this.§"N§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§8h§ = this.§0R§;
            if(this.parse(param1))
            {
               this.§8h§ = this.§else §;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §>!=§(§>!=§.§+!D§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§,[§)
         {
            this.§8h§ = this.§else §;
            this.§1y§();
            this.§,[§.close();
            this.§,[§ = null;
         }
      }
      
      public function §<K§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§6!!§ = null;
         if(param1 != null && this.§^d§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§^d§.length)
            {
               if((_loc8_ = this.§^d§[_loc7_] as §6!!§) != null)
               {
                  _loc8_.§<K§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§<K§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@!6§);
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
      
      public function §#r§() : uint
      {
         return !!this.§^d§ ? uint(this.§^d§.length) : uint(0);
      }
      
      public function §^K§(param1:uint) : §6!!§
      {
         return !!this.§^d§ ? this.§^d§[param1] as §6!!§ : null;
      }
      
      public function §?h§(param1:String) : §6!!§
      {
         return !!this.§"N§[param1] ? this.§"N§[param1] as §6!!§ : null;
      }
      
      public function §!w§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §6!!§
      {
         return this.§#V§(!!this.§^d§ ? uint(this.§^d§.length) : uint(0),param1,param2,param3);
      }
      
      public function §<!§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §6!!§
      {
         return this.§=!A§(!!this.§^d§ ? uint(this.§^d§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §#V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §6!!§
      {
         if(this.§^d§ == null)
         {
            this.§^d§ = [];
         }
         if(this.§"N§ == null)
         {
            this.§"N§ = new Dictionary();
         }
         else if(this.§"N§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§6!!§;
         (_loc5_ = new §6!!§()).§!!H§ = param2;
         _loc5_.§0e§(param3,param4);
         if(param1 >= this.§^d§.length)
         {
            this.§^d§.push(_loc5_);
         }
         else
         {
            this.§^d§.splice(param1,0,_loc5_);
         }
         this.§"N§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §=!A§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §6!!§
      {
         if(this.§^d§ == null)
         {
            this.§^d§ = [];
         }
         if(this.§"N§ == null)
         {
            this.§"N§ = new Dictionary();
         }
         else if(this.§"N§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§6!!§;
         (_loc6_ = new §6!!§()).§!!H§ = param2;
         _loc6_.§[n§(param3,param4,param5);
         if(param1 >= this.§^d§.length)
         {
            this.§^d§.push(_loc6_);
         }
         else
         {
            this.§^d§.splice(param1,0,_loc6_);
         }
         this.§"N§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §5$§(param1:uint) : §6!!§
      {
         var _loc2_:§6!!§ = null;
         if(this.§^d§ != null && this.§"N§ != null && param1 < this.§^d§.length)
         {
            _loc2_ = this.§^d§[param1] as §6!!§;
            if(_loc2_ != null)
            {
               this.§^d§.splice(param1,1);
               delete this.§"N§[_loc2_.§!!H§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§8h§(param1))
         {
         }
         return this.§8h§ === this.§else §;
      }
      
      protected function §else §(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §0R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §!§:
                  this.§8h§ = this.§%"§;
                  this.§=m§ = new §6!!§(this.§ t§);
                  break;
               case §+z§:
               case §@!6§:
               case §[!4§:
               case §>+§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-!P§:
               case §9G§:
               case §&!"§:
                  this.§8h§ = this.§else §;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §%"§(param1:IDataInput) : Boolean
      {
         if(this.§=m§.parse(param1))
         {
            if(this.§=m§.§0!H§)
            {
               this.§8h§ = this.§3w§;
               this.§[U§ = new ByteArray();
               this.§8q§ = 0;
               this.§>&§ = 0;
               return true;
            }
            this.§1!'§();
            if(this.§8h§ != this.§else §)
            {
               this.§8h§ = this.§0R§;
               return true;
            }
         }
         return false;
      }
      
      protected function §3w§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§8q§ = this.§8q§ >>> 8 | _loc2_ << 24;
            if(this.§8q§ == §-!P§)
            {
               this.§[U§.length -= 3;
               this.§8h§ = this.§^?§;
               return true;
            }
            this.§[U§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §^?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§[U§.length == _loc3_)
            {
               this.§[U§.position = 0;
               this.§=m§.§9M§ = _loc2_;
               this.§=m§.§,+§ = _loc3_;
               this.§=m§.§2T§ = _loc4_;
               this.§=m§.§3!M§(this.§[U§);
               this.§1!'§();
               this.§8h§ = this.§0R§;
            }
            else
            {
               this.§[U§.writeUnsignedInt(_loc2_);
               this.§[U§.writeUnsignedInt(_loc3_);
               this.§[U§.writeUnsignedInt(_loc4_);
               this.§8h§ = this.§3w§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!'§() : void
      {
         this.§^d§.push(this.§=m§);
         if(this.§=m§.§!!H§)
         {
            this.§"N§[this.§=m§.§!!H§] = this.§=m§;
         }
         dispatchEvent(new §=!,§(§=!,§.§@!A§,this.§=m§));
         this.§=m§ = null;
      }
      
      protected function §;<§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§,[§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§>!=§.§+!D§))
            {
               throw e;
            }
            dispatchEvent(new §>!=§(§>!=§.§+!D§,e.message));
         }
      }
      
      protected function §>§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §"!1§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §0D§() : void
      {
         this.§,[§.addEventListener(Event.COMPLETE,this.§>§);
         this.§,[§.addEventListener(Event.OPEN,this.§>§);
         this.§,[§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>§);
         this.§,[§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!1§);
         this.§,[§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!1§);
         this.§,[§.addEventListener(ProgressEvent.PROGRESS,this.§;<§);
      }
      
      protected function §1y§() : void
      {
         this.§,[§.removeEventListener(Event.COMPLETE,this.§>§);
         this.§,[§.removeEventListener(Event.OPEN,this.§>§);
         this.§,[§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>§);
         this.§,[§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!1§);
         this.§,[§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!1§);
         this.§,[§.removeEventListener(ProgressEvent.PROGRESS,this.§;<§);
      }
   }
}
