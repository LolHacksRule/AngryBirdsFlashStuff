package §use §
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
   
   public class §[!,§ extends EventDispatcher
   {
      
      static const §?!$§:uint = 33639248;
      
      static const §?X§:uint = 808471376;
      
      static const §=!@§:uint = 67324752;
      
      static const § 5§:uint = 84233040;
      
      static const §;z§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §#!,§:uint = 134695760;
      
      static const §>6§:uint = 134630224;
      
      static const §!]§:uint = 134695760;
       
      
      protected var §>'§:Array;
      
      protected var §+p§:Dictionary;
      
      protected var §!!3§:URLStream;
      
      protected var §"v§:String;
      
      protected var §const§:Function;
      
      protected var §#!c§:§"!X§;
      
      protected var §+!C§:ByteArray;
      
      protected var §#!d§:uint;
      
      protected var §]!a§:uint;
      
      public function §[!,§(param1:String = "utf-8")
      {
         super();
         this.§"v§ = param1;
         this.§const§ = this.§ !%§;
      }
      
      public function get §5!C§() : Boolean
      {
         return this.§const§ !== this.§ !%§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§!!3§ && this.§const§ == this.§ !%§)
         {
            this.§!!3§ = new URLStream();
            this.§!!3§.endian = Endian.LITTLE_ENDIAN;
            this.§#!'§();
            this.§>'§ = [];
            this.§+p§ = new Dictionary();
            this.§const§ = this.§if§;
            this.§!!3§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§!!3§ && this.§const§ == this.§ !%§)
         {
            this.§>'§ = [];
            this.§+p§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§const§ = this.§if§;
            if(this.parse(param1))
            {
               this.§const§ = this.§ !%§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §#!a§(§#!a§.§%h§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§!!3§)
         {
            this.§const§ = this.§ !%§;
            this.§8G§();
            this.§!!3§.close();
            this.§!!3§ = null;
         }
      }
      
      public function §1;§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"!X§ = null;
         if(param1 != null && this.§>'§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§>'§.length)
            {
               if((_loc8_ = this.§>'§[_loc7_] as §"!X§) != null)
               {
                  _loc8_.§1;§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§1;§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§;z§);
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
      
      public function §'![§() : uint
      {
         return !!this.§>'§ ? uint(this.§>'§.length) : uint(0);
      }
      
      public function §^N§(param1:uint) : §"!X§
      {
         return !!this.§>'§ ? this.§>'§[param1] as §"!X§ : null;
      }
      
      public function §]F§(param1:String) : §"!X§
      {
         return !!this.§+p§[param1] ? this.§+p§[param1] as §"!X§ : null;
      }
      
      public function §3@§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"!X§
      {
         return this.§<G§(!!this.§>'§ ? uint(this.§>'§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^!O§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"!X§
      {
         return this.§;!^§(!!this.§>'§ ? uint(this.§>'§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §<G§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"!X§
      {
         if(this.§>'§ == null)
         {
            this.§>'§ = [];
         }
         if(this.§+p§ == null)
         {
            this.§+p§ = new Dictionary();
         }
         else if(this.§+p§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"!X§;
         (_loc5_ = new §"!X§()).§<8§ = param2;
         _loc5_.§[!+§(param3,param4);
         if(param1 >= this.§>'§.length)
         {
            this.§>'§.push(_loc5_);
         }
         else
         {
            this.§>'§.splice(param1,0,_loc5_);
         }
         this.§+p§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §;!^§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"!X§
      {
         if(this.§>'§ == null)
         {
            this.§>'§ = [];
         }
         if(this.§+p§ == null)
         {
            this.§+p§ = new Dictionary();
         }
         else if(this.§+p§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"!X§;
         (_loc6_ = new §"!X§()).§<8§ = param2;
         _loc6_.§&w§(param3,param4,param5);
         if(param1 >= this.§>'§.length)
         {
            this.§>'§.push(_loc6_);
         }
         else
         {
            this.§>'§.splice(param1,0,_loc6_);
         }
         this.§+p§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §-o§(param1:uint) : §"!X§
      {
         var _loc2_:§"!X§ = null;
         if(this.§>'§ != null && this.§+p§ != null && param1 < this.§>'§.length)
         {
            _loc2_ = this.§>'§[param1] as §"!X§;
            if(_loc2_ != null)
            {
               this.§>'§.splice(param1,1);
               delete this.§+p§[_loc2_.§<8§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§const§(param1))
         {
         }
         return this.§const§ === this.§ !%§;
      }
      
      protected function § !%§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §if§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §=!@§:
                  this.§const§ = this.§!m§;
                  this.§#!c§ = new §"!X§(this.§"v§);
                  break;
               case §?!$§:
               case §;z§:
               case §?X§:
               case § 5§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §#!,§:
               case §>6§:
               case §!]§:
                  this.§const§ = this.§ !%§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §!m§(param1:IDataInput) : Boolean
      {
         if(this.§#!c§.parse(param1))
         {
            if(this.§#!c§.§37§)
            {
               this.§const§ = this.§=R§;
               this.§+!C§ = new ByteArray();
               this.§#!d§ = 0;
               this.§]!a§ = 0;
               return true;
            }
            this.§2!a§();
            if(this.§const§ != this.§ !%§)
            {
               this.§const§ = this.§if§;
               return true;
            }
         }
         return false;
      }
      
      protected function §=R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§#!d§ = this.§#!d§ >>> 8 | _loc2_ << 24;
            if(this.§#!d§ == §#!,§)
            {
               this.§+!C§.length -= 3;
               this.§const§ = this.§`![§;
               return true;
            }
            this.§+!C§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`![§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§+!C§.length == _loc3_)
            {
               this.§+!C§.position = 0;
               this.§#!c§.§!'§ = _loc2_;
               this.§#!c§.§`!%§ = _loc3_;
               this.§#!c§.§9Q§ = _loc4_;
               this.§#!c§.§,!W§(this.§+!C§);
               this.§2!a§();
               this.§const§ = this.§if§;
            }
            else
            {
               this.§+!C§.writeUnsignedInt(_loc2_);
               this.§+!C§.writeUnsignedInt(_loc3_);
               this.§+!C§.writeUnsignedInt(_loc4_);
               this.§const§ = this.§=R§;
            }
            return true;
         }
         return false;
      }
      
      protected function §2!a§() : void
      {
         this.§>'§.push(this.§#!c§);
         if(this.§#!c§.§<8§)
         {
            this.§+p§[this.§#!c§.§<8§] = this.§#!c§;
         }
         dispatchEvent(new §@x§(§@x§.§throw§,this.§#!c§));
         this.§#!c§ = null;
      }
      
      protected function §"E§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§!!3§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§#!a§.§%h§))
            {
               throw e;
            }
            dispatchEvent(new §#!a§(§#!a§.§%h§,e.message));
         }
      }
      
      protected function §#"§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §7!Q§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §#!'§() : void
      {
         this.§!!3§.addEventListener(Event.COMPLETE,this.§#"§);
         this.§!!3§.addEventListener(Event.OPEN,this.§#"§);
         this.§!!3§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#"§);
         this.§!!3§.addEventListener(IOErrorEvent.IO_ERROR,this.§7!Q§);
         this.§!!3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!Q§);
         this.§!!3§.addEventListener(ProgressEvent.PROGRESS,this.§"E§);
      }
      
      protected function §8G§() : void
      {
         this.§!!3§.removeEventListener(Event.COMPLETE,this.§#"§);
         this.§!!3§.removeEventListener(Event.OPEN,this.§#"§);
         this.§!!3§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#"§);
         this.§!!3§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!Q§);
         this.§!!3§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!Q§);
         this.§!!3§.removeEventListener(ProgressEvent.PROGRESS,this.§"E§);
      }
   }
}
