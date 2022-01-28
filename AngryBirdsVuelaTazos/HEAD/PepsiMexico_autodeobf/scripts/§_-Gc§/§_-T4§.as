package §_-Gc§
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
   
   public class §_-T4§ extends EventDispatcher
   {
      
      static const §_-fi§:uint = 33639248;
      
      static const §_-d9§:uint = 808471376;
      
      static const §_-xJ§:uint = 67324752;
      
      static const §_-nn§:uint = 84233040;
      
      static const §_-Qq§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-SQ§:uint = 134695760;
      
      static const §_-uW§:uint = 134630224;
      
      static const §_-w8§:uint = 134695760;
       
      
      protected var §_-zF§:Array;
      
      protected var §_-9t§:Dictionary;
      
      protected var §_-jT§:URLStream;
      
      protected var §_-Pn§:String;
      
      protected var §_-X0§:Function;
      
      protected var §_-SJ§:§_-rQ§;
      
      protected var §_-LC§:ByteArray;
      
      protected var §_-Lp§:uint;
      
      protected var §_-eZ§:uint;
      
      public function §_-T4§(param1:String = "utf-8")
      {
         super();
         this.§_-Pn§ = param1;
         this.§_-X0§ = this.§_-oM§;
      }
      
      public function get §_-yn§() : Boolean
      {
         return this.§_-X0§ !== this.§_-oM§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-jT§ && this.§_-X0§ == this.§_-oM§)
         {
            this.§_-jT§ = new URLStream();
            this.§_-jT§.endian = Endian.LITTLE_ENDIAN;
            this.§_-8K§();
            this.§_-zF§ = [];
            this.§_-9t§ = new Dictionary();
            this.§_-X0§ = this.§_-kx§;
            this.§_-jT§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-jT§ && this.§_-X0§ == this.§_-oM§)
         {
            this.§_-zF§ = [];
            this.§_-9t§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-X0§ = this.§_-kx§;
            if(this.parse(param1))
            {
               this.§_-X0§ = this.§_-oM§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-eG§(§_-eG§.§_-Zb§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-jT§)
         {
            this.§_-X0§ = this.§_-oM§;
            this.§_-Mg§();
            this.§_-jT§.close();
            this.§_-jT§ = null;
         }
      }
      
      public function §_-nh§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-rQ§ = null;
         if(param1 != null && this.§_-zF§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-zF§.length)
            {
               if((_loc8_ = this.§_-zF§[_loc7_] as §_-rQ§) != null)
               {
                  _loc8_.§_-nh§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-nh§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-Qq§);
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
      
      public function §_-pD§() : uint
      {
         return !!this.§_-zF§ ? uint(this.§_-zF§.length) : uint(0);
      }
      
      public function §_-pq§(param1:uint) : §_-rQ§
      {
         return !!this.§_-zF§ ? this.§_-zF§[param1] as §_-rQ§ : null;
      }
      
      public function §_-XV§(param1:String) : §_-rQ§
      {
         return !!this.§_-9t§[param1] ? this.§_-9t§[param1] as §_-rQ§ : null;
      }
      
      public function §_-Gj§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-rQ§
      {
         return this.§_-ZG§(!!this.§_-zF§ ? uint(this.§_-zF§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-hG§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-rQ§
      {
         return this.§_-dB§(!!this.§_-zF§ ? uint(this.§_-zF§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-ZG§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-rQ§
      {
         if(this.§_-zF§ == null)
         {
            this.§_-zF§ = [];
         }
         if(this.§_-9t§ == null)
         {
            this.§_-9t§ = new Dictionary();
         }
         else if(this.§_-9t§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-rQ§;
         (_loc5_ = new §_-rQ§()).§_-7L§ = param2;
         _loc5_.§_-2n§(param3,param4);
         if(param1 >= this.§_-zF§.length)
         {
            this.§_-zF§.push(_loc5_);
         }
         else
         {
            this.§_-zF§.splice(param1,0,_loc5_);
         }
         this.§_-9t§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-dB§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-rQ§
      {
         if(this.§_-zF§ == null)
         {
            this.§_-zF§ = [];
         }
         if(this.§_-9t§ == null)
         {
            this.§_-9t§ = new Dictionary();
         }
         else if(this.§_-9t§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-rQ§;
         (_loc6_ = new §_-rQ§()).§_-7L§ = param2;
         _loc6_.§_-3K§(param3,param4,param5);
         if(param1 >= this.§_-zF§.length)
         {
            this.§_-zF§.push(_loc6_);
         }
         else
         {
            this.§_-zF§.splice(param1,0,_loc6_);
         }
         this.§_-9t§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-Zp§(param1:uint) : §_-rQ§
      {
         var _loc2_:§_-rQ§ = null;
         if(this.§_-zF§ != null && this.§_-9t§ != null && param1 < this.§_-zF§.length)
         {
            _loc2_ = this.§_-zF§[param1] as §_-rQ§;
            if(_loc2_ != null)
            {
               this.§_-zF§.splice(param1,1);
               delete this.§_-9t§[_loc2_.§_-7L§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-X0§(param1))
         {
         }
         return this.§_-X0§ === this.§_-oM§;
      }
      
      protected function §_-oM§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-kx§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-xJ§:
                  this.§_-X0§ = this.§_-V8§;
                  this.§_-SJ§ = new §_-rQ§(this.§_-Pn§);
                  break;
               case §_-fi§:
               case §_-Qq§:
               case §_-d9§:
               case §_-nn§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-SQ§:
               case §_-uW§:
               case §_-w8§:
                  this.§_-X0§ = this.§_-oM§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-V8§(param1:IDataInput) : Boolean
      {
         if(this.§_-SJ§.parse(param1))
         {
            if(this.§_-SJ§.§_-w§)
            {
               this.§_-X0§ = this.§_-6M§;
               this.§_-LC§ = new ByteArray();
               this.§_-Lp§ = 0;
               this.§_-eZ§ = 0;
               return true;
            }
            this.§_-8s§();
            if(this.§_-X0§ != this.§_-oM§)
            {
               this.§_-X0§ = this.§_-kx§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-6M§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-Lp§ = this.§_-Lp§ >>> 8 | _loc2_ << 24;
            if(this.§_-Lp§ == §_-SQ§)
            {
               this.§_-LC§.length -= 3;
               this.§_-X0§ = this.§_-Cb§;
               return true;
            }
            this.§_-LC§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-Cb§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-LC§.length == _loc3_)
            {
               this.§_-LC§.position = 0;
               this.§_-SJ§.§_-BG§ = _loc2_;
               this.§_-SJ§.§_-Yt§ = _loc3_;
               this.§_-SJ§.final = _loc4_;
               this.§_-SJ§.§_-fs§(this.§_-LC§);
               this.§_-8s§();
               this.§_-X0§ = this.§_-kx§;
            }
            else
            {
               this.§_-LC§.writeUnsignedInt(_loc2_);
               this.§_-LC§.writeUnsignedInt(_loc3_);
               this.§_-LC§.writeUnsignedInt(_loc4_);
               this.§_-X0§ = this.§_-6M§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-8s§() : void
      {
         this.§_-zF§.push(this.§_-SJ§);
         if(this.§_-SJ§.§_-7L§)
         {
            this.§_-9t§[this.§_-SJ§.§_-7L§] = this.§_-SJ§;
         }
         dispatchEvent(new §_-SK§(§_-SK§.§_-Rl§,this.§_-SJ§));
         this.§_-SJ§ = null;
      }
      
      protected function §_-S2§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-jT§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-eG§.§_-Zb§))
            {
               throw e;
            }
            dispatchEvent(new §_-eG§(§_-eG§.§_-Zb§,e.message));
         }
      }
      
      protected function §_-GY§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-eX§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-8K§() : void
      {
         this.§_-jT§.addEventListener(Event.COMPLETE,this.§_-GY§);
         this.§_-jT§.addEventListener(Event.OPEN,this.§_-GY§);
         this.§_-jT§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-GY§);
         this.§_-jT§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-eX§);
         this.§_-jT§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-eX§);
         this.§_-jT§.addEventListener(ProgressEvent.PROGRESS,this.§_-S2§);
      }
      
      protected function §_-Mg§() : void
      {
         this.§_-jT§.removeEventListener(Event.COMPLETE,this.§_-GY§);
         this.§_-jT§.removeEventListener(Event.OPEN,this.§_-GY§);
         this.§_-jT§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-GY§);
         this.§_-jT§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-eX§);
         this.§_-jT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-eX§);
         this.§_-jT§.removeEventListener(ProgressEvent.PROGRESS,this.§_-S2§);
      }
   }
}
