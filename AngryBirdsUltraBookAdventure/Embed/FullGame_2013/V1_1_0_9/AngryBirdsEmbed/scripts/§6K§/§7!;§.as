package §6K§
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
   
   public class §7!;§ extends EventDispatcher
   {
      
      static const §-!&§:uint = 33639248;
      
      static const §9@§:uint = 808471376;
      
      static const §&!M§:uint = 67324752;
      
      static const §4[§:uint = 84233040;
      
      static const §]X§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §8!-§:uint = 134695760;
      
      static const §>_§:uint = 134630224;
      
      static const §#!2§:uint = 134695760;
       
      
      protected var §set §:Array;
      
      protected var §7c§:Dictionary;
      
      protected var §;H§:URLStream;
      
      protected var §6I§:String;
      
      protected var §`i§:Function;
      
      protected var §!&§:§,$§;
      
      protected var §=_§:ByteArray;
      
      protected var §[%§:uint;
      
      protected var §;^§:uint;
      
      public function §7!;§(param1:String = "utf-8")
      {
         super();
         this.§6I§ = param1;
         this.§`i§ = this.§#b§;
      }
      
      public function get active() : Boolean
      {
         return this.§`i§ !== this.§#b§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;H§ && this.§`i§ == this.§#b§)
         {
            this.§;H§ = new URLStream();
            this.§;H§.endian = Endian.LITTLE_ENDIAN;
            this.§"!%§();
            this.§set § = [];
            this.§7c§ = new Dictionary();
            this.§`i§ = this.§62§;
            this.§;H§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;H§ && this.§`i§ == this.§#b§)
         {
            this.§set § = [];
            this.§7c§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§`i§ = this.§62§;
            if(this.parse(param1))
            {
               this.§`i§ = this.§#b§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'x§(§'x§.§2L§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;H§)
         {
            this.§`i§ = this.§#b§;
            this.§>g§();
            this.§;H§.close();
            this.§;H§ = null;
         }
      }
      
      public function §[!A§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§,$§ = null;
         if(param1 != null && this.§set §.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§set §.length)
            {
               if((_loc8_ = this.§set §[_loc7_] as §,$§) != null)
               {
                  _loc8_.§[!A§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§[!A§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§]X§);
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
      
      public function §%!'§() : uint
      {
         return !!this.§set § ? uint(this.§set §.length) : uint(0);
      }
      
      public function §@_§(param1:uint) : §,$§
      {
         return !!this.§set § ? this.§set §[param1] as §,$§ : null;
      }
      
      public function § +§(param1:String) : §,$§
      {
         return !!this.§7c§[param1] ? this.§7c§[param1] as §,$§ : null;
      }
      
      public function §>!L§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §,$§
      {
         return this.§6o§(!!this.§set § ? uint(this.§set §.length) : uint(0),param1,param2,param3);
      }
      
      public function §-w§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §,$§
      {
         return this.§!R§(!!this.§set § ? uint(this.§set §.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §6o§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §,$§
      {
         if(this.§set § == null)
         {
            this.§set § = [];
         }
         if(this.§7c§ == null)
         {
            this.§7c§ = new Dictionary();
         }
         else if(this.§7c§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§,$§;
         (_loc5_ = new §,$§()).§%;§ = param2;
         _loc5_.§98§(param3,param4);
         if(param1 >= this.§set §.length)
         {
            this.§set §.push(_loc5_);
         }
         else
         {
            this.§set §.splice(param1,0,_loc5_);
         }
         this.§7c§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §!R§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §,$§
      {
         if(this.§set § == null)
         {
            this.§set § = [];
         }
         if(this.§7c§ == null)
         {
            this.§7c§ = new Dictionary();
         }
         else if(this.§7c§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§,$§;
         (_loc6_ = new §,$§()).§%;§ = param2;
         _loc6_.§#h§(param3,param4,param5);
         if(param1 >= this.§set §.length)
         {
            this.§set §.push(_loc6_);
         }
         else
         {
            this.§set §.splice(param1,0,_loc6_);
         }
         this.§7c§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §;3§(param1:uint) : §,$§
      {
         var _loc2_:§,$§ = null;
         if(this.§set § != null && this.§7c§ != null && param1 < this.§set §.length)
         {
            _loc2_ = this.§set §[param1] as §,$§;
            if(_loc2_ != null)
            {
               this.§set §.splice(param1,1);
               delete this.§7c§[_loc2_.§%;§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`i§(param1))
         {
         }
         return this.§`i§ === this.§#b§;
      }
      
      protected function §#b§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §62§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §&!M§:
                  this.§`i§ = this.§;E§;
                  this.§!&§ = new §,$§(this.§6I§);
                  break;
               case §-!&§:
               case §]X§:
               case §9@§:
               case §4[§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §8!-§:
               case §>_§:
               case §#!2§:
                  this.§`i§ = this.§#b§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §;E§(param1:IDataInput) : Boolean
      {
         if(this.§!&§.parse(param1))
         {
            if(this.§!&§.§<!H§)
            {
               this.§`i§ = this.§2v§;
               this.§=_§ = new ByteArray();
               this.§[%§ = 0;
               this.§;^§ = 0;
               return true;
            }
            this.§ !4§();
            if(this.§`i§ != this.§#b§)
            {
               this.§`i§ = this.§62§;
               return true;
            }
         }
         return false;
      }
      
      protected function §2v§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§[%§ = this.§[%§ >>> 8 | _loc2_ << 24;
            if(this.§[%§ == §8!-§)
            {
               this.§=_§.length -= 3;
               this.§`i§ = this.§-b§;
               return true;
            }
            this.§=_§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-b§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§=_§.length == _loc3_)
            {
               this.§=_§.position = 0;
               this.§!&§.§-!6§ = _loc2_;
               this.§!&§.§-y§ = _loc3_;
               this.§!&§.§"!L§ = _loc4_;
               this.§!&§.§&i§(this.§=_§);
               this.§ !4§();
               this.§`i§ = this.§62§;
            }
            else
            {
               this.§=_§.writeUnsignedInt(_loc2_);
               this.§=_§.writeUnsignedInt(_loc3_);
               this.§=_§.writeUnsignedInt(_loc4_);
               this.§`i§ = this.§2v§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !4§() : void
      {
         this.§set §.push(this.§!&§);
         if(this.§!&§.§%;§)
         {
            this.§7c§[this.§!&§.§%;§] = this.§!&§;
         }
         dispatchEvent(new §#J§(§#J§.§ Y§,this.§!&§));
         this.§!&§ = null;
      }
      
      protected function §"G§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;H§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'x§.§2L§))
            {
               throw e;
            }
            dispatchEvent(new §'x§(§'x§.§2L§,e.message));
         }
      }
      
      protected function §9W§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function § J§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §"!%§() : void
      {
         this.§;H§.addEventListener(Event.COMPLETE,this.§9W§);
         this.§;H§.addEventListener(Event.OPEN,this.§9W§);
         this.§;H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9W§);
         this.§;H§.addEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
         this.§;H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         this.§;H§.addEventListener(ProgressEvent.PROGRESS,this.§"G§);
      }
      
      protected function §>g§() : void
      {
         this.§;H§.removeEventListener(Event.COMPLETE,this.§9W§);
         this.§;H§.removeEventListener(Event.OPEN,this.§9W§);
         this.§;H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9W§);
         this.§;H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
         this.§;H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         this.§;H§.removeEventListener(ProgressEvent.PROGRESS,this.§"G§);
      }
   }
}
