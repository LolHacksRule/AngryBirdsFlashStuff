package §3q§
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
   
   public class §-q§ extends EventDispatcher
   {
      
      static const §#!%§:uint = 33639248;
      
      static const §+!!§:uint = 808471376;
      
      static const §!k§:uint = 67324752;
      
      static const §!d§:uint = 84233040;
      
      static const §`N§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §[d§:uint = 134695760;
      
      static const §@!O§:uint = 134630224;
      
      static const §!n§:uint = 134695760;
       
      
      protected var §]"§:Array;
      
      protected var §,!%§:Dictionary;
      
      protected var §!!F§:URLStream;
      
      protected var §>6§:String;
      
      protected var §,D§:Function;
      
      protected var §^<§:§4!a§;
      
      protected var §3w§:ByteArray;
      
      protected var §!r§:uint;
      
      protected var §#y§:uint;
      
      public function §-q§(param1:String = "utf-8")
      {
         super();
         this.§>6§ = param1;
         this.§,D§ = this.§,!M§;
      }
      
      public function get §]X§() : Boolean
      {
         return this.§,D§ !== this.§,!M§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§!!F§ && this.§,D§ == this.§,!M§)
         {
            this.§!!F§ = new URLStream();
            this.§!!F§.endian = Endian.LITTLE_ENDIAN;
            this.§"!C§();
            this.§]"§ = [];
            this.§,!%§ = new Dictionary();
            this.§,D§ = this.§@!'§;
            this.§!!F§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§!!F§ && this.§,D§ == this.§,!M§)
         {
            this.§]"§ = [];
            this.§,!%§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§,D§ = this.§@!'§;
            if(this.parse(param1))
            {
               this.§,D§ = this.§,!M§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §7!R§(§7!R§.§+U§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§!!F§)
         {
            this.§,D§ = this.§,!M§;
            this.§;!3§();
            this.§!!F§.close();
            this.§!!F§ = null;
         }
      }
      
      public function §"!1§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§4!a§ = null;
         if(param1 != null && this.§]"§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§]"§.length)
            {
               if((_loc8_ = this.§]"§[_loc7_] as §4!a§) != null)
               {
                  _loc8_.§"!1§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§"!1§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§`N§);
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
      
      public function §#&§() : uint
      {
         return !!this.§]"§ ? uint(this.§]"§.length) : uint(0);
      }
      
      public function §>C§(param1:uint) : §4!a§
      {
         return !!this.§]"§ ? this.§]"§[param1] as §4!a§ : null;
      }
      
      public function §[$§(param1:String) : §4!a§
      {
         return !!this.§,!%§[param1] ? this.§,!%§[param1] as §4!a§ : null;
      }
      
      public function §+t§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §4!a§
      {
         return this.§]d§(!!this.§]"§ ? uint(this.§]"§.length) : uint(0),param1,param2,param3);
      }
      
      public function §5!D§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §4!a§
      {
         return this.§&8§(!!this.§]"§ ? uint(this.§]"§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §]d§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §4!a§
      {
         if(this.§]"§ == null)
         {
            this.§]"§ = [];
         }
         if(this.§,!%§ == null)
         {
            this.§,!%§ = new Dictionary();
         }
         else if(this.§,!%§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§4!a§;
         (_loc5_ = new §4!a§()).§%![§ = param2;
         _loc5_.§1i§(param3,param4);
         if(param1 >= this.§]"§.length)
         {
            this.§]"§.push(_loc5_);
         }
         else
         {
            this.§]"§.splice(param1,0,_loc5_);
         }
         this.§,!%§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §&8§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §4!a§
      {
         if(this.§]"§ == null)
         {
            this.§]"§ = [];
         }
         if(this.§,!%§ == null)
         {
            this.§,!%§ = new Dictionary();
         }
         else if(this.§,!%§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§4!a§;
         (_loc6_ = new §4!a§()).§%![§ = param2;
         _loc6_.§&6§(param3,param4,param5);
         if(param1 >= this.§]"§.length)
         {
            this.§]"§.push(_loc6_);
         }
         else
         {
            this.§]"§.splice(param1,0,_loc6_);
         }
         this.§,!%§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §<!?§(param1:uint) : §4!a§
      {
         var _loc2_:§4!a§ = null;
         if(this.§]"§ != null && this.§,!%§ != null && param1 < this.§]"§.length)
         {
            _loc2_ = this.§]"§[param1] as §4!a§;
            if(_loc2_ != null)
            {
               this.§]"§.splice(param1,1);
               delete this.§,!%§[_loc2_.§%![§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§,D§(param1))
         {
         }
         return this.§,D§ === this.§,!M§;
      }
      
      protected function §,!M§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §@!'§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §!k§:
                  this.§,D§ = this.§"!`§;
                  this.§^<§ = new §4!a§(this.§>6§);
                  break;
               case §#!%§:
               case §`N§:
               case §+!!§:
               case §!d§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §[d§:
               case §@!O§:
               case §!n§:
                  this.§,D§ = this.§,!M§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §"!`§(param1:IDataInput) : Boolean
      {
         if(this.§^<§.parse(param1))
         {
            if(this.§^<§.§9![§)
            {
               this.§,D§ = this.§'?§;
               this.§3w§ = new ByteArray();
               this.§!r§ = 0;
               this.§#y§ = 0;
               return true;
            }
            this.§9!`§();
            if(this.§,D§ != this.§,!M§)
            {
               this.§,D§ = this.§@!'§;
               return true;
            }
         }
         return false;
      }
      
      protected function §'?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§!r§ = this.§!r§ >>> 8 | _loc2_ << 24;
            if(this.§!r§ == §[d§)
            {
               this.§3w§.length -= 3;
               this.§,D§ = this.§-8§;
               return true;
            }
            this.§3w§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§3w§.length == _loc3_)
            {
               this.§3w§.position = 0;
               this.§^<§.§3h§ = _loc2_;
               this.§^<§.§&!?§ = _loc3_;
               this.§^<§.§^v§ = _loc4_;
               this.§^<§.§`!"§(this.§3w§);
               this.§9!`§();
               this.§,D§ = this.§@!'§;
            }
            else
            {
               this.§3w§.writeUnsignedInt(_loc2_);
               this.§3w§.writeUnsignedInt(_loc3_);
               this.§3w§.writeUnsignedInt(_loc4_);
               this.§,D§ = this.§'?§;
            }
            return true;
         }
         return false;
      }
      
      protected function §9!`§() : void
      {
         this.§]"§.push(this.§^<§);
         if(this.§^<§.§%![§)
         {
            this.§,!%§[this.§^<§.§%![§] = this.§^<§;
         }
         dispatchEvent(new §?+§(§?+§.§5C§,this.§^<§));
         this.§^<§ = null;
      }
      
      protected function §-2§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§!!F§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§7!R§.§+U§))
            {
               throw e;
            }
            dispatchEvent(new §7!R§(§7!R§.§+U§,e.message));
         }
      }
      
      protected function §=_§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9,§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"!C§() : void
      {
         this.§!!F§.addEventListener(Event.COMPLETE,this.§=_§);
         this.§!!F§.addEventListener(Event.OPEN,this.§=_§);
         this.§!!F§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=_§);
         this.§!!F§.addEventListener(IOErrorEvent.IO_ERROR,this.§9,§);
         this.§!!F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9,§);
         this.§!!F§.addEventListener(ProgressEvent.PROGRESS,this.§-2§);
      }
      
      protected function §;!3§() : void
      {
         this.§!!F§.removeEventListener(Event.COMPLETE,this.§=_§);
         this.§!!F§.removeEventListener(Event.OPEN,this.§=_§);
         this.§!!F§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=_§);
         this.§!!F§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9,§);
         this.§!!F§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9,§);
         this.§!!F§.removeEventListener(ProgressEvent.PROGRESS,this.§-2§);
      }
   }
}
