package §7!#§
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
   
   public class §@2§ extends EventDispatcher
   {
      
      static const §@!e§:uint = 33639248;
      
      static const §,!+§:uint = 808471376;
      
      static const §5!&§:uint = 67324752;
      
      static const §,p§:uint = 84233040;
      
      static const § q§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §^]§:uint = 134695760;
      
      static const §%!,§:uint = 134630224;
      
      static const §`!k§:uint = 134695760;
       
      
      protected var §78§:Array;
      
      protected var §+y§:Dictionary;
      
      protected var §"!L§:URLStream;
      
      protected var §"!M§:String;
      
      protected var §?R§:Function;
      
      protected var §8!N§:§"!8§;
      
      protected var §'!A§:ByteArray;
      
      protected var §7!4§:uint;
      
      protected var §@R§:uint;
      
      public function §@2§(param1:String = "utf-8")
      {
         super();
         this.§"!M§ = param1;
         this.§?R§ = this.§!a§;
      }
      
      public function get §8!p§() : Boolean
      {
         return this.§?R§ !== this.§!a§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§"!L§ && this.§?R§ == this.§!a§)
         {
            this.§"!L§ = new URLStream();
            this.§"!L§.endian = Endian.LITTLE_ENDIAN;
            this.§2!+§();
            this.§78§ = [];
            this.§+y§ = new Dictionary();
            this.§?R§ = this.§<p§;
            this.§"!L§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§"!L§ && this.§?R§ == this.§!a§)
         {
            this.§78§ = [];
            this.§+y§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§?R§ = this.§<p§;
            if(this.parse(param1))
            {
               this.§?R§ = this.§!a§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §,!X§(§,!X§.§^H§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§"!L§)
         {
            this.§?R§ = this.§!a§;
            this.§=G§();
            this.§"!L§.close();
            this.§"!L§ = null;
         }
      }
      
      public function §`!4§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"!8§ = null;
         if(param1 != null && this.§78§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§78§.length)
            {
               if((_loc8_ = this.§78§[_loc7_] as §"!8§) != null)
               {
                  _loc8_.§`!4§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§`!4§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§ q§);
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
      
      public function §5%§() : uint
      {
         return !!this.§78§ ? uint(this.§78§.length) : uint(0);
      }
      
      public function §1!k§(param1:uint) : §"!8§
      {
         return !!this.§78§ ? this.§78§[param1] as §"!8§ : null;
      }
      
      public function § !>§(param1:String) : §"!8§
      {
         return !!this.§+y§[param1] ? this.§+y§[param1] as §"!8§ : null;
      }
      
      public function §]3§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"!8§
      {
         return this.§8k§(!!this.§78§ ? uint(this.§78§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>e§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"!8§
      {
         return this.§[!9§(!!this.§78§ ? uint(this.§78§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §8k§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"!8§
      {
         if(this.§78§ == null)
         {
            this.§78§ = [];
         }
         if(this.§+y§ == null)
         {
            this.§+y§ = new Dictionary();
         }
         else if(this.§+y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"!8§;
         (_loc5_ = new §"!8§()).§;!]§ = param2;
         _loc5_.§=!C§(param3,param4);
         if(param1 >= this.§78§.length)
         {
            this.§78§.push(_loc5_);
         }
         else
         {
            this.§78§.splice(param1,0,_loc5_);
         }
         this.§+y§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §[!9§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"!8§
      {
         if(this.§78§ == null)
         {
            this.§78§ = [];
         }
         if(this.§+y§ == null)
         {
            this.§+y§ = new Dictionary();
         }
         else if(this.§+y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"!8§;
         (_loc6_ = new §"!8§()).§;!]§ = param2;
         _loc6_.§%!Z§(param3,param4,param5);
         if(param1 >= this.§78§.length)
         {
            this.§78§.push(_loc6_);
         }
         else
         {
            this.§78§.splice(param1,0,_loc6_);
         }
         this.§+y§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §9d§(param1:uint) : §"!8§
      {
         var _loc2_:§"!8§ = null;
         if(this.§78§ != null && this.§+y§ != null && param1 < this.§78§.length)
         {
            _loc2_ = this.§78§[param1] as §"!8§;
            if(_loc2_ != null)
            {
               this.§78§.splice(param1,1);
               delete this.§+y§[_loc2_.§;!]§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§?R§(param1))
         {
         }
         return this.§?R§ === this.§!a§;
      }
      
      protected function §!a§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<p§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §5!&§:
                  this.§?R§ = this.§"2§;
                  this.§8!N§ = new §"!8§(this.§"!M§);
                  break;
               case §@!e§:
               case § q§:
               case §,!+§:
               case §,p§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §^]§:
               case §%!,§:
               case §`!k§:
                  this.§?R§ = this.§!a§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §"2§(param1:IDataInput) : Boolean
      {
         if(this.§8!N§.parse(param1))
         {
            if(this.§8!N§.§!H§)
            {
               this.§?R§ = this.§%8§;
               this.§'!A§ = new ByteArray();
               this.§7!4§ = 0;
               this.§@R§ = 0;
               return true;
            }
            this.§0q§();
            if(this.§?R§ != this.§!a§)
            {
               this.§?R§ = this.§<p§;
               return true;
            }
         }
         return false;
      }
      
      protected function §%8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§7!4§ = this.§7!4§ >>> 8 | _loc2_ << 24;
            if(this.§7!4§ == §^]§)
            {
               this.§'!A§.length -= 3;
               this.§?R§ = this.§-!8§;
               return true;
            }
            this.§'!A§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-!8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§'!A§.length == _loc3_)
            {
               this.§'!A§.position = 0;
               this.§8!N§.§9R§ = _loc2_;
               this.§8!N§.§9!?§ = _loc3_;
               this.§8!N§.§&i§ = _loc4_;
               this.§8!N§.§[=§(this.§'!A§);
               this.§0q§();
               this.§?R§ = this.§<p§;
            }
            else
            {
               this.§'!A§.writeUnsignedInt(_loc2_);
               this.§'!A§.writeUnsignedInt(_loc3_);
               this.§'!A§.writeUnsignedInt(_loc4_);
               this.§?R§ = this.§%8§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0q§() : void
      {
         this.§78§.push(this.§8!N§);
         if(this.§8!N§.§;!]§)
         {
            this.§+y§[this.§8!N§.§;!]§] = this.§8!N§;
         }
         dispatchEvent(new §;#§(§;#§.§;!-§,this.§8!N§));
         this.§8!N§ = null;
      }
      
      protected function §[!_§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§"!L§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§,!X§.§^H§))
            {
               throw e;
            }
            dispatchEvent(new §,!X§(§,!X§.§^H§,e.message));
         }
      }
      
      protected function §->§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §`!§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2!+§() : void
      {
         this.§"!L§.addEventListener(Event.COMPLETE,this.§->§);
         this.§"!L§.addEventListener(Event.OPEN,this.§->§);
         this.§"!L§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§->§);
         this.§"!L§.addEventListener(IOErrorEvent.IO_ERROR,this.§`!§);
         this.§"!L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!§);
         this.§"!L§.addEventListener(ProgressEvent.PROGRESS,this.§[!_§);
      }
      
      protected function §=G§() : void
      {
         this.§"!L§.removeEventListener(Event.COMPLETE,this.§->§);
         this.§"!L§.removeEventListener(Event.OPEN,this.§->§);
         this.§"!L§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§->§);
         this.§"!L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!§);
         this.§"!L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!§);
         this.§"!L§.removeEventListener(ProgressEvent.PROGRESS,this.§[!_§);
      }
   }
}
