package §?!$§
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
   
   public class §"X§ extends EventDispatcher
   {
      
      static const §2R§:uint = 33639248;
      
      static const §null §:uint = 808471376;
      
      static const §#V§:uint = 67324752;
      
      static const §3!2§:uint = 84233040;
      
      static const §]A§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §7!L§:uint = 134695760;
      
      static const §7"§:uint = 134630224;
      
      static const §#!,§:uint = 134695760;
       
      
      protected var §>A§:Array;
      
      protected var §%!$§:Dictionary;
      
      protected var §;1§:URLStream;
      
      protected var §9!H§:String;
      
      protected var §>M§:Function;
      
      protected var §%-§:§#!=§;
      
      protected var §]!9§:ByteArray;
      
      protected var §,!§:uint;
      
      protected var §&!5§:uint;
      
      public function §"X§(param1:String = "utf-8")
      {
         super();
         this.§9!H§ = param1;
         this.§>M§ = this.§+g§;
      }
      
      public function get §6`§() : Boolean
      {
         return this.§>M§ !== this.§+g§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;1§ && this.§>M§ == this.§+g§)
         {
            this.§;1§ = new URLStream();
            this.§;1§.endian = Endian.LITTLE_ENDIAN;
            this.§2l§();
            this.§>A§ = [];
            this.§%!$§ = new Dictionary();
            this.§>M§ = this.§8,§;
            this.§;1§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;1§ && this.§>M§ == this.§+g§)
         {
            this.§>A§ = [];
            this.§%!$§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§>M§ = this.§8,§;
            if(this.parse(param1))
            {
               this.§>M§ = this.§+g§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §!!C§(§!!C§.§ !^§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;1§)
         {
            this.§>M§ = this.§+g§;
            this.§3!+§();
            this.§;1§.close();
            this.§;1§ = null;
         }
      }
      
      public function § !6§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§#!=§ = null;
         if(param1 != null && this.§>A§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§>A§.length)
            {
               if((_loc8_ = this.§>A§[_loc7_] as §#!=§) != null)
               {
                  _loc8_.§ !6§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§ !6§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§]A§);
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
      
      public function §^H§() : uint
      {
         return !!this.§>A§ ? uint(this.§>A§.length) : uint(0);
      }
      
      public function §@!_§(param1:uint) : §#!=§
      {
         return !!this.§>A§ ? this.§>A§[param1] as §#!=§ : null;
      }
      
      public function §8v§(param1:String) : §#!=§
      {
         return !!this.§%!$§[param1] ? this.§%!$§[param1] as §#!=§ : null;
      }
      
      public function §'d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#!=§
      {
         return this.§]<§(!!this.§>A§ ? uint(this.§>A§.length) : uint(0),param1,param2,param3);
      }
      
      public function §3[§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#!=§
      {
         return this.§[!P§(!!this.§>A§ ? uint(this.§>A§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §]<§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#!=§
      {
         if(this.§>A§ == null)
         {
            this.§>A§ = [];
         }
         if(this.§%!$§ == null)
         {
            this.§%!$§ = new Dictionary();
         }
         else if(this.§%!$§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§#!=§;
         (_loc5_ = new §#!=§()).§!!M§ = param2;
         _loc5_.§&4§(param3,param4);
         if(param1 >= this.§>A§.length)
         {
            this.§>A§.push(_loc5_);
         }
         else
         {
            this.§>A§.splice(param1,0,_loc5_);
         }
         this.§%!$§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §[!P§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#!=§
      {
         if(this.§>A§ == null)
         {
            this.§>A§ = [];
         }
         if(this.§%!$§ == null)
         {
            this.§%!$§ = new Dictionary();
         }
         else if(this.§%!$§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§#!=§;
         (_loc6_ = new §#!=§()).§!!M§ = param2;
         _loc6_.§1p§(param3,param4,param5);
         if(param1 >= this.§>A§.length)
         {
            this.§>A§.push(_loc6_);
         }
         else
         {
            this.§>A§.splice(param1,0,_loc6_);
         }
         this.§%!$§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §;t§(param1:uint) : §#!=§
      {
         var _loc2_:§#!=§ = null;
         if(this.§>A§ != null && this.§%!$§ != null && param1 < this.§>A§.length)
         {
            _loc2_ = this.§>A§[param1] as §#!=§;
            if(_loc2_ != null)
            {
               this.§>A§.splice(param1,1);
               delete this.§%!$§[_loc2_.§!!M§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§>M§(param1))
         {
         }
         return this.§>M§ === this.§+g§;
      }
      
      protected function §+g§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §8,§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §#V§:
                  this.§>M§ = this.§?4§;
                  this.§%-§ = new §#!=§(this.§9!H§);
                  break;
               case §2R§:
               case §]A§:
               case §null §:
               case §3!2§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §7!L§:
               case §7"§:
               case §#!,§:
                  this.§>M§ = this.§+g§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §?4§(param1:IDataInput) : Boolean
      {
         if(this.§%-§.parse(param1))
         {
            if(this.§%-§.§?f§)
            {
               this.§>M§ = this.§=f§;
               this.§]!9§ = new ByteArray();
               this.§,!§ = 0;
               this.§&!5§ = 0;
               return true;
            }
            this.§8!X§();
            if(this.§>M§ != this.§+g§)
            {
               this.§>M§ = this.§8,§;
               return true;
            }
         }
         return false;
      }
      
      protected function §=f§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§,!§ = this.§,!§ >>> 8 | _loc2_ << 24;
            if(this.§,!§ == §7!L§)
            {
               this.§]!9§.length -= 3;
               this.§>M§ = this.§[o§;
               return true;
            }
            this.§]!9§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §[o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§]!9§.length == _loc3_)
            {
               this.§]!9§.position = 0;
               this.§%-§.§<!§ = _loc2_;
               this.§%-§.§[!6§ = _loc3_;
               this.§%-§.§'K§ = _loc4_;
               this.§%-§.§8=§(this.§]!9§);
               this.§8!X§();
               this.§>M§ = this.§8,§;
            }
            else
            {
               this.§]!9§.writeUnsignedInt(_loc2_);
               this.§]!9§.writeUnsignedInt(_loc3_);
               this.§]!9§.writeUnsignedInt(_loc4_);
               this.§>M§ = this.§=f§;
            }
            return true;
         }
         return false;
      }
      
      protected function §8!X§() : void
      {
         this.§>A§.push(this.§%-§);
         if(this.§%-§.§!!M§)
         {
            this.§%!$§[this.§%-§.§!!M§] = this.§%-§;
         }
         dispatchEvent(new §;!R§(§;!R§.§'!9§,this.§%-§));
         this.§%-§ = null;
      }
      
      protected function §]!X§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;1§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§!!C§.§ !^§))
            {
               throw e;
            }
            dispatchEvent(new §!!C§(§!!C§.§ !^§,e.message));
         }
      }
      
      protected function §3!%§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §[D§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §2l§() : void
      {
         this.§;1§.addEventListener(Event.COMPLETE,this.§3!%§);
         this.§;1§.addEventListener(Event.OPEN,this.§3!%§);
         this.§;1§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!%§);
         this.§;1§.addEventListener(IOErrorEvent.IO_ERROR,this.§[D§);
         this.§;1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[D§);
         this.§;1§.addEventListener(ProgressEvent.PROGRESS,this.§]!X§);
      }
      
      protected function §3!+§() : void
      {
         this.§;1§.removeEventListener(Event.COMPLETE,this.§3!%§);
         this.§;1§.removeEventListener(Event.OPEN,this.§3!%§);
         this.§;1§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!%§);
         this.§;1§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[D§);
         this.§;1§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[D§);
         this.§;1§.removeEventListener(ProgressEvent.PROGRESS,this.§]!X§);
      }
   }
}
