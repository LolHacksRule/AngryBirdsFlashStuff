package §2&§
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
   
   public class §`b§ extends EventDispatcher
   {
      
      static const §&P§:uint = 33639248;
      
      static const §9r§:uint = 808471376;
      
      static const §@!G§:uint = 67324752;
      
      static const §;!T§:uint = 84233040;
      
      static const §4$§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6h§:uint = 134695760;
      
      static const §;!J§:uint = 134630224;
      
      static const § k§:uint = 134695760;
       
      
      protected var get:Array;
      
      protected var §]+§:Dictionary;
      
      protected var §%"§:URLStream;
      
      protected var §?!0§:String;
      
      protected var §]`§:Function;
      
      protected var §4!M§:§?o§;
      
      protected var §9?§:ByteArray;
      
      protected var §7n§:uint;
      
      protected var §;C§:uint;
      
      public function §`b§(param1:String = "utf-8")
      {
         super();
         this.§?!0§ = param1;
         this.§]`§ = this.§;R§;
      }
      
      public function get §'!-§() : Boolean
      {
         return this.§]`§ !== this.§;R§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§%"§ && this.§]`§ == this.§;R§)
         {
            this.§%"§ = new URLStream();
            this.§%"§.endian = Endian.LITTLE_ENDIAN;
            this.§[x§();
            this.get = [];
            this.§]+§ = new Dictionary();
            this.§]`§ = this.§]J§;
            this.§%"§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§%"§ && this.§]`§ == this.§;R§)
         {
            this.get = [];
            this.§]+§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§]`§ = this.§]J§;
            if(this.parse(param1))
            {
               this.§]`§ = this.§;R§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §,R§(§,R§.§#!G§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§%"§)
         {
            this.§]`§ = this.§;R§;
            this.§2!Y§();
            this.§%"§.close();
            this.§%"§ = null;
         }
      }
      
      public function §"^§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§?o§ = null;
         if(param1 != null && this.get.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.get.length)
            {
               if((_loc8_ = this.get[_loc7_] as §?o§) != null)
               {
                  _loc8_.§"^§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§"^§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§4$§);
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
      
      public function §^F§() : uint
      {
         return !!this.get ? uint(this.get.length) : uint(0);
      }
      
      public function §3c§(param1:uint) : §?o§
      {
         return !!this.get ? this.get[param1] as §?o§ : null;
      }
      
      public function §%!-§(param1:String) : §?o§
      {
         return !!this.§]+§[param1] ? this.§]+§[param1] as §?o§ : null;
      }
      
      public function §9]§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §?o§
      {
         return this.§3L§(!!this.get ? uint(this.get.length) : uint(0),param1,param2,param3);
      }
      
      public function §4G§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §?o§
      {
         return this.§?`§(!!this.get ? uint(this.get.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §3L§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §?o§
      {
         if(this.get == null)
         {
            this.get = [];
         }
         if(this.§]+§ == null)
         {
            this.§]+§ = new Dictionary();
         }
         else if(this.§]+§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§?o§;
         (_loc5_ = new §?o§()).§else§ = param2;
         _loc5_.§%%§(param3,param4);
         if(param1 >= this.get.length)
         {
            this.get.push(_loc5_);
         }
         else
         {
            this.get.splice(param1,0,_loc5_);
         }
         this.§]+§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §?`§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §?o§
      {
         if(this.get == null)
         {
            this.get = [];
         }
         if(this.§]+§ == null)
         {
            this.§]+§ = new Dictionary();
         }
         else if(this.§]+§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§?o§;
         (_loc6_ = new §?o§()).§else§ = param2;
         _loc6_.§!A§(param3,param4,param5);
         if(param1 >= this.get.length)
         {
            this.get.push(_loc6_);
         }
         else
         {
            this.get.splice(param1,0,_loc6_);
         }
         this.§]+§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §%4§(param1:uint) : §?o§
      {
         var _loc2_:§?o§ = null;
         if(this.get != null && this.§]+§ != null && param1 < this.get.length)
         {
            _loc2_ = this.get[param1] as §?o§;
            if(_loc2_ != null)
            {
               this.get.splice(param1,1);
               delete this.§]+§[_loc2_.§else§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§]`§(param1))
         {
         }
         return this.§]`§ === this.§;R§;
      }
      
      protected function §;R§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §]J§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §@!G§:
                  this.§]`§ = this.§<A§;
                  this.§4!M§ = new §?o§(this.§?!0§);
                  break;
               case §&P§:
               case §4$§:
               case §9r§:
               case §;!T§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §6h§:
               case §;!J§:
               case § k§:
                  this.§]`§ = this.§;R§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §<A§(param1:IDataInput) : Boolean
      {
         if(this.§4!M§.parse(param1))
         {
            if(this.§4!M§.§!D§)
            {
               this.§]`§ = this.§=![§;
               this.§9?§ = new ByteArray();
               this.§7n§ = 0;
               this.§;C§ = 0;
               return true;
            }
            this.§5B§();
            if(this.§]`§ != this.§;R§)
            {
               this.§]`§ = this.§]J§;
               return true;
            }
         }
         return false;
      }
      
      protected function §=![§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§7n§ = this.§7n§ >>> 8 | _loc2_ << 24;
            if(this.§7n§ == §6h§)
            {
               this.§9?§.length -= 3;
               this.§]`§ = this.§@]§;
               return true;
            }
            this.§9?§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §@]§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§9?§.length == _loc3_)
            {
               this.§9?§.position = 0;
               this.§4!M§.§@T§ = _loc2_;
               this.§4!M§.§-d§ = _loc3_;
               this.§4!M§.§ F§ = _loc4_;
               this.§4!M§.§1!§(this.§9?§);
               this.§5B§();
               this.§]`§ = this.§]J§;
            }
            else
            {
               this.§9?§.writeUnsignedInt(_loc2_);
               this.§9?§.writeUnsignedInt(_loc3_);
               this.§9?§.writeUnsignedInt(_loc4_);
               this.§]`§ = this.§=![§;
            }
            return true;
         }
         return false;
      }
      
      protected function §5B§() : void
      {
         this.get.push(this.§4!M§);
         if(this.§4!M§.§else§)
         {
            this.§]+§[this.§4!M§.§else§] = this.§4!M§;
         }
         dispatchEvent(new §,T§(§,T§.§#l§,this.§4!M§));
         this.§4!M§ = null;
      }
      
      protected function §1R§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§%"§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§,R§.§#!G§))
            {
               throw e;
            }
            dispatchEvent(new §,R§(§,R§.§#!G§,e.message));
         }
      }
      
      protected function § !]§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §63§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §[x§() : void
      {
         this.§%"§.addEventListener(Event.COMPLETE,this.§ !]§);
         this.§%"§.addEventListener(Event.OPEN,this.§ !]§);
         this.§%"§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !]§);
         this.§%"§.addEventListener(IOErrorEvent.IO_ERROR,this.§63§);
         this.§%"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§63§);
         this.§%"§.addEventListener(ProgressEvent.PROGRESS,this.§1R§);
      }
      
      protected function §2!Y§() : void
      {
         this.§%"§.removeEventListener(Event.COMPLETE,this.§ !]§);
         this.§%"§.removeEventListener(Event.OPEN,this.§ !]§);
         this.§%"§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !]§);
         this.§%"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§63§);
         this.§%"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§63§);
         this.§%"§.removeEventListener(ProgressEvent.PROGRESS,this.§1R§);
      }
   }
}
