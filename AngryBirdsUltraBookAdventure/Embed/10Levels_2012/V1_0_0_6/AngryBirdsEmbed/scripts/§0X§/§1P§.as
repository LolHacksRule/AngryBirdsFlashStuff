package §0X§
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
   
   public class §1P§ extends EventDispatcher
   {
      
      static const §]h§:uint = 33639248;
      
      static const §8!+§:uint = 808471376;
      
      static const §"!;§:uint = 67324752;
      
      static const §9c§:uint = 84233040;
      
      static const §;R§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §`!>§:uint = 134695760;
      
      static const §;!H§:uint = 134630224;
      
      static const §!o§:uint = 134695760;
       
      
      protected var §6r§:Array;
      
      protected var §1D§:Dictionary;
      
      protected var §3-§:URLStream;
      
      protected var §;Z§:String;
      
      protected var §%U§:Function;
      
      protected var §-B§:§;a§;
      
      protected var §^v§:ByteArray;
      
      protected var §]V§:uint;
      
      protected var §=!?§:uint;
      
      public function §1P§(param1:String = "utf-8")
      {
         super();
         this.§;Z§ = param1;
         this.§%U§ = this.§<]§;
      }
      
      public function get active() : Boolean
      {
         return this.§%U§ !== this.§<]§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§3-§ && this.§%U§ == this.§<]§)
         {
            this.§3-§ = new URLStream();
            this.§3-§.endian = Endian.LITTLE_ENDIAN;
            this.§^g§();
            this.§6r§ = [];
            this.§1D§ = new Dictionary();
            this.§%U§ = this.§`]§;
            this.§3-§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§3-§ && this.§%U§ == this.§<]§)
         {
            this.§6r§ = [];
            this.§1D§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§%U§ = this.§`]§;
            if(this.parse(param1))
            {
               this.§%U§ = this.§<]§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §+B§(§+B§.§3!?§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§3-§)
         {
            this.§%U§ = this.§<]§;
            this.§^!<§();
            this.§3-§.close();
            this.§3-§ = null;
         }
      }
      
      public function §&b§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§;a§ = null;
         if(param1 != null && this.§6r§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§6r§.length)
            {
               if((_loc8_ = this.§6r§[_loc7_] as §;a§) != null)
               {
                  _loc8_.§&b§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&b§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§;R§);
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
      
      public function §@V§() : uint
      {
         return !!this.§6r§ ? uint(this.§6r§.length) : uint(0);
      }
      
      public function §-r§(param1:uint) : §;a§
      {
         return !!this.§6r§ ? this.§6r§[param1] as §;a§ : null;
      }
      
      public function §<T§(param1:String) : §;a§
      {
         return !!this.§1D§[param1] ? this.§1D§[param1] as §;a§ : null;
      }
      
      public function §5Z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;a§
      {
         return this.§ k§(!!this.§6r§ ? uint(this.§6r§.length) : uint(0),param1,param2,param3);
      }
      
      public function §8p§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;a§
      {
         return this.§"%§(!!this.§6r§ ? uint(this.§6r§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function § k§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;a§
      {
         if(this.§6r§ == null)
         {
            this.§6r§ = [];
         }
         if(this.§1D§ == null)
         {
            this.§1D§ = new Dictionary();
         }
         else if(this.§1D§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§;a§;
         (_loc5_ = new §;a§()).§?s§ = param2;
         _loc5_.§-!E§(param3,param4);
         if(param1 >= this.§6r§.length)
         {
            this.§6r§.push(_loc5_);
         }
         else
         {
            this.§6r§.splice(param1,0,_loc5_);
         }
         this.§1D§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"%§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;a§
      {
         if(this.§6r§ == null)
         {
            this.§6r§ = [];
         }
         if(this.§1D§ == null)
         {
            this.§1D§ = new Dictionary();
         }
         else if(this.§1D§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§;a§;
         (_loc6_ = new §;a§()).§?s§ = param2;
         _loc6_.§8b§(param3,param4,param5);
         if(param1 >= this.§6r§.length)
         {
            this.§6r§.push(_loc6_);
         }
         else
         {
            this.§6r§.splice(param1,0,_loc6_);
         }
         this.§1D§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §?u§(param1:uint) : §;a§
      {
         var _loc2_:§;a§ = null;
         if(this.§6r§ != null && this.§1D§ != null && param1 < this.§6r§.length)
         {
            _loc2_ = this.§6r§[param1] as §;a§;
            if(_loc2_ != null)
            {
               this.§6r§.splice(param1,1);
               delete this.§1D§[_loc2_.§?s§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§%U§(param1))
         {
         }
         return this.§%U§ === this.§<]§;
      }
      
      protected function §<]§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`]§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §"!;§:
                  this.§%U§ = this.§5k§;
                  this.§-B§ = new §;a§(this.§;Z§);
                  break;
               case §]h§:
               case §;R§:
               case §8!+§:
               case §9c§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §`!>§:
               case §;!H§:
               case §!o§:
                  this.§%U§ = this.§<]§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5k§(param1:IDataInput) : Boolean
      {
         if(this.§-B§.parse(param1))
         {
            if(this.§-B§.§ I§)
            {
               this.§%U§ = this.§0h§;
               this.§^v§ = new ByteArray();
               this.§]V§ = 0;
               this.§=!?§ = 0;
               return true;
            }
            this.§%!0§();
            if(this.§%U§ != this.§<]§)
            {
               this.§%U§ = this.§`]§;
               return true;
            }
         }
         return false;
      }
      
      protected function §0h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§]V§ = this.§]V§ >>> 8 | _loc2_ << 24;
            if(this.§]V§ == §`!>§)
            {
               this.§^v§.length -= 3;
               this.§%U§ = this.§0q§;
               return true;
            }
            this.§^v§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §0q§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§^v§.length == _loc3_)
            {
               this.§^v§.position = 0;
               this.§-B§.§-!<§ = _loc2_;
               this.§-B§.§@W§ = _loc3_;
               this.§-B§.§=X§ = _loc4_;
               this.§-B§.§@K§(this.§^v§);
               this.§%!0§();
               this.§%U§ = this.§`]§;
            }
            else
            {
               this.§^v§.writeUnsignedInt(_loc2_);
               this.§^v§.writeUnsignedInt(_loc3_);
               this.§^v§.writeUnsignedInt(_loc4_);
               this.§%U§ = this.§0h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%!0§() : void
      {
         this.§6r§.push(this.§-B§);
         if(this.§-B§.§?s§)
         {
            this.§1D§[this.§-B§.§?s§] = this.§-B§;
         }
         dispatchEvent(new §+l§(§+l§.§]-§,this.§-B§));
         this.§-B§ = null;
      }
      
      protected function §?!,§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§3-§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§+B§.§3!?§))
            {
               throw e;
            }
            dispatchEvent(new §+B§(§+B§.§3!?§,e.message));
         }
      }
      
      protected function §5>§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9!!§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §^g§() : void
      {
         this.§3-§.addEventListener(Event.COMPLETE,this.§5>§);
         this.§3-§.addEventListener(Event.OPEN,this.§5>§);
         this.§3-§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
         this.§3-§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!!§);
         this.§3-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!!§);
         this.§3-§.addEventListener(ProgressEvent.PROGRESS,this.§?!,§);
      }
      
      protected function §^!<§() : void
      {
         this.§3-§.removeEventListener(Event.COMPLETE,this.§5>§);
         this.§3-§.removeEventListener(Event.OPEN,this.§5>§);
         this.§3-§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5>§);
         this.§3-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!!§);
         this.§3-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!!§);
         this.§3-§.removeEventListener(ProgressEvent.PROGRESS,this.§?!,§);
      }
   }
}
