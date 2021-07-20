package §`b§
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
   
   public class § !9§ extends EventDispatcher
   {
      
      static const §6F§:uint = 33639248;
      
      static const §#!C§:uint = 808471376;
      
      static const §&D§:uint = 67324752;
      
      static const §]!W§:uint = 84233040;
      
      static const §9e§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §"=§:uint = 134695760;
      
      static const §8+§:uint = 134630224;
      
      static const §continue§:uint = 134695760;
       
      
      protected var §]!#§:Array;
      
      protected var §1"§:Dictionary;
      
      protected var §8!U§:URLStream;
      
      protected var §<!d§:String;
      
      protected var §+e§:Function;
      
      protected var §;B§:§=#§;
      
      protected var §1!a§:ByteArray;
      
      protected var §,H§:uint;
      
      protected var §;Z§:uint;
      
      public function § !9§(param1:String = "utf-8")
      {
         super();
         this.§<!d§ = param1;
         this.§+e§ = this.§^K§;
      }
      
      public function get §-[§() : Boolean
      {
         return this.§+e§ !== this.§^K§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8!U§ && this.§+e§ == this.§^K§)
         {
            this.§8!U§ = new URLStream();
            this.§8!U§.endian = Endian.LITTLE_ENDIAN;
            this.§2<§();
            this.§]!#§ = [];
            this.§1"§ = new Dictionary();
            this.§+e§ = this.§;!R§;
            this.§8!U§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8!U§ && this.§+e§ == this.§^K§)
         {
            this.§]!#§ = [];
            this.§1"§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§+e§ = this.§;!R§;
            if(this.parse(param1))
            {
               this.§+e§ = this.§^K§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new § 1§(§ 1§.§!!!§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8!U§)
         {
            this.§+e§ = this.§^K§;
            this.§8!D§();
            this.§8!U§.close();
            this.§8!U§ = null;
         }
      }
      
      public function §;!T§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§=#§ = null;
         if(param1 != null && this.§]!#§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§]!#§.length)
            {
               if((_loc8_ = this.§]!#§[_loc7_] as §=#§) != null)
               {
                  _loc8_.§;!T§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;!T§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9e§);
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
      
      public function § ?§() : uint
      {
         return !!this.§]!#§ ? uint(this.§]!#§.length) : uint(0);
      }
      
      public function §9!8§(param1:uint) : §=#§
      {
         return !!this.§]!#§ ? this.§]!#§[param1] as §=#§ : null;
      }
      
      public function §5e§(param1:String) : §=#§
      {
         return !!this.§1"§[param1] ? this.§1"§[param1] as §=#§ : null;
      }
      
      public function §&3§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §=#§
      {
         return this.§>m§(!!this.§]!#§ ? uint(this.§]!#§.length) : uint(0),param1,param2,param3);
      }
      
      public function §<!H§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §=#§
      {
         return this.§]!d§(!!this.§]!#§ ? uint(this.§]!#§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §>m§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §=#§
      {
         if(this.§]!#§ == null)
         {
            this.§]!#§ = [];
         }
         if(this.§1"§ == null)
         {
            this.§1"§ = new Dictionary();
         }
         else if(this.§1"§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§=#§;
         (_loc5_ = new §=#§()).§@b§ = param2;
         _loc5_.§#r§(param3,param4);
         if(param1 >= this.§]!#§.length)
         {
            this.§]!#§.push(_loc5_);
         }
         else
         {
            this.§]!#§.splice(param1,0,_loc5_);
         }
         this.§1"§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §]!d§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §=#§
      {
         if(this.§]!#§ == null)
         {
            this.§]!#§ = [];
         }
         if(this.§1"§ == null)
         {
            this.§1"§ = new Dictionary();
         }
         else if(this.§1"§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§=#§;
         (_loc6_ = new §=#§()).§@b§ = param2;
         _loc6_.§[w§(param3,param4,param5);
         if(param1 >= this.§]!#§.length)
         {
            this.§]!#§.push(_loc6_);
         }
         else
         {
            this.§]!#§.splice(param1,0,_loc6_);
         }
         this.§1"§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §4c§(param1:uint) : §=#§
      {
         var _loc2_:§=#§ = null;
         if(this.§]!#§ != null && this.§1"§ != null && param1 < this.§]!#§.length)
         {
            _loc2_ = this.§]!#§[param1] as §=#§;
            if(_loc2_ != null)
            {
               this.§]!#§.splice(param1,1);
               delete this.§1"§[_loc2_.§@b§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§+e§(param1))
         {
         }
         return this.§+e§ === this.§^K§;
      }
      
      protected function §^K§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §;!R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §&D§:
                  this.§+e§ = this.§^!%§;
                  this.§;B§ = new §=#§(this.§<!d§);
                  break;
               case §6F§:
               case §9e§:
               case §#!C§:
               case §]!W§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §"=§:
               case §8+§:
               case §continue§:
                  this.§+e§ = this.§^K§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §^!%§(param1:IDataInput) : Boolean
      {
         if(this.§;B§.parse(param1))
         {
            if(this.§;B§.§`!R§)
            {
               this.§+e§ = this.§8]§;
               this.§1!a§ = new ByteArray();
               this.§,H§ = 0;
               this.§;Z§ = 0;
               return true;
            }
            this.§%&§();
            if(this.§+e§ != this.§^K§)
            {
               this.§+e§ = this.§;!R§;
               return true;
            }
         }
         return false;
      }
      
      protected function §8]§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§,H§ = this.§,H§ >>> 8 | _loc2_ << 24;
            if(this.§,H§ == §"=§)
            {
               this.§1!a§.length -= 3;
               this.§+e§ = this.§9U§;
               return true;
            }
            this.§1!a§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §9U§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§1!a§.length == _loc3_)
            {
               this.§1!a§.position = 0;
               this.§;B§.§6!]§ = _loc2_;
               this.§;B§.§>!4§ = _loc3_;
               this.§;B§.override = _loc4_;
               this.§;B§.§3!Y§(this.§1!a§);
               this.§%&§();
               this.§+e§ = this.§;!R§;
            }
            else
            {
               this.§1!a§.writeUnsignedInt(_loc2_);
               this.§1!a§.writeUnsignedInt(_loc3_);
               this.§1!a§.writeUnsignedInt(_loc4_);
               this.§+e§ = this.§8]§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%&§() : void
      {
         this.§]!#§.push(this.§;B§);
         if(this.§;B§.§@b§)
         {
            this.§1"§[this.§;B§.§@b§] = this.§;B§;
         }
         dispatchEvent(new §&p§(§&p§.§#!"§,this.§;B§));
         this.§;B§ = null;
      }
      
      protected function §9>§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8!U§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§ 1§.§!!!§))
            {
               throw e;
            }
            dispatchEvent(new § 1§(§ 1§.§!!!§,e.message));
         }
      }
      
      protected function §@m§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §^N§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2<§() : void
      {
         this.§8!U§.addEventListener(Event.COMPLETE,this.§@m§);
         this.§8!U§.addEventListener(Event.OPEN,this.§@m§);
         this.§8!U§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§@m§);
         this.§8!U§.addEventListener(IOErrorEvent.IO_ERROR,this.§^N§);
         this.§8!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^N§);
         this.§8!U§.addEventListener(ProgressEvent.PROGRESS,this.§9>§);
      }
      
      protected function §8!D§() : void
      {
         this.§8!U§.removeEventListener(Event.COMPLETE,this.§@m§);
         this.§8!U§.removeEventListener(Event.OPEN,this.§@m§);
         this.§8!U§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§@m§);
         this.§8!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^N§);
         this.§8!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^N§);
         this.§8!U§.removeEventListener(ProgressEvent.PROGRESS,this.§9>§);
      }
   }
}
