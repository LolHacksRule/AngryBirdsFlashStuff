package §_-we§
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
   
   public class §_-Sy§ extends EventDispatcher
   {
      
      static const §_-bC§:uint = 33639248;
      
      static const §_-YW§:uint = 808471376;
      
      static const §class§:uint = 67324752;
      
      static const §_-Qc§:uint = 84233040;
      
      static const §_-y3§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-Ho§:uint = 134695760;
      
      static const §_-Kn§:uint = 134630224;
      
      static const §_-H-§:uint = 134695760;
       
      
      protected var §_-Qk§:Array;
      
      protected var §_-X§:Dictionary;
      
      protected var §_-82§:URLStream;
      
      protected var §_-kz§:String;
      
      protected var §_-G0§:Function;
      
      protected var §_-dq§:§_-Se§;
      
      protected var §_-VJ§:ByteArray;
      
      protected var §_-rP§:uint;
      
      protected var §_-3i§:uint;
      
      public function §_-Sy§(param1:String = "utf-8")
      {
         super();
         this.§_-kz§ = param1;
         this.§_-G0§ = this.§_-Jc§;
      }
      
      public function get §_-ci§() : Boolean
      {
         return this.§_-G0§ !== this.§_-Jc§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-82§ && this.§_-G0§ == this.§_-Jc§)
         {
            this.§_-82§ = new URLStream();
            this.§_-82§.endian = Endian.LITTLE_ENDIAN;
            this.§_-vT§();
            this.§_-Qk§ = [];
            this.§_-X§ = new Dictionary();
            this.§_-G0§ = this.§_-3e§;
            this.§_-82§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-82§ && this.§_-G0§ == this.§_-Jc§)
         {
            this.§_-Qk§ = [];
            this.§_-X§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-G0§ = this.§_-3e§;
            if(this.parse(param1))
            {
               this.§_-G0§ = this.§_-Jc§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-Nu§(§_-Nu§.§_-na§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-82§)
         {
            this.§_-G0§ = this.§_-Jc§;
            this.§_-MO§();
            this.§_-82§.close();
            this.§_-82§ = null;
         }
      }
      
      public function §_-Pv§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-Se§ = null;
         if(param1 != null && this.§_-Qk§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-Qk§.length)
            {
               if((_loc8_ = this.§_-Qk§[_loc7_] as §_-Se§) != null)
               {
                  _loc8_.§_-Pv§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-Pv§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-y3§);
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
      
      public function §_-Lb§() : uint
      {
         return !!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0);
      }
      
      public function §_-Ip§(param1:uint) : §_-Se§
      {
         return !!this.§_-Qk§ ? this.§_-Qk§[param1] as §_-Se§ : null;
      }
      
      public function §_-Uh§(param1:String) : §_-Se§
      {
         return !!this.§_-X§[param1] ? this.§_-X§[param1] as §_-Se§ : null;
      }
      
      public function §_-VG§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-Se§
      {
         return this.§_-eG§(!!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-CD§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-Se§
      {
         return this.§_-0o§(!!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-eG§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-Se§
      {
         if(this.§_-Qk§ == null)
         {
            this.§_-Qk§ = [];
         }
         if(this.§_-X§ == null)
         {
            this.§_-X§ = new Dictionary();
         }
         else if(this.§_-X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-Se§;
         (_loc5_ = new §_-Se§()).§_-MM§ = param2;
         _loc5_.§_-TC§(param3,param4);
         if(param1 >= this.§_-Qk§.length)
         {
            this.§_-Qk§.push(_loc5_);
         }
         else
         {
            this.§_-Qk§.splice(param1,0,_loc5_);
         }
         this.§_-X§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-0o§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-Se§
      {
         if(this.§_-Qk§ == null)
         {
            this.§_-Qk§ = [];
         }
         if(this.§_-X§ == null)
         {
            this.§_-X§ = new Dictionary();
         }
         else if(this.§_-X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-Se§;
         (_loc6_ = new §_-Se§()).§_-MM§ = param2;
         _loc6_.§_-0S§(param3,param4,param5);
         if(param1 >= this.§_-Qk§.length)
         {
            this.§_-Qk§.push(_loc6_);
         }
         else
         {
            this.§_-Qk§.splice(param1,0,_loc6_);
         }
         this.§_-X§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-lF§(param1:uint) : §_-Se§
      {
         var _loc2_:§_-Se§ = null;
         if(this.§_-Qk§ != null && this.§_-X§ != null && param1 < this.§_-Qk§.length)
         {
            _loc2_ = this.§_-Qk§[param1] as §_-Se§;
            if(_loc2_ != null)
            {
               this.§_-Qk§.splice(param1,1);
               delete this.§_-X§[_loc2_.§_-MM§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-G0§(param1))
         {
         }
         return this.§_-G0§ === this.§_-Jc§;
      }
      
      protected function §_-Jc§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-3e§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §class§:
                  this.§_-G0§ = this.§null§;
                  this.§_-dq§ = new §_-Se§(this.§_-kz§);
                  break;
               case §_-bC§:
               case §_-y3§:
               case §_-YW§:
               case §_-Qc§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-Ho§:
               case §_-Kn§:
               case §_-H-§:
                  this.§_-G0§ = this.§_-Jc§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §null§(param1:IDataInput) : Boolean
      {
         if(this.§_-dq§.parse(param1))
         {
            if(this.§_-dq§.§_-I2§)
            {
               this.§_-G0§ = this.§_-5e§;
               this.§_-VJ§ = new ByteArray();
               this.§_-rP§ = 0;
               this.§_-3i§ = 0;
               return true;
            }
            this.§_-Gt§();
            if(this.§_-G0§ != this.§_-Jc§)
            {
               this.§_-G0§ = this.§_-3e§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-5e§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-rP§ = this.§_-rP§ >>> 8 | _loc2_ << 24;
            if(this.§_-rP§ == §_-Ho§)
            {
               this.§_-VJ§.length -= 3;
               this.§_-G0§ = this.§_-0h§;
               return true;
            }
            this.§_-VJ§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-0h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-VJ§.length == _loc3_)
            {
               this.§_-VJ§.position = 0;
               this.§_-dq§.§_-cO§ = _loc2_;
               this.§_-dq§.§_-yG§ = _loc3_;
               this.§_-dq§.§_-AE§ = _loc4_;
               this.§_-dq§.§_-vV§(this.§_-VJ§);
               this.§_-Gt§();
               this.§_-G0§ = this.§_-3e§;
            }
            else
            {
               this.§_-VJ§.writeUnsignedInt(_loc2_);
               this.§_-VJ§.writeUnsignedInt(_loc3_);
               this.§_-VJ§.writeUnsignedInt(_loc4_);
               this.§_-G0§ = this.§_-5e§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-Gt§() : void
      {
         this.§_-Qk§.push(this.§_-dq§);
         if(this.§_-dq§.§_-MM§)
         {
            this.§_-X§[this.§_-dq§.§_-MM§] = this.§_-dq§;
         }
         dispatchEvent(new §_-4w§(§_-4w§.§_-gq§,this.§_-dq§));
         this.§_-dq§ = null;
      }
      
      protected function §_-3H§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-82§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-Nu§.§_-na§))
            {
               throw e;
            }
            dispatchEvent(new §_-Nu§(§_-Nu§.§_-na§,e.message));
         }
      }
      
      protected function §_-56§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-um§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-vT§() : void
      {
         this.§_-82§.addEventListener(Event.COMPLETE,this.§_-56§);
         this.§_-82§.addEventListener(Event.OPEN,this.§_-56§);
         this.§_-82§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-56§);
         this.§_-82§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-um§);
         this.§_-82§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-um§);
         this.§_-82§.addEventListener(ProgressEvent.PROGRESS,this.§_-3H§);
      }
      
      protected function §_-MO§() : void
      {
         this.§_-82§.removeEventListener(Event.COMPLETE,this.§_-56§);
         this.§_-82§.removeEventListener(Event.OPEN,this.§_-56§);
         this.§_-82§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-56§);
         this.§_-82§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-um§);
         this.§_-82§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-um§);
         this.§_-82§.removeEventListener(ProgressEvent.PROGRESS,this.§_-3H§);
      }
   }
}
