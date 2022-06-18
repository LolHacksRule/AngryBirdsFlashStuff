package each
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
   
   public class §24§ extends EventDispatcher
   {
      
      static const §=!=§:uint = 33639248;
      
      static const §%4§:uint = 808471376;
      
      static const §6!-§:uint = 67324752;
      
      static const §2!H§:uint = 84233040;
      
      static const §9@§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §`S§:uint = 134695760;
      
      static const §<!6§:uint = 134630224;
      
      static const §%L§:uint = 134695760;
       
      
      protected var §8!>§:Array;
      
      protected var §9§:Dictionary;
      
      protected var §`<§:URLStream;
      
      protected var §6N§:String;
      
      protected var §`8§:Function;
      
      protected var §!W§:§]>§;
      
      protected var §9v§:ByteArray;
      
      protected var §[!B§:uint;
      
      protected var §#e§:uint;
      
      public function §24§(param1:String = "utf-8")
      {
         super();
         this.§6N§ = param1;
         this.§`8§ = this.§=&§;
      }
      
      public function get active() : Boolean
      {
         return this.§`8§ !== this.§=&§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§`<§ && this.§`8§ == this.§=&§)
         {
            this.§`<§ = new URLStream();
            this.§`<§.endian = Endian.LITTLE_ENDIAN;
            this.§^!"§();
            this.§8!>§ = [];
            this.§9§ = new Dictionary();
            this.§`8§ = this.§,l§;
            this.§`<§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§`<§ && this.§`8§ == this.§=&§)
         {
            this.§8!>§ = [];
            this.§9§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§`8§ = this.§,l§;
            if(this.parse(param1))
            {
               this.§`8§ = this.§=&§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §;h§(§;h§.§1!!§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§`<§)
         {
            this.§`8§ = this.§=&§;
            this.§implements§();
            this.§`<§.close();
            this.§`<§ = null;
         }
      }
      
      public function §5x§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§]>§ = null;
         if(param1 != null && this.§8!>§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§8!>§.length)
            {
               if((_loc8_ = this.§8!>§[_loc7_] as §]>§) != null)
               {
                  _loc8_.§5x§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§5x§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9@§);
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
      
      public function §9X§() : uint
      {
         return !!this.§8!>§ ? uint(this.§8!>§.length) : uint(0);
      }
      
      public function §8Q§(param1:uint) : §]>§
      {
         return !!this.§8!>§ ? this.§8!>§[param1] as §]>§ : null;
      }
      
      public function §;k§(param1:String) : §]>§
      {
         return !!this.§9§[param1] ? this.§9§[param1] as §]>§ : null;
      }
      
      public function §+!=§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]>§
      {
         return this.§%j§(!!this.§8!>§ ? uint(this.§8!>§.length) : uint(0),param1,param2,param3);
      }
      
      public function § !E§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]>§
      {
         return this.§+B§(!!this.§8!>§ ? uint(this.§8!>§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §%j§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]>§
      {
         if(this.§8!>§ == null)
         {
            this.§8!>§ = [];
         }
         if(this.§9§ == null)
         {
            this.§9§ = new Dictionary();
         }
         else if(this.§9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§]>§;
         (_loc5_ = new §]>§()).§case § = param2;
         _loc5_.§6!1§(param3,param4);
         if(param1 >= this.§8!>§.length)
         {
            this.§8!>§.push(_loc5_);
         }
         else
         {
            this.§8!>§.splice(param1,0,_loc5_);
         }
         this.§9§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §+B§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]>§
      {
         if(this.§8!>§ == null)
         {
            this.§8!>§ = [];
         }
         if(this.§9§ == null)
         {
            this.§9§ = new Dictionary();
         }
         else if(this.§9§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§]>§;
         (_loc6_ = new §]>§()).§case § = param2;
         _loc6_.§"!9§(param3,param4,param5);
         if(param1 >= this.§8!>§.length)
         {
            this.§8!>§.push(_loc6_);
         }
         else
         {
            this.§8!>§.splice(param1,0,_loc6_);
         }
         this.§9§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §"!#§(param1:uint) : §]>§
      {
         var _loc2_:§]>§ = null;
         if(this.§8!>§ != null && this.§9§ != null && param1 < this.§8!>§.length)
         {
            _loc2_ = this.§8!>§[param1] as §]>§;
            if(_loc2_ != null)
            {
               this.§8!>§.splice(param1,1);
               delete this.§9§[_loc2_.§case §];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`8§(param1))
         {
         }
         return this.§`8§ === this.§=&§;
      }
      
      protected function §=&§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,l§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §6!-§:
                  this.§`8§ = this.§8U§;
                  this.§!W§ = new §]>§(this.§6N§);
                  break;
               case §=!=§:
               case §9@§:
               case §%4§:
               case §2!H§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §`S§:
               case §<!6§:
               case §%L§:
                  this.§`8§ = this.§=&§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §8U§(param1:IDataInput) : Boolean
      {
         if(this.§!W§.parse(param1))
         {
            if(this.§!W§.§!!!§)
            {
               this.§`8§ = this.§0h§;
               this.§9v§ = new ByteArray();
               this.§[!B§ = 0;
               this.§#e§ = 0;
               return true;
            }
            this.§-i§();
            if(this.§`8§ != this.§=&§)
            {
               this.§`8§ = this.§,l§;
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
            this.§[!B§ = this.§[!B§ >>> 8 | _loc2_ << 24;
            if(this.§[!B§ == §`S§)
            {
               this.§9v§.length -= 3;
               this.§`8§ = this.§,!0§;
               return true;
            }
            this.§9v§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §,!0§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§9v§.length == _loc3_)
            {
               this.§9v§.position = 0;
               this.§!W§.§,g§ = _loc2_;
               this.§!W§.§>E§ = _loc3_;
               this.§!W§.§!O§ = _loc4_;
               this.§!W§.§[I§(this.§9v§);
               this.§-i§();
               this.§`8§ = this.§,l§;
            }
            else
            {
               this.§9v§.writeUnsignedInt(_loc2_);
               this.§9v§.writeUnsignedInt(_loc3_);
               this.§9v§.writeUnsignedInt(_loc4_);
               this.§`8§ = this.§0h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-i§() : void
      {
         this.§8!>§.push(this.§!W§);
         if(this.§!W§.§case §)
         {
            this.§9§[this.§!W§.§case §] = this.§!W§;
         }
         dispatchEvent(new § '§(§ '§.§ K§,this.§!W§));
         this.§!W§ = null;
      }
      
      protected function §,p§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§`<§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§;h§.§1!!§))
            {
               throw e;
            }
            dispatchEvent(new §;h§(§;h§.§1!!§,e.message));
         }
      }
      
      protected function §9H§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §^f§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §^!"§() : void
      {
         this.§`<§.addEventListener(Event.COMPLETE,this.§9H§);
         this.§`<§.addEventListener(Event.OPEN,this.§9H§);
         this.§`<§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9H§);
         this.§`<§.addEventListener(IOErrorEvent.IO_ERROR,this.§^f§);
         this.§`<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^f§);
         this.§`<§.addEventListener(ProgressEvent.PROGRESS,this.§,p§);
      }
      
      protected function §implements§() : void
      {
         this.§`<§.removeEventListener(Event.COMPLETE,this.§9H§);
         this.§`<§.removeEventListener(Event.OPEN,this.§9H§);
         this.§`<§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9H§);
         this.§`<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^f§);
         this.§`<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^f§);
         this.§`<§.removeEventListener(ProgressEvent.PROGRESS,this.§,p§);
      }
   }
}
