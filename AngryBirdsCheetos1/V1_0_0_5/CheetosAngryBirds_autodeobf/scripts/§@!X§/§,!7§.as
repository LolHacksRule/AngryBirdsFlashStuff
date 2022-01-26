package §@!X§
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
   
   public class §,!7§ extends EventDispatcher
   {
      
      static const §extends§:uint = 33639248;
      
      static const §"Y§:uint = 808471376;
      
      static const §;?§:uint = 67324752;
      
      static const §<_§:uint = 84233040;
      
      static const §4`§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const § 0§:uint = 134695760;
      
      static const §-S§:uint = 134630224;
      
      static const §"!9§:uint = 134695760;
       
      
      protected var §#!K§:Array;
      
      protected var § d§:Dictionary;
      
      protected var §1t§:URLStream;
      
      protected var §+!6§:String;
      
      protected var §3!#§:Function;
      
      protected var §+c§:§"u§;
      
      protected var §;R§:ByteArray;
      
      protected var §!6§:uint;
      
      protected var §1!T§:uint;
      
      public function §,!7§(param1:String = "utf-8")
      {
         super();
         this.§+!6§ = param1;
         this.§3!#§ = this.§,!6§;
      }
      
      public function get §5d§() : Boolean
      {
         return this.§3!#§ !== this.§,!6§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1t§ && this.§3!#§ == this.§,!6§)
         {
            this.§1t§ = new URLStream();
            this.§1t§.endian = Endian.LITTLE_ENDIAN;
            this.§@5§();
            this.§#!K§ = [];
            this.§ d§ = new Dictionary();
            this.§3!#§ = this.§0S§;
            this.§1t§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1t§ && this.§3!#§ == this.§,!6§)
         {
            this.§#!K§ = [];
            this.§ d§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§3!#§ = this.§0S§;
            if(this.parse(param1))
            {
               this.§3!#§ = this.§,!6§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §++§(§++§.§?!Y§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1t§)
         {
            this.§3!#§ = this.§,!6§;
            this.§ p§();
            this.§1t§.close();
            this.§1t§ = null;
         }
      }
      
      public function §?c§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"u§ = null;
         if(param1 != null && this.§#!K§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§#!K§.length)
            {
               if((_loc8_ = this.§#!K§[_loc7_] as §"u§) != null)
               {
                  _loc8_.§?c§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?c§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§4`§);
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
      
      public function §`r§() : uint
      {
         return !!this.§#!K§ ? uint(this.§#!K§.length) : uint(0);
      }
      
      public function §`§(param1:uint) : §"u§
      {
         return !!this.§#!K§ ? this.§#!K§[param1] as §"u§ : null;
      }
      
      public function §?!8§(param1:String) : §"u§
      {
         return !!this.§ d§[param1] ? this.§ d§[param1] as §"u§ : null;
      }
      
      public function §8!9§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"u§
      {
         return this.§4!P§(!!this.§#!K§ ? uint(this.§#!K§.length) : uint(0),param1,param2,param3);
      }
      
      public function §&1§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"u§
      {
         return this.§^E§(!!this.§#!K§ ? uint(this.§#!K§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §4!P§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"u§
      {
         if(this.§#!K§ == null)
         {
            this.§#!K§ = [];
         }
         if(this.§ d§ == null)
         {
            this.§ d§ = new Dictionary();
         }
         else if(this.§ d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"u§;
         (_loc5_ = new §"u§()).§25§ = param2;
         _loc5_.§!!'§(param3,param4);
         if(param1 >= this.§#!K§.length)
         {
            this.§#!K§.push(_loc5_);
         }
         else
         {
            this.§#!K§.splice(param1,0,_loc5_);
         }
         this.§ d§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §^E§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"u§
      {
         if(this.§#!K§ == null)
         {
            this.§#!K§ = [];
         }
         if(this.§ d§ == null)
         {
            this.§ d§ = new Dictionary();
         }
         else if(this.§ d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"u§;
         (_loc6_ = new §"u§()).§25§ = param2;
         _loc6_.§-7§(param3,param4,param5);
         if(param1 >= this.§#!K§.length)
         {
            this.§#!K§.push(_loc6_);
         }
         else
         {
            this.§#!K§.splice(param1,0,_loc6_);
         }
         this.§ d§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §2!L§(param1:uint) : §"u§
      {
         var _loc2_:§"u§ = null;
         if(this.§#!K§ != null && this.§ d§ != null && param1 < this.§#!K§.length)
         {
            _loc2_ = this.§#!K§[param1] as §"u§;
            if(_loc2_ != null)
            {
               this.§#!K§.splice(param1,1);
               delete this.§ d§[_loc2_.§25§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§3!#§(param1))
         {
         }
         return this.§3!#§ === this.§,!6§;
      }
      
      protected function §,!6§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §0S§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §;?§:
                  this.§3!#§ = this.§!!1§;
                  this.§+c§ = new §"u§(this.§+!6§);
                  break;
               case §extends§:
               case §4`§:
               case §"Y§:
               case §<_§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case § 0§:
               case §-S§:
               case §"!9§:
                  this.§3!#§ = this.§,!6§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §!!1§(param1:IDataInput) : Boolean
      {
         if(this.§+c§.parse(param1))
         {
            if(this.§+c§.§8!§)
            {
               this.§3!#§ = this.§1O§;
               this.§;R§ = new ByteArray();
               this.§!6§ = 0;
               this.§1!T§ = 0;
               return true;
            }
            this.§-<§();
            if(this.§3!#§ != this.§,!6§)
            {
               this.§3!#§ = this.§0S§;
               return true;
            }
         }
         return false;
      }
      
      protected function §1O§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§!6§ = this.§!6§ >>> 8 | _loc2_ << 24;
            if(this.§!6§ == § 0§)
            {
               this.§;R§.length -= 3;
               this.§3!#§ = this.§[b§;
               return true;
            }
            this.§;R§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §[b§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§;R§.length == _loc3_)
            {
               this.§;R§.position = 0;
               this.§+c§.§!!7§ = _loc2_;
               this.§+c§.§^!T§ = _loc3_;
               this.§+c§.§%D§ = _loc4_;
               this.§+c§.§!$§(this.§;R§);
               this.§-<§();
               this.§3!#§ = this.§0S§;
            }
            else
            {
               this.§;R§.writeUnsignedInt(_loc2_);
               this.§;R§.writeUnsignedInt(_loc3_);
               this.§;R§.writeUnsignedInt(_loc4_);
               this.§3!#§ = this.§1O§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-<§() : void
      {
         this.§#!K§.push(this.§+c§);
         if(this.§+c§.§25§)
         {
            this.§ d§[this.§+c§.§25§] = this.§+c§;
         }
         dispatchEvent(new §?`§(§?`§.§%!>§,this.§+c§));
         this.§+c§ = null;
      }
      
      protected function §9!G§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1t§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§++§.§?!Y§))
            {
               throw e;
            }
            dispatchEvent(new §++§(§++§.§?!Y§,e.message));
         }
      }
      
      protected function § var§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §;u§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §@5§() : void
      {
         this.§1t§.addEventListener(Event.COMPLETE,this.§ var§);
         this.§1t§.addEventListener(Event.OPEN,this.§ var§);
         this.§1t§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ var§);
         this.§1t§.addEventListener(IOErrorEvent.IO_ERROR,this.§;u§);
         this.§1t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;u§);
         this.§1t§.addEventListener(ProgressEvent.PROGRESS,this.§9!G§);
      }
      
      protected function § p§() : void
      {
         this.§1t§.removeEventListener(Event.COMPLETE,this.§ var§);
         this.§1t§.removeEventListener(Event.OPEN,this.§ var§);
         this.§1t§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ var§);
         this.§1t§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;u§);
         this.§1t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;u§);
         this.§1t§.removeEventListener(ProgressEvent.PROGRESS,this.§9!G§);
      }
   }
}
