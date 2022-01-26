package §=!]§
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
   
   public class §8!B§ extends EventDispatcher
   {
      
      static const §9!C§:uint = 33639248;
      
      static const §4;§:uint = 808471376;
      
      static const §^!C§:uint = 67324752;
      
      static const §&m§:uint = 84233040;
      
      static const §"T§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §!@§:uint = 134695760;
      
      static const §5M§:uint = 134630224;
      
      static const §@i§:uint = 134695760;
       
      
      protected var §10§:Array;
      
      protected var §=!#§:Dictionary;
      
      protected var §+!H§:URLStream;
      
      protected var §??§:String;
      
      protected var §<d§:Function;
      
      protected var §8!P§:§7!#§;
      
      protected var §<!6§:ByteArray;
      
      protected var §-p§:uint;
      
      protected var §7!§:uint;
      
      public function §8!B§(param1:String = "utf-8")
      {
         super();
         this.§??§ = param1;
         this.§<d§ = this.§%!Q§;
      }
      
      public function get §=!Z§() : Boolean
      {
         return this.§<d§ !== this.§%!Q§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§+!H§ && this.§<d§ == this.§%!Q§)
         {
            this.§+!H§ = new URLStream();
            this.§+!H§.endian = Endian.LITTLE_ENDIAN;
            this.§?!D§();
            this.§10§ = [];
            this.§=!#§ = new Dictionary();
            this.§<d§ = this.§<k§;
            this.§+!H§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§+!H§ && this.§<d§ == this.§%!Q§)
         {
            this.§10§ = [];
            this.§=!#§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§<d§ = this.§<k§;
            if(this.parse(param1))
            {
               this.§<d§ = this.§%!Q§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §0=§(§0=§.§?!+§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§+!H§)
         {
            this.§<d§ = this.§%!Q§;
            this.§[!3§();
            this.§+!H§.close();
            this.§+!H§ = null;
         }
      }
      
      public function §7!+§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§7!#§ = null;
         if(param1 != null && this.§10§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§10§.length)
            {
               if((_loc8_ = this.§10§[_loc7_] as §7!#§) != null)
               {
                  _loc8_.§7!+§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§7!+§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§"T§);
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
      
      public function §<s§() : uint
      {
         return !!this.§10§ ? uint(this.§10§.length) : uint(0);
      }
      
      public function §1>§(param1:uint) : §7!#§
      {
         return !!this.§10§ ? this.§10§[param1] as §7!#§ : null;
      }
      
      public function §+=§(param1:String) : §7!#§
      {
         return !!this.§=!#§[param1] ? this.§=!#§[param1] as §7!#§ : null;
      }
      
      public function §0!^§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §7!#§
      {
         return this.§;9§(!!this.§10§ ? uint(this.§10§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>!X§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §7!#§
      {
         return this.§4!5§(!!this.§10§ ? uint(this.§10§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;9§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §7!#§
      {
         if(this.§10§ == null)
         {
            this.§10§ = [];
         }
         if(this.§=!#§ == null)
         {
            this.§=!#§ = new Dictionary();
         }
         else if(this.§=!#§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§7!#§;
         (_loc5_ = new §7!#§()).§ n§ = param2;
         _loc5_.§?@§(param3,param4);
         if(param1 >= this.§10§.length)
         {
            this.§10§.push(_loc5_);
         }
         else
         {
            this.§10§.splice(param1,0,_loc5_);
         }
         this.§=!#§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §4!5§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §7!#§
      {
         if(this.§10§ == null)
         {
            this.§10§ = [];
         }
         if(this.§=!#§ == null)
         {
            this.§=!#§ = new Dictionary();
         }
         else if(this.§=!#§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§7!#§;
         (_loc6_ = new §7!#§()).§ n§ = param2;
         _loc6_.§ 5§(param3,param4,param5);
         if(param1 >= this.§10§.length)
         {
            this.§10§.push(_loc6_);
         }
         else
         {
            this.§10§.splice(param1,0,_loc6_);
         }
         this.§=!#§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §]8§(param1:uint) : §7!#§
      {
         var _loc2_:§7!#§ = null;
         if(this.§10§ != null && this.§=!#§ != null && param1 < this.§10§.length)
         {
            _loc2_ = this.§10§[param1] as §7!#§;
            if(_loc2_ != null)
            {
               this.§10§.splice(param1,1);
               delete this.§=!#§[_loc2_.§ n§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§<d§(param1))
         {
         }
         return this.§<d§ === this.§%!Q§;
      }
      
      protected function §%!Q§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<k§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §^!C§:
                  this.§<d§ = this.§5W§;
                  this.§8!P§ = new §7!#§(this.§??§);
                  break;
               case §9!C§:
               case §"T§:
               case §4;§:
               case §&m§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §!@§:
               case §5M§:
               case §@i§:
                  this.§<d§ = this.§%!Q§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5W§(param1:IDataInput) : Boolean
      {
         if(this.§8!P§.parse(param1))
         {
            if(this.§8!P§.§^v§)
            {
               this.§<d§ = this.§>u§;
               this.§<!6§ = new ByteArray();
               this.§-p§ = 0;
               this.§7!§ = 0;
               return true;
            }
            this.§0@§();
            if(this.§<d§ != this.§%!Q§)
            {
               this.§<d§ = this.§<k§;
               return true;
            }
         }
         return false;
      }
      
      protected function §>u§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§-p§ = this.§-p§ >>> 8 | _loc2_ << 24;
            if(this.§-p§ == §!@§)
            {
               this.§<!6§.length -= 3;
               this.§<d§ = this.§-!O§;
               return true;
            }
            this.§<!6§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-!O§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§<!6§.length == _loc3_)
            {
               this.§<!6§.position = 0;
               this.§8!P§.§3Q§ = _loc2_;
               this.§8!P§.§!!+§ = _loc3_;
               this.§8!P§.§7!!§ = _loc4_;
               this.§8!P§.§>V§(this.§<!6§);
               this.§0@§();
               this.§<d§ = this.§<k§;
            }
            else
            {
               this.§<!6§.writeUnsignedInt(_loc2_);
               this.§<!6§.writeUnsignedInt(_loc3_);
               this.§<!6§.writeUnsignedInt(_loc4_);
               this.§<d§ = this.§>u§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0@§() : void
      {
         this.§10§.push(this.§8!P§);
         if(this.§8!P§.§ n§)
         {
            this.§=!#§[this.§8!P§.§ n§] = this.§8!P§;
         }
         dispatchEvent(new §&!C§(§&!C§.§2+§,this.§8!P§));
         this.§8!P§ = null;
      }
      
      protected function §"!Y§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§+!H§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§0=§.§?!+§))
            {
               throw e;
            }
            dispatchEvent(new §0=§(§0=§.§?!+§,e.message));
         }
      }
      
      protected function §5>§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §<Z§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §?!D§() : void
      {
         this.§+!H§.addEventListener(Event.COMPLETE,this.§5>§);
         this.§+!H§.addEventListener(Event.OPEN,this.§5>§);
         this.§+!H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
         this.§+!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§<Z§);
         this.§+!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<Z§);
         this.§+!H§.addEventListener(ProgressEvent.PROGRESS,this.§"!Y§);
      }
      
      protected function §[!3§() : void
      {
         this.§+!H§.removeEventListener(Event.COMPLETE,this.§5>§);
         this.§+!H§.removeEventListener(Event.OPEN,this.§5>§);
         this.§+!H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
         this.§+!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<Z§);
         this.§+!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<Z§);
         this.§+!H§.removeEventListener(ProgressEvent.PROGRESS,this.§"!Y§);
      }
   }
}
