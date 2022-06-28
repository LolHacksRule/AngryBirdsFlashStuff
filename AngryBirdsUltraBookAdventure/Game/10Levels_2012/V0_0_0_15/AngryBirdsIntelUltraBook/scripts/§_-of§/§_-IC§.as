package §_-of§
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
   
   public class §_-IC§ extends EventDispatcher
   {
      
      static const §_-E§:uint = 33639248;
      
      static const §_-us§:uint = 808471376;
      
      static const §case §:uint = 67324752;
      
      static const §_-wz§:uint = 84233040;
      
      static const §_-pv§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-9g§:uint = 134695760;
      
      static const §_-09a§:uint = 134630224;
      
      static const §_-0Ek§:uint = 134695760;
       
      
      protected var §_-EG§:Array;
      
      protected var §_-b0§:Dictionary;
      
      protected var §_-07t§:URLStream;
      
      protected var §_-qB§:String;
      
      protected var §_-wa§:Function;
      
      protected var §_-zl§:§_-Ec§;
      
      protected var §_-CO§:ByteArray;
      
      protected var §_-iH§:uint;
      
      protected var §_-w4§:uint;
      
      public function §_-IC§(param1:String = "utf-8")
      {
         super();
         this.§_-qB§ = param1;
         this.§_-wa§ = this.§_-Xc§;
      }
      
      public function get §_-ag§() : Boolean
      {
         return this.§_-wa§ !== this.§_-Xc§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-07t§ && this.§_-wa§ == this.§_-Xc§)
         {
            this.§_-07t§ = new URLStream();
            this.§_-07t§.endian = Endian.LITTLE_ENDIAN;
            this.§_-09x§();
            this.§_-EG§ = [];
            this.§_-b0§ = new Dictionary();
            this.§_-wa§ = this.§_-R2§;
            this.§_-07t§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-07t§ && this.§_-wa§ == this.§_-Xc§)
         {
            this.§_-EG§ = [];
            this.§_-b0§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-wa§ = this.§_-R2§;
            if(this.parse(param1))
            {
               this.§_-wa§ = this.§_-Xc§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-jq§(§_-jq§.§_-iF§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-07t§)
         {
            this.§_-wa§ = this.§_-Xc§;
            this.§_-ib§();
            this.§_-07t§.close();
            this.§_-07t§ = null;
         }
      }
      
      public function §_-Bs§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-Ec§ = null;
         if(param1 != null && this.§_-EG§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-EG§.length)
            {
               if((_loc8_ = this.§_-EG§[_loc7_] as §_-Ec§) != null)
               {
                  _loc8_.§_-Bs§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-Bs§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-pv§);
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
      
      public function §_-RC§() : uint
      {
         return !!this.§_-EG§ ? uint(this.§_-EG§.length) : uint(0);
      }
      
      public function §_-ct§(param1:uint) : §_-Ec§
      {
         return !!this.§_-EG§ ? this.§_-EG§[param1] as §_-Ec§ : null;
      }
      
      public function §_-Jx§(param1:String) : §_-Ec§
      {
         return !!this.§_-b0§[param1] ? this.§_-b0§[param1] as §_-Ec§ : null;
      }
      
      public function §_-094§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-Ec§
      {
         return this.§_-3v§(!!this.§_-EG§ ? uint(this.§_-EG§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-4u§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-Ec§
      {
         return this.§_-kq§(!!this.§_-EG§ ? uint(this.§_-EG§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-3v§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-Ec§
      {
         if(this.§_-EG§ == null)
         {
            this.§_-EG§ = [];
         }
         if(this.§_-b0§ == null)
         {
            this.§_-b0§ = new Dictionary();
         }
         else if(this.§_-b0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-Ec§;
         (_loc5_ = new §_-Ec§()).§_-UM§ = param2;
         _loc5_.§_-9n§(param3,param4);
         if(param1 >= this.§_-EG§.length)
         {
            this.§_-EG§.push(_loc5_);
         }
         else
         {
            this.§_-EG§.splice(param1,0,_loc5_);
         }
         this.§_-b0§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-kq§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-Ec§
      {
         if(this.§_-EG§ == null)
         {
            this.§_-EG§ = [];
         }
         if(this.§_-b0§ == null)
         {
            this.§_-b0§ = new Dictionary();
         }
         else if(this.§_-b0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-Ec§;
         (_loc6_ = new §_-Ec§()).§_-UM§ = param2;
         _loc6_.§_-TB§(param3,param4,param5);
         if(param1 >= this.§_-EG§.length)
         {
            this.§_-EG§.push(_loc6_);
         }
         else
         {
            this.§_-EG§.splice(param1,0,_loc6_);
         }
         this.§_-b0§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-05c§(param1:uint) : §_-Ec§
      {
         var _loc2_:§_-Ec§ = null;
         if(this.§_-EG§ != null && this.§_-b0§ != null && param1 < this.§_-EG§.length)
         {
            _loc2_ = this.§_-EG§[param1] as §_-Ec§;
            if(_loc2_ != null)
            {
               this.§_-EG§.splice(param1,1);
               delete this.§_-b0§[_loc2_.§_-UM§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-wa§(param1))
         {
         }
         return this.§_-wa§ === this.§_-Xc§;
      }
      
      protected function §_-Xc§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-R2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §case §:
                  this.§_-wa§ = this.§_-fy§;
                  this.§_-zl§ = new §_-Ec§(this.§_-qB§);
                  break;
               case §_-E§:
               case §_-pv§:
               case §_-us§:
               case §_-wz§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-9g§:
               case §_-09a§:
               case §_-0Ek§:
                  this.§_-wa§ = this.§_-Xc§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-fy§(param1:IDataInput) : Boolean
      {
         if(this.§_-zl§.parse(param1))
         {
            if(this.§_-zl§.§_-c-§)
            {
               this.§_-wa§ = this.§_-WI§;
               this.§_-CO§ = new ByteArray();
               this.§_-iH§ = 0;
               this.§_-w4§ = 0;
               return true;
            }
            this.§_-01D§();
            if(this.§_-wa§ != this.§_-Xc§)
            {
               this.§_-wa§ = this.§_-R2§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-WI§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-iH§ = this.§_-iH§ >>> 8 | _loc2_ << 24;
            if(this.§_-iH§ == §_-9g§)
            {
               this.§_-CO§.length -= 3;
               this.§_-wa§ = this.§_-o§;
               return true;
            }
            this.§_-CO§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-CO§.length == _loc3_)
            {
               this.§_-CO§.position = 0;
               this.§_-zl§.§_-W0§ = _loc2_;
               this.§_-zl§.§_-h9§ = _loc3_;
               this.§_-zl§.§_-vI§ = _loc4_;
               this.§_-zl§.§_-4l§(this.§_-CO§);
               this.§_-01D§();
               this.§_-wa§ = this.§_-R2§;
            }
            else
            {
               this.§_-CO§.writeUnsignedInt(_loc2_);
               this.§_-CO§.writeUnsignedInt(_loc3_);
               this.§_-CO§.writeUnsignedInt(_loc4_);
               this.§_-wa§ = this.§_-WI§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-01D§() : void
      {
         this.§_-EG§.push(this.§_-zl§);
         if(this.§_-zl§.§_-UM§)
         {
            this.§_-b0§[this.§_-zl§.§_-UM§] = this.§_-zl§;
         }
         dispatchEvent(new §_-LS§(§_-LS§.§_-FH§,this.§_-zl§));
         this.§_-zl§ = null;
      }
      
      protected function §_-0Dh§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-07t§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-jq§.§_-iF§))
            {
               throw e;
            }
            dispatchEvent(new §_-jq§(§_-jq§.§_-iF§,e.message));
         }
      }
      
      protected function §_-08n§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-RT§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-09x§() : void
      {
         this.§_-07t§.addEventListener(Event.COMPLETE,this.§_-08n§);
         this.§_-07t§.addEventListener(Event.OPEN,this.§_-08n§);
         this.§_-07t§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-08n§);
         this.§_-07t§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-RT§);
         this.§_-07t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-RT§);
         this.§_-07t§.addEventListener(ProgressEvent.PROGRESS,this.§_-0Dh§);
      }
      
      protected function §_-ib§() : void
      {
         this.§_-07t§.removeEventListener(Event.COMPLETE,this.§_-08n§);
         this.§_-07t§.removeEventListener(Event.OPEN,this.§_-08n§);
         this.§_-07t§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-08n§);
         this.§_-07t§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-RT§);
         this.§_-07t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-RT§);
         this.§_-07t§.removeEventListener(ProgressEvent.PROGRESS,this.§_-0Dh§);
      }
   }
}
