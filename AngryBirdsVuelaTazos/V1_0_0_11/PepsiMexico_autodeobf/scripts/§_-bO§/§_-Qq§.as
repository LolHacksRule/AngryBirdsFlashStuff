package §_-bO§
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
   
   public class §_-Qq§ extends EventDispatcher
   {
      
      static const §_-1v§:uint = 33639248;
      
      static const §_-7B§:uint = 808471376;
      
      static const §_-ga§:uint = 67324752;
      
      static const §_-6m§:uint = 84233040;
      
      static const §_-XT§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-60§:uint = 134695760;
      
      static const §_-cb§:uint = 134630224;
      
      static const §_-KD§:uint = 134695760;
       
      
      protected var §_-61§:Array;
      
      protected var §_-KE§:Dictionary;
      
      protected var §_-o5§:URLStream;
      
      protected var §_-Jm§:String;
      
      protected var §_-kq§:Function;
      
      protected var §_-S2§:§_-pe§;
      
      protected var §_-ZZ§:ByteArray;
      
      protected var §_-Ot§:uint;
      
      protected var §_-qe§:uint;
      
      public function §_-Qq§(param1:String = "utf-8")
      {
         super();
         this.§_-Jm§ = param1;
         this.§_-kq§ = this.§_-WA§;
      }
      
      public function get §_-az§() : Boolean
      {
         return this.§_-kq§ !== this.§_-WA§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-o5§ && this.§_-kq§ == this.§_-WA§)
         {
            this.§_-o5§ = new URLStream();
            this.§_-o5§.endian = Endian.LITTLE_ENDIAN;
            this.§_-6f§();
            this.§_-61§ = [];
            this.§_-KE§ = new Dictionary();
            this.§_-kq§ = this.§_-8d§;
            this.§_-o5§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-o5§ && this.§_-kq§ == this.§_-WA§)
         {
            this.§_-61§ = [];
            this.§_-KE§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-kq§ = this.§_-8d§;
            if(this.parse(param1))
            {
               this.§_-kq§ = this.§_-WA§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-mw§(§_-mw§.§_-0k§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-o5§)
         {
            this.§_-kq§ = this.§_-WA§;
            this.§_-Gp§();
            this.§_-o5§.close();
            this.§_-o5§ = null;
         }
      }
      
      public function §_-hc§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-pe§ = null;
         if(param1 != null && this.§_-61§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-61§.length)
            {
               if((_loc8_ = this.§_-61§[_loc7_] as §_-pe§) != null)
               {
                  _loc8_.§_-hc§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-hc§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-XT§);
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
      
      public function §_-DX§() : uint
      {
         return !!this.§_-61§ ? uint(this.§_-61§.length) : uint(0);
      }
      
      public function §_-Si§(param1:uint) : §_-pe§
      {
         return !!this.§_-61§ ? this.§_-61§[param1] as §_-pe§ : null;
      }
      
      public function §_-qW§(param1:String) : §_-pe§
      {
         return !!this.§_-KE§[param1] ? this.§_-KE§[param1] as §_-pe§ : null;
      }
      
      public function §_-Py§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-pe§
      {
         return this.§_-Xj§(!!this.§_-61§ ? uint(this.§_-61§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-8y§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-pe§
      {
         return this.§_-tB§(!!this.§_-61§ ? uint(this.§_-61§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-Xj§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-pe§
      {
         if(this.§_-61§ == null)
         {
            this.§_-61§ = [];
         }
         if(this.§_-KE§ == null)
         {
            this.§_-KE§ = new Dictionary();
         }
         else if(this.§_-KE§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-pe§;
         (_loc5_ = new §_-pe§()).§_-sk§ = param2;
         _loc5_.§_-2y§(param3,param4);
         if(param1 >= this.§_-61§.length)
         {
            this.§_-61§.push(_loc5_);
         }
         else
         {
            this.§_-61§.splice(param1,0,_loc5_);
         }
         this.§_-KE§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-tB§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-pe§
      {
         if(this.§_-61§ == null)
         {
            this.§_-61§ = [];
         }
         if(this.§_-KE§ == null)
         {
            this.§_-KE§ = new Dictionary();
         }
         else if(this.§_-KE§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-pe§;
         (_loc6_ = new §_-pe§()).§_-sk§ = param2;
         _loc6_.§_-Kt§(param3,param4,param5);
         if(param1 >= this.§_-61§.length)
         {
            this.§_-61§.push(_loc6_);
         }
         else
         {
            this.§_-61§.splice(param1,0,_loc6_);
         }
         this.§_-KE§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-Qd§(param1:uint) : §_-pe§
      {
         var _loc2_:§_-pe§ = null;
         if(this.§_-61§ != null && this.§_-KE§ != null && param1 < this.§_-61§.length)
         {
            _loc2_ = this.§_-61§[param1] as §_-pe§;
            if(_loc2_ != null)
            {
               this.§_-61§.splice(param1,1);
               delete this.§_-KE§[_loc2_.§_-sk§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-kq§(param1))
         {
         }
         return this.§_-kq§ === this.§_-WA§;
      }
      
      protected function §_-WA§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-8d§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-ga§:
                  this.§_-kq§ = this.§_-6b§;
                  this.§_-S2§ = new §_-pe§(this.§_-Jm§);
                  break;
               case §_-1v§:
               case §_-XT§:
               case §_-7B§:
               case §_-6m§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-60§:
               case §_-cb§:
               case §_-KD§:
                  this.§_-kq§ = this.§_-WA§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-6b§(param1:IDataInput) : Boolean
      {
         if(this.§_-S2§.parse(param1))
         {
            if(this.§_-S2§.§_-Eg§)
            {
               this.§_-kq§ = this.§_-rt§;
               this.§_-ZZ§ = new ByteArray();
               this.§_-Ot§ = 0;
               this.§_-qe§ = 0;
               return true;
            }
            this.§_-GQ§();
            if(this.§_-kq§ != this.§_-WA§)
            {
               this.§_-kq§ = this.§_-8d§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-rt§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-Ot§ = this.§_-Ot§ >>> 8 | _loc2_ << 24;
            if(this.§_-Ot§ == §_-60§)
            {
               this.§_-ZZ§.length -= 3;
               this.§_-kq§ = this.§_-Ky§;
               return true;
            }
            this.§_-ZZ§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-Ky§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-ZZ§.length == _loc3_)
            {
               this.§_-ZZ§.position = 0;
               this.§_-S2§.§_-jX§ = _loc2_;
               this.§_-S2§.§_-hX§ = _loc3_;
               this.§_-S2§.§_-30§ = _loc4_;
               this.§_-S2§.§_-jv§(this.§_-ZZ§);
               this.§_-GQ§();
               this.§_-kq§ = this.§_-8d§;
            }
            else
            {
               this.§_-ZZ§.writeUnsignedInt(_loc2_);
               this.§_-ZZ§.writeUnsignedInt(_loc3_);
               this.§_-ZZ§.writeUnsignedInt(_loc4_);
               this.§_-kq§ = this.§_-rt§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-GQ§() : void
      {
         this.§_-61§.push(this.§_-S2§);
         if(this.§_-S2§.§_-sk§)
         {
            this.§_-KE§[this.§_-S2§.§_-sk§] = this.§_-S2§;
         }
         dispatchEvent(new §_-x8§(§_-x8§.§_-P1§,this.§_-S2§));
         this.§_-S2§ = null;
      }
      
      protected function §_-3Q§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-o5§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-mw§.§_-0k§))
            {
               throw e;
            }
            dispatchEvent(new §_-mw§(§_-mw§.§_-0k§,e.message));
         }
      }
      
      protected function §_-by§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Qn§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-6f§() : void
      {
         this.§_-o5§.addEventListener(Event.COMPLETE,this.§_-by§);
         this.§_-o5§.addEventListener(Event.OPEN,this.§_-by§);
         this.§_-o5§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-by§);
         this.§_-o5§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Qn§);
         this.§_-o5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Qn§);
         this.§_-o5§.addEventListener(ProgressEvent.PROGRESS,this.§_-3Q§);
      }
      
      protected function §_-Gp§() : void
      {
         this.§_-o5§.removeEventListener(Event.COMPLETE,this.§_-by§);
         this.§_-o5§.removeEventListener(Event.OPEN,this.§_-by§);
         this.§_-o5§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-by§);
         this.§_-o5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Qn§);
         this.§_-o5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Qn§);
         this.§_-o5§.removeEventListener(ProgressEvent.PROGRESS,this.§_-3Q§);
      }
   }
}
