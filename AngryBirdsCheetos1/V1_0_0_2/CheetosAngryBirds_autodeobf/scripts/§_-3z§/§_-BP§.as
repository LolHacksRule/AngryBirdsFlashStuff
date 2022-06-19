package §_-3z§
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
   
   public class §_-BP§ extends EventDispatcher
   {
      
      static const §_-On§:uint = 33639248;
      
      static const §_-f§:uint = 808471376;
      
      static const §_-sE§:uint = 67324752;
      
      static const §_-Fq§:uint = 84233040;
      
      static const §else§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-SJ§:uint = 134695760;
      
      static const §_-eY§:uint = 134630224;
      
      static const §_-6v§:uint = 134695760;
       
      
      protected var §_-hg§:Array;
      
      protected var §_-n7§:Dictionary;
      
      protected var §_-j9§:URLStream;
      
      protected var §_-SV§:String;
      
      protected var §_-Ua§:Function;
      
      protected var §_-0-Z§:§_-E1§;
      
      protected var §_-DO§:ByteArray;
      
      protected var §_-s2§:uint;
      
      protected var §_-zl§:uint;
      
      public function §_-BP§(param1:String = "utf-8")
      {
         super();
         this.§_-SV§ = param1;
         this.§_-Ua§ = this.§_-Ay§;
      }
      
      public function get §_-Je§() : Boolean
      {
         return this.§_-Ua§ !== this.§_-Ay§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-j9§ && this.§_-Ua§ == this.§_-Ay§)
         {
            this.§_-j9§ = new URLStream();
            this.§_-j9§.endian = Endian.LITTLE_ENDIAN;
            this.§_-00M§();
            this.§_-hg§ = [];
            this.§_-n7§ = new Dictionary();
            this.§_-Ua§ = this.§_-cO§;
            this.§_-j9§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-j9§ && this.§_-Ua§ == this.§_-Ay§)
         {
            this.§_-hg§ = [];
            this.§_-n7§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-Ua§ = this.§_-cO§;
            if(this.parse(param1))
            {
               this.§_-Ua§ = this.§_-Ay§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-zB§(§_-zB§.§_-R2§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-j9§)
         {
            this.§_-Ua§ = this.§_-Ay§;
            this.§_-Z2§();
            this.§_-j9§.close();
            this.§_-j9§ = null;
         }
      }
      
      public function §_-Vp§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-E1§ = null;
         if(param1 != null && this.§_-hg§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-hg§.length)
            {
               if((_loc8_ = this.§_-hg§[_loc7_] as §_-E1§) != null)
               {
                  _loc8_.§_-Vp§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-Vp§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§else§);
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
      
      public function §_-Rl§() : uint
      {
         return !!this.§_-hg§ ? uint(this.§_-hg§.length) : uint(0);
      }
      
      public function §var§(param1:uint) : §_-E1§
      {
         return !!this.§_-hg§ ? this.§_-hg§[param1] as §_-E1§ : null;
      }
      
      public function §_-EK§(param1:String) : §_-E1§
      {
         return !!this.§_-n7§[param1] ? this.§_-n7§[param1] as §_-E1§ : null;
      }
      
      public function §_-GS§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-E1§
      {
         return this.§_-8N§(!!this.§_-hg§ ? uint(this.§_-hg§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-CO§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-E1§
      {
         return this.§continue§(!!this.§_-hg§ ? uint(this.§_-hg§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-8N§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-E1§
      {
         if(this.§_-hg§ == null)
         {
            this.§_-hg§ = [];
         }
         if(this.§_-n7§ == null)
         {
            this.§_-n7§ = new Dictionary();
         }
         else if(this.§_-n7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-E1§;
         (_loc5_ = new §_-E1§()).§_-fQ§ = param2;
         _loc5_.§_-cW§(param3,param4);
         if(param1 >= this.§_-hg§.length)
         {
            this.§_-hg§.push(_loc5_);
         }
         else
         {
            this.§_-hg§.splice(param1,0,_loc5_);
         }
         this.§_-n7§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §continue§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-E1§
      {
         if(this.§_-hg§ == null)
         {
            this.§_-hg§ = [];
         }
         if(this.§_-n7§ == null)
         {
            this.§_-n7§ = new Dictionary();
         }
         else if(this.§_-n7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-E1§;
         (_loc6_ = new §_-E1§()).§_-fQ§ = param2;
         _loc6_.§_-IF§(param3,param4,param5);
         if(param1 >= this.§_-hg§.length)
         {
            this.§_-hg§.push(_loc6_);
         }
         else
         {
            this.§_-hg§.splice(param1,0,_loc6_);
         }
         this.§_-n7§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-Zh§(param1:uint) : §_-E1§
      {
         var _loc2_:§_-E1§ = null;
         if(this.§_-hg§ != null && this.§_-n7§ != null && param1 < this.§_-hg§.length)
         {
            _loc2_ = this.§_-hg§[param1] as §_-E1§;
            if(_loc2_ != null)
            {
               this.§_-hg§.splice(param1,1);
               delete this.§_-n7§[_loc2_.§_-fQ§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-Ua§(param1))
         {
         }
         return this.§_-Ua§ === this.§_-Ay§;
      }
      
      protected function §_-Ay§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-cO§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-sE§:
                  this.§_-Ua§ = this.§_-OG§;
                  this.§_-0-Z§ = new §_-E1§(this.§_-SV§);
                  break;
               case §_-On§:
               case §else§:
               case §_-f§:
               case §_-Fq§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-SJ§:
               case §_-eY§:
               case §_-6v§:
                  this.§_-Ua§ = this.§_-Ay§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-OG§(param1:IDataInput) : Boolean
      {
         if(this.§_-0-Z§.parse(param1))
         {
            if(this.§_-0-Z§.§_-wO§)
            {
               this.§_-Ua§ = this.§_-t2§;
               this.§_-DO§ = new ByteArray();
               this.§_-s2§ = 0;
               this.§_-zl§ = 0;
               return true;
            }
            this.§_-gt§();
            if(this.§_-Ua§ != this.§_-Ay§)
            {
               this.§_-Ua§ = this.§_-cO§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-t2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-s2§ = this.§_-s2§ >>> 8 | _loc2_ << 24;
            if(this.§_-s2§ == §_-SJ§)
            {
               this.§_-DO§.length -= 3;
               this.§_-Ua§ = this.dynamic;
               return true;
            }
            this.§_-DO§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function dynamic(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-DO§.length == _loc3_)
            {
               this.§_-DO§.position = 0;
               this.§_-0-Z§.§_-jY§ = _loc2_;
               this.§_-0-Z§.§_-ot§ = _loc3_;
               this.§_-0-Z§.§_-EJ§ = _loc4_;
               this.§_-0-Z§.§_-HW§(this.§_-DO§);
               this.§_-gt§();
               this.§_-Ua§ = this.§_-cO§;
            }
            else
            {
               this.§_-DO§.writeUnsignedInt(_loc2_);
               this.§_-DO§.writeUnsignedInt(_loc3_);
               this.§_-DO§.writeUnsignedInt(_loc4_);
               this.§_-Ua§ = this.§_-t2§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-gt§() : void
      {
         this.§_-hg§.push(this.§_-0-Z§);
         if(this.§_-0-Z§.§_-fQ§)
         {
            this.§_-n7§[this.§_-0-Z§.§_-fQ§] = this.§_-0-Z§;
         }
         dispatchEvent(new §_-0E§(§_-0E§.§_-PI§,this.§_-0-Z§));
         this.§_-0-Z§ = null;
      }
      
      protected function §_-jW§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-j9§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-zB§.§_-R2§))
            {
               throw e;
            }
            dispatchEvent(new §_-zB§(§_-zB§.§_-R2§,e.message));
         }
      }
      
      protected function §_-US§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-iQ§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-00M§() : void
      {
         this.§_-j9§.addEventListener(Event.COMPLETE,this.§_-US§);
         this.§_-j9§.addEventListener(Event.OPEN,this.§_-US§);
         this.§_-j9§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-US§);
         this.§_-j9§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-iQ§);
         this.§_-j9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-iQ§);
         this.§_-j9§.addEventListener(ProgressEvent.PROGRESS,this.§_-jW§);
      }
      
      protected function §_-Z2§() : void
      {
         this.§_-j9§.removeEventListener(Event.COMPLETE,this.§_-US§);
         this.§_-j9§.removeEventListener(Event.OPEN,this.§_-US§);
         this.§_-j9§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-US§);
         this.§_-j9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-iQ§);
         this.§_-j9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-iQ§);
         this.§_-j9§.removeEventListener(ProgressEvent.PROGRESS,this.§_-jW§);
      }
   }
}
