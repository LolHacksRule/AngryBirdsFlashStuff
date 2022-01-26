package §_-ja§
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
   
   public class §_-Re§ extends EventDispatcher
   {
      
      static const §_-JK§:uint = 33639248;
      
      static const §_-Cu§:uint = 808471376;
      
      static const §_-lb§:uint = 67324752;
      
      static const §_-Bp§:uint = 84233040;
      
      static const §_-PR§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-a0§:uint = 134695760;
      
      static const §_-1z§:uint = 134630224;
      
      static const §_-xc§:uint = 134695760;
       
      
      protected var §_-3u§:Array;
      
      protected var §_-dr§:Dictionary;
      
      protected var §_-OS§:URLStream;
      
      protected var §_-o9§:String;
      
      protected var §_-5W§:Function;
      
      protected var §_-Da§:§_-GH§;
      
      protected var §_-5P§:ByteArray;
      
      protected var §_-5U§:uint;
      
      protected var §_-KG§:uint;
      
      public function §_-Re§(param1:String = "utf-8")
      {
         super();
         this.§_-o9§ = param1;
         this.§_-5W§ = this.§_-4a§;
      }
      
      public function get get() : Boolean
      {
         return this.§_-5W§ !== this.§_-4a§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-OS§ && this.§_-5W§ == this.§_-4a§)
         {
            this.§_-OS§ = new URLStream();
            this.§_-OS§.endian = Endian.LITTLE_ENDIAN;
            this.§_-LU§();
            this.§_-3u§ = [];
            this.§_-dr§ = new Dictionary();
            this.§_-5W§ = this.§_-KQ§;
            this.§_-OS§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-OS§ && this.§_-5W§ == this.§_-4a§)
         {
            this.§_-3u§ = [];
            this.§_-dr§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-5W§ = this.§_-KQ§;
            if(this.§_-8R§(param1))
            {
               this.§_-5W§ = this.§_-4a§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-Cj§(§_-Cj§.§_-K§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-OS§)
         {
            this.§_-5W§ = this.§_-4a§;
            this.§_-N8§();
            this.§_-OS§.close();
            this.§_-OS§ = null;
         }
      }
      
      public function §_-iY§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-GH§ = null;
         if(param1 != null && this.§_-3u§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-3u§.length)
            {
               if((_loc8_ = this.§_-3u§[_loc7_] as §_-GH§) != null)
               {
                  _loc8_.§_-iY§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-iY§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-PR§);
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
      
      public function §_-hq§() : uint
      {
         return !!this.§_-3u§ ? uint(this.§_-3u§.length) : uint(0);
      }
      
      public function §_-2A§(param1:uint) : §_-GH§
      {
         return !!this.§_-3u§ ? this.§_-3u§[param1] as §_-GH§ : null;
      }
      
      public function §_-mJ§(param1:String) : §_-GH§
      {
         return !!this.§_-dr§[param1] ? this.§_-dr§[param1] as §_-GH§ : null;
      }
      
      public function §_-rn§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-GH§
      {
         return this.§_-hU§(!!this.§_-3u§ ? uint(this.§_-3u§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-Ym§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-GH§
      {
         return this.§_-Ru§(!!this.§_-3u§ ? uint(this.§_-3u§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-hU§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-GH§
      {
         if(this.§_-3u§ == null)
         {
            this.§_-3u§ = [];
         }
         if(this.§_-dr§ == null)
         {
            this.§_-dr§ = new Dictionary();
         }
         else if(this.§_-dr§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-GH§;
         (_loc5_ = new §_-GH§()).§_-NK§ = param2;
         _loc5_.§_-5l§(param3,param4);
         if(param1 >= this.§_-3u§.length)
         {
            this.§_-3u§.push(_loc5_);
         }
         else
         {
            this.§_-3u§.splice(param1,0,_loc5_);
         }
         this.§_-dr§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-Ru§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-GH§
      {
         if(this.§_-3u§ == null)
         {
            this.§_-3u§ = [];
         }
         if(this.§_-dr§ == null)
         {
            this.§_-dr§ = new Dictionary();
         }
         else if(this.§_-dr§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-GH§;
         (_loc6_ = new §_-GH§()).§_-NK§ = param2;
         _loc6_.§_-tK§(param3,param4,param5);
         if(param1 >= this.§_-3u§.length)
         {
            this.§_-3u§.push(_loc6_);
         }
         else
         {
            this.§_-3u§.splice(param1,0,_loc6_);
         }
         this.§_-dr§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-Hk§(param1:uint) : §_-GH§
      {
         var _loc2_:§_-GH§ = null;
         if(this.§_-3u§ != null && this.§_-dr§ != null && param1 < this.§_-3u§.length)
         {
            _loc2_ = this.§_-3u§[param1] as §_-GH§;
            if(_loc2_ != null)
            {
               this.§_-3u§.splice(param1,1);
               delete this.§_-dr§[_loc2_.§_-NK§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function §_-8R§(param1:IDataInput) : Boolean
      {
         while(this.§_-5W§(param1))
         {
         }
         return this.§_-5W§ === this.§_-4a§;
      }
      
      protected function §_-4a§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-KQ§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-lb§:
                  this.§_-5W§ = this.§_-nk§;
                  this.§_-Da§ = new §_-GH§(this.§_-o9§);
                  break;
               case §_-JK§:
               case §_-PR§:
               case §_-Cu§:
               case §_-Bp§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-a0§:
               case §_-1z§:
               case §_-xc§:
                  this.§_-5W§ = this.§_-4a§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-nk§(param1:IDataInput) : Boolean
      {
         if(this.§_-Da§.§_-8R§(param1))
         {
            if(this.§_-Da§.§_-q§)
            {
               this.§_-5W§ = this.§_-Yq§;
               this.§_-5P§ = new ByteArray();
               this.§_-5U§ = 0;
               this.§_-KG§ = 0;
               return true;
            }
            this.§_-de§();
            if(this.§_-5W§ != this.§_-4a§)
            {
               this.§_-5W§ = this.§_-KQ§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-Yq§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-5U§ = this.§_-5U§ >>> 8 | _loc2_ << 24;
            if(this.§_-5U§ == §_-a0§)
            {
               this.§_-5P§.length -= 3;
               this.§_-5W§ = this.§_-NY§;
               return true;
            }
            this.§_-5P§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §_-NY§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-5P§.length == _loc3_)
            {
               this.§_-5P§.position = 0;
               this.§_-Da§.§_-j8§ = _loc2_;
               this.§_-Da§.§_-mh§ = _loc3_;
               this.§_-Da§.§_-xt§ = _loc4_;
               this.§_-Da§.§_-U6§(this.§_-5P§);
               this.§_-de§();
               this.§_-5W§ = this.§_-KQ§;
            }
            else
            {
               this.§_-5P§.writeUnsignedInt(_loc2_);
               this.§_-5P§.writeUnsignedInt(_loc3_);
               this.§_-5P§.writeUnsignedInt(_loc4_);
               this.§_-5W§ = this.§_-Yq§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-de§() : void
      {
         this.§_-3u§.push(this.§_-Da§);
         if(this.§_-Da§.§_-NK§)
         {
            this.§_-dr§[this.§_-Da§.§_-NK§] = this.§_-Da§;
         }
         dispatchEvent(new §in §(§in §.§_-TW§,this.§_-Da§));
         this.§_-Da§ = null;
      }
      
      protected function §_-yH§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.§_-8R§(this.§_-OS§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-Cj§.§_-K§))
            {
               throw e;
            }
            dispatchEvent(new §_-Cj§(§_-Cj§.§_-K§,e.message));
         }
      }
      
      protected function §_-wV§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-Xi§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-LU§() : void
      {
         this.§_-OS§.addEventListener(Event.COMPLETE,this.§_-wV§);
         this.§_-OS§.addEventListener(Event.OPEN,this.§_-wV§);
         this.§_-OS§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wV§);
         this.§_-OS§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Xi§);
         this.§_-OS§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Xi§);
         this.§_-OS§.addEventListener(ProgressEvent.PROGRESS,this.§_-yH§);
      }
      
      protected function §_-N8§() : void
      {
         this.§_-OS§.removeEventListener(Event.COMPLETE,this.§_-wV§);
         this.§_-OS§.removeEventListener(Event.OPEN,this.§_-wV§);
         this.§_-OS§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wV§);
         this.§_-OS§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Xi§);
         this.§_-OS§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Xi§);
         this.§_-OS§.removeEventListener(ProgressEvent.PROGRESS,this.§_-yH§);
      }
   }
}
