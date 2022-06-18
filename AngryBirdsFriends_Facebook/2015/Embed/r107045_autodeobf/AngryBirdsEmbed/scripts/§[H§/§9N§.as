package §[H§
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
   
   public class §9N§ extends EventDispatcher
   {
      
      static const §9!7§:uint = 33639248;
      
      static const §1B§:uint = 808471376;
      
      static const §?!4§:uint = 67324752;
      
      static const §3R§:uint = 84233040;
      
      static const §,!"§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-J§:uint = 134695760;
      
      static const §7a§:uint = 134630224;
      
      static const §#!M§:uint = 134695760;
       
      
      protected var §7[§:Array;
      
      protected var §]S§:Dictionary;
      
      protected var §?X§:URLStream;
      
      protected var §?&§:String;
      
      protected var §1!-§:Function;
      
      protected var §0u§:§>m§;
      
      protected var §6P§:ByteArray;
      
      protected var §<z§:uint;
      
      protected var §&X§:uint;
      
      public function §9N§(param1:String = "utf-8")
      {
         super();
         this.§?&§ = param1;
         this.§1!-§ = this.§'!C§;
      }
      
      public function get active() : Boolean
      {
         return this.§1!-§ !== this.§'!C§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§?X§ && this.§1!-§ == this.§'!C§)
         {
            this.§?X§ = new URLStream();
            this.§?X§.endian = Endian.LITTLE_ENDIAN;
            this.§'!G§();
            this.§7[§ = [];
            this.§]S§ = new Dictionary();
            this.§1!-§ = this.§>!D§;
            this.§?X§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§?X§ && this.§1!-§ == this.§'!C§)
         {
            this.§7[§ = [];
            this.§]S§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§1!-§ = this.§>!D§;
            if(this.parse(param1))
            {
               this.§1!-§ = this.§'!C§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §+H§(§+H§.§0!B§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§?X§)
         {
            this.§1!-§ = this.§'!C§;
            this.§1!"§();
            this.§?X§.close();
            this.§?X§ = null;
         }
      }
      
      public function §"!2§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>m§ = null;
         if(param1 != null && this.§7[§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7[§.length)
            {
               if((_loc8_ = this.§7[§[_loc7_] as §>m§) != null)
               {
                  _loc8_.§"!2§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§"!2§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§,!"§);
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
      
      public function §'d§() : uint
      {
         return !!this.§7[§ ? uint(this.§7[§.length) : uint(0);
      }
      
      public function §%=§(param1:uint) : §>m§
      {
         return !!this.§7[§ ? this.§7[§[param1] as §>m§ : null;
      }
      
      public function §<!#§(param1:String) : §>m§
      {
         return !!this.§]S§[param1] ? this.§]S§[param1] as §>m§ : null;
      }
      
      public function §-K§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>m§
      {
         return this.§[J§(!!this.§7[§ ? uint(this.§7[§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,C§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>m§
      {
         return this.§@! §(!!this.§7[§ ? uint(this.§7[§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §[J§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>m§
      {
         if(this.§7[§ == null)
         {
            this.§7[§ = [];
         }
         if(this.§]S§ == null)
         {
            this.§]S§ = new Dictionary();
         }
         else if(this.§]S§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>m§;
         (_loc5_ = new §>m§()).§4^§ = param2;
         _loc5_.§7!=§(param3,param4);
         if(param1 >= this.§7[§.length)
         {
            this.§7[§.push(_loc5_);
         }
         else
         {
            this.§7[§.splice(param1,0,_loc5_);
         }
         this.§]S§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §@! §(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>m§
      {
         if(this.§7[§ == null)
         {
            this.§7[§ = [];
         }
         if(this.§]S§ == null)
         {
            this.§]S§ = new Dictionary();
         }
         else if(this.§]S§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>m§;
         (_loc6_ = new §>m§()).§4^§ = param2;
         _loc6_.§3!E§(param3,param4,param5);
         if(param1 >= this.§7[§.length)
         {
            this.§7[§.push(_loc6_);
         }
         else
         {
            this.§7[§.splice(param1,0,_loc6_);
         }
         this.§]S§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §4D§(param1:uint) : §>m§
      {
         var _loc2_:§>m§ = null;
         if(this.§7[§ != null && this.§]S§ != null && param1 < this.§7[§.length)
         {
            _loc2_ = this.§7[§[param1] as §>m§;
            if(_loc2_ != null)
            {
               this.§7[§.splice(param1,1);
               delete this.§]S§[_loc2_.§4^§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§1!-§(param1))
         {
         }
         return this.§1!-§ === this.§'!C§;
      }
      
      protected function §'!C§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>!D§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §?!4§:
                  this.§1!-§ = this.§=!O§;
                  this.§0u§ = new §>m§(this.§?&§);
                  break;
               case §9!7§:
               case §,!"§:
               case §1B§:
               case §3R§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-J§:
               case §7a§:
               case §#!M§:
                  this.§1!-§ = this.§'!C§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §=!O§(param1:IDataInput) : Boolean
      {
         if(this.§0u§.parse(param1))
         {
            if(this.§0u§.§0!H§)
            {
               this.§1!-§ = this.§%!B§;
               this.§6P§ = new ByteArray();
               this.§<z§ = 0;
               this.§&X§ = 0;
               return true;
            }
            this.§5!D§();
            if(this.§1!-§ != this.§'!C§)
            {
               this.§1!-§ = this.§>!D§;
               return true;
            }
         }
         return false;
      }
      
      protected function §%!B§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§<z§ = this.§<z§ >>> 8 | _loc2_ << 24;
            if(this.§<z§ == §-J§)
            {
               this.§6P§.length -= 3;
               this.§1!-§ = this.§39§;
               return true;
            }
            this.§6P§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §39§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§6P§.length == _loc3_)
            {
               this.§6P§.position = 0;
               this.§0u§.§4O§ = _loc2_;
               this.§0u§.§5!K§ = _loc3_;
               this.§0u§.§7t§ = _loc4_;
               this.§0u§.§>!>§(this.§6P§);
               this.§5!D§();
               this.§1!-§ = this.§>!D§;
            }
            else
            {
               this.§6P§.writeUnsignedInt(_loc2_);
               this.§6P§.writeUnsignedInt(_loc3_);
               this.§6P§.writeUnsignedInt(_loc4_);
               this.§1!-§ = this.§%!B§;
            }
            return true;
         }
         return false;
      }
      
      protected function §5!D§() : void
      {
         this.§7[§.push(this.§0u§);
         if(this.§0u§.§4^§)
         {
            this.§]S§[this.§0u§.§4^§] = this.§0u§;
         }
         dispatchEvent(new §'4§(§'4§.§6[§,this.§0u§));
         this.§0u§ = null;
      }
      
      protected function §"z§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§?X§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§+H§.§0!B§))
            {
               throw e;
            }
            dispatchEvent(new §+H§(§+H§.§0!B§,e.message));
         }
      }
      
      protected function §7W§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §5W§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §'!G§() : void
      {
         this.§?X§.addEventListener(Event.COMPLETE,this.§7W§);
         this.§?X§.addEventListener(Event.OPEN,this.§7W§);
         this.§?X§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7W§);
         this.§?X§.addEventListener(IOErrorEvent.IO_ERROR,this.§5W§);
         this.§?X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5W§);
         this.§?X§.addEventListener(ProgressEvent.PROGRESS,this.§"z§);
      }
      
      protected function §1!"§() : void
      {
         this.§?X§.removeEventListener(Event.COMPLETE,this.§7W§);
         this.§?X§.removeEventListener(Event.OPEN,this.§7W§);
         this.§?X§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7W§);
         this.§?X§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5W§);
         this.§?X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5W§);
         this.§?X§.removeEventListener(ProgressEvent.PROGRESS,this.§"z§);
      }
   }
}
