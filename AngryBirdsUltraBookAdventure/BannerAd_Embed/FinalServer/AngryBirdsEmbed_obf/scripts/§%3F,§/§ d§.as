package §?,§
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
   
   public class § d§ extends EventDispatcher
   {
      
      static const §^Y§:uint = 33639248;
      
      static const §+V§:uint = 808471376;
      
      static const §0c§:uint = 67324752;
      
      static const §9[§:uint = 84233040;
      
      static const §6!&§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#4§:uint = 134695760;
      
      static const §%!#§:uint = 134630224;
      
      static const §`'§:uint = 134695760;
       
      
      protected var § o§:Array;
      
      protected var §!!7§:Dictionary;
      
      protected var §4!6§:URLStream;
      
      protected var §<<§:String;
      
      protected var §[6§:Function;
      
      protected var §?r§:§9b§;
      
      protected var §&w§:ByteArray;
      
      protected var §4H§:uint;
      
      protected var §,n§:uint;
      
      public function § d§(param1:String = "utf-8")
      {
         super();
         this.§<<§ = param1;
         this.§[6§ = this.§<T§;
      }
      
      public function get active() : Boolean
      {
         return this.§[6§ !== this.§<T§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§4!6§ && this.§[6§ == this.§<T§)
         {
            this.§4!6§ = new URLStream();
            this.§4!6§.endian = Endian.LITTLE_ENDIAN;
            this.§9e§();
            this.§ o§ = [];
            this.§!!7§ = new Dictionary();
            this.§[6§ = this.§!&§;
            this.§4!6§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§4!6§ && this.§[6§ == this.§<T§)
         {
            this.§ o§ = [];
            this.§!!7§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[6§ = this.§!&§;
            if(this.parse(param1))
            {
               this.§[6§ = this.§<T§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?!E§(§?!E§.§9,§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§4!6§)
         {
            this.§[6§ = this.§<T§;
            this.§[M§();
            this.§4!6§.close();
            this.§4!6§ = null;
         }
      }
      
      public function §!k§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§9b§ = null;
         if(param1 != null && this.§ o§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§ o§.length)
            {
               if((_loc8_ = this.§ o§[_loc7_] as §9b§) != null)
               {
                  _loc8_.§!k§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§!k§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§6!&§);
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
      
      public function §@! §() : uint
      {
         return !!this.§ o§ ? uint(this.§ o§.length) : uint(0);
      }
      
      public function § i§(param1:uint) : §9b§
      {
         return !!this.§ o§ ? this.§ o§[param1] as §9b§ : null;
      }
      
      public function §[m§(param1:String) : §9b§
      {
         return !!this.§!!7§[param1] ? this.§!!7§[param1] as §9b§ : null;
      }
      
      public function §9!%§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §9b§
      {
         return this.§;!'§(!!this.§ o§ ? uint(this.§ o§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,K§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §9b§
      {
         return this.§in §(!!this.§ o§ ? uint(this.§ o§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;!'§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §9b§
      {
         if(this.§ o§ == null)
         {
            this.§ o§ = [];
         }
         if(this.§!!7§ == null)
         {
            this.§!!7§ = new Dictionary();
         }
         else if(this.§!!7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§9b§;
         (_loc5_ = new §9b§()).§1§ = param2;
         _loc5_.§3I§(param3,param4);
         if(param1 >= this.§ o§.length)
         {
            this.§ o§.push(_loc5_);
         }
         else
         {
            this.§ o§.splice(param1,0,_loc5_);
         }
         this.§!!7§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §in §(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §9b§
      {
         if(this.§ o§ == null)
         {
            this.§ o§ = [];
         }
         if(this.§!!7§ == null)
         {
            this.§!!7§ = new Dictionary();
         }
         else if(this.§!!7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§9b§;
         (_loc6_ = new §9b§()).§1§ = param2;
         _loc6_.§`8§(param3,param4,param5);
         if(param1 >= this.§ o§.length)
         {
            this.§ o§.push(_loc6_);
         }
         else
         {
            this.§ o§.splice(param1,0,_loc6_);
         }
         this.§!!7§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §5!F§(param1:uint) : §9b§
      {
         var _loc2_:§9b§ = null;
         if(this.§ o§ != null && this.§!!7§ != null && param1 < this.§ o§.length)
         {
            _loc2_ = this.§ o§[param1] as §9b§;
            if(_loc2_ != null)
            {
               this.§ o§.splice(param1,1);
               delete this.§!!7§[_loc2_.§1§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[6§(param1))
         {
         }
         return this.§[6§ === this.§<T§;
      }
      
      protected function §<T§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §0c§:
                  this.§[6§ = this.§<m§;
                  this.§?r§ = new §9b§(this.§<<§);
                  break;
               case §^Y§:
               case §6!&§:
               case §+V§:
               case §9[§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §#4§:
               case §%!#§:
               case §`'§:
                  this.§[6§ = this.§<T§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §<m§(param1:IDataInput) : Boolean
      {
         if(this.§?r§.parse(param1))
         {
            if(this.§?r§.§3Q§)
            {
               this.§[6§ = this.§;!H§;
               this.§&w§ = new ByteArray();
               this.§4H§ = 0;
               this.§,n§ = 0;
               return true;
            }
            this.§,N§();
            if(this.§[6§ != this.§<T§)
            {
               this.§[6§ = this.§!&§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;!H§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§4H§ = this.§4H§ >>> 8 | _loc2_ << 24;
            if(this.§4H§ == §#4§)
            {
               this.§&w§.length -= 3;
               this.§[6§ = this.§1X§;
               return true;
            }
            this.§&w§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §1X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§&w§.length == _loc3_)
            {
               this.§&w§.position = 0;
               this.§?r§.§4B§ = _loc2_;
               this.§?r§.§5c§ = _loc3_;
               this.§?r§.§5^§ = _loc4_;
               this.§?r§.§%!;§(this.§&w§);
               this.§,N§();
               this.§[6§ = this.§!&§;
            }
            else
            {
               this.§&w§.writeUnsignedInt(_loc2_);
               this.§&w§.writeUnsignedInt(_loc3_);
               this.§&w§.writeUnsignedInt(_loc4_);
               this.§[6§ = this.§;!H§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,N§() : void
      {
         this.§ o§.push(this.§?r§);
         if(this.§?r§.§1§)
         {
            this.§!!7§[this.§?r§.§1§] = this.§?r§;
         }
         dispatchEvent(new §&m§(§&m§.§@!§,this.§?r§));
         this.§?r§ = null;
      }
      
      protected function §1G§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§4!6§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?!E§.§9,§))
            {
               throw e;
            }
            dispatchEvent(new §?!E§(§?!E§.§9,§,e.message));
         }
      }
      
      protected function §]5§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §throw§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §9e§() : void
      {
         this.§4!6§.addEventListener(Event.COMPLETE,this.§]5§);
         this.§4!6§.addEventListener(Event.OPEN,this.§]5§);
         this.§4!6§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]5§);
         this.§4!6§.addEventListener(IOErrorEvent.IO_ERROR,this.§throw§);
         this.§4!6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§throw§);
         this.§4!6§.addEventListener(ProgressEvent.PROGRESS,this.§1G§);
      }
      
      protected function §[M§() : void
      {
         this.§4!6§.removeEventListener(Event.COMPLETE,this.§]5§);
         this.§4!6§.removeEventListener(Event.OPEN,this.§]5§);
         this.§4!6§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]5§);
         this.§4!6§.removeEventListener(IOErrorEvent.IO_ERROR,this.§throw§);
         this.§4!6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§throw§);
         this.§4!6§.removeEventListener(ProgressEvent.PROGRESS,this.§1G§);
      }
   }
}
