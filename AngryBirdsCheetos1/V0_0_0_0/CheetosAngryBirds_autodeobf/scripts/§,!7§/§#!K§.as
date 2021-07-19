package §,!7§
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
   
   public class §#!K§ extends EventDispatcher
   {
      
      static const §"Y§:uint = 33639248;
      
      static const §;?§:uint = 808471376;
      
      static const §<_§:uint = 67324752;
      
      static const §4`§:uint = 84233040;
      
      static const § 0§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-S§:uint = 134695760;
      
      static const §"!9§:uint = 134630224;
      
      static const §"u§:uint = 134695760;
       
      
      protected var § d§:Array;
      
      protected var §1t§:Dictionary;
      
      protected var §+!6§:URLStream;
      
      protected var §3!#§:String;
      
      protected var §+c§:Function;
      
      protected var §;R§:§7!G§;
      
      protected var §!6§:ByteArray;
      
      protected var §1!T§:uint;
      
      protected var §5d§:uint;
      
      public function §#!K§(param1:String = "utf-8")
      {
         super();
         this.§3!#§ = param1;
         this.§+c§ = this.§0S§;
      }
      
      public function get §?c§() : Boolean
      {
         return this.§+c§ !== this.§0S§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§+!6§ && this.§+c§ == this.§0S§)
         {
            this.§+!6§ = new URLStream();
            this.§+!6§.endian = Endian.LITTLE_ENDIAN;
            this.§ p§();
            this.§ d§ = [];
            this.§1t§ = new Dictionary();
            this.§+c§ = this.§!!1§;
            this.§+!6§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§+!6§ && this.§+c§ == this.§0S§)
         {
            this.§ d§ = [];
            this.§1t§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§+c§ = this.§!!1§;
            if(this.parse(param1))
            {
               this.§+c§ = this.§0S§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?!Y§(§?!Y§.§-0§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§+!6§)
         {
            this.§+c§ = this.§0S§;
            this.§extends§();
            this.§+!6§.close();
            this.§+!6§ = null;
         }
      }
      
      public function §`r§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§7!G§ = null;
         if(param1 != null && this.§ d§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§ d§.length)
            {
               if((_loc8_ = this.§ d§[_loc7_] as §7!G§) != null)
               {
                  _loc8_.§`r§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§`r§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§ 0§);
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
      
      public function §`§() : uint
      {
         return !!this.§ d§ ? uint(this.§ d§.length) : uint(0);
      }
      
      public function §?!8§(param1:uint) : §7!G§
      {
         return !!this.§ d§ ? this.§ d§[param1] as §7!G§ : null;
      }
      
      public function §8!9§(param1:String) : §7!G§
      {
         return !!this.§1t§[param1] ? this.§1t§[param1] as §7!G§ : null;
      }
      
      public function §&1§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §7!G§
      {
         return this.§^E§(!!this.§ d§ ? uint(this.§ d§.length) : uint(0),param1,param2,param3);
      }
      
      public function §4!P§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §7!G§
      {
         return this.§2!L§(!!this.§ d§ ? uint(this.§ d§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §^E§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §7!G§
      {
         if(this.§ d§ == null)
         {
            this.§ d§ = [];
         }
         if(this.§1t§ == null)
         {
            this.§1t§ = new Dictionary();
         }
         else if(this.§1t§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§7!G§;
         (_loc5_ = new §7!G§()).§8!§ = param2;
         _loc5_.§#e§(param3,param4);
         if(param1 >= this.§ d§.length)
         {
            this.§ d§.push(_loc5_);
         }
         else
         {
            this.§ d§.splice(param1,0,_loc5_);
         }
         this.§1t§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §2!L§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §7!G§
      {
         if(this.§ d§ == null)
         {
            this.§ d§ = [];
         }
         if(this.§1t§ == null)
         {
            this.§1t§ = new Dictionary();
         }
         else if(this.§1t§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§7!G§;
         (_loc6_ = new §7!G§()).§8!§ = param2;
         _loc6_.§,!W§(param3,param4,param5);
         if(param1 >= this.§ d§.length)
         {
            this.§ d§.push(_loc6_);
         }
         else
         {
            this.§ d§.splice(param1,0,_loc6_);
         }
         this.§1t§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §,!6§(param1:uint) : §7!G§
      {
         var _loc2_:§7!G§ = null;
         if(this.§ d§ != null && this.§1t§ != null && param1 < this.§ d§.length)
         {
            _loc2_ = this.§ d§[param1] as §7!G§;
            if(_loc2_ != null)
            {
               this.§ d§.splice(param1,1);
               delete this.§1t§[_loc2_.§8!§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§+c§(param1))
         {
         }
         return this.§+c§ === this.§0S§;
      }
      
      protected function §0S§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §<_§:
                  this.§+c§ = this.§1O§;
                  this.§;R§ = new §7!G§(this.§3!#§);
                  break;
               case §"Y§:
               case § 0§:
               case §;?§:
               case §4`§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-S§:
               case §"!9§:
               case §"u§:
                  this.§+c§ = this.§0S§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §1O§(param1:IDataInput) : Boolean
      {
         if(this.§;R§.parse(param1))
         {
            if(this.§;R§.§!!'§)
            {
               this.§+c§ = this.§[b§;
               this.§!6§ = new ByteArray();
               this.§1!T§ = 0;
               this.§5d§ = 0;
               return true;
            }
            this.§9!G§();
            if(this.§+c§ != this.§0S§)
            {
               this.§+c§ = this.§!!1§;
               return true;
            }
         }
         return false;
      }
      
      protected function §[b§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§1!T§ = this.§1!T§ >>> 8 | _loc2_ << 24;
            if(this.§1!T§ == §-S§)
            {
               this.§!6§.length -= 3;
               this.§+c§ = this.§-<§;
               return true;
            }
            this.§!6§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-<§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§!6§.length == _loc3_)
            {
               this.§!6§.position = 0;
               this.§;R§.§^!T§ = _loc2_;
               this.§;R§.§%D§ = _loc3_;
               this.§;R§.§>!R§ = _loc4_;
               this.§;R§.§;N§(this.§!6§);
               this.§9!G§();
               this.§+c§ = this.§!!1§;
            }
            else
            {
               this.§!6§.writeUnsignedInt(_loc2_);
               this.§!6§.writeUnsignedInt(_loc3_);
               this.§!6§.writeUnsignedInt(_loc4_);
               this.§+c§ = this.§[b§;
            }
            return true;
         }
         return false;
      }
      
      protected function §9!G§() : void
      {
         this.§ d§.push(this.§;R§);
         if(this.§;R§.§8!§)
         {
            this.§1t§[this.§;R§.§8!§] = this.§;R§;
         }
         dispatchEvent(new §%!>§(§%!>§.§++§,this.§;R§));
         this.§;R§ = null;
      }
      
      protected function § var§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§+!6§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?!Y§.§-0§))
            {
               throw e;
            }
            dispatchEvent(new §?!Y§(§?!Y§.§-0§,e.message));
         }
      }
      
      protected function §;u§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §@5§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § p§() : void
      {
         this.§+!6§.addEventListener(Event.COMPLETE,this.§;u§);
         this.§+!6§.addEventListener(Event.OPEN,this.§;u§);
         this.§+!6§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;u§);
         this.§+!6§.addEventListener(IOErrorEvent.IO_ERROR,this.§@5§);
         this.§+!6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@5§);
         this.§+!6§.addEventListener(ProgressEvent.PROGRESS,this.§ var§);
      }
      
      protected function §extends§() : void
      {
         this.§+!6§.removeEventListener(Event.COMPLETE,this.§;u§);
         this.§+!6§.removeEventListener(Event.OPEN,this.§;u§);
         this.§+!6§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;u§);
         this.§+!6§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@5§);
         this.§+!6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@5§);
         this.§+!6§.removeEventListener(ProgressEvent.PROGRESS,this.§ var§);
      }
   }
}
