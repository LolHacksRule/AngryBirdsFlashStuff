package §6!=§
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
   
   public class §";§ extends EventDispatcher
   {
      
      static const §#c§:uint = 33639248;
      
      static const §[!#§:uint = 808471376;
      
      static const §67§:uint = 67324752;
      
      static const §?w§:uint = 84233040;
      
      static const §9h§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §'!b§:uint = 134695760;
      
      static const §0!K§:uint = 134630224;
      
      static const §0f§:uint = 134695760;
       
      
      protected var §2a§:Array;
      
      protected var §2O§:Dictionary;
      
      protected var §=k§:URLStream;
      
      protected var §`!5§:String;
      
      protected var §@g§:Function;
      
      protected var §?!5§:§implements§;
      
      protected var §;!I§:ByteArray;
      
      protected var §8!X§:uint;
      
      protected var §8r§:uint;
      
      public function §";§(param1:String = "utf-8")
      {
         super();
         this.§`!5§ = param1;
         this.§@g§ = this.§2!!§;
      }
      
      public function get §8d§() : Boolean
      {
         return this.§@g§ !== this.§2!!§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§=k§ && this.§@g§ == this.§2!!§)
         {
            this.§=k§ = new URLStream();
            this.§=k§.endian = Endian.LITTLE_ENDIAN;
            this.§!6§();
            this.§2a§ = [];
            this.§2O§ = new Dictionary();
            this.§@g§ = this.§try§;
            this.§=k§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§=k§ && this.§@g§ == this.§2!!§)
         {
            this.§2a§ = [];
            this.§2O§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§@g§ = this.§try§;
            if(this.parse(param1))
            {
               this.§@g§ = this.§2!!§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §7!§(§7!§.§ !X§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§=k§)
         {
            this.§@g§ = this.§2!!§;
            this.§-k§();
            this.§=k§.close();
            this.§=k§ = null;
         }
      }
      
      public function §7C§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§implements§ = null;
         if(param1 != null && this.§2a§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§2a§.length)
            {
               if((_loc8_ = this.§2a§[_loc7_] as §implements§) != null)
               {
                  _loc8_.§7C§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§7C§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9h§);
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
      
      public function §0!I§() : uint
      {
         return !!this.§2a§ ? uint(this.§2a§.length) : uint(0);
      }
      
      public function §=h§(param1:uint) : §implements§
      {
         return !!this.§2a§ ? this.§2a§[param1] as §implements§ : null;
      }
      
      public function §>!§(param1:String) : §implements§
      {
         return !!this.§2O§[param1] ? this.§2O§[param1] as §implements§ : null;
      }
      
      public function §5p§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §implements§
      {
         return this.§,1§(!!this.§2a§ ? uint(this.§2a§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,?§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §implements§
      {
         return this.§?<§(!!this.§2a§ ? uint(this.§2a§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §,1§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §implements§
      {
         if(this.§2a§ == null)
         {
            this.§2a§ = [];
         }
         if(this.§2O§ == null)
         {
            this.§2O§ = new Dictionary();
         }
         else if(this.§2O§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§implements§;
         (_loc5_ = new §implements§()).§,i§ = param2;
         _loc5_.§0!S§(param3,param4);
         if(param1 >= this.§2a§.length)
         {
            this.§2a§.push(_loc5_);
         }
         else
         {
            this.§2a§.splice(param1,0,_loc5_);
         }
         this.§2O§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §?<§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §implements§
      {
         if(this.§2a§ == null)
         {
            this.§2a§ = [];
         }
         if(this.§2O§ == null)
         {
            this.§2O§ = new Dictionary();
         }
         else if(this.§2O§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§implements§;
         (_loc6_ = new §implements§()).§,i§ = param2;
         _loc6_.§#!R§(param3,param4,param5);
         if(param1 >= this.§2a§.length)
         {
            this.§2a§.push(_loc6_);
         }
         else
         {
            this.§2a§.splice(param1,0,_loc6_);
         }
         this.§2O§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §<!$§(param1:uint) : §implements§
      {
         var _loc2_:§implements§ = null;
         if(this.§2a§ != null && this.§2O§ != null && param1 < this.§2a§.length)
         {
            _loc2_ = this.§2a§[param1] as §implements§;
            if(_loc2_ != null)
            {
               this.§2a§.splice(param1,1);
               delete this.§2O§[_loc2_.§,i§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@g§(param1))
         {
         }
         return this.§@g§ === this.§2!!§;
      }
      
      protected function §2!!§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §try§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §67§:
                  this.§@g§ = this.§-,§;
                  this.§?!5§ = new §implements§(this.§`!5§);
                  break;
               case §#c§:
               case §9h§:
               case §[!#§:
               case §?w§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §'!b§:
               case §0!K§:
               case §0f§:
                  this.§@g§ = this.§2!!§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-,§(param1:IDataInput) : Boolean
      {
         if(this.§?!5§.parse(param1))
         {
            if(this.§?!5§.§false§)
            {
               this.§@g§ = this.§8c§;
               this.§;!I§ = new ByteArray();
               this.§8!X§ = 0;
               this.§8r§ = 0;
               return true;
            }
            this.§>!R§();
            if(this.§@g§ != this.§2!!§)
            {
               this.§@g§ = this.§try§;
               return true;
            }
         }
         return false;
      }
      
      protected function §8c§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§8!X§ = this.§8!X§ >>> 8 | _loc2_ << 24;
            if(this.§8!X§ == §'!b§)
            {
               this.§;!I§.length -= 3;
               this.§@g§ = this.§-!C§;
               return true;
            }
            this.§;!I§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-!C§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§;!I§.length == _loc3_)
            {
               this.§;!I§.position = 0;
               this.§?!5§.§@!2§ = _loc2_;
               this.§?!5§.§5w§ = _loc3_;
               this.§?!5§.§68§ = _loc4_;
               this.§?!5§.§;Q§(this.§;!I§);
               this.§>!R§();
               this.§@g§ = this.§try§;
            }
            else
            {
               this.§;!I§.writeUnsignedInt(_loc2_);
               this.§;!I§.writeUnsignedInt(_loc3_);
               this.§;!I§.writeUnsignedInt(_loc4_);
               this.§@g§ = this.§8c§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>!R§() : void
      {
         this.§2a§.push(this.§?!5§);
         if(this.§?!5§.§,i§)
         {
            this.§2O§[this.§?!5§.§,i§] = this.§?!5§;
         }
         dispatchEvent(new §0@§(§0@§.§%!H§,this.§?!5§));
         this.§?!5§ = null;
      }
      
      protected function §>!%§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§=k§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§7!§.§ !X§))
            {
               throw e;
            }
            dispatchEvent(new §7!§(§7!§.§ !X§,e.message));
         }
      }
      
      protected function §-h§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §1!W§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §!6§() : void
      {
         this.§=k§.addEventListener(Event.COMPLETE,this.§-h§);
         this.§=k§.addEventListener(Event.OPEN,this.§-h§);
         this.§=k§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-h§);
         this.§=k§.addEventListener(IOErrorEvent.IO_ERROR,this.§1!W§);
         this.§=k§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!W§);
         this.§=k§.addEventListener(ProgressEvent.PROGRESS,this.§>!%§);
      }
      
      protected function §-k§() : void
      {
         this.§=k§.removeEventListener(Event.COMPLETE,this.§-h§);
         this.§=k§.removeEventListener(Event.OPEN,this.§-h§);
         this.§=k§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-h§);
         this.§=k§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1!W§);
         this.§=k§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!W§);
         this.§=k§.removeEventListener(ProgressEvent.PROGRESS,this.§>!%§);
      }
   }
}
