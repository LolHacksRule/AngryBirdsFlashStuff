package §2"$§
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
   
   public class §1!h§ extends EventDispatcher
   {
      
      static const §?!2§:uint = 33639248;
      
      static const §=!$§:uint = 808471376;
      
      static const §<D§:uint = 67324752;
      
      static const §&2§:uint = 84233040;
      
      static const §^!L§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §;t§:uint = 134695760;
      
      static const §2K§:uint = 134630224;
      
      static const §?!6§:uint = 134695760;
       
      
      protected var §7>§:Array;
      
      protected var §^!i§:Dictionary;
      
      protected var §^!I§:URLStream;
      
      protected var §^![§:String;
      
      protected var §<!o§:Function;
      
      protected var §<;§:§=!,§;
      
      protected var §<+§:ByteArray;
      
      protected var §^l§:uint;
      
      protected var §%U§:uint;
      
      public function §1!h§(param1:String = "utf-8")
      {
         super();
         this.§^![§ = param1;
         this.§<!o§ = this.§+y§;
      }
      
      public function get §6!@§() : Boolean
      {
         return this.§<!o§ !== this.§+y§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§^!I§ && this.§<!o§ == this.§+y§)
         {
            this.§^!I§ = new URLStream();
            this.§^!I§.endian = Endian.LITTLE_ENDIAN;
            this.§7b§();
            this.§7>§ = [];
            this.§^!i§ = new Dictionary();
            this.§<!o§ = this.§?w§;
            this.§^!I§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§^!I§ && this.§<!o§ == this.§+y§)
         {
            this.§7>§ = [];
            this.§^!i§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§<!o§ = this.§?w§;
            if(this.parse(param1))
            {
               this.§<!o§ = this.§+y§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §9!$§(§9!$§.§?B§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§^!I§)
         {
            this.§<!o§ = this.§+y§;
            this.§^?§();
            this.§^!I§.close();
            this.§^!I§ = null;
         }
      }
      
      public function §,!4§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§=!,§ = null;
         if(param1 != null && this.§7>§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7>§.length)
            {
               if((_loc8_ = this.§7>§[_loc7_] as §=!,§) != null)
               {
                  _loc8_.§,!4§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§,!4§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§^!L§);
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
      
      public function §]r§() : uint
      {
         return !!this.§7>§ ? uint(this.§7>§.length) : uint(0);
      }
      
      public function §2t§(param1:uint) : §=!,§
      {
         return !!this.§7>§ ? this.§7>§[param1] as §=!,§ : null;
      }
      
      public function §+!L§(param1:String) : §=!,§
      {
         return !!this.§^!i§[param1] ? this.§^!i§[param1] as §=!,§ : null;
      }
      
      public function §8!3§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §=!,§
      {
         return this.§!!;§(!!this.§7>§ ? uint(this.§7>§.length) : uint(0),param1,param2,param3);
      }
      
      public function §9B§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §=!,§
      {
         return this.§?!h§(!!this.§7>§ ? uint(this.§7>§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §!!;§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §=!,§
      {
         if(this.§7>§ == null)
         {
            this.§7>§ = [];
         }
         if(this.§^!i§ == null)
         {
            this.§^!i§ = new Dictionary();
         }
         else if(this.§^!i§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§=!,§;
         (_loc5_ = new §=!,§()).§=!;§ = param2;
         _loc5_.§^4§(param3,param4);
         if(param1 >= this.§7>§.length)
         {
            this.§7>§.push(_loc5_);
         }
         else
         {
            this.§7>§.splice(param1,0,_loc5_);
         }
         this.§^!i§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §?!h§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §=!,§
      {
         if(this.§7>§ == null)
         {
            this.§7>§ = [];
         }
         if(this.§^!i§ == null)
         {
            this.§^!i§ = new Dictionary();
         }
         else if(this.§^!i§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§=!,§;
         (_loc6_ = new §=!,§()).§=!;§ = param2;
         _loc6_.§&p§(param3,param4,param5);
         if(param1 >= this.§7>§.length)
         {
            this.§7>§.push(_loc6_);
         }
         else
         {
            this.§7>§.splice(param1,0,_loc6_);
         }
         this.§^!i§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §6!-§(param1:uint) : §=!,§
      {
         var _loc2_:§=!,§ = null;
         if(this.§7>§ != null && this.§^!i§ != null && param1 < this.§7>§.length)
         {
            _loc2_ = this.§7>§[param1] as §=!,§;
            if(_loc2_ != null)
            {
               this.§7>§.splice(param1,1);
               delete this.§^!i§[_loc2_.§=!;§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§<!o§(param1))
         {
         }
         return this.§<!o§ === this.§+y§;
      }
      
      protected function §+y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?w§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §<D§:
                  this.§<!o§ = this.§?a§;
                  this.§<;§ = new §=!,§(this.§^![§);
                  break;
               case §?!2§:
               case §^!L§:
               case §=!$§:
               case §&2§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §;t§:
               case §2K§:
               case §?!6§:
                  this.§<!o§ = this.§+y§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §?a§(param1:IDataInput) : Boolean
      {
         if(this.§<;§.parse(param1))
         {
            if(this.§<;§.§#U§)
            {
               this.§<!o§ = this.§5!=§;
               this.§<+§ = new ByteArray();
               this.§^l§ = 0;
               this.§%U§ = 0;
               return true;
            }
            this.§,!#§();
            if(this.§<!o§ != this.§+y§)
            {
               this.§<!o§ = this.§?w§;
               return true;
            }
         }
         return false;
      }
      
      protected function §5!=§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§^l§ = this.§^l§ >>> 8 | _loc2_ << 24;
            if(this.§^l§ == §;t§)
            {
               this.§<+§.length -= 3;
               this.§<!o§ = this.§9r§;
               return true;
            }
            this.§<+§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §9r§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§<+§.length == _loc3_)
            {
               this.§<+§.position = 0;
               this.§<;§.§!!f§ = _loc2_;
               this.§<;§.§9$§ = _loc3_;
               this.§<;§.§%Z§ = _loc4_;
               this.§<;§.§<6§(this.§<+§);
               this.§,!#§();
               this.§<!o§ = this.§?w§;
            }
            else
            {
               this.§<+§.writeUnsignedInt(_loc2_);
               this.§<+§.writeUnsignedInt(_loc3_);
               this.§<+§.writeUnsignedInt(_loc4_);
               this.§<!o§ = this.§5!=§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,!#§() : void
      {
         this.§7>§.push(this.§<;§);
         if(this.§<;§.§=!;§)
         {
            this.§^!i§[this.§<;§.§=!;§] = this.§<;§;
         }
         dispatchEvent(new §<!0§(§<!0§.§5!-§,this.§<;§));
         this.§<;§ = null;
      }
      
      protected function §!!$§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§^!I§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§9!$§.§?B§))
            {
               throw e;
            }
            dispatchEvent(new §9!$§(§9!$§.§?B§,e.message));
         }
      }
      
      protected function §;!&§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §7`§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §7b§() : void
      {
         this.§^!I§.addEventListener(Event.COMPLETE,this.§;!&§);
         this.§^!I§.addEventListener(Event.OPEN,this.§;!&§);
         this.§^!I§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!&§);
         this.§^!I§.addEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
         this.§^!I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
         this.§^!I§.addEventListener(ProgressEvent.PROGRESS,this.§!!$§);
      }
      
      protected function §^?§() : void
      {
         this.§^!I§.removeEventListener(Event.COMPLETE,this.§;!&§);
         this.§^!I§.removeEventListener(Event.OPEN,this.§;!&§);
         this.§^!I§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!&§);
         this.§^!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7`§);
         this.§^!I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7`§);
         this.§^!I§.removeEventListener(ProgressEvent.PROGRESS,this.§!!$§);
      }
   }
}
