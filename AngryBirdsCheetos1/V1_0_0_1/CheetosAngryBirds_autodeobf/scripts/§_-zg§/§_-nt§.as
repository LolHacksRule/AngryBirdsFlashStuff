package §_-zg§
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
   
   public class §_-nt§ extends EventDispatcher
   {
      
      static const §_-qy§:uint = 33639248;
      
      static const §_-3I§:uint = 808471376;
      
      static const §_-iG§:uint = 67324752;
      
      static const §_-D7§:uint = 84233040;
      
      static const §_-o5§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-XO§:uint = 134695760;
      
      static const §_-Jv§:uint = 134630224;
      
      static const §_-ac§:uint = 134695760;
       
      
      protected var §_-Qk§:Array;
      
      protected var §_-m§:Dictionary;
      
      protected var §_-MP§:URLStream;
      
      protected var §_-bj§:String;
      
      protected var §_-WN§:Function;
      
      protected var §_-zd§:§_-8u§;
      
      protected var §_-QY§:ByteArray;
      
      protected var §_-Ia§:uint;
      
      protected var §_-J7§:uint;
      
      public function §_-nt§(param1:String = "utf-8")
      {
         super();
         this.§_-bj§ = param1;
         this.§_-WN§ = this.§_-ud§;
      }
      
      public function get §_-Rm§() : Boolean
      {
         return this.§_-WN§ !== this.§_-ud§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-MP§ && this.§_-WN§ == this.§_-ud§)
         {
            this.§_-MP§ = new URLStream();
            this.§_-MP§.endian = Endian.LITTLE_ENDIAN;
            this.§_-GN§();
            this.§_-Qk§ = [];
            this.§_-m§ = new Dictionary();
            this.§_-WN§ = this.§_-yw§;
            this.§_-MP§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-MP§ && this.§_-WN§ == this.§_-ud§)
         {
            this.§_-Qk§ = [];
            this.§_-m§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-WN§ = this.§_-yw§;
            if(this.parse(param1))
            {
               this.§_-WN§ = this.§_-ud§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-mS§(§_-mS§.§_-Lp§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-MP§)
         {
            this.§_-WN§ = this.§_-ud§;
            this.§_-rm§();
            this.§_-MP§.close();
            this.§_-MP§ = null;
         }
      }
      
      public function include(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-8u§ = null;
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
               if((_loc8_ = this.§_-Qk§[_loc7_] as §_-8u§) != null)
               {
                  _loc8_.include(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.include(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-o5§);
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
      
      public function §_-Fb§() : uint
      {
         return !!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0);
      }
      
      public function §_-Lg§(param1:uint) : §_-8u§
      {
         return !!this.§_-Qk§ ? this.§_-Qk§[param1] as §_-8u§ : null;
      }
      
      public function §_-R7§(param1:String) : §_-8u§
      {
         return !!this.§_-m§[param1] ? this.§_-m§[param1] as §_-8u§ : null;
      }
      
      public function §_-ml§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-8u§
      {
         return this.§_-F9§(!!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-lS§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-8u§
      {
         return this.§_-sC§(!!this.§_-Qk§ ? uint(this.§_-Qk§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-F9§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-8u§
      {
         if(this.§_-Qk§ == null)
         {
            this.§_-Qk§ = [];
         }
         if(this.§_-m§ == null)
         {
            this.§_-m§ = new Dictionary();
         }
         else if(this.§_-m§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-8u§;
         (_loc5_ = new §_-8u§()).§_-8c§ = param2;
         _loc5_.§_-Qc§(param3,param4);
         if(param1 >= this.§_-Qk§.length)
         {
            this.§_-Qk§.push(_loc5_);
         }
         else
         {
            this.§_-Qk§.splice(param1,0,_loc5_);
         }
         this.§_-m§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-sC§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-8u§
      {
         if(this.§_-Qk§ == null)
         {
            this.§_-Qk§ = [];
         }
         if(this.§_-m§ == null)
         {
            this.§_-m§ = new Dictionary();
         }
         else if(this.§_-m§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-8u§;
         (_loc6_ = new §_-8u§()).§_-8c§ = param2;
         _loc6_.§_-NZ§(param3,param4,param5);
         if(param1 >= this.§_-Qk§.length)
         {
            this.§_-Qk§.push(_loc6_);
         }
         else
         {
            this.§_-Qk§.splice(param1,0,_loc6_);
         }
         this.§_-m§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-Tc§(param1:uint) : §_-8u§
      {
         var _loc2_:§_-8u§ = null;
         if(this.§_-Qk§ != null && this.§_-m§ != null && param1 < this.§_-Qk§.length)
         {
            _loc2_ = this.§_-Qk§[param1] as §_-8u§;
            if(_loc2_ != null)
            {
               this.§_-Qk§.splice(param1,1);
               delete this.§_-m§[_loc2_.§_-8c§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-WN§(param1))
         {
         }
         return this.§_-WN§ === this.§_-ud§;
      }
      
      protected function §_-ud§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-yw§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-iG§:
                  this.§_-WN§ = this.§_-Tk§;
                  this.§_-zd§ = new §_-8u§(this.§_-bj§);
                  break;
               case §_-qy§:
               case §_-o5§:
               case §_-3I§:
               case §_-D7§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-XO§:
               case §_-Jv§:
               case §_-ac§:
                  this.§_-WN§ = this.§_-ud§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-Tk§(param1:IDataInput) : Boolean
      {
         if(this.§_-zd§.parse(param1))
         {
            if(this.§_-zd§.§_-OF§)
            {
               this.§_-WN§ = this.§_-yX§;
               this.§_-QY§ = new ByteArray();
               this.§_-Ia§ = 0;
               this.§_-J7§ = 0;
               return true;
            }
            this.§_-pD§();
            if(this.§_-WN§ != this.§_-ud§)
            {
               this.§_-WN§ = this.§_-yw§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-yX§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-Ia§ = this.§_-Ia§ >>> 8 | _loc2_ << 24;
            if(this.§_-Ia§ == §_-XO§)
            {
               this.§_-QY§.length -= 3;
               this.§_-WN§ = this.§_-bN§;
               return true;
            }
            this.§_-QY§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-bN§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-QY§.length == _loc3_)
            {
               this.§_-QY§.position = 0;
               this.§_-zd§.§_-MV§ = _loc2_;
               this.§_-zd§.§_-mh§ = _loc3_;
               this.§_-zd§.§_-mg§ = _loc4_;
               this.§_-zd§.§_-0-Y§(this.§_-QY§);
               this.§_-pD§();
               this.§_-WN§ = this.§_-yw§;
            }
            else
            {
               this.§_-QY§.writeUnsignedInt(_loc2_);
               this.§_-QY§.writeUnsignedInt(_loc3_);
               this.§_-QY§.writeUnsignedInt(_loc4_);
               this.§_-WN§ = this.§_-yX§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-pD§() : void
      {
         this.§_-Qk§.push(this.§_-zd§);
         if(this.§_-zd§.§_-8c§)
         {
            this.§_-m§[this.§_-zd§.§_-8c§] = this.§_-zd§;
         }
         dispatchEvent(new §_-CH§(§_-CH§.§_-CW§,this.§_-zd§));
         this.§_-zd§ = null;
      }
      
      protected function §_-rN§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-MP§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-mS§.§_-Lp§))
            {
               throw e;
            }
            dispatchEvent(new §_-mS§(§_-mS§.§_-Lp§,e.message));
         }
      }
      
      protected function §_-qQ§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-hJ§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-GN§() : void
      {
         this.§_-MP§.addEventListener(Event.COMPLETE,this.§_-qQ§);
         this.§_-MP§.addEventListener(Event.OPEN,this.§_-qQ§);
         this.§_-MP§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qQ§);
         this.§_-MP§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-hJ§);
         this.§_-MP§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-hJ§);
         this.§_-MP§.addEventListener(ProgressEvent.PROGRESS,this.§_-rN§);
      }
      
      protected function §_-rm§() : void
      {
         this.§_-MP§.removeEventListener(Event.COMPLETE,this.§_-qQ§);
         this.§_-MP§.removeEventListener(Event.OPEN,this.§_-qQ§);
         this.§_-MP§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qQ§);
         this.§_-MP§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-hJ§);
         this.§_-MP§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-hJ§);
         this.§_-MP§.removeEventListener(ProgressEvent.PROGRESS,this.§_-rN§);
      }
   }
}
