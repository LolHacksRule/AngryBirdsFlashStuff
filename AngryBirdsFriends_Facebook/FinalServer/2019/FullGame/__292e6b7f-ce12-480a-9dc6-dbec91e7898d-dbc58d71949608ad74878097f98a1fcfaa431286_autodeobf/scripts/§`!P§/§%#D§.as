package §`!P§
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
   
   public class §%#D§ extends EventDispatcher
   {
      
      static const §^"J§:uint = 33639248;
      
      static const §&#r§:uint = 808471376;
      
      static const §<a§:uint = 67324752;
      
      static const §>#&§:uint = 84233040;
      
      static const §>"A§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §<[§:uint = 134695760;
      
      static const §]"f§:uint = 134630224;
      
      static const §'!T§:uint = 134695760;
       
      
      protected var §+0§:Array;
      
      protected var §`#Y§:Dictionary;
      
      protected var §!d§:URLStream;
      
      protected var §;!2§:String;
      
      protected var §#!N§:Function;
      
      protected var §;"P§:§+#u§;
      
      protected var §##m§:ByteArray;
      
      protected var §3"K§:uint;
      
      protected var §=";§:uint;
      
      public function §%#D§(param1:String = "utf-8")
      {
         super();
         this.§;!2§ = param1;
         this.§#!N§ = this.§1"N§;
      }
      
      public function get active() : Boolean
      {
         return this.§#!N§ !== this.§1"N§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§!d§ && this.§#!N§ == this.§1"N§)
         {
            this.§!d§ = new URLStream();
            this.§!d§.endian = Endian.LITTLE_ENDIAN;
            this.§1!@§();
            this.§+0§ = [];
            this.§`#Y§ = new Dictionary();
            this.§#!N§ = this.§=2§;
            this.§!d§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§!d§ && this.§#!N§ == this.§1"N§)
         {
            this.§+0§ = [];
            this.§`#Y§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§#!N§ = this.§=2§;
            if(this.parse(param1))
            {
               this.§#!N§ = this.§1"N§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §>!m§(§>!m§.§84§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§!d§)
         {
            this.§#!N§ = this.§1"N§;
            this.§'$E§();
            this.§!d§.close();
            this.§!d§ = null;
         }
      }
      
      public function §=$<§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§+#u§ = null;
         if(param1 != null && this.§+0§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§+0§.length)
            {
               if((_loc8_ = this.§+0§[_loc7_] as §+#u§) != null)
               {
                  _loc8_.§=$<§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§=$<§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§>"A§);
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
      
      public function §%"2§() : uint
      {
         return !!this.§+0§ ? uint(this.§+0§.length) : uint(0);
      }
      
      public function §""T§(param1:uint) : §+#u§
      {
         return !!this.§+0§ ? this.§+0§[param1] as §+#u§ : null;
      }
      
      public function §+?§(param1:String) : §+#u§
      {
         return !!this.§`#Y§[param1] ? this.§`#Y§[param1] as §+#u§ : null;
      }
      
      public function §!!o§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §+#u§
      {
         return this.§+"Q§(!!this.§+0§ ? uint(this.§+0§.length) : uint(0),param1,param2,param3);
      }
      
      public function §9!]§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §+#u§
      {
         return this.§;$'§(!!this.§+0§ ? uint(this.§+0§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §+"Q§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §+#u§
      {
         if(this.§+0§ == null)
         {
            this.§+0§ = [];
         }
         if(this.§`#Y§ == null)
         {
            this.§`#Y§ = new Dictionary();
         }
         else if(this.§`#Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§+#u§;
         (_loc5_ = new §+#u§()).filename = param2;
         _loc5_.§^$>§(param3,param4);
         if(param1 >= this.§+0§.length)
         {
            this.§+0§.push(_loc5_);
         }
         else
         {
            this.§+0§.splice(param1,0,_loc5_);
         }
         this.§`#Y§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;$'§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §+#u§
      {
         if(this.§+0§ == null)
         {
            this.§+0§ = [];
         }
         if(this.§`#Y§ == null)
         {
            this.§`#Y§ = new Dictionary();
         }
         else if(this.§`#Y§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§+#u§;
         (_loc6_ = new §+#u§()).filename = param2;
         _loc6_.§4$-§(param3,param4,param5);
         if(param1 >= this.§+0§.length)
         {
            this.§+0§.push(_loc6_);
         }
         else
         {
            this.§+0§.splice(param1,0,_loc6_);
         }
         this.§`#Y§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §09§(param1:uint) : §+#u§
      {
         var _loc2_:§+#u§ = null;
         if(this.§+0§ != null && this.§`#Y§ != null && param1 < this.§+0§.length)
         {
            _loc2_ = this.§+0§[param1] as §+#u§;
            if(_loc2_ != null)
            {
               this.§+0§.splice(param1,1);
               delete this.§`#Y§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§#!N§(param1))
         {
         }
         return this.§#!N§ === this.§1"N§;
      }
      
      protected function §1"N§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §<a§:
                  this.§#!N§ = this.§]"N§;
                  this.§;"P§ = new §+#u§(this.§;!2§);
                  break;
               case §^"J§:
               case §>"A§:
               case §&#r§:
               case §>#&§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §<[§:
               case §]"f§:
               case §'!T§:
                  this.§#!N§ = this.§1"N§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §]"N§(param1:IDataInput) : Boolean
      {
         if(this.§;"P§.parse(param1))
         {
            if(this.§;"P§.§-"T§)
            {
               this.§#!N§ = this.§6h§;
               this.§##m§ = new ByteArray();
               this.§3"K§ = 0;
               this.§=";§ = 0;
               return true;
            }
            this.§6!K§();
            if(this.§#!N§ != this.§1"N§)
            {
               this.§#!N§ = this.§=2§;
               return true;
            }
         }
         return false;
      }
      
      protected function §6h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§3"K§ = this.§3"K§ >>> 8 | _loc2_ << 24;
            if(this.§3"K§ == §<[§)
            {
               this.§##m§.length -= 3;
               this.§#!N§ = this.§[!>§;
               return true;
            }
            this.§##m§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §[!>§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§##m§.length == _loc3_)
            {
               this.§##m§.position = 0;
               this.§;"P§.§3!^§ = _loc2_;
               this.§;"P§.§@!V§ = _loc3_;
               this.§;"P§.§7K§ = _loc4_;
               this.§;"P§.§9#W§(this.§##m§);
               this.§6!K§();
               this.§#!N§ = this.§=2§;
            }
            else
            {
               this.§##m§.writeUnsignedInt(_loc2_);
               this.§##m§.writeUnsignedInt(_loc3_);
               this.§##m§.writeUnsignedInt(_loc4_);
               this.§#!N§ = this.§6h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6!K§() : void
      {
         this.§+0§.push(this.§;"P§);
         if(this.§;"P§.filename)
         {
            this.§`#Y§[this.§;"P§.filename] = this.§;"P§;
         }
         dispatchEvent(new §;"0§(§;"0§.§3"`§,this.§;"P§));
         this.§;"P§ = null;
      }
      
      protected function §!"E§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§!d§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§>!m§.§84§))
            {
               throw e;
            }
            dispatchEvent(new §>!m§(§>!m§.§84§,e.message));
         }
      }
      
      protected function §3"[§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §-#e§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §1!@§() : void
      {
         this.§!d§.addEventListener(Event.COMPLETE,this.§3"[§);
         this.§!d§.addEventListener(Event.OPEN,this.§3"[§);
         this.§!d§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3"[§);
         this.§!d§.addEventListener(IOErrorEvent.IO_ERROR,this.§-#e§);
         this.§!d§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-#e§);
         this.§!d§.addEventListener(ProgressEvent.PROGRESS,this.§!"E§);
      }
      
      protected function §'$E§() : void
      {
         this.§!d§.removeEventListener(Event.COMPLETE,this.§3"[§);
         this.§!d§.removeEventListener(Event.OPEN,this.§3"[§);
         this.§!d§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3"[§);
         this.§!d§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-#e§);
         this.§!d§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-#e§);
         this.§!d§.removeEventListener(ProgressEvent.PROGRESS,this.§!"E§);
      }
   }
}
