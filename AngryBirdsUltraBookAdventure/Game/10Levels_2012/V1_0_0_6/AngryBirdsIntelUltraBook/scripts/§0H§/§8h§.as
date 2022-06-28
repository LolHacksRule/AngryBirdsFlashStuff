package §0H§
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
   
   public class §8h§ extends EventDispatcher
   {
      
      static const §+9§:uint = 33639248;
      
      static const §[!b§:uint = 808471376;
      
      static const § R§:uint = 67324752;
      
      static const §]0§:uint = 84233040;
      
      static const §7!M§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6b§:uint = 134695760;
      
      static const §^!w§:uint = 134630224;
      
      static const §<R§:uint = 134695760;
       
      
      protected var §6q§:Array;
      
      protected var §2h§:Dictionary;
      
      protected var §2!2§:URLStream;
      
      protected var §%5§:String;
      
      protected var §@!R§:Function;
      
      protected var §<w§:§?K§;
      
      protected var §"d§:ByteArray;
      
      protected var §9x§:uint;
      
      protected var §4X§:uint;
      
      public function §8h§(param1:String = "utf-8")
      {
         super();
         this.§%5§ = param1;
         this.§@!R§ = this.§8I§;
      }
      
      public function get §2!8§() : Boolean
      {
         return this.§@!R§ !== this.§8I§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§2!2§ && this.§@!R§ == this.§8I§)
         {
            this.§2!2§ = new URLStream();
            this.§2!2§.endian = Endian.LITTLE_ENDIAN;
            this.§"!%§();
            this.§6q§ = [];
            this.§2h§ = new Dictionary();
            this.§@!R§ = this.§<C§;
            this.§2!2§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§2!2§ && this.§@!R§ == this.§8I§)
         {
            this.§6q§ = [];
            this.§2h§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§@!R§ = this.§<C§;
            if(this.parse(param1))
            {
               this.§@!R§ = this.§8I§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'!U§(§'!U§.§2!v§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§2!2§)
         {
            this.§@!R§ = this.§8I§;
            this.§1!b§();
            this.§2!2§.close();
            this.§2!2§ = null;
         }
      }
      
      public function §-!p§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§?K§ = null;
         if(param1 != null && this.§6q§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§6q§.length)
            {
               if((_loc8_ = this.§6q§[_loc7_] as §?K§) != null)
               {
                  _loc8_.§-!p§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§-!p§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§7!M§);
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
      
      public function §5!5§() : uint
      {
         return !!this.§6q§ ? uint(this.§6q§.length) : uint(0);
      }
      
      public function §-m§(param1:uint) : §?K§
      {
         return !!this.§6q§ ? this.§6q§[param1] as §?K§ : null;
      }
      
      public function §0!r§(param1:String) : §?K§
      {
         return !!this.§2h§[param1] ? this.§2h§[param1] as §?K§ : null;
      }
      
      public function §!!Y§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §?K§
      {
         return this.§&n§(!!this.§6q§ ? uint(this.§6q§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^5§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §?K§
      {
         return this.§?j§(!!this.§6q§ ? uint(this.§6q§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §&n§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §?K§
      {
         if(this.§6q§ == null)
         {
            this.§6q§ = [];
         }
         if(this.§2h§ == null)
         {
            this.§2h§ = new Dictionary();
         }
         else if(this.§2h§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§?K§;
         (_loc5_ = new §?K§()).§-F§ = param2;
         _loc5_.§1!0§(param3,param4);
         if(param1 >= this.§6q§.length)
         {
            this.§6q§.push(_loc5_);
         }
         else
         {
            this.§6q§.splice(param1,0,_loc5_);
         }
         this.§2h§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §?j§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §?K§
      {
         if(this.§6q§ == null)
         {
            this.§6q§ = [];
         }
         if(this.§2h§ == null)
         {
            this.§2h§ = new Dictionary();
         }
         else if(this.§2h§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§?K§;
         (_loc6_ = new §?K§()).§-F§ = param2;
         _loc6_.§'!C§(param3,param4,param5);
         if(param1 >= this.§6q§.length)
         {
            this.§6q§.push(_loc6_);
         }
         else
         {
            this.§6q§.splice(param1,0,_loc6_);
         }
         this.§2h§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §2]§(param1:uint) : §?K§
      {
         var _loc2_:§?K§ = null;
         if(this.§6q§ != null && this.§2h§ != null && param1 < this.§6q§.length)
         {
            _loc2_ = this.§6q§[param1] as §?K§;
            if(_loc2_ != null)
            {
               this.§6q§.splice(param1,1);
               delete this.§2h§[_loc2_.§-F§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!R§(param1))
         {
         }
         return this.§@!R§ === this.§8I§;
      }
      
      protected function §8I§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<C§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case § R§:
                  this.§@!R§ = this.§8j§;
                  this.§<w§ = new §?K§(this.§%5§);
                  break;
               case §+9§:
               case §7!M§:
               case §[!b§:
               case §]0§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §6b§:
               case §^!w§:
               case §<R§:
                  this.§@!R§ = this.§8I§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §8j§(param1:IDataInput) : Boolean
      {
         if(this.§<w§.parse(param1))
         {
            if(this.§<w§.§>!;§)
            {
               this.§@!R§ = this.§1!"§;
               this.§"d§ = new ByteArray();
               this.§9x§ = 0;
               this.§4X§ = 0;
               return true;
            }
            this.§>!O§();
            if(this.§@!R§ != this.§8I§)
            {
               this.§@!R§ = this.§<C§;
               return true;
            }
         }
         return false;
      }
      
      protected function §1!"§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§9x§ = this.§9x§ >>> 8 | _loc2_ << 24;
            if(this.§9x§ == §6b§)
            {
               this.§"d§.length -= 3;
               this.§@!R§ = this.§7t§;
               return true;
            }
            this.§"d§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §7t§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§"d§.length == _loc3_)
            {
               this.§"d§.position = 0;
               this.§<w§.§5!1§ = _loc2_;
               this.§<w§.§1!3§ = _loc3_;
               this.§<w§.§4B§ = _loc4_;
               this.§<w§.§7f§(this.§"d§);
               this.§>!O§();
               this.§@!R§ = this.§<C§;
            }
            else
            {
               this.§"d§.writeUnsignedInt(_loc2_);
               this.§"d§.writeUnsignedInt(_loc3_);
               this.§"d§.writeUnsignedInt(_loc4_);
               this.§@!R§ = this.§1!"§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>!O§() : void
      {
         this.§6q§.push(this.§<w§);
         if(this.§<w§.§-F§)
         {
            this.§2h§[this.§<w§.§-F§] = this.§<w§;
         }
         dispatchEvent(new §5#§(§5#§.§0!t§,this.§<w§));
         this.§<w§ = null;
      }
      
      protected function §;q§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§2!2§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'!U§.§2!v§))
            {
               throw e;
            }
            dispatchEvent(new §'!U§(§'!U§.§2!v§,e.message));
         }
      }
      
      protected function §&g§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §1o§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"!%§() : void
      {
         this.§2!2§.addEventListener(Event.COMPLETE,this.§&g§);
         this.§2!2§.addEventListener(Event.OPEN,this.§&g§);
         this.§2!2§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&g§);
         this.§2!2§.addEventListener(IOErrorEvent.IO_ERROR,this.§1o§);
         this.§2!2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1o§);
         this.§2!2§.addEventListener(ProgressEvent.PROGRESS,this.§;q§);
      }
      
      protected function §1!b§() : void
      {
         this.§2!2§.removeEventListener(Event.COMPLETE,this.§&g§);
         this.§2!2§.removeEventListener(Event.OPEN,this.§&g§);
         this.§2!2§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&g§);
         this.§2!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1o§);
         this.§2!2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1o§);
         this.§2!2§.removeEventListener(ProgressEvent.PROGRESS,this.§;q§);
      }
   }
}
