package §_-UC§
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
   
   public class §_-vw§ extends EventDispatcher
   {
      
      static const §_-VM§:uint = 33639248;
      
      static const §_-mz§:uint = 808471376;
      
      static const §_-9I§:uint = 67324752;
      
      static const §_-So§:uint = 84233040;
      
      static const §_-jS§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-L§:uint = 134695760;
      
      static const §_-Nv§:uint = 134630224;
      
      static const §_-HM§:uint = 134695760;
       
      
      protected var §_-4U§:Array;
      
      protected var §_-ei§:Dictionary;
      
      protected var §_-Oz§:URLStream;
      
      protected var §_-70§:String;
      
      protected var §_-jN§:Function;
      
      protected var §_-0o§:§_-o§;
      
      protected var §_-qq§:ByteArray;
      
      protected var §_-2h§:uint;
      
      protected var §_-6H§:uint;
      
      public function §_-vw§(param1:String = "utf-8")
      {
         super();
         this.§_-70§ = param1;
         this.§_-jN§ = this.§_-V6§;
      }
      
      public function get §_-TG§() : Boolean
      {
         return this.§_-jN§ !== this.§_-V6§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-Oz§ && this.§_-jN§ == this.§_-V6§)
         {
            this.§_-Oz§ = new URLStream();
            this.§_-Oz§.endian = Endian.LITTLE_ENDIAN;
            this.§_-Kn§();
            this.§_-4U§ = [];
            this.§_-ei§ = new Dictionary();
            this.§_-jN§ = this.§_-pR§;
            this.§_-Oz§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-Oz§ && this.§_-jN§ == this.§_-V6§)
         {
            this.§_-4U§ = [];
            this.§_-ei§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-jN§ = this.§_-pR§;
            if(this.§_-Qq§(param1))
            {
               this.§_-jN§ = this.§_-V6§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §get §(§get §.§_-Vm§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-Oz§)
         {
            this.§_-jN§ = this.§_-V6§;
            this.§_-JT§();
            this.§_-Oz§.close();
            this.§_-Oz§ = null;
         }
      }
      
      public function §_-eo§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-o§ = null;
         if(param1 != null && this.§_-4U§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-4U§.length)
            {
               if((_loc8_ = this.§_-4U§[_loc7_] as §_-o§) != null)
               {
                  _loc8_.§_-eo§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-eo§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-jS§);
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
      
      public function §_-pu§() : uint
      {
         return !!this.§_-4U§ ? uint(this.§_-4U§.length) : uint(0);
      }
      
      public function §_-i1§(param1:uint) : §_-o§
      {
         return !!this.§_-4U§ ? this.§_-4U§[param1] as §_-o§ : null;
      }
      
      public function §_-X9§(param1:String) : §_-o§
      {
         return !!this.§_-ei§[param1] ? this.§_-ei§[param1] as §_-o§ : null;
      }
      
      public function §_-vo§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-o§
      {
         return this.§_-qR§(!!this.§_-4U§ ? uint(this.§_-4U§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-7f§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-o§
      {
         return this.§_-pA§(!!this.§_-4U§ ? uint(this.§_-4U§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-qR§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-o§
      {
         if(this.§_-4U§ == null)
         {
            this.§_-4U§ = [];
         }
         if(this.§_-ei§ == null)
         {
            this.§_-ei§ = new Dictionary();
         }
         else if(this.§_-ei§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-o§;
         (_loc5_ = new §_-o§()).§_-3K§ = param2;
         _loc5_.§_-zk§(param3,param4);
         if(param1 >= this.§_-4U§.length)
         {
            this.§_-4U§.push(_loc5_);
         }
         else
         {
            this.§_-4U§.splice(param1,0,_loc5_);
         }
         this.§_-ei§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-pA§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-o§
      {
         if(this.§_-4U§ == null)
         {
            this.§_-4U§ = [];
         }
         if(this.§_-ei§ == null)
         {
            this.§_-ei§ = new Dictionary();
         }
         else if(this.§_-ei§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-o§;
         (_loc6_ = new §_-o§()).§_-3K§ = param2;
         _loc6_.§_-td§(param3,param4,param5);
         if(param1 >= this.§_-4U§.length)
         {
            this.§_-4U§.push(_loc6_);
         }
         else
         {
            this.§_-4U§.splice(param1,0,_loc6_);
         }
         this.§_-ei§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-mQ§(param1:uint) : §_-o§
      {
         var _loc2_:§_-o§ = null;
         if(this.§_-4U§ != null && this.§_-ei§ != null && param1 < this.§_-4U§.length)
         {
            _loc2_ = this.§_-4U§[param1] as §_-o§;
            if(_loc2_ != null)
            {
               this.§_-4U§.splice(param1,1);
               delete this.§_-ei§[_loc2_.§_-3K§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function §_-Qq§(param1:IDataInput) : Boolean
      {
         while(this.§_-jN§(param1))
         {
         }
         return this.§_-jN§ === this.§_-V6§;
      }
      
      protected function §_-V6§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-pR§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-9I§:
                  this.§_-jN§ = this.§_-kZ§;
                  this.§_-0o§ = new §_-o§(this.§_-70§);
                  break;
               case §_-VM§:
               case §_-jS§:
               case §_-mz§:
               case §_-So§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-L§:
               case §_-Nv§:
               case §_-HM§:
                  this.§_-jN§ = this.§_-V6§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-kZ§(param1:IDataInput) : Boolean
      {
         if(this.§_-0o§.§_-Qq§(param1))
         {
            if(this.§_-0o§.§_-Yi§)
            {
               this.§_-jN§ = this.§_-sF§;
               this.§_-qq§ = new ByteArray();
               this.§_-2h§ = 0;
               this.§_-6H§ = 0;
               return true;
            }
            this.§_-uo§();
            if(this.§_-jN§ != this.§_-V6§)
            {
               this.§_-jN§ = this.§_-pR§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-sF§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-2h§ = this.§_-2h§ >>> 8 | _loc2_ << 24;
            if(this.§_-2h§ == §_-L§)
            {
               this.§_-qq§.length -= 3;
               this.§_-jN§ = this.§_-T1§;
               return true;
            }
            this.§_-qq§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-T1§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-qq§.length == _loc3_)
            {
               this.§_-qq§.position = 0;
               this.§_-0o§.§_-YE§ = _loc2_;
               this.§_-0o§.§_-fV§ = _loc3_;
               this.§_-0o§.§_-wE§ = _loc4_;
               this.§_-0o§.§_-QG§(this.§_-qq§);
               this.§_-uo§();
               this.§_-jN§ = this.§_-pR§;
            }
            else
            {
               this.§_-qq§.writeUnsignedInt(_loc2_);
               this.§_-qq§.writeUnsignedInt(_loc3_);
               this.§_-qq§.writeUnsignedInt(_loc4_);
               this.§_-jN§ = this.§_-sF§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-uo§() : void
      {
         this.§_-4U§.push(this.§_-0o§);
         if(this.§_-0o§.§_-3K§)
         {
            this.§_-ei§[this.§_-0o§.§_-3K§] = this.§_-0o§;
         }
         dispatchEvent(new §_-uB§(§_-uB§.§_-Qs§,this.§_-0o§));
         this.§_-0o§ = null;
      }
      
      protected function §_-Yl§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.§_-Qq§(this.§_-Oz§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§get §.§_-Vm§))
            {
               throw e;
            }
            dispatchEvent(new §get §(§get §.§_-Vm§,e.message));
         }
      }
      
      protected function §_-ci§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Eq§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Kn§() : void
      {
         this.§_-Oz§.addEventListener(Event.COMPLETE,this.§_-ci§);
         this.§_-Oz§.addEventListener(Event.OPEN,this.§_-ci§);
         this.§_-Oz§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ci§);
         this.§_-Oz§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Eq§);
         this.§_-Oz§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Eq§);
         this.§_-Oz§.addEventListener(ProgressEvent.PROGRESS,this.§_-Yl§);
      }
      
      protected function §_-JT§() : void
      {
         this.§_-Oz§.removeEventListener(Event.COMPLETE,this.§_-ci§);
         this.§_-Oz§.removeEventListener(Event.OPEN,this.§_-ci§);
         this.§_-Oz§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ci§);
         this.§_-Oz§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Eq§);
         this.§_-Oz§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Eq§);
         this.§_-Oz§.removeEventListener(ProgressEvent.PROGRESS,this.§_-Yl§);
      }
   }
}
