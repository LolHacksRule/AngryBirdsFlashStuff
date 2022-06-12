package §6g§
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
   
   public class §@"#§ extends EventDispatcher
   {
      
      static const §`!V§:uint = 33639248;
      
      static const §5§:uint = 808471376;
      
      static const §2!F§:uint = 67324752;
      
      static const §7"=§:uint = 84233040;
      
      static const §<M§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §%l§:uint = 134695760;
      
      static const §!L§:uint = 134630224;
      
      static const §!!B§:uint = 134695760;
       
      
      protected var §9!D§:Array;
      
      protected var §=!X§:Dictionary;
      
      protected var §3"6§:URLStream;
      
      protected var §'!H§:String;
      
      protected var §9z§:Function;
      
      protected var §@!q§:§7k§;
      
      protected var §-!n§:ByteArray;
      
      protected var §0!o§:uint;
      
      protected var §2!"§:uint;
      
      public function §@"#§(param1:String = "utf-8")
      {
         super();
         this.§'!H§ = param1;
         this.§9z§ = this.§?"'§;
      }
      
      public function get §^O§() : Boolean
      {
         return this.§9z§ !== this.§?"'§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§3"6§ && this.§9z§ == this.§?"'§)
         {
            this.§3"6§ = new URLStream();
            this.§3"6§.endian = Endian.LITTLE_ENDIAN;
            this.§]<§();
            this.§9!D§ = [];
            this.§=!X§ = new Dictionary();
            this.§9z§ = this.§+"1§;
            this.§3"6§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§3"6§ && this.§9z§ == this.§?"'§)
         {
            this.§9!D§ = [];
            this.§=!X§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§9z§ = this.§+"1§;
            if(this.parse(param1))
            {
               this.§9z§ = this.§?"'§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §@a§(§@a§.§?!O§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§3"6§)
         {
            this.§9z§ = this.§?"'§;
            this.§?!R§();
            this.§3"6§.close();
            this.§3"6§ = null;
         }
      }
      
      public function §!!t§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§7k§ = null;
         if(param1 != null && this.§9!D§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§9!D§.length)
            {
               if((_loc8_ = this.§9!D§[_loc7_] as §7k§) != null)
               {
                  _loc8_.§!!t§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§!!t§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§<M§);
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
      
      public function §[m§() : uint
      {
         return !!this.§9!D§ ? uint(this.§9!D§.length) : uint(0);
      }
      
      public function §]!y§(param1:uint) : §7k§
      {
         return !!this.§9!D§ ? this.§9!D§[param1] as §7k§ : null;
      }
      
      public function §!Z§(param1:String) : §7k§
      {
         return !!this.§=!X§[param1] ? this.§=!X§[param1] as §7k§ : null;
      }
      
      public function §%!j§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §7k§
      {
         return this.§>!1§(!!this.§9!D§ ? uint(this.§9!D§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^V§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §7k§
      {
         return this.§4!u§(!!this.§9!D§ ? uint(this.§9!D§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §>!1§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §7k§
      {
         if(this.§9!D§ == null)
         {
            this.§9!D§ = [];
         }
         if(this.§=!X§ == null)
         {
            this.§=!X§ = new Dictionary();
         }
         else if(this.§=!X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§7k§;
         (_loc5_ = new §7k§()).§"!n§ = param2;
         _loc5_.§in§(param3,param4);
         if(param1 >= this.§9!D§.length)
         {
            this.§9!D§.push(_loc5_);
         }
         else
         {
            this.§9!D§.splice(param1,0,_loc5_);
         }
         this.§=!X§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §4!u§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §7k§
      {
         if(this.§9!D§ == null)
         {
            this.§9!D§ = [];
         }
         if(this.§=!X§ == null)
         {
            this.§=!X§ = new Dictionary();
         }
         else if(this.§=!X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§7k§;
         (_loc6_ = new §7k§()).§"!n§ = param2;
         _loc6_.§&"$§(param3,param4,param5);
         if(param1 >= this.§9!D§.length)
         {
            this.§9!D§.push(_loc6_);
         }
         else
         {
            this.§9!D§.splice(param1,0,_loc6_);
         }
         this.§=!X§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §">§(param1:uint) : §7k§
      {
         var _loc2_:§7k§ = null;
         if(this.§9!D§ != null && this.§=!X§ != null && param1 < this.§9!D§.length)
         {
            _loc2_ = this.§9!D§[param1] as §7k§;
            if(_loc2_ != null)
            {
               this.§9!D§.splice(param1,1);
               delete this.§=!X§[_loc2_.§"!n§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§9z§(param1))
         {
         }
         return this.§9z§ === this.§?"'§;
      }
      
      protected function §?"'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+"1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §2!F§:
                  this.§9z§ = this.§""?§;
                  this.§@!q§ = new §7k§(this.§'!H§);
                  break;
               case §`!V§:
               case §<M§:
               case §5§:
               case §7"=§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §%l§:
               case §!L§:
               case §!!B§:
                  this.§9z§ = this.§?"'§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §""?§(param1:IDataInput) : Boolean
      {
         if(this.§@!q§.parse(param1))
         {
            if(this.§@!q§.§ !O§)
            {
               this.§9z§ = this.§?!u§;
               this.§-!n§ = new ByteArray();
               this.§0!o§ = 0;
               this.§2!"§ = 0;
               return true;
            }
            this.§set §();
            if(this.§9z§ != this.§?"'§)
            {
               this.§9z§ = this.§+"1§;
               return true;
            }
         }
         return false;
      }
      
      protected function §?!u§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§0!o§ = this.§0!o§ >>> 8 | _loc2_ << 24;
            if(this.§0!o§ == §%l§)
            {
               this.§-!n§.length -= 3;
               this.§9z§ = this.§!C§;
               return true;
            }
            this.§-!n§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §!C§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§-!n§.length == _loc3_)
            {
               this.§-!n§.position = 0;
               this.§@!q§.§&v§ = _loc2_;
               this.§@!q§.§"!p§ = _loc3_;
               this.§@!q§.§`" § = _loc4_;
               this.§@!q§.§ H§(this.§-!n§);
               this.§set §();
               this.§9z§ = this.§+"1§;
            }
            else
            {
               this.§-!n§.writeUnsignedInt(_loc2_);
               this.§-!n§.writeUnsignedInt(_loc3_);
               this.§-!n§.writeUnsignedInt(_loc4_);
               this.§9z§ = this.§?!u§;
            }
            return true;
         }
         return false;
      }
      
      protected function §set §() : void
      {
         this.§9!D§.push(this.§@!q§);
         if(this.§@!q§.§"!n§)
         {
            this.§=!X§[this.§@!q§.§"!n§] = this.§@!q§;
         }
         dispatchEvent(new §0g§(§0g§.§%!Q§,this.§@!q§));
         this.§@!q§ = null;
      }
      
      protected function §'Q§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§3"6§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§@a§.§?!O§))
            {
               throw e;
            }
            dispatchEvent(new §@a§(§@a§.§?!O§,e.message));
         }
      }
      
      protected function §9Y§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §7$§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §]<§() : void
      {
         this.§3"6§.addEventListener(Event.COMPLETE,this.§9Y§);
         this.§3"6§.addEventListener(Event.OPEN,this.§9Y§);
         this.§3"6§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9Y§);
         this.§3"6§.addEventListener(IOErrorEvent.IO_ERROR,this.§7$§);
         this.§3"6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7$§);
         this.§3"6§.addEventListener(ProgressEvent.PROGRESS,this.§'Q§);
      }
      
      protected function §?!R§() : void
      {
         this.§3"6§.removeEventListener(Event.COMPLETE,this.§9Y§);
         this.§3"6§.removeEventListener(Event.OPEN,this.§9Y§);
         this.§3"6§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9Y§);
         this.§3"6§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7$§);
         this.§3"6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7$§);
         this.§3"6§.removeEventListener(ProgressEvent.PROGRESS,this.§'Q§);
      }
   }
}
