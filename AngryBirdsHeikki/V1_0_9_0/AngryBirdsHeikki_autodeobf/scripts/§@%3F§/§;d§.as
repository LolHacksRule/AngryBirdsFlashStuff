package §@?§
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
   
   public class §;d§ extends EventDispatcher
   {
      
      static const §#H§:uint = 33639248;
      
      static const §]"§:uint = 808471376;
      
      static const §9!&§:uint = 67324752;
      
      static const §8M§:uint = 84233040;
      
      static const §^V§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §6!E§:uint = 134695760;
      
      static const §`!C§:uint = 134630224;
      
      static const §`!A§:uint = 134695760;
       
      
      protected var §2K§:Array;
      
      protected var §7C§:Dictionary;
      
      protected var §,j§:URLStream;
      
      protected var §&!E§:String;
      
      protected var §@!d§:Function;
      
      protected var §-!#§:§,<§;
      
      protected var §%!C§:ByteArray;
      
      protected var §=g§:uint;
      
      protected var §5!Z§:uint;
      
      public function §;d§(param1:String = "utf-8")
      {
         super();
         this.§&!E§ = param1;
         this.§@!d§ = this.§0@§;
      }
      
      public function get §2R§() : Boolean
      {
         return this.§@!d§ !== this.§0@§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§,j§ && this.§@!d§ == this.§0@§)
         {
            this.§,j§ = new URLStream();
            this.§,j§.endian = Endian.LITTLE_ENDIAN;
            this.§^!T§();
            this.§2K§ = [];
            this.§7C§ = new Dictionary();
            this.§@!d§ = this.§1V§;
            this.§,j§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§,j§ && this.§@!d§ == this.§0@§)
         {
            this.§2K§ = [];
            this.§7C§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§@!d§ = this.§1V§;
            if(this.parse(param1))
            {
               this.§@!d§ = this.§0@§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §+!I§(§+!I§.§2v§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§,j§)
         {
            this.§@!d§ = this.§0@§;
            this.§'e§();
            this.§,j§.close();
            this.§,j§ = null;
         }
      }
      
      public function §?p§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§,<§ = null;
         if(param1 != null && this.§2K§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§2K§.length)
            {
               if((_loc8_ = this.§2K§[_loc7_] as §,<§) != null)
               {
                  _loc8_.§?p§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§?p§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§^V§);
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
      
      public function §,h§() : uint
      {
         return !!this.§2K§ ? uint(this.§2K§.length) : uint(0);
      }
      
      public function §#S§(param1:uint) : §,<§
      {
         return !!this.§2K§ ? this.§2K§[param1] as §,<§ : null;
      }
      
      public function §7!W§(param1:String) : §,<§
      {
         return !!this.§7C§[param1] ? this.§7C§[param1] as §,<§ : null;
      }
      
      public function §&r§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,<§
      {
         return this.§1j§(!!this.§2K§ ? uint(this.§2K§.length) : uint(0),param1,param2,param3);
      }
      
      public function §4E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,<§
      {
         return this.§>!b§(!!this.§2K§ ? uint(this.§2K§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §1j§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,<§
      {
         if(this.§2K§ == null)
         {
            this.§2K§ = [];
         }
         if(this.§7C§ == null)
         {
            this.§7C§ = new Dictionary();
         }
         else if(this.§7C§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§,<§;
         (_loc5_ = new §,<§()).§<H§ = param2;
         _loc5_.§?!c§(param3,param4);
         if(param1 >= this.§2K§.length)
         {
            this.§2K§.push(_loc5_);
         }
         else
         {
            this.§2K§.splice(param1,0,_loc5_);
         }
         this.§7C§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §>!b§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,<§
      {
         if(this.§2K§ == null)
         {
            this.§2K§ = [];
         }
         if(this.§7C§ == null)
         {
            this.§7C§ = new Dictionary();
         }
         else if(this.§7C§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§,<§;
         (_loc6_ = new §,<§()).§<H§ = param2;
         _loc6_.§!z§(param3,param4,param5);
         if(param1 >= this.§2K§.length)
         {
            this.§2K§.push(_loc6_);
         }
         else
         {
            this.§2K§.splice(param1,0,_loc6_);
         }
         this.§7C§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §?!R§(param1:uint) : §,<§
      {
         var _loc2_:§,<§ = null;
         if(this.§2K§ != null && this.§7C§ != null && param1 < this.§2K§.length)
         {
            _loc2_ = this.§2K§[param1] as §,<§;
            if(_loc2_ != null)
            {
               this.§2K§.splice(param1,1);
               delete this.§7C§[_loc2_.§<H§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§@!d§(param1))
         {
         }
         return this.§@!d§ === this.§0@§;
      }
      
      protected function §0@§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1V§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §9!&§:
                  this.§@!d§ = this.§#s§;
                  this.§-!#§ = new §,<§(this.§&!E§);
                  break;
               case §#H§:
               case §^V§:
               case §]"§:
               case §8M§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §6!E§:
               case §`!C§:
               case §`!A§:
                  this.§@!d§ = this.§0@§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §#s§(param1:IDataInput) : Boolean
      {
         if(this.§-!#§.parse(param1))
         {
            if(this.§-!#§.§3!d§)
            {
               this.§@!d§ = this.§6T§;
               this.§%!C§ = new ByteArray();
               this.§=g§ = 0;
               this.§5!Z§ = 0;
               return true;
            }
            this.§1!V§();
            if(this.§@!d§ != this.§0@§)
            {
               this.§@!d§ = this.§1V§;
               return true;
            }
         }
         return false;
      }
      
      protected function §6T§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§=g§ = this.§=g§ >>> 8 | _loc2_ << 24;
            if(this.§=g§ == §6!E§)
            {
               this.§%!C§.length -= 3;
               this.§@!d§ = this.§3! §;
               return true;
            }
            this.§%!C§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §3! §(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§%!C§.length == _loc3_)
            {
               this.§%!C§.position = 0;
               this.§-!#§.§ c§ = _loc2_;
               this.§-!#§.§3j§ = _loc3_;
               this.§-!#§.§4!P§ = _loc4_;
               this.§-!#§.§2,§(this.§%!C§);
               this.§1!V§();
               this.§@!d§ = this.§1V§;
            }
            else
            {
               this.§%!C§.writeUnsignedInt(_loc2_);
               this.§%!C§.writeUnsignedInt(_loc3_);
               this.§%!C§.writeUnsignedInt(_loc4_);
               this.§@!d§ = this.§6T§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!V§() : void
      {
         this.§2K§.push(this.§-!#§);
         if(this.§-!#§.§<H§)
         {
            this.§7C§[this.§-!#§.§<H§] = this.§-!#§;
         }
         dispatchEvent(new §<3§(§<3§.§&!V§,this.§-!#§));
         this.§-!#§ = null;
      }
      
      protected function §'B§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§,j§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§+!I§.§2v§))
            {
               throw e;
            }
            dispatchEvent(new §+!I§(§+!I§.§2v§,e.message));
         }
      }
      
      protected function §?!=§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §[f§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §^!T§() : void
      {
         this.§,j§.addEventListener(Event.COMPLETE,this.§?!=§);
         this.§,j§.addEventListener(Event.OPEN,this.§?!=§);
         this.§,j§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!=§);
         this.§,j§.addEventListener(IOErrorEvent.IO_ERROR,this.§[f§);
         this.§,j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[f§);
         this.§,j§.addEventListener(ProgressEvent.PROGRESS,this.§'B§);
      }
      
      protected function §'e§() : void
      {
         this.§,j§.removeEventListener(Event.COMPLETE,this.§?!=§);
         this.§,j§.removeEventListener(Event.OPEN,this.§?!=§);
         this.§,j§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?!=§);
         this.§,j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[f§);
         this.§,j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[f§);
         this.§,j§.removeEventListener(ProgressEvent.PROGRESS,this.§'B§);
      }
   }
}
