package §9!3§
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
   
   public class §=!6§ extends EventDispatcher
   {
      
      static const §=9§:uint = 33639248;
      
      static const §8L§:uint = 808471376;
      
      static const §%c§:uint = 67324752;
      
      static const §8"§:uint = 84233040;
      
      static const §<B§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §?V§:uint = 134695760;
      
      static const §?!5§:uint = 134630224;
      
      static const §[!§:uint = 134695760;
       
      
      protected var §catch§:Array;
      
      protected var §`Y§:Dictionary;
      
      protected var §4!G§:URLStream;
      
      protected var §'!1§:String;
      
      protected var § N§:Function;
      
      protected var §=1§:§;G§;
      
      protected var §6K§:ByteArray;
      
      protected var §,!§:uint;
      
      protected var §`8§:uint;
      
      public function §=!6§(param1:String = "utf-8")
      {
         super();
         this.§'!1§ = param1;
         this.§ N§ = this.§+'§;
      }
      
      public function get active() : Boolean
      {
         return this.§ N§ !== this.§+'§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§4!G§ && this.§ N§ == this.§+'§)
         {
            this.§4!G§ = new URLStream();
            this.§4!G§.endian = Endian.LITTLE_ENDIAN;
            this.§ L§();
            this.§catch§ = [];
            this.§`Y§ = new Dictionary();
            this.§ N§ = this.§`!@§;
            this.§4!G§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§4!G§ && this.§ N§ == this.§+'§)
         {
            this.§catch§ = [];
            this.§`Y§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§ N§ = this.§`!@§;
            if(this.parse(param1))
            {
               this.§ N§ = this.§+'§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §-Q§(§-Q§.§=!>§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§4!G§)
         {
            this.§ N§ = this.§+'§;
            this.§@!0§();
            this.§4!G§.close();
            this.§4!G§ = null;
         }
      }
      
      public function §"`§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§;G§ = null;
         if(param1 != null && this.§catch§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§catch§.length)
            {
               if((_loc8_ = this.§catch§[_loc7_] as §;G§) != null)
               {
                  _loc8_.§"`§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§"`§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§<B§);
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
      
      public function §#!,§() : uint
      {
         return !!this.§catch§ ? uint(this.§catch§.length) : uint(0);
      }
      
      public function §1!D§(param1:uint) : §;G§
      {
         return !!this.§catch§ ? this.§catch§[param1] as §;G§ : null;
      }
      
      public function §`j§(param1:String) : §;G§
      {
         return !!this.§`Y§[param1] ? this.§`Y§[param1] as §;G§ : null;
      }
      
      public function §98§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §;G§
      {
         return this.§!f§(!!this.§catch§ ? uint(this.§catch§.length) : uint(0),param1,param2,param3);
      }
      
      public function §"P§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §;G§
      {
         return this.§"§(!!this.§catch§ ? uint(this.§catch§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §!f§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §;G§
      {
         if(this.§catch§ == null)
         {
            this.§catch§ = [];
         }
         if(this.§`Y§ == null)
         {
            this.§`Y§ = new Dictionary();
         }
         else if(this.§`Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§;G§;
         (_loc5_ = new §;G§()).§;V§ = param2;
         _loc5_.§?l§(param3,param4);
         if(param1 >= this.§catch§.length)
         {
            this.§catch§.push(_loc5_);
         }
         else
         {
            this.§catch§.splice(param1,0,_loc5_);
         }
         this.§`Y§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §;G§
      {
         if(this.§catch§ == null)
         {
            this.§catch§ = [];
         }
         if(this.§`Y§ == null)
         {
            this.§`Y§ = new Dictionary();
         }
         else if(this.§`Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§;G§;
         (_loc6_ = new §;G§()).§;V§ = param2;
         _loc6_.§;!#§(param3,param4,param5);
         if(param1 >= this.§catch§.length)
         {
            this.§catch§.push(_loc6_);
         }
         else
         {
            this.§catch§.splice(param1,0,_loc6_);
         }
         this.§`Y§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §!!D§(param1:uint) : §;G§
      {
         var _loc2_:§;G§ = null;
         if(this.§catch§ != null && this.§`Y§ != null && param1 < this.§catch§.length)
         {
            _loc2_ = this.§catch§[param1] as §;G§;
            if(_loc2_ != null)
            {
               this.§catch§.splice(param1,1);
               delete this.§`Y§[_loc2_.§;V§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§ N§(param1))
         {
         }
         return this.§ N§ === this.§+'§;
      }
      
      protected function §+'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`!@§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §%c§:
                  this.§ N§ = this.§+!C§;
                  this.§=1§ = new §;G§(this.§'!1§);
                  break;
               case §=9§:
               case §<B§:
               case §8L§:
               case §8"§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §?V§:
               case §?!5§:
               case §[!§:
                  this.§ N§ = this.§+'§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §+!C§(param1:IDataInput) : Boolean
      {
         if(this.§=1§.parse(param1))
         {
            if(this.§=1§.§-!C§)
            {
               this.§ N§ = this.§"!4§;
               this.§6K§ = new ByteArray();
               this.§,!§ = 0;
               this.§`8§ = 0;
               return true;
            }
            this.§^!=§();
            if(this.§ N§ != this.§+'§)
            {
               this.§ N§ = this.§`!@§;
               return true;
            }
         }
         return false;
      }
      
      protected function §"!4§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§,!§ = this.§,!§ >>> 8 | _loc2_ << 24;
            if(this.§,!§ == §?V§)
            {
               this.§6K§.length -= 3;
               this.§ N§ = this.§+%§;
               return true;
            }
            this.§6K§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §+%§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§6K§.length == _loc3_)
            {
               this.§6K§.position = 0;
               this.§=1§.§3!@§ = _loc2_;
               this.§=1§.§?!7§ = _loc3_;
               this.§=1§.§5H§ = _loc4_;
               this.§=1§.§,?§(this.§6K§);
               this.§^!=§();
               this.§ N§ = this.§`!@§;
            }
            else
            {
               this.§6K§.writeUnsignedInt(_loc2_);
               this.§6K§.writeUnsignedInt(_loc3_);
               this.§6K§.writeUnsignedInt(_loc4_);
               this.§ N§ = this.§"!4§;
            }
            return true;
         }
         return false;
      }
      
      protected function §^!=§() : void
      {
         this.§catch§.push(this.§=1§);
         if(this.§=1§.§;V§)
         {
            this.§`Y§[this.§=1§.§;V§] = this.§=1§;
         }
         dispatchEvent(new §`S§(§`S§.§>"§,this.§=1§));
         this.§=1§ = null;
      }
      
      protected function §0l§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§4!G§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§-Q§.§=!>§))
            {
               throw e;
            }
            dispatchEvent(new §-Q§(§-Q§.§=!>§,e.message));
         }
      }
      
      protected function § !H§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §=C§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § L§() : void
      {
         this.§4!G§.addEventListener(Event.COMPLETE,this.§ !H§);
         this.§4!G§.addEventListener(Event.OPEN,this.§ !H§);
         this.§4!G§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !H§);
         this.§4!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§=C§);
         this.§4!G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=C§);
         this.§4!G§.addEventListener(ProgressEvent.PROGRESS,this.§0l§);
      }
      
      protected function §@!0§() : void
      {
         this.§4!G§.removeEventListener(Event.COMPLETE,this.§ !H§);
         this.§4!G§.removeEventListener(Event.OPEN,this.§ !H§);
         this.§4!G§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !H§);
         this.§4!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=C§);
         this.§4!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=C§);
         this.§4!G§.removeEventListener(ProgressEvent.PROGRESS,this.§0l§);
      }
   }
}
