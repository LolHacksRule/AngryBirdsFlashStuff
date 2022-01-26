package §_-2N§
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
   
   public class §_-5R§ extends EventDispatcher
   {
      
      static const §_-hs§:uint = 33639248;
      
      static const §_-AZ§:uint = 808471376;
      
      static const §_-TZ§:uint = 67324752;
      
      static const §_-tC§:uint = 84233040;
      
      static const §_-dh§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-ix§:uint = 134695760;
      
      static const §_-RS§:uint = 134630224;
      
      static const §_-j9§:uint = 134695760;
       
      
      protected var §_-FO§:Array;
      
      protected var §_-CS§:Dictionary;
      
      protected var §_-gB§:URLStream;
      
      protected var §_-wi§:String;
      
      protected var §_-dc§:Function;
      
      protected var §_-pq§:§_-T9§;
      
      protected var §const§:ByteArray;
      
      protected var §_-Uy§:uint;
      
      protected var §_-WV§:uint;
      
      public function §_-5R§(param1:String = "utf-8")
      {
         super();
         this.§_-wi§ = param1;
         this.§_-dc§ = this.§_-dt§;
      }
      
      public function get §_-8§() : Boolean
      {
         return this.§_-dc§ !== this.§_-dt§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-gB§ && this.§_-dc§ == this.§_-dt§)
         {
            this.§_-gB§ = new URLStream();
            this.§_-gB§.endian = Endian.LITTLE_ENDIAN;
            this.§_-Vn§();
            this.§_-FO§ = [];
            this.§_-CS§ = new Dictionary();
            this.§_-dc§ = this.§_-q8§;
            this.§_-gB§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-gB§ && this.§_-dc§ == this.§_-dt§)
         {
            this.§_-FO§ = [];
            this.§_-CS§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-dc§ = this.§_-q8§;
            if(this.parse(param1))
            {
               this.§_-dc§ = this.§_-dt§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-Md§(§_-Md§.§_-ap§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-gB§)
         {
            this.§_-dc§ = this.§_-dt§;
            this.§_-oG§();
            this.§_-gB§.close();
            this.§_-gB§ = null;
         }
      }
      
      public function §_-79§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-T9§ = null;
         if(param1 != null && this.§_-FO§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-FO§.length)
            {
               if((_loc8_ = this.§_-FO§[_loc7_] as §_-T9§) != null)
               {
                  _loc8_.§_-79§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-79§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-dh§);
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
      
      public function §_-xX§() : uint
      {
         return !!this.§_-FO§ ? uint(this.§_-FO§.length) : uint(0);
      }
      
      public function §_-pX§(param1:uint) : §_-T9§
      {
         return !!this.§_-FO§ ? this.§_-FO§[param1] as §_-T9§ : null;
      }
      
      public function §_-6l§(param1:String) : §_-T9§
      {
         return !!this.§_-CS§[param1] ? this.§_-CS§[param1] as §_-T9§ : null;
      }
      
      public function §_-L2§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-T9§
      {
         return this.§_-NK§(!!this.§_-FO§ ? uint(this.§_-FO§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-h-§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-T9§
      {
         return this.§_-aP§(!!this.§_-FO§ ? uint(this.§_-FO§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-NK§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-T9§
      {
         if(this.§_-FO§ == null)
         {
            this.§_-FO§ = [];
         }
         if(this.§_-CS§ == null)
         {
            this.§_-CS§ = new Dictionary();
         }
         else if(this.§_-CS§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-T9§;
         (_loc5_ = new §_-T9§()).§_-7k§ = param2;
         _loc5_.§_-Gu§(param3,param4);
         if(param1 >= this.§_-FO§.length)
         {
            this.§_-FO§.push(_loc5_);
         }
         else
         {
            this.§_-FO§.splice(param1,0,_loc5_);
         }
         this.§_-CS§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-aP§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-T9§
      {
         if(this.§_-FO§ == null)
         {
            this.§_-FO§ = [];
         }
         if(this.§_-CS§ == null)
         {
            this.§_-CS§ = new Dictionary();
         }
         else if(this.§_-CS§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-T9§;
         (_loc6_ = new §_-T9§()).§_-7k§ = param2;
         _loc6_.§_-L1§(param3,param4,param5);
         if(param1 >= this.§_-FO§.length)
         {
            this.§_-FO§.push(_loc6_);
         }
         else
         {
            this.§_-FO§.splice(param1,0,_loc6_);
         }
         this.§_-CS§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-bL§(param1:uint) : §_-T9§
      {
         var _loc2_:§_-T9§ = null;
         if(this.§_-FO§ != null && this.§_-CS§ != null && param1 < this.§_-FO§.length)
         {
            _loc2_ = this.§_-FO§[param1] as §_-T9§;
            if(_loc2_ != null)
            {
               this.§_-FO§.splice(param1,1);
               delete this.§_-CS§[_loc2_.§_-7k§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-dc§(param1))
         {
         }
         return this.§_-dc§ === this.§_-dt§;
      }
      
      protected function §_-dt§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-q8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-TZ§:
                  this.§_-dc§ = this.§_-r0§;
                  this.§_-pq§ = new §_-T9§(this.§_-wi§);
                  break;
               case §_-hs§:
               case §_-dh§:
               case §_-AZ§:
               case §_-tC§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-ix§:
               case §_-RS§:
               case §_-j9§:
                  this.§_-dc§ = this.§_-dt§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-r0§(param1:IDataInput) : Boolean
      {
         if(this.§_-pq§.parse(param1))
         {
            if(this.§_-pq§.§_-OI§)
            {
               this.§_-dc§ = this.§_-Ge§;
               this.§const§ = new ByteArray();
               this.§_-Uy§ = 0;
               this.§_-WV§ = 0;
               return true;
            }
            this.§_-A0§();
            if(this.§_-dc§ != this.§_-dt§)
            {
               this.§_-dc§ = this.§_-q8§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-Ge§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-Uy§ = this.§_-Uy§ >>> 8 | _loc2_ << 24;
            if(this.§_-Uy§ == §_-ix§)
            {
               this.§const§.length -= 3;
               this.§_-dc§ = this.§_-R2§;
               return true;
            }
            this.§const§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-R2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§const§.length == _loc3_)
            {
               this.§const§.position = 0;
               this.§_-pq§.§_-2p§ = _loc2_;
               this.§_-pq§.§_-0D§ = _loc3_;
               this.§_-pq§.§_-43§ = _loc4_;
               this.§_-pq§.§_-vQ§(this.§const§);
               this.§_-A0§();
               this.§_-dc§ = this.§_-q8§;
            }
            else
            {
               this.§const§.writeUnsignedInt(_loc2_);
               this.§const§.writeUnsignedInt(_loc3_);
               this.§const§.writeUnsignedInt(_loc4_);
               this.§_-dc§ = this.§_-Ge§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-A0§() : void
      {
         this.§_-FO§.push(this.§_-pq§);
         if(this.§_-pq§.§_-7k§)
         {
            this.§_-CS§[this.§_-pq§.§_-7k§] = this.§_-pq§;
         }
         dispatchEvent(new §_-l8§(§_-l8§.§_-S0§,this.§_-pq§));
         this.§_-pq§ = null;
      }
      
      protected function §_-Lo§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-gB§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-Md§.§_-ap§))
            {
               throw e;
            }
            dispatchEvent(new §_-Md§(§_-Md§.§_-ap§,e.message));
         }
      }
      
      protected function §_-i-§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-il§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Vn§() : void
      {
         this.§_-gB§.addEventListener(Event.COMPLETE,this.§_-i-§);
         this.§_-gB§.addEventListener(Event.OPEN,this.§_-i-§);
         this.§_-gB§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-i-§);
         this.§_-gB§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-il§);
         this.§_-gB§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-il§);
         this.§_-gB§.addEventListener(ProgressEvent.PROGRESS,this.§_-Lo§);
      }
      
      protected function §_-oG§() : void
      {
         this.§_-gB§.removeEventListener(Event.COMPLETE,this.§_-i-§);
         this.§_-gB§.removeEventListener(Event.OPEN,this.§_-i-§);
         this.§_-gB§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-i-§);
         this.§_-gB§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-il§);
         this.§_-gB§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-il§);
         this.§_-gB§.removeEventListener(ProgressEvent.PROGRESS,this.§_-Lo§);
      }
   }
}
