package §2"_§
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
   
   public class §6!L§ extends EventDispatcher
   {
      
      static const §>#f§:uint = 33639248;
      
      static const §+#w§:uint = 808471376;
      
      static const §!@§:uint = 67324752;
      
      static const §^"r§:uint = 84233040;
      
      static const § !9§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §9"D§:uint = 134695760;
      
      static const §]?§:uint = 134630224;
      
      static const §6"R§:uint = 134695760;
       
      
      protected var §3"v§:Array;
      
      protected var §6#0§:Dictionary;
      
      protected var §8$&§:URLStream;
      
      protected var §+!#§:String;
      
      protected var §2P§:Function;
      
      protected var §5E§:§3#8§;
      
      protected var §?!-§:ByteArray;
      
      protected var §!"K§:uint;
      
      protected var §<"O§:uint;
      
      public function §6!L§(param1:String = "utf-8")
      {
         super();
         this.§+!#§ = param1;
         this.§2P§ = this.§8#3§;
      }
      
      public function get active() : Boolean
      {
         return this.§2P§ !== this.§8#3§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8$&§ && this.§2P§ == this.§8#3§)
         {
            this.§8$&§ = new URLStream();
            this.§8$&§.endian = Endian.LITTLE_ENDIAN;
            this.§1#x§();
            this.§3"v§ = [];
            this.§6#0§ = new Dictionary();
            this.§2P§ = this.§'#N§;
            this.§8$&§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8$&§ && this.§2P§ == this.§8#3§)
         {
            this.§3"v§ = [];
            this.§6#0§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§2P§ = this.§'#N§;
            if(this.parse(param1))
            {
               this.§2P§ = this.§8#3§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §<S§(§<S§.§,C§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8$&§)
         {
            this.§2P§ = this.§8#3§;
            this.§>"C§();
            this.§8$&§.close();
            this.§8$&§ = null;
         }
      }
      
      public function §+!>§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§3#8§ = null;
         if(param1 != null && this.§3"v§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§3"v§.length)
            {
               if((_loc8_ = this.§3"v§[_loc7_] as §3#8§) != null)
               {
                  _loc8_.§+!>§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§+!>§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§ !9§);
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
      
      public function §!!Q§() : uint
      {
         return !!this.§3"v§ ? uint(this.§3"v§.length) : uint(0);
      }
      
      public function §-$+§(param1:uint) : §3#8§
      {
         return !!this.§3"v§ ? this.§3"v§[param1] as §3#8§ : null;
      }
      
      public function §8!s§(param1:String) : §3#8§
      {
         return !!this.§6#0§[param1] ? this.§6#0§[param1] as §3#8§ : null;
      }
      
      public function §[`§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §3#8§
      {
         return this.§'#u§(!!this.§3"v§ ? uint(this.§3"v§.length) : uint(0),param1,param2,param3);
      }
      
      public function §;v§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §3#8§
      {
         return this.§@>§(!!this.§3"v§ ? uint(this.§3"v§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §'#u§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §3#8§
      {
         if(this.§3"v§ == null)
         {
            this.§3"v§ = [];
         }
         if(this.§6#0§ == null)
         {
            this.§6#0§ = new Dictionary();
         }
         else if(this.§6#0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§3#8§;
         (_loc5_ = new §3#8§()).filename = param2;
         _loc5_.§5!h§(param3,param4);
         if(param1 >= this.§3"v§.length)
         {
            this.§3"v§.push(_loc5_);
         }
         else
         {
            this.§3"v§.splice(param1,0,_loc5_);
         }
         this.§6#0§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §@>§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §3#8§
      {
         if(this.§3"v§ == null)
         {
            this.§3"v§ = [];
         }
         if(this.§6#0§ == null)
         {
            this.§6#0§ = new Dictionary();
         }
         else if(this.§6#0§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§3#8§;
         (_loc6_ = new §3#8§()).filename = param2;
         _loc6_.§@m§(param3,param4,param5);
         if(param1 >= this.§3"v§.length)
         {
            this.§3"v§.push(_loc6_);
         }
         else
         {
            this.§3"v§.splice(param1,0,_loc6_);
         }
         this.§6#0§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §?!9§(param1:uint) : §3#8§
      {
         var _loc2_:§3#8§ = null;
         if(this.§3"v§ != null && this.§6#0§ != null && param1 < this.§3"v§.length)
         {
            _loc2_ = this.§3"v§[param1] as §3#8§;
            if(_loc2_ != null)
            {
               this.§3"v§.splice(param1,1);
               delete this.§6#0§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§2P§(param1))
         {
         }
         return this.§2P§ === this.§8#3§;
      }
      
      protected function §8#3§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §'#N§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §!@§:
                  this.§2P§ = this.§>#B§;
                  this.§5E§ = new §3#8§(this.§+!#§);
                  break;
               case §>#f§:
               case § !9§:
               case §+#w§:
               case §^"r§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §9"D§:
               case §]?§:
               case §6"R§:
                  this.§2P§ = this.§8#3§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §>#B§(param1:IDataInput) : Boolean
      {
         if(this.§5E§.parse(param1))
         {
            if(this.§5E§.§?$-§)
            {
               this.§2P§ = this.§ $9§;
               this.§?!-§ = new ByteArray();
               this.§!"K§ = 0;
               this.§<"O§ = 0;
               return true;
            }
            this.§'5§();
            if(this.§2P§ != this.§8#3§)
            {
               this.§2P§ = this.§'#N§;
               return true;
            }
         }
         return false;
      }
      
      protected function § $9§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§!"K§ = this.§!"K§ >>> 8 | _loc2_ << 24;
            if(this.§!"K§ == §9"D§)
            {
               this.§?!-§.length -= 3;
               this.§2P§ = this.§,$2§;
               return true;
            }
            this.§?!-§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §,$2§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§?!-§.length == _loc3_)
            {
               this.§?!-§.position = 0;
               this.§5E§.§%"M§ = _loc2_;
               this.§5E§.§^"s§ = _loc3_;
               this.§5E§.§'";§ = _loc4_;
               this.§5E§.§%$0§(this.§?!-§);
               this.§'5§();
               this.§2P§ = this.§'#N§;
            }
            else
            {
               this.§?!-§.writeUnsignedInt(_loc2_);
               this.§?!-§.writeUnsignedInt(_loc3_);
               this.§?!-§.writeUnsignedInt(_loc4_);
               this.§2P§ = this.§ $9§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'5§() : void
      {
         this.§3"v§.push(this.§5E§);
         if(this.§5E§.filename)
         {
            this.§6#0§[this.§5E§.filename] = this.§5E§;
         }
         dispatchEvent(new §?W§(§?W§.§ "_§,this.§5E§));
         this.§5E§ = null;
      }
      
      protected function §5" §(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8$&§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(hasEventListener(§<S§.§,C§))
            {
               dispatchEvent(new §<S§(§<S§.§,C§,e.message));
            }
            else
            {
               throw e;
            }
         }
      }
      
      protected function §%j§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §"!2§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §1#x§() : void
      {
         this.§8$&§.addEventListener(Event.COMPLETE,this.§%j§);
         this.§8$&§.addEventListener(Event.OPEN,this.§%j§);
         this.§8$&§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%j§);
         this.§8$&§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!2§);
         this.§8$&§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!2§);
         this.§8$&§.addEventListener(ProgressEvent.PROGRESS,this.§5" §);
      }
      
      protected function §>"C§() : void
      {
         this.§8$&§.removeEventListener(Event.COMPLETE,this.§%j§);
         this.§8$&§.removeEventListener(Event.OPEN,this.§%j§);
         this.§8$&§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%j§);
         this.§8$&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!2§);
         this.§8$&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!2§);
         this.§8$&§.removeEventListener(ProgressEvent.PROGRESS,this.§5" §);
      }
   }
}
