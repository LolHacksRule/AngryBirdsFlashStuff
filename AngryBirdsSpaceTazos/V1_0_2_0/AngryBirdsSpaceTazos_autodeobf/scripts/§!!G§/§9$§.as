package §!!G§
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
   
   public class §9$§ extends EventDispatcher
   {
      
      static const §2!s§:uint = 33639248;
      
      static const §-M§:uint = 808471376;
      
      static const §3!T§:uint = 67324752;
      
      static const §9z§:uint = 84233040;
      
      static const §2>§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §>!O§:uint = 134695760;
      
      static const §"l§:uint = 134630224;
      
      static const §4!O§:uint = 134695760;
       
      
      protected var § true§:Array;
      
      protected var §`" §:Dictionary;
      
      protected var §<-§:URLStream;
      
      protected var §^@§:String;
      
      protected var §""H§:Function;
      
      protected var §%"G§:§`Z§;
      
      protected var §?"5§:ByteArray;
      
      protected var §->§:uint;
      
      protected var §]!<§:uint;
      
      public function §9$§(param1:String = "utf-8")
      {
         super();
         this.§^@§ = param1;
         this.§""H§ = this.§[^§;
      }
      
      public function get §0!!§() : Boolean
      {
         return this.§""H§ !== this.§[^§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§<-§ && this.§""H§ == this.§[^§)
         {
            this.§<-§ = new URLStream();
            this.§<-§.endian = Endian.LITTLE_ENDIAN;
            this.§,!d§();
            this.§ true§ = [];
            this.§`" § = new Dictionary();
            this.§""H§ = this.§+"+§;
            this.§<-§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§<-§ && this.§""H§ == this.§[^§)
         {
            this.§ true§ = [];
            this.§`" § = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§""H§ = this.§+"+§;
            if(this.parse(param1))
            {
               this.§""H§ = this.§[^§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §5x§(§5x§.§?!S§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§<-§)
         {
            this.§""H§ = this.§[^§;
            this.§4_§();
            this.§<-§.close();
            this.§<-§ = null;
         }
      }
      
      public function §&x§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§`Z§ = null;
         if(param1 != null && this.§ true§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§ true§.length)
            {
               if((_loc8_ = this.§ true§[_loc7_] as §`Z§) != null)
               {
                  _loc8_.§&x§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&x§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§2>§);
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
      
      public function §2!m§() : uint
      {
         return !!this.§ true§ ? uint(this.§ true§.length) : uint(0);
      }
      
      public function §;!u§(param1:uint) : §`Z§
      {
         return !!this.§ true§ ? this.§ true§[param1] as §`Z§ : null;
      }
      
      public function §?!W§(param1:String) : §`Z§
      {
         return !!this.§`" §[param1] ? this.§`" §[param1] as §`Z§ : null;
      }
      
      public function §0Z§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §`Z§
      {
         return this.§]J§(!!this.§ true§ ? uint(this.§ true§.length) : uint(0),param1,param2,param3);
      }
      
      public function §[v§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §`Z§
      {
         return this.§&Z§(!!this.§ true§ ? uint(this.§ true§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §]J§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §`Z§
      {
         if(this.§ true§ == null)
         {
            this.§ true§ = [];
         }
         if(this.§`" § == null)
         {
            this.§`" § = new Dictionary();
         }
         else if(this.§`" §[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§`Z§;
         (_loc5_ = new §`Z§()).§7!$§ = param2;
         _loc5_.§!!2§(param3,param4);
         if(param1 >= this.§ true§.length)
         {
            this.§ true§.push(_loc5_);
         }
         else
         {
            this.§ true§.splice(param1,0,_loc5_);
         }
         this.§`" §[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §&Z§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §`Z§
      {
         if(this.§ true§ == null)
         {
            this.§ true§ = [];
         }
         if(this.§`" § == null)
         {
            this.§`" § = new Dictionary();
         }
         else if(this.§`" §[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§`Z§;
         (_loc6_ = new §`Z§()).§7!$§ = param2;
         _loc6_.§0"5§(param3,param4,param5);
         if(param1 >= this.§ true§.length)
         {
            this.§ true§.push(_loc6_);
         }
         else
         {
            this.§ true§.splice(param1,0,_loc6_);
         }
         this.§`" §[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §!!J§(param1:uint) : §`Z§
      {
         var _loc2_:§`Z§ = null;
         if(this.§ true§ != null && this.§`" § != null && param1 < this.§ true§.length)
         {
            _loc2_ = this.§ true§[param1] as §`Z§;
            if(_loc2_ != null)
            {
               this.§ true§.splice(param1,1);
               delete this.§`" §[_loc2_.§7!$§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§""H§(param1))
         {
         }
         return this.§""H§ === this.§[^§;
      }
      
      protected function §[^§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+"+§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §3!T§:
                  this.§""H§ = this.§"!U§;
                  this.§%"G§ = new §`Z§(this.§^@§);
                  break;
               case §2!s§:
               case §2>§:
               case §-M§:
               case §9z§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §>!O§:
               case §"l§:
               case §4!O§:
                  this.§""H§ = this.§[^§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §"!U§(param1:IDataInput) : Boolean
      {
         if(this.§%"G§.parse(param1))
         {
            if(this.§%"G§.§+"H§)
            {
               this.§""H§ = this.§1!-§;
               this.§?"5§ = new ByteArray();
               this.§->§ = 0;
               this.§]!<§ = 0;
               return true;
            }
            this.§<"E§();
            if(this.§""H§ != this.§[^§)
            {
               this.§""H§ = this.§+"+§;
               return true;
            }
         }
         return false;
      }
      
      protected function §1!-§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§->§ = this.§->§ >>> 8 | _loc2_ << 24;
            if(this.§->§ == §>!O§)
            {
               this.§?"5§.length -= 3;
               this.§""H§ = this.§0"@§;
               return true;
            }
            this.§?"5§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §0"@§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§?"5§.length == _loc3_)
            {
               this.§?"5§.position = 0;
               this.§%"G§.§9!Y§ = _loc2_;
               this.§%"G§.§8i§ = _loc3_;
               this.§%"G§.§5v§ = _loc4_;
               this.§%"G§.§4"2§(this.§?"5§);
               this.§<"E§();
               this.§""H§ = this.§+"+§;
            }
            else
            {
               this.§?"5§.writeUnsignedInt(_loc2_);
               this.§?"5§.writeUnsignedInt(_loc3_);
               this.§?"5§.writeUnsignedInt(_loc4_);
               this.§""H§ = this.§1!-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<"E§() : void
      {
         this.§ true§.push(this.§%"G§);
         if(this.§%"G§.§7!$§)
         {
            this.§`" §[this.§%"G§.§7!$§] = this.§%"G§;
         }
         dispatchEvent(new §@"6§(§@"6§.§`![§,this.§%"G§));
         this.§%"G§ = null;
      }
      
      protected function §+!F§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§<-§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§5x§.§?!S§))
            {
               throw e;
            }
            dispatchEvent(new §5x§(§5x§.§?!S§,e.message));
         }
      }
      
      protected function §%!z§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §^^§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §,!d§() : void
      {
         this.§<-§.addEventListener(Event.COMPLETE,this.§%!z§);
         this.§<-§.addEventListener(Event.OPEN,this.§%!z§);
         this.§<-§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!z§);
         this.§<-§.addEventListener(IOErrorEvent.IO_ERROR,this.§^^§);
         this.§<-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^^§);
         this.§<-§.addEventListener(ProgressEvent.PROGRESS,this.§+!F§);
      }
      
      protected function §4_§() : void
      {
         this.§<-§.removeEventListener(Event.COMPLETE,this.§%!z§);
         this.§<-§.removeEventListener(Event.OPEN,this.§%!z§);
         this.§<-§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!z§);
         this.§<-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^^§);
         this.§<-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^^§);
         this.§<-§.removeEventListener(ProgressEvent.PROGRESS,this.§+!F§);
      }
   }
}
