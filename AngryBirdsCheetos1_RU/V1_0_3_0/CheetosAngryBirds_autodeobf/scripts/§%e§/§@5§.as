package §%e§
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
   
   public class §@5§ extends EventDispatcher
   {
      
      static const §'@§:uint = 33639248;
      
      static const §+!1§:uint = 808471376;
      
      static const §^!7§:uint = 67324752;
      
      static const §!8§:uint = 84233040;
      
      static const §-"§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §[t§:uint = 134695760;
      
      static const §8!Z§:uint = 134630224;
      
      static const §3!+§:uint = 134695760;
       
      
      protected var §#&§:Array;
      
      protected var §7j§:Dictionary;
      
      protected var §1a§:URLStream;
      
      protected var §+o§:String;
      
      protected var § !W§:Function;
      
      protected var §@n§:§5>§;
      
      protected var §<`§:ByteArray;
      
      protected var §4G§:uint;
      
      protected var §'3§:uint;
      
      public function §@5§(param1:String = "utf-8")
      {
         super();
         this.§+o§ = param1;
         this.§ !W§ = this.§=!Y§;
      }
      
      public function get §#i§() : Boolean
      {
         return this.§ !W§ !== this.§=!Y§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1a§ && this.§ !W§ == this.§=!Y§)
         {
            this.§1a§ = new URLStream();
            this.§1a§.endian = Endian.LITTLE_ENDIAN;
            this.§3!_§();
            this.§#&§ = [];
            this.§7j§ = new Dictionary();
            this.§ !W§ = this.§?!5§;
            this.§1a§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1a§ && this.§ !W§ == this.§=!Y§)
         {
            this.§#&§ = [];
            this.§7j§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§ !W§ = this.§?!5§;
            if(this.parse(param1))
            {
               this.§ !W§ = this.§=!Y§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §9!2§(§9!2§.§2Z§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1a§)
         {
            this.§ !W§ = this.§=!Y§;
            this.§+I§();
            this.§1a§.close();
            this.§1a§ = null;
         }
      }
      
      public function §`@§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§5>§ = null;
         if(param1 != null && this.§#&§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§#&§.length)
            {
               if((_loc8_ = this.§#&§[_loc7_] as §5>§) != null)
               {
                  _loc8_.§`@§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§`@§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§-"§);
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
      
      public function §2u§() : uint
      {
         return !!this.§#&§ ? uint(this.§#&§.length) : uint(0);
      }
      
      public function §-E§(param1:uint) : §5>§
      {
         return !!this.§#&§ ? this.§#&§[param1] as §5>§ : null;
      }
      
      public function §>![§(param1:String) : §5>§
      {
         return !!this.§7j§[param1] ? this.§7j§[param1] as §5>§ : null;
      }
      
      public function §"d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §5>§
      {
         return this.§#k§(!!this.§#&§ ? uint(this.§#&§.length) : uint(0),param1,param2,param3);
      }
      
      public function §<q§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §5>§
      {
         return this.§=@§(!!this.§#&§ ? uint(this.§#&§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §#k§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §5>§
      {
         if(this.§#&§ == null)
         {
            this.§#&§ = [];
         }
         if(this.§7j§ == null)
         {
            this.§7j§ = new Dictionary();
         }
         else if(this.§7j§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§5>§;
         (_loc5_ = new §5>§()).§@!?§ = param2;
         _loc5_.§#0§(param3,param4);
         if(param1 >= this.§#&§.length)
         {
            this.§#&§.push(_loc5_);
         }
         else
         {
            this.§#&§.splice(param1,0,_loc5_);
         }
         this.§7j§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §=@§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §5>§
      {
         if(this.§#&§ == null)
         {
            this.§#&§ = [];
         }
         if(this.§7j§ == null)
         {
            this.§7j§ = new Dictionary();
         }
         else if(this.§7j§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§5>§;
         (_loc6_ = new §5>§()).§@!?§ = param2;
         _loc6_.§!e§(param3,param4,param5);
         if(param1 >= this.§#&§.length)
         {
            this.§#&§.push(_loc6_);
         }
         else
         {
            this.§#&§.splice(param1,0,_loc6_);
         }
         this.§7j§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §@I§(param1:uint) : §5>§
      {
         var _loc2_:§5>§ = null;
         if(this.§#&§ != null && this.§7j§ != null && param1 < this.§#&§.length)
         {
            _loc2_ = this.§#&§[param1] as §5>§;
            if(_loc2_ != null)
            {
               this.§#&§.splice(param1,1);
               delete this.§7j§[_loc2_.§@!?§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§ !W§(param1))
         {
         }
         return this.§ !W§ === this.§=!Y§;
      }
      
      protected function §=!Y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?!5§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §^!7§:
                  this.§ !W§ = this.§;o§;
                  this.§@n§ = new §5>§(this.§+o§);
                  break;
               case §'@§:
               case §-"§:
               case §+!1§:
               case §!8§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §[t§:
               case §8!Z§:
               case §3!+§:
                  this.§ !W§ = this.§=!Y§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §;o§(param1:IDataInput) : Boolean
      {
         if(this.§@n§.parse(param1))
         {
            if(this.§@n§.§,u§)
            {
               this.§ !W§ = this.§0!`§;
               this.§<`§ = new ByteArray();
               this.§4G§ = 0;
               this.§'3§ = 0;
               return true;
            }
            this.§ _§();
            if(this.§ !W§ != this.§=!Y§)
            {
               this.§ !W§ = this.§?!5§;
               return true;
            }
         }
         return false;
      }
      
      protected function §0!`§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§4G§ = this.§4G§ >>> 8 | _loc2_ << 24;
            if(this.§4G§ == §[t§)
            {
               this.§<`§.length -= 3;
               this.§ !W§ = this.§4B§;
               return true;
            }
            this.§<`§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §4B§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§<`§.length == _loc3_)
            {
               this.§<`§.position = 0;
               this.§@n§.§`!Y§ = _loc2_;
               this.§@n§.§5!S§ = _loc3_;
               this.§@n§.§in§ = _loc4_;
               this.§@n§.§4!L§(this.§<`§);
               this.§ _§();
               this.§ !W§ = this.§?!5§;
            }
            else
            {
               this.§<`§.writeUnsignedInt(_loc2_);
               this.§<`§.writeUnsignedInt(_loc3_);
               this.§<`§.writeUnsignedInt(_loc4_);
               this.§ !W§ = this.§0!`§;
            }
            return true;
         }
         return false;
      }
      
      protected function § _§() : void
      {
         this.§#&§.push(this.§@n§);
         if(this.§@n§.§@!?§)
         {
            this.§7j§[this.§@n§.§@!?§] = this.§@n§;
         }
         dispatchEvent(new §if §(§if §.§-Y§,this.§@n§));
         this.§@n§ = null;
      }
      
      protected function §7s§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1a§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§9!2§.§2Z§))
            {
               throw e;
            }
            dispatchEvent(new §9!2§(§9!2§.§2Z§,e.message));
         }
      }
      
      protected function §?#§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §%-§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §3!_§() : void
      {
         this.§1a§.addEventListener(Event.COMPLETE,this.§?#§);
         this.§1a§.addEventListener(Event.OPEN,this.§?#§);
         this.§1a§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?#§);
         this.§1a§.addEventListener(IOErrorEvent.IO_ERROR,this.§%-§);
         this.§1a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%-§);
         this.§1a§.addEventListener(ProgressEvent.PROGRESS,this.§7s§);
      }
      
      protected function §+I§() : void
      {
         this.§1a§.removeEventListener(Event.COMPLETE,this.§?#§);
         this.§1a§.removeEventListener(Event.OPEN,this.§?#§);
         this.§1a§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?#§);
         this.§1a§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%-§);
         this.§1a§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%-§);
         this.§1a§.removeEventListener(ProgressEvent.PROGRESS,this.§7s§);
      }
   }
}
