package §_-AI§
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
   
   public class §_-4Z§ extends EventDispatcher
   {
      
      static const §_-Sy§:uint = 33639248;
      
      static const §_-uW§:uint = 808471376;
      
      static const §_-2G§:uint = 67324752;
      
      static const §_-R8§:uint = 84233040;
      
      static const §_-a5§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-Nz§:uint = 134695760;
      
      static const §_-IG§:uint = 134630224;
      
      static const §_-4x§:uint = 134695760;
       
      
      protected var §_-6y§:Array;
      
      protected var §_-Ii§:Dictionary;
      
      protected var §_-jH§:URLStream;
      
      protected var §_-ji§:String;
      
      protected var §_-bE§:Function;
      
      protected var §_-7Q§:§_-Ul§;
      
      protected var §_-fu§:ByteArray;
      
      protected var §_-jJ§:uint;
      
      protected var §_-tj§:uint;
      
      public function §_-4Z§(param1:String = "utf-8")
      {
         super();
         this.§_-ji§ = param1;
         this.§_-bE§ = this.§switch§;
      }
      
      public function get §_-NW§() : Boolean
      {
         return this.§_-bE§ !== this.§switch§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-jH§ && this.§_-bE§ == this.§switch§)
         {
            this.§_-jH§ = new URLStream();
            this.§_-jH§.endian = Endian.LITTLE_ENDIAN;
            this.§_-2P§();
            this.§_-6y§ = [];
            this.§_-Ii§ = new Dictionary();
            this.§_-bE§ = this.§_-Rx§;
            this.§_-jH§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-jH§ && this.§_-bE§ == this.§switch§)
         {
            this.§_-6y§ = [];
            this.§_-Ii§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-bE§ = this.§_-Rx§;
            if(this.parse(param1))
            {
               this.§_-bE§ = this.§switch§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-Fi§(§_-Fi§.§_-E§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-jH§)
         {
            this.§_-bE§ = this.§switch§;
            this.§_-69§();
            this.§_-jH§.close();
            this.§_-jH§ = null;
         }
      }
      
      public function §_-rU§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-Ul§ = null;
         if(param1 != null && this.§_-6y§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-6y§.length)
            {
               if((_loc8_ = this.§_-6y§[_loc7_] as §_-Ul§) != null)
               {
                  _loc8_.§_-rU§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-rU§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-a5§);
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
      
      public function §_-Mf§() : uint
      {
         return !!this.§_-6y§ ? uint(this.§_-6y§.length) : uint(0);
      }
      
      public function §_-60§(param1:uint) : §_-Ul§
      {
         return !!this.§_-6y§ ? this.§_-6y§[param1] as §_-Ul§ : null;
      }
      
      public function §_-l0§(param1:String) : §_-Ul§
      {
         return !!this.§_-Ii§[param1] ? this.§_-Ii§[param1] as §_-Ul§ : null;
      }
      
      public function §_-iU§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-Ul§
      {
         return this.§_-YX§(!!this.§_-6y§ ? uint(this.§_-6y§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-Rj§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-Ul§
      {
         return this.§_-wS§(!!this.§_-6y§ ? uint(this.§_-6y§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-YX§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-Ul§
      {
         if(this.§_-6y§ == null)
         {
            this.§_-6y§ = [];
         }
         if(this.§_-Ii§ == null)
         {
            this.§_-Ii§ = new Dictionary();
         }
         else if(this.§_-Ii§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-Ul§;
         (_loc5_ = new §_-Ul§()).§_-XE§ = param2;
         _loc5_.§_-Ib§(param3,param4);
         if(param1 >= this.§_-6y§.length)
         {
            this.§_-6y§.push(_loc5_);
         }
         else
         {
            this.§_-6y§.splice(param1,0,_loc5_);
         }
         this.§_-Ii§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-wS§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-Ul§
      {
         if(this.§_-6y§ == null)
         {
            this.§_-6y§ = [];
         }
         if(this.§_-Ii§ == null)
         {
            this.§_-Ii§ = new Dictionary();
         }
         else if(this.§_-Ii§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-Ul§;
         (_loc6_ = new §_-Ul§()).§_-XE§ = param2;
         _loc6_.§_-ix§(param3,param4,param5);
         if(param1 >= this.§_-6y§.length)
         {
            this.§_-6y§.push(_loc6_);
         }
         else
         {
            this.§_-6y§.splice(param1,0,_loc6_);
         }
         this.§_-Ii§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-3Y§(param1:uint) : §_-Ul§
      {
         var _loc2_:§_-Ul§ = null;
         if(this.§_-6y§ != null && this.§_-Ii§ != null && param1 < this.§_-6y§.length)
         {
            _loc2_ = this.§_-6y§[param1] as §_-Ul§;
            if(_loc2_ != null)
            {
               this.§_-6y§.splice(param1,1);
               delete this.§_-Ii§[_loc2_.§_-XE§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-bE§(param1))
         {
         }
         return this.§_-bE§ === this.§switch§;
      }
      
      protected function §switch§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-Rx§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-2G§:
                  this.§_-bE§ = this.§_-iM§;
                  this.§_-7Q§ = new §_-Ul§(this.§_-ji§);
                  break;
               case §_-Sy§:
               case §_-a5§:
               case §_-uW§:
               case §_-R8§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-Nz§:
               case §_-IG§:
               case §_-4x§:
                  this.§_-bE§ = this.§switch§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-iM§(param1:IDataInput) : Boolean
      {
         if(this.§_-7Q§.parse(param1))
         {
            if(this.§_-7Q§.§_-VH§)
            {
               this.§_-bE§ = this.§_-OL§;
               this.§_-fu§ = new ByteArray();
               this.§_-jJ§ = 0;
               this.§_-tj§ = 0;
               return true;
            }
            this.§_-aQ§();
            if(this.§_-bE§ != this.§switch§)
            {
               this.§_-bE§ = this.§_-Rx§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-OL§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-jJ§ = this.§_-jJ§ >>> 8 | _loc2_ << 24;
            if(this.§_-jJ§ == §_-Nz§)
            {
               this.§_-fu§.length -= 3;
               this.§_-bE§ = this.§_-jm§;
               return true;
            }
            this.§_-fu§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-jm§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-fu§.length == _loc3_)
            {
               this.§_-fu§.position = 0;
               this.§_-7Q§.§_-Mx§ = _loc2_;
               this.§_-7Q§.§_-YW§ = _loc3_;
               this.§_-7Q§.§_-Bf§ = _loc4_;
               this.§_-7Q§.§_-HX§(this.§_-fu§);
               this.§_-aQ§();
               this.§_-bE§ = this.§_-Rx§;
            }
            else
            {
               this.§_-fu§.writeUnsignedInt(_loc2_);
               this.§_-fu§.writeUnsignedInt(_loc3_);
               this.§_-fu§.writeUnsignedInt(_loc4_);
               this.§_-bE§ = this.§_-OL§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-aQ§() : void
      {
         this.§_-6y§.push(this.§_-7Q§);
         if(this.§_-7Q§.§_-XE§)
         {
            this.§_-Ii§[this.§_-7Q§.§_-XE§] = this.§_-7Q§;
         }
         dispatchEvent(new §_-vk§(§_-vk§.§_-8n§,this.§_-7Q§));
         this.§_-7Q§ = null;
      }
      
      protected function §_-pA§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-jH§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-Fi§.§_-E§))
            {
               throw e;
            }
            dispatchEvent(new §_-Fi§(§_-Fi§.§_-E§,e.message));
         }
      }
      
      protected function §_-gD§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Xa§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-2P§() : void
      {
         this.§_-jH§.addEventListener(Event.COMPLETE,this.§_-gD§);
         this.§_-jH§.addEventListener(Event.OPEN,this.§_-gD§);
         this.§_-jH§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-gD§);
         this.§_-jH§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Xa§);
         this.§_-jH§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Xa§);
         this.§_-jH§.addEventListener(ProgressEvent.PROGRESS,this.§_-pA§);
      }
      
      protected function §_-69§() : void
      {
         this.§_-jH§.removeEventListener(Event.COMPLETE,this.§_-gD§);
         this.§_-jH§.removeEventListener(Event.OPEN,this.§_-gD§);
         this.§_-jH§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-gD§);
         this.§_-jH§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Xa§);
         this.§_-jH§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Xa§);
         this.§_-jH§.removeEventListener(ProgressEvent.PROGRESS,this.§_-pA§);
      }
   }
}
