package §24§
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
   
   public class §-`§ extends EventDispatcher
   {
      
      static const §1u§:uint = 33639248;
      
      static const §@5§:uint = 808471376;
      
      static const §2O§:uint = 67324752;
      
      static const §?!9§:uint = 84233040;
      
      static const §'Q§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §[i§:uint = 134695760;
      
      static const §]F§:uint = 134630224;
      
      static const §2d§:uint = 134695760;
       
      
      protected var §]H§:Array;
      
      protected var §&s§:Dictionary;
      
      protected var §8!0§:URLStream;
      
      protected var §^9§:String;
      
      protected var §5!!§:Function;
      
      protected var §]_§:§3s§;
      
      protected var §7V§:ByteArray;
      
      protected var §4!J§:uint;
      
      protected var §+>§:uint;
      
      public function §-`§(param1:String = "utf-8")
      {
         super();
         this.§^9§ = param1;
         this.§5!!§ = this.§7o§;
      }
      
      public function get active() : Boolean
      {
         return this.§5!!§ !== this.§7o§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§8!0§ && this.§5!!§ == this.§7o§)
         {
            this.§8!0§ = new URLStream();
            this.§8!0§.endian = Endian.LITTLE_ENDIAN;
            this.§=o§();
            this.§]H§ = [];
            this.§&s§ = new Dictionary();
            this.§5!!§ = this.§"X§;
            this.§8!0§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§8!0§ && this.§5!!§ == this.§7o§)
         {
            this.§]H§ = [];
            this.§&s§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§5!!§ = this.§"X§;
            if(this.parse(param1))
            {
               this.§5!!§ = this.§7o§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §&!1§(§&!1§.§8F§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§8!0§)
         {
            this.§5!!§ = this.§7o§;
            this.§?G§();
            this.§8!0§.close();
            this.§8!0§ = null;
         }
      }
      
      public function §]>§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§3s§ = null;
         if(param1 != null && this.§]H§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§]H§.length)
            {
               if((_loc8_ = this.§]H§[_loc7_] as §3s§) != null)
               {
                  _loc8_.§]>§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§]>§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§'Q§);
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
      
      public function §=`§() : uint
      {
         return !!this.§]H§ ? uint(this.§]H§.length) : uint(0);
      }
      
      public function §8!'§(param1:uint) : §3s§
      {
         return !!this.§]H§ ? this.§]H§[param1] as §3s§ : null;
      }
      
      public function §<b§(param1:String) : §3s§
      {
         return !!this.§&s§[param1] ? this.§&s§[param1] as §3s§ : null;
      }
      
      public function §=P§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §3s§
      {
         return this.§3!F§(!!this.§]H§ ? uint(this.§]H§.length) : uint(0),param1,param2,param3);
      }
      
      public function § case§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §3s§
      {
         return this.§1!F§(!!this.§]H§ ? uint(this.§]H§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §3!F§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §3s§
      {
         if(this.§]H§ == null)
         {
            this.§]H§ = [];
         }
         if(this.§&s§ == null)
         {
            this.§&s§ = new Dictionary();
         }
         else if(this.§&s§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§3s§;
         (_loc5_ = new §3s§()).§,!2§ = param2;
         _loc5_.§3-§(param3,param4);
         if(param1 >= this.§]H§.length)
         {
            this.§]H§.push(_loc5_);
         }
         else
         {
            this.§]H§.splice(param1,0,_loc5_);
         }
         this.§&s§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §1!F§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §3s§
      {
         if(this.§]H§ == null)
         {
            this.§]H§ = [];
         }
         if(this.§&s§ == null)
         {
            this.§&s§ = new Dictionary();
         }
         else if(this.§&s§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§3s§;
         (_loc6_ = new §3s§()).§,!2§ = param2;
         _loc6_.§#W§(param3,param4,param5);
         if(param1 >= this.§]H§.length)
         {
            this.§]H§.push(_loc6_);
         }
         else
         {
            this.§]H§.splice(param1,0,_loc6_);
         }
         this.§&s§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function § h§(param1:uint) : §3s§
      {
         var _loc2_:§3s§ = null;
         if(this.§]H§ != null && this.§&s§ != null && param1 < this.§]H§.length)
         {
            _loc2_ = this.§]H§[param1] as §3s§;
            if(_loc2_ != null)
            {
               this.§]H§.splice(param1,1);
               delete this.§&s§[_loc2_.§,!2§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5!!§(param1))
         {
         }
         return this.§5!!§ === this.§7o§;
      }
      
      protected function §7o§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"X§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §2O§:
                  this.§5!!§ = this.§return§;
                  this.§]_§ = new §3s§(this.§^9§);
                  break;
               case §1u§:
               case §'Q§:
               case §@5§:
               case §?!9§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §[i§:
               case §]F§:
               case §2d§:
                  this.§5!!§ = this.§7o§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §return§(param1:IDataInput) : Boolean
      {
         if(this.§]_§.parse(param1))
         {
            if(this.§]_§.§=B§)
            {
               this.§5!!§ = this.§!v§;
               this.§7V§ = new ByteArray();
               this.§4!J§ = 0;
               this.§+>§ = 0;
               return true;
            }
            this.§9!2§();
            if(this.§5!!§ != this.§7o§)
            {
               this.§5!!§ = this.§"X§;
               return true;
            }
         }
         return false;
      }
      
      protected function §!v§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§4!J§ = this.§4!J§ >>> 8 | _loc2_ << 24;
            if(this.§4!J§ == §[i§)
            {
               this.§7V§.length -= 3;
               this.§5!!§ = this.§1h§;
               return true;
            }
            this.§7V§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §1h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7V§.length == _loc3_)
            {
               this.§7V§.position = 0;
               this.§]_§.§5!A§ = _loc2_;
               this.§]_§.§6f§ = _loc3_;
               this.§]_§.§-g§ = _loc4_;
               this.§]_§.§6%§(this.§7V§);
               this.§9!2§();
               this.§5!!§ = this.§"X§;
            }
            else
            {
               this.§7V§.writeUnsignedInt(_loc2_);
               this.§7V§.writeUnsignedInt(_loc3_);
               this.§7V§.writeUnsignedInt(_loc4_);
               this.§5!!§ = this.§!v§;
            }
            return true;
         }
         return false;
      }
      
      protected function §9!2§() : void
      {
         this.§]H§.push(this.§]_§);
         if(this.§]_§.§,!2§)
         {
            this.§&s§[this.§]_§.§,!2§] = this.§]_§;
         }
         dispatchEvent(new native(native.§?2§,this.§]_§));
         this.§]_§ = null;
      }
      
      protected function §4^§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§8!0§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§&!1§.§8F§))
            {
               throw e;
            }
            dispatchEvent(new §&!1§(§&!1§.§8F§,e.message));
         }
      }
      
      protected function §3S§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §8N§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §=o§() : void
      {
         this.§8!0§.addEventListener(Event.COMPLETE,this.§3S§);
         this.§8!0§.addEventListener(Event.OPEN,this.§3S§);
         this.§8!0§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3S§);
         this.§8!0§.addEventListener(IOErrorEvent.IO_ERROR,this.§8N§);
         this.§8!0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8N§);
         this.§8!0§.addEventListener(ProgressEvent.PROGRESS,this.§4^§);
      }
      
      protected function §?G§() : void
      {
         this.§8!0§.removeEventListener(Event.COMPLETE,this.§3S§);
         this.§8!0§.removeEventListener(Event.OPEN,this.§3S§);
         this.§8!0§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3S§);
         this.§8!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8N§);
         this.§8!0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8N§);
         this.§8!0§.removeEventListener(ProgressEvent.PROGRESS,this.§4^§);
      }
   }
}
