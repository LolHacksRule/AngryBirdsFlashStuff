package §[4§
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
   
   public class §+;§ extends EventDispatcher
   {
      
      static const §;H§:uint = 33639248;
      
      static const §'@§:uint = 808471376;
      
      static const §@[§:uint = 67324752;
      
      static const §,V§:uint = 84233040;
      
      static const §9Q§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §3u§:uint = 134695760;
      
      static const each:uint = 134630224;
      
      static const §9!$§:uint = 134695760;
       
      
      protected var §1n§:Array;
      
      protected var §[u§:Dictionary;
      
      protected var §8x§:URLStream;
      
      protected var §7k§:String;
      
      protected var §1!N§:Function;
      
      protected var §61§:§>!3§;
      
      protected var §0E§:ByteArray;
      
      protected var §+'§:uint;
      
      protected var §;3§:uint;
      
      public function §+;§(param1:String = "utf-8")
      {
         super();
         this.§7k§ = param1;
         this.§1!N§ = this.§0n§;
      }
      
      public function get active() : Boolean
      {
         return this.§1!N§ !== this.§0n§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8x§ && this.§1!N§ == this.§0n§)
         {
            this.§8x§ = new URLStream();
            this.§8x§.endian = Endian.LITTLE_ENDIAN;
            this.§2j§();
            this.§1n§ = [];
            this.§[u§ = new Dictionary();
            this.§1!N§ = this.§9%§;
            this.§8x§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8x§ && this.§1!N§ == this.§0n§)
         {
            this.§1n§ = [];
            this.§[u§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§1!N§ = this.§9%§;
            if(this.parse(param1))
            {
               this.§1!N§ = this.§0n§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'!D§(§'!D§.§-!G§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8x§)
         {
            this.§1!N§ = this.§0n§;
            this.§;Z§();
            this.§8x§.close();
            this.§8x§ = null;
         }
      }
      
      public function §]5§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>!3§ = null;
         if(param1 != null && this.§1n§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§1n§.length)
            {
               if((_loc8_ = this.§1n§[_loc7_] as §>!3§) != null)
               {
                  _loc8_.§]5§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§]5§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9Q§);
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
      
      public function §7X§() : uint
      {
         return !!this.§1n§ ? uint(this.§1n§.length) : uint(0);
      }
      
      public function §2!§(param1:uint) : §>!3§
      {
         return !!this.§1n§ ? this.§1n§[param1] as §>!3§ : null;
      }
      
      public function §[!L§(param1:String) : §>!3§
      {
         return !!this.§[u§[param1] ? this.§[u§[param1] as §>!3§ : null;
      }
      
      public function §-!>§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>!3§
      {
         return this.§<V§(!!this.§1n§ ? uint(this.§1n§.length) : uint(0),param1,param2,param3);
      }
      
      public function §5r§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>!3§
      {
         return this.§+$§(!!this.§1n§ ? uint(this.§1n§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §<V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>!3§
      {
         if(this.§1n§ == null)
         {
            this.§1n§ = [];
         }
         if(this.§[u§ == null)
         {
            this.§[u§ = new Dictionary();
         }
         else if(this.§[u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>!3§;
         (_loc5_ = new §>!3§()).§>d§ = param2;
         _loc5_.§>!5§(param3,param4);
         if(param1 >= this.§1n§.length)
         {
            this.§1n§.push(_loc5_);
         }
         else
         {
            this.§1n§.splice(param1,0,_loc5_);
         }
         this.§[u§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §+$§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>!3§
      {
         if(this.§1n§ == null)
         {
            this.§1n§ = [];
         }
         if(this.§[u§ == null)
         {
            this.§[u§ = new Dictionary();
         }
         else if(this.§[u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>!3§;
         (_loc6_ = new §>!3§()).§>d§ = param2;
         _loc6_.§6P§(param3,param4,param5);
         if(param1 >= this.§1n§.length)
         {
            this.§1n§.push(_loc6_);
         }
         else
         {
            this.§1n§.splice(param1,0,_loc6_);
         }
         this.§[u§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[$§(param1:uint) : §>!3§
      {
         var _loc2_:§>!3§ = null;
         if(this.§1n§ != null && this.§[u§ != null && param1 < this.§1n§.length)
         {
            _loc2_ = this.§1n§[param1] as §>!3§;
            if(_loc2_ != null)
            {
               this.§1n§.splice(param1,1);
               delete this.§[u§[_loc2_.§>d§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§1!N§(param1))
         {
         }
         return this.§1!N§ === this.§0n§;
      }
      
      protected function §0n§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9%§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §@[§:
                  this.§1!N§ = this.§'!&§;
                  this.§61§ = new §>!3§(this.§7k§);
                  break;
               case §;H§:
               case §9Q§:
               case §'@§:
               case §,V§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §3u§:
               case each:
               case §9!$§:
                  this.§1!N§ = this.§0n§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §'!&§(param1:IDataInput) : Boolean
      {
         if(this.§61§.parse(param1))
         {
            if(this.§61§.§7i§)
            {
               this.§1!N§ = this.§3?§;
               this.§0E§ = new ByteArray();
               this.§+'§ = 0;
               this.§;3§ = 0;
               return true;
            }
            this.§#;§();
            if(this.§1!N§ != this.§0n§)
            {
               this.§1!N§ = this.§9%§;
               return true;
            }
         }
         return false;
      }
      
      protected function §3?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§+'§ = this.§+'§ >>> 8 | _loc2_ << 24;
            if(this.§+'§ == §3u§)
            {
               this.§0E§.length -= 3;
               this.§1!N§ = this.§2A§;
               return true;
            }
            this.§0E§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §2A§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§0E§.length == _loc3_)
            {
               this.§0E§.position = 0;
               this.§61§.§^F§ = _loc2_;
               this.§61§.§>u§ = _loc3_;
               this.§61§.§=d§ = _loc4_;
               this.§61§.§8!§(this.§0E§);
               this.§#;§();
               this.§1!N§ = this.§9%§;
            }
            else
            {
               this.§0E§.writeUnsignedInt(_loc2_);
               this.§0E§.writeUnsignedInt(_loc3_);
               this.§0E§.writeUnsignedInt(_loc4_);
               this.§1!N§ = this.§3?§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#;§() : void
      {
         this.§1n§.push(this.§61§);
         if(this.§61§.§>d§)
         {
            this.§[u§[this.§61§.§>d§] = this.§61§;
         }
         dispatchEvent(new §!3§(§!3§.§=,§,this.§61§));
         this.§61§ = null;
      }
      
      protected function §#!N§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8x§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'!D§.§-!G§))
            {
               throw e;
            }
            dispatchEvent(new §'!D§(§'!D§.§-!G§,e.message));
         }
      }
      
      protected function §#]§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §`!+§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2j§() : void
      {
         this.§8x§.addEventListener(Event.COMPLETE,this.§#]§);
         this.§8x§.addEventListener(Event.OPEN,this.§#]§);
         this.§8x§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#]§);
         this.§8x§.addEventListener(IOErrorEvent.IO_ERROR,this.§`!+§);
         this.§8x§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!+§);
         this.§8x§.addEventListener(ProgressEvent.PROGRESS,this.§#!N§);
      }
      
      protected function §;Z§() : void
      {
         this.§8x§.removeEventListener(Event.COMPLETE,this.§#]§);
         this.§8x§.removeEventListener(Event.OPEN,this.§#]§);
         this.§8x§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#]§);
         this.§8x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!+§);
         this.§8x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!+§);
         this.§8x§.removeEventListener(ProgressEvent.PROGRESS,this.§#!N§);
      }
   }
}
