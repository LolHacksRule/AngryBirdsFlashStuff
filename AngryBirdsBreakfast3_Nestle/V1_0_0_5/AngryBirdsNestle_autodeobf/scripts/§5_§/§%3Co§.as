package §5_§
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
   
   public class §<o§ extends EventDispatcher
   {
      
      static const §]=§:uint = 33639248;
      
      static const §5!D§:uint = 808471376;
      
      static const §-V§:uint = 67324752;
      
      static const §8!;§:uint = 84233040;
      
      static const §&8§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §8!F§:uint = 134695760;
      
      static const §3!0§:uint = 134630224;
      
      static const §=!§:uint = 134695760;
       
      
      protected var §"!<§:Array;
      
      protected var §7S§:Dictionary;
      
      protected var §7§:URLStream;
      
      protected var §'!R§:String;
      
      protected var §="$§:Function;
      
      protected var §="-§:§2w§;
      
      protected var §?l§:ByteArray;
      
      protected var §&!R§:uint;
      
      protected var §2!_§:uint;
      
      public function §<o§(param1:String = "utf-8")
      {
         super();
         this.§'!R§ = param1;
         this.§="$§ = this.§9!y§;
      }
      
      public function get active() : Boolean
      {
         return this.§="$§ !== this.§9!y§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§7§ && this.§="$§ == this.§9!y§)
         {
            this.§7§ = new URLStream();
            this.§7§.endian = Endian.LITTLE_ENDIAN;
            this.§3!!§();
            this.§"!<§ = [];
            this.§7S§ = new Dictionary();
            this.§="$§ = this.§>!2§;
            this.§7§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§7§ && this.§="$§ == this.§9!y§)
         {
            this.§"!<§ = [];
            this.§7S§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§="$§ = this.§>!2§;
            if(this.parse(param1))
            {
               this.§="$§ = this.§9!y§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §8!+§(§8!+§.§<l§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§7§)
         {
            this.§="$§ = this.§9!y§;
            this.§`!9§();
            this.§7§.close();
            this.§7§ = null;
         }
      }
      
      public function §[!"§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§2w§ = null;
         if(param1 != null && this.§"!<§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§"!<§.length)
            {
               if((_loc8_ = this.§"!<§[_loc7_] as §2w§) != null)
               {
                  _loc8_.§[!"§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§[!"§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§&8§);
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
      
      public function §'t§() : uint
      {
         return !!this.§"!<§ ? uint(this.§"!<§.length) : uint(0);
      }
      
      public function §]!t§(param1:uint) : §2w§
      {
         return !!this.§"!<§ ? this.§"!<§[param1] as §2w§ : null;
      }
      
      public function §%;§(param1:String) : §2w§
      {
         return !!this.§7S§[param1] ? this.§7S§[param1] as §2w§ : null;
      }
      
      public function §%!!§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §2w§
      {
         return this.§4?§(!!this.§"!<§ ? uint(this.§"!<§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;i§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §2w§
      {
         return this.§0!C§(!!this.§"!<§ ? uint(this.§"!<§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §4?§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §2w§
      {
         if(this.§"!<§ == null)
         {
            this.§"!<§ = [];
         }
         if(this.§7S§ == null)
         {
            this.§7S§ = new Dictionary();
         }
         else if(this.§7S§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§2w§;
         (_loc5_ = new §2w§()).§ !P§ = param2;
         _loc5_.§15§(param3,param4);
         if(param1 >= this.§"!<§.length)
         {
            this.§"!<§.push(_loc5_);
         }
         else
         {
            this.§"!<§.splice(param1,0,_loc5_);
         }
         this.§7S§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §0!C§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §2w§
      {
         if(this.§"!<§ == null)
         {
            this.§"!<§ = [];
         }
         if(this.§7S§ == null)
         {
            this.§7S§ = new Dictionary();
         }
         else if(this.§7S§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§2w§;
         (_loc6_ = new §2w§()).§ !P§ = param2;
         _loc6_.§%o§(param3,param4,param5);
         if(param1 >= this.§"!<§.length)
         {
            this.§"!<§.push(_loc6_);
         }
         else
         {
            this.§"!<§.splice(param1,0,_loc6_);
         }
         this.§7S§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §8![§(param1:uint) : §2w§
      {
         var _loc2_:§2w§ = null;
         if(this.§"!<§ != null && this.§7S§ != null && param1 < this.§"!<§.length)
         {
            _loc2_ = this.§"!<§[param1] as §2w§;
            if(_loc2_ != null)
            {
               this.§"!<§.splice(param1,1);
               delete this.§7S§[_loc2_.§ !P§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§="$§(param1))
         {
         }
         return this.§="$§ === this.§9!y§;
      }
      
      protected function §9!y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>!2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §-V§:
                  this.§="$§ = this.§3!U§;
                  this.§="-§ = new §2w§(this.§'!R§);
                  break;
               case §]=§:
               case §&8§:
               case §5!D§:
               case §8!;§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §8!F§:
               case §3!0§:
               case §=!§:
                  this.§="$§ = this.§9!y§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §3!U§(param1:IDataInput) : Boolean
      {
         if(this.§="-§.parse(param1))
         {
            if(this.§="-§.§0!_§)
            {
               this.§="$§ = this.§%V§;
               this.§?l§ = new ByteArray();
               this.§&!R§ = 0;
               this.§2!_§ = 0;
               return true;
            }
            this.§[s§();
            if(this.§="$§ != this.§9!y§)
            {
               this.§="$§ = this.§>!2§;
               return true;
            }
         }
         return false;
      }
      
      protected function §%V§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§&!R§ = this.§&!R§ >>> 8 | _loc2_ << 24;
            if(this.§&!R§ == §8!F§)
            {
               this.§?l§.length -= 3;
               this.§="$§ = this.§5b§;
               return true;
            }
            this.§?l§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §5b§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§?l§.length == _loc3_)
            {
               this.§?l§.position = 0;
               this.§="-§.§"!b§ = _loc2_;
               this.§="-§.§+"1§ = _loc3_;
               this.§="-§.§8!T§ = _loc4_;
               this.§="-§.parseContent(this.§?l§);
               this.§[s§();
               this.§="$§ = this.§>!2§;
            }
            else
            {
               this.§?l§.writeUnsignedInt(_loc2_);
               this.§?l§.writeUnsignedInt(_loc3_);
               this.§?l§.writeUnsignedInt(_loc4_);
               this.§="$§ = this.§%V§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[s§() : void
      {
         this.§"!<§.push(this.§="-§);
         if(this.§="-§.§ !P§)
         {
            this.§7S§[this.§="-§.§ !P§] = this.§="-§;
         }
         dispatchEvent(new §+0§(§+0§.§!K§,this.§="-§));
         this.§="-§ = null;
      }
      
      protected function §%g§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§7§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§8!+§.§<l§))
            {
               throw e;
            }
            dispatchEvent(new §8!+§(§8!+§.§<l§,e.message));
         }
      }
      
      protected function §!!&§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §3!!§() : void
      {
         this.§7§.addEventListener(Event.COMPLETE,this.§!!&§);
         this.§7§.addEventListener(Event.OPEN,this.§!!&§);
         this.§7§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!&§);
         this.§7§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§7§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§7§.addEventListener(ProgressEvent.PROGRESS,this.§%g§);
      }
      
      protected function §`!9§() : void
      {
         this.§7§.removeEventListener(Event.COMPLETE,this.§!!&§);
         this.§7§.removeEventListener(Event.OPEN,this.§!!&§);
         this.§7§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!!&§);
         this.§7§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§7§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§7§.removeEventListener(ProgressEvent.PROGRESS,this.§%g§);
      }
   }
}
