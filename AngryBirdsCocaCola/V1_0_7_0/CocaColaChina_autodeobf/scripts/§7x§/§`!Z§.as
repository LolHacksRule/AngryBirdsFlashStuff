package §7x§
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
   
   public class §`!Z§ extends EventDispatcher
   {
      
      static const §"E§:uint = 33639248;
      
      static const §#"§:uint = 808471376;
      
      static const §7!Q§:uint = 67324752;
      
      static const §#!'§:uint = 84233040;
      
      static const §8G§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §?!$§:uint = 134695760;
      
      static const §?X§:uint = 134630224;
      
      static const §=!@§:uint = 134695760;
       
      
      protected var §+!J§:Array;
      
      protected var §9H§:Dictionary;
      
      protected var §=f§:URLStream;
      
      protected var §use §:String;
      
      protected var §[!,§:Function;
      
      protected var §>'§:§ 5§;
      
      protected var §+p§:ByteArray;
      
      protected var §!!3§:uint;
      
      protected var §"v§:uint;
      
      public function §`!Z§(param1:String = "utf-8")
      {
         super();
         this.§use § = param1;
         this.§[!,§ = this.§3@§;
      }
      
      public function get §const§() : Boolean
      {
         return this.§[!,§ !== this.§3@§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§=f§ && this.§[!,§ == this.§3@§)
         {
            this.§=f§ = new URLStream();
            this.§=f§.endian = Endian.LITTLE_ENDIAN;
            this.§`![§();
            this.§+!J§ = [];
            this.§9H§ = new Dictionary();
            this.§[!,§ = this.§^!O§;
            this.§=f§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§=f§ && this.§[!,§ == this.§3@§)
         {
            this.§+!J§ = [];
            this.§9H§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[!,§ = this.§^!O§;
            if(this.parse(param1))
            {
               this.§[!,§ = this.§3@§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §;!9§(§;!9§.§8!^§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§=f§)
         {
            this.§[!,§ = this.§3@§;
            this.§2!a§();
            this.§=f§.close();
            this.§=f§ = null;
         }
      }
      
      public function §#!c§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§ 5§ = null;
         if(param1 != null && this.§+!J§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§+!J§.length)
            {
               if((_loc8_ = this.§+!J§[_loc7_] as § 5§) != null)
               {
                  _loc8_.§#!c§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§#!c§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§8G§);
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
      
      public function §+!C§() : uint
      {
         return !!this.§+!J§ ? uint(this.§+!J§.length) : uint(0);
      }
      
      public function §#!d§(param1:uint) : § 5§
      {
         return !!this.§+!J§ ? this.§+!J§[param1] as § 5§ : null;
      }
      
      public function §]!a§(param1:String) : § 5§
      {
         return !!this.§9H§[param1] ? this.§9H§[param1] as § 5§ : null;
      }
      
      public function §5!C§(param1:String, param2:ByteArray = null, param3:Boolean = true) : § 5§
      {
         return this.§'![§(!!this.§+!J§ ? uint(this.§+!J§.length) : uint(0),param1,param2,param3);
      }
      
      public function §1;§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : § 5§
      {
         return this.§^N§(!!this.§+!J§ ? uint(this.§+!J§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §'![§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : § 5§
      {
         if(this.§+!J§ == null)
         {
            this.§+!J§ = [];
         }
         if(this.§9H§ == null)
         {
            this.§9H§ = new Dictionary();
         }
         else if(this.§9H§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§ 5§;
         (_loc5_ = new § 5§()).§!'§ = param2;
         _loc5_.§9Q§(param3,param4);
         if(param1 >= this.§+!J§.length)
         {
            this.§+!J§.push(_loc5_);
         }
         else
         {
            this.§+!J§.splice(param1,0,_loc5_);
         }
         this.§9H§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §^N§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : § 5§
      {
         if(this.§+!J§ == null)
         {
            this.§+!J§ = [];
         }
         if(this.§9H§ == null)
         {
            this.§9H§ = new Dictionary();
         }
         else if(this.§9H§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§ 5§;
         (_loc6_ = new § 5§()).§!'§ = param2;
         _loc6_.§[!+§(param3,param4,param5);
         if(param1 >= this.§+!J§.length)
         {
            this.§+!J§.push(_loc6_);
         }
         else
         {
            this.§+!J§.splice(param1,0,_loc6_);
         }
         this.§9H§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §]F§(param1:uint) : § 5§
      {
         var _loc2_:§ 5§ = null;
         if(this.§+!J§ != null && this.§9H§ != null && param1 < this.§+!J§.length)
         {
            _loc2_ = this.§+!J§[param1] as § 5§;
            if(_loc2_ != null)
            {
               this.§+!J§.splice(param1,1);
               delete this.§9H§[_loc2_.§!'§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[!,§(param1))
         {
         }
         return this.§[!,§ === this.§3@§;
      }
      
      protected function §3@§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §^!O§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §7!Q§:
                  this.§[!,§ = this.§<G§;
                  this.§>'§ = new § 5§(this.§use §);
                  break;
               case §"E§:
               case §8G§:
               case §#"§:
               case §#!'§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §?!$§:
               case §?X§:
               case §=!@§:
                  this.§[!,§ = this.§3@§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §<G§(param1:IDataInput) : Boolean
      {
         if(this.§>'§.parse(param1))
         {
            if(this.§>'§.§`!%§)
            {
               this.§[!,§ = this.§;!^§;
               this.§+p§ = new ByteArray();
               this.§!!3§ = 0;
               this.§"v§ = 0;
               return true;
            }
            this.§ !%§();
            if(this.§[!,§ != this.§3@§)
            {
               this.§[!,§ = this.§^!O§;
               return true;
            }
         }
         return false;
      }
      
      protected function §;!^§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§!!3§ = this.§!!3§ >>> 8 | _loc2_ << 24;
            if(this.§!!3§ == §?!$§)
            {
               this.§+p§.length -= 3;
               this.§[!,§ = this.§-o§;
               return true;
            }
            this.§+p§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §-o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§+p§.length == _loc3_)
            {
               this.§+p§.position = 0;
               this.§>'§.§5!3§ = _loc2_;
               this.§>'§.§+;§ = _loc3_;
               this.§>'§.§`^§ = _loc4_;
               this.§>'§.§^!b§(this.§+p§);
               this.§ !%§();
               this.§[!,§ = this.§^!O§;
            }
            else
            {
               this.§+p§.writeUnsignedInt(_loc2_);
               this.§+p§.writeUnsignedInt(_loc3_);
               this.§+p§.writeUnsignedInt(_loc4_);
               this.§[!,§ = this.§;!^§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !%§() : void
      {
         this.§+!J§.push(this.§>'§);
         if(this.§>'§.§!'§)
         {
            this.§9H§[this.§>'§.§!'§] = this.§>'§;
         }
         dispatchEvent(new §6u§(§6u§.§`!U§,this.§>'§));
         this.§>'§ = null;
      }
      
      protected function §if§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§=f§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§;!9§.§8!^§))
            {
               throw e;
            }
            dispatchEvent(new §;!9§(§;!9§.§8!^§,e.message));
         }
      }
      
      protected function §!m§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §=R§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §`![§() : void
      {
         this.§=f§.addEventListener(Event.COMPLETE,this.§!m§);
         this.§=f§.addEventListener(Event.OPEN,this.§!m§);
         this.§=f§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!m§);
         this.§=f§.addEventListener(IOErrorEvent.IO_ERROR,this.§=R§);
         this.§=f§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=R§);
         this.§=f§.addEventListener(ProgressEvent.PROGRESS,this.§if§);
      }
      
      protected function §2!a§() : void
      {
         this.§=f§.removeEventListener(Event.COMPLETE,this.§!m§);
         this.§=f§.removeEventListener(Event.OPEN,this.§!m§);
         this.§=f§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!m§);
         this.§=f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=R§);
         this.§=f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=R§);
         this.§=f§.removeEventListener(ProgressEvent.PROGRESS,this.§if§);
      }
   }
}
