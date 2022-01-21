package §@B§
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
   
   public class §,=§ extends EventDispatcher
   {
      
      static const §?i§:uint = 33639248;
      
      static const §=S§:uint = 808471376;
      
      static const §,!`§:uint = 67324752;
      
      static const §"x§:uint = 84233040;
      
      static const §]!b§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §4!5§:uint = 134695760;
      
      static const §"!9§:uint = 134630224;
      
      static const §=6§:uint = 134695760;
       
      
      protected var §;?§:Array;
      
      protected var §0^§:Dictionary;
      
      protected var §[E§:URLStream;
      
      protected var §;!c§:String;
      
      protected var §]>§:Function;
      
      protected var §,!P§:§`!'§;
      
      protected var §+!n§:ByteArray;
      
      protected var §5b§:uint;
      
      protected var §?4§:uint;
      
      public function §,=§(param1:String = "utf-8")
      {
         super();
         this.§;!c§ = param1;
         this.§]>§ = this.§4!L§;
      }
      
      public function get §0!`§() : Boolean
      {
         return this.§]>§ !== this.§4!L§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§[E§ && this.§]>§ == this.§4!L§)
         {
            this.§[E§ = new URLStream();
            this.§[E§.endian = Endian.LITTLE_ENDIAN;
            this.§'h§();
            this.§;?§ = [];
            this.§0^§ = new Dictionary();
            this.§]>§ = this.§!1§;
            this.§[E§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§[E§ && this.§]>§ == this.§4!L§)
         {
            this.§;?§ = [];
            this.§0^§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§]>§ = this.§!1§;
            if(this.parse(param1))
            {
               this.§]>§ = this.§4!L§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §2W§(§2W§.§#§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§[E§)
         {
            this.§]>§ = this.§4!L§;
            this.§=_§();
            this.§[E§.close();
            this.§[E§ = null;
         }
      }
      
      public function §4S§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§`!'§ = null;
         if(param1 != null && this.§;?§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§;?§.length)
            {
               if((_loc8_ = this.§;?§[_loc7_] as §`!'§) != null)
               {
                  _loc8_.§4S§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§4S§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§]!b§);
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
      
      public function §8!1§() : uint
      {
         return !!this.§;?§ ? uint(this.§;?§.length) : uint(0);
      }
      
      public function §[!k§(param1:uint) : §`!'§
      {
         return !!this.§;?§ ? this.§;?§[param1] as §`!'§ : null;
      }
      
      public function §3!S§(param1:String) : §`!'§
      {
         return !!this.§0^§[param1] ? this.§0^§[param1] as §`!'§ : null;
      }
      
      public function §+z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §`!'§
      {
         return this.§ !G§(!!this.§;?§ ? uint(this.§;?§.length) : uint(0),param1,param2,param3);
      }
      
      public function §[V§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §`!'§
      {
         return this.§'!$§(!!this.§;?§ ? uint(this.§;?§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function § !G§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §`!'§
      {
         if(this.§;?§ == null)
         {
            this.§;?§ = [];
         }
         if(this.§0^§ == null)
         {
            this.§0^§ = new Dictionary();
         }
         else if(this.§0^§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§`!'§;
         (_loc5_ = new §`!'§()).§0!+§ = param2;
         _loc5_.§!!_§(param3,param4);
         if(param1 >= this.§;?§.length)
         {
            this.§;?§.push(_loc5_);
         }
         else
         {
            this.§;?§.splice(param1,0,_loc5_);
         }
         this.§0^§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §'!$§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §`!'§
      {
         if(this.§;?§ == null)
         {
            this.§;?§ = [];
         }
         if(this.§0^§ == null)
         {
            this.§0^§ = new Dictionary();
         }
         else if(this.§0^§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§`!'§;
         (_loc6_ = new §`!'§()).§0!+§ = param2;
         _loc6_.§^!1§(param3,param4,param5);
         if(param1 >= this.§;?§.length)
         {
            this.§;?§.push(_loc6_);
         }
         else
         {
            this.§;?§.splice(param1,0,_loc6_);
         }
         this.§0^§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §?m§(param1:uint) : §`!'§
      {
         var _loc2_:§`!'§ = null;
         if(this.§;?§ != null && this.§0^§ != null && param1 < this.§;?§.length)
         {
            _loc2_ = this.§;?§[param1] as §`!'§;
            if(_loc2_ != null)
            {
               this.§;?§.splice(param1,1);
               delete this.§0^§[_loc2_.§0!+§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§]>§(param1))
         {
         }
         return this.§]>§ === this.§4!L§;
      }
      
      protected function §4!L§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §,!`§:
                  this.§]>§ = this.§,1§;
                  this.§,!P§ = new §`!'§(this.§;!c§);
                  break;
               case §?i§:
               case §]!b§:
               case §=S§:
               case §"x§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §4!5§:
               case §"!9§:
               case §=6§:
                  this.§]>§ = this.§4!L§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §,1§(param1:IDataInput) : Boolean
      {
         if(this.§,!P§.parse(param1))
         {
            if(this.§,!P§.§while§)
            {
               this.§]>§ = this.§8e§;
               this.§+!n§ = new ByteArray();
               this.§5b§ = 0;
               this.§?4§ = 0;
               return true;
            }
            this.§6'§();
            if(this.§]>§ != this.§4!L§)
            {
               this.§]>§ = this.§!1§;
               return true;
            }
         }
         return false;
      }
      
      protected function §8e§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§5b§ = this.§5b§ >>> 8 | _loc2_ << 24;
            if(this.§5b§ == §4!5§)
            {
               this.§+!n§.length -= 3;
               this.§]>§ = this.§#I§;
               return true;
            }
            this.§+!n§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §#I§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§+!n§.length == _loc3_)
            {
               this.§+!n§.position = 0;
               this.§,!P§.§&E§ = _loc2_;
               this.§,!P§.§'d§ = _loc3_;
               this.§,!P§.§@!b§ = _loc4_;
               this.§,!P§.§@'§(this.§+!n§);
               this.§6'§();
               this.§]>§ = this.§!1§;
            }
            else
            {
               this.§+!n§.writeUnsignedInt(_loc2_);
               this.§+!n§.writeUnsignedInt(_loc3_);
               this.§+!n§.writeUnsignedInt(_loc4_);
               this.§]>§ = this.§8e§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6'§() : void
      {
         this.§;?§.push(this.§,!P§);
         if(this.§,!P§.§0!+§)
         {
            this.§0^§[this.§,!P§.§0!+§] = this.§,!P§;
         }
         dispatchEvent(new §-;§(§-;§.§0E§,this.§,!P§));
         this.§,!P§ = null;
      }
      
      protected function §;6§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§[E§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§2W§.§#§))
            {
               throw e;
            }
            dispatchEvent(new §2W§(§2W§.§#§,e.message));
         }
      }
      
      protected function §<=§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §8!i§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §'h§() : void
      {
         this.§[E§.addEventListener(Event.COMPLETE,this.§<=§);
         this.§[E§.addEventListener(Event.OPEN,this.§<=§);
         this.§[E§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<=§);
         this.§[E§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!i§);
         this.§[E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8!i§);
         this.§[E§.addEventListener(ProgressEvent.PROGRESS,this.§;6§);
      }
      
      protected function §=_§() : void
      {
         this.§[E§.removeEventListener(Event.COMPLETE,this.§<=§);
         this.§[E§.removeEventListener(Event.OPEN,this.§<=§);
         this.§[E§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<=§);
         this.§[E§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!i§);
         this.§[E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8!i§);
         this.§[E§.removeEventListener(ProgressEvent.PROGRESS,this.§;6§);
      }
   }
}
