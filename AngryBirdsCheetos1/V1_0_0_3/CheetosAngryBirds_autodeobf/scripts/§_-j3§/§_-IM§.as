package §_-j3§
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
   
   public class §_-IM§ extends EventDispatcher
   {
      
      static const §_-sx§:uint = 33639248;
      
      static const §_-PV§:uint = 808471376;
      
      static const §_-S6§:uint = 67324752;
      
      static const §_-Ay§:uint = 84233040;
      
      static const §_-Y§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §_-w2§:uint = 134695760;
      
      static const §_-as§:uint = 134630224;
      
      static const §_-RA§:uint = 134695760;
       
      
      protected var §_-M2§:Array;
      
      protected var §_-bm§:Dictionary;
      
      protected var §_-hW§:URLStream;
      
      protected var §_-01§:String;
      
      protected var §_-Yi§:Function;
      
      protected var §_-BS§:§_-Tg§;
      
      protected var §_-76§:ByteArray;
      
      protected var §_-33§:uint;
      
      protected var §_-L8§:uint;
      
      public function §_-IM§(param1:String = "utf-8")
      {
         super();
         this.§_-01§ = param1;
         this.§_-Yi§ = this.§_-Tp§;
      }
      
      public function get §_-bt§() : Boolean
      {
         return this.§_-Yi§ !== this.§_-Tp§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§_-hW§ && this.§_-Yi§ == this.§_-Tp§)
         {
            this.§_-hW§ = new URLStream();
            this.§_-hW§.endian = Endian.LITTLE_ENDIAN;
            this.§_-hE§();
            this.§_-M2§ = [];
            this.§_-bm§ = new Dictionary();
            this.§_-Yi§ = this.§_-kM§;
            this.§_-hW§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§_-hW§ && this.§_-Yi§ == this.§_-Tp§)
         {
            this.§_-M2§ = [];
            this.§_-bm§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§_-Yi§ = this.§_-kM§;
            if(this.parse(param1))
            {
               this.§_-Yi§ = this.§_-Tp§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §_-P1§(§_-P1§.§_-ZO§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§_-hW§)
         {
            this.§_-Yi§ = this.§_-Tp§;
            this.§_-9N§();
            this.§_-hW§.close();
            this.§_-hW§ = null;
         }
      }
      
      public function §_-r4§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§_-Tg§ = null;
         if(param1 != null && this.§_-M2§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§_-M2§.length)
            {
               if((_loc8_ = this.§_-M2§[_loc7_] as §_-Tg§) != null)
               {
                  _loc8_.§_-r4§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§_-r4§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§_-Y§);
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
      
      public function §_-UP§() : uint
      {
         return !!this.§_-M2§ ? uint(this.§_-M2§.length) : uint(0);
      }
      
      public function §_-20§(param1:uint) : §_-Tg§
      {
         return !!this.§_-M2§ ? this.§_-M2§[param1] as §_-Tg§ : null;
      }
      
      public function §_-XD§(param1:String) : §_-Tg§
      {
         return !!this.§_-bm§[param1] ? this.§_-bm§[param1] as §_-Tg§ : null;
      }
      
      public function §_-ym§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §_-Tg§
      {
         return this.§_-Op§(!!this.§_-M2§ ? uint(this.§_-M2§.length) : uint(0),param1,param2,param3);
      }
      
      public function §_-0m§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §_-Tg§
      {
         return this.§_-Vi§(!!this.§_-M2§ ? uint(this.§_-M2§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §_-Op§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §_-Tg§
      {
         if(this.§_-M2§ == null)
         {
            this.§_-M2§ = [];
         }
         if(this.§_-bm§ == null)
         {
            this.§_-bm§ = new Dictionary();
         }
         else if(this.§_-bm§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§_-Tg§;
         (_loc5_ = new §_-Tg§()).§_-00P§ = param2;
         _loc5_.§_-N-§(param3,param4);
         if(param1 >= this.§_-M2§.length)
         {
            this.§_-M2§.push(_loc5_);
         }
         else
         {
            this.§_-M2§.splice(param1,0,_loc5_);
         }
         this.§_-bm§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §_-Vi§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §_-Tg§
      {
         if(this.§_-M2§ == null)
         {
            this.§_-M2§ = [];
         }
         if(this.§_-bm§ == null)
         {
            this.§_-bm§ = new Dictionary();
         }
         else if(this.§_-bm§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§_-Tg§;
         (_loc6_ = new §_-Tg§()).§_-00P§ = param2;
         _loc6_.§_-6x§(param3,param4,param5);
         if(param1 >= this.§_-M2§.length)
         {
            this.§_-M2§.push(_loc6_);
         }
         else
         {
            this.§_-M2§.splice(param1,0,_loc6_);
         }
         this.§_-bm§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §_-C0§(param1:uint) : §_-Tg§
      {
         var _loc2_:§_-Tg§ = null;
         if(this.§_-M2§ != null && this.§_-bm§ != null && param1 < this.§_-M2§.length)
         {
            _loc2_ = this.§_-M2§[param1] as §_-Tg§;
            if(_loc2_ != null)
            {
               this.§_-M2§.splice(param1,1);
               delete this.§_-bm§[_loc2_.§_-00P§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§_-Yi§(param1))
         {
         }
         return this.§_-Yi§ === this.§_-Tp§;
      }
      
      protected function §_-Tp§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-kM§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §_-S6§:
                  this.§_-Yi§ = this.§_-Rm§;
                  this.§_-BS§ = new §_-Tg§(this.§_-01§);
                  break;
               case §_-sx§:
               case §_-Y§:
               case §_-PV§:
               case §_-Ay§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §_-w2§:
               case §_-as§:
               case §_-RA§:
                  this.§_-Yi§ = this.§_-Tp§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §_-Rm§(param1:IDataInput) : Boolean
      {
         if(this.§_-BS§.parse(param1))
         {
            if(this.§_-BS§.§_-nN§)
            {
               this.§_-Yi§ = this.§_-iD§;
               this.§_-76§ = new ByteArray();
               this.§_-33§ = 0;
               this.§_-L8§ = 0;
               return true;
            }
            this.§_-XK§();
            if(this.§_-Yi§ != this.§_-Tp§)
            {
               this.§_-Yi§ = this.§_-kM§;
               return true;
            }
         }
         return false;
      }
      
      protected function §_-iD§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§_-33§ = this.§_-33§ >>> 8 | _loc2_ << 24;
            if(this.§_-33§ == §_-w2§)
            {
               this.§_-76§.length -= 3;
               this.§_-Yi§ = this.§catch§;
               return true;
            }
            this.§_-76§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §catch§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§_-76§.length == _loc3_)
            {
               this.§_-76§.position = 0;
               this.§_-BS§.§_-8C§ = _loc2_;
               this.§_-BS§.§_-u3§ = _loc3_;
               this.§_-BS§.§_-sl§ = _loc4_;
               this.§_-BS§.§_-vi§(this.§_-76§);
               this.§_-XK§();
               this.§_-Yi§ = this.§_-kM§;
            }
            else
            {
               this.§_-76§.writeUnsignedInt(_loc2_);
               this.§_-76§.writeUnsignedInt(_loc3_);
               this.§_-76§.writeUnsignedInt(_loc4_);
               this.§_-Yi§ = this.§_-iD§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-XK§() : void
      {
         this.§_-M2§.push(this.§_-BS§);
         if(this.§_-BS§.§_-00P§)
         {
            this.§_-bm§[this.§_-BS§.§_-00P§] = this.§_-BS§;
         }
         dispatchEvent(new §_-LC§(§_-LC§.§_-2l§,this.§_-BS§));
         this.§_-BS§ = null;
      }
      
      protected function §_-jU§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§_-hW§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§_-P1§.§_-ZO§))
            {
               throw e;
            }
            dispatchEvent(new §_-P1§(§_-P1§.§_-ZO§,e.message));
         }
      }
      
      protected function §_-yt§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §_-t8§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §_-hE§() : void
      {
         this.§_-hW§.addEventListener(Event.COMPLETE,this.§_-yt§);
         this.§_-hW§.addEventListener(Event.OPEN,this.§_-yt§);
         this.§_-hW§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-yt§);
         this.§_-hW§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-t8§);
         this.§_-hW§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-t8§);
         this.§_-hW§.addEventListener(ProgressEvent.PROGRESS,this.§_-jU§);
      }
      
      protected function §_-9N§() : void
      {
         this.§_-hW§.removeEventListener(Event.COMPLETE,this.§_-yt§);
         this.§_-hW§.removeEventListener(Event.OPEN,this.§_-yt§);
         this.§_-hW§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-yt§);
         this.§_-hW§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-t8§);
         this.§_-hW§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-t8§);
         this.§_-hW§.removeEventListener(ProgressEvent.PROGRESS,this.§_-jU§);
      }
   }
}
