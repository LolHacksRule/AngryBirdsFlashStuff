package §[!U§
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
   
   public class §?y§ extends EventDispatcher
   {
      
      static const §each §:uint = 33639248;
      
      static const §;!`§:uint = 808471376;
      
      static const §8!C§:uint = 67324752;
      
      static const §"!T§:uint = 84233040;
      
      static const §7n§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §'n§:uint = 134695760;
      
      static const §@P§:uint = 134630224;
      
      static const §7!>§:uint = 134695760;
       
      
      protected var §!f§:Array;
      
      protected var §#k§:Dictionary;
      
      protected var §`!P§:URLStream;
      
      protected var §1=§:String;
      
      protected var §+0§:Function;
      
      protected var §[6§:§<O§;
      
      protected var §'%§:ByteArray;
      
      protected var §-!#§:uint;
      
      protected var §9!I§:uint;
      
      public function §?y§(param1:String = "utf-8")
      {
         super();
         this.§1=§ = param1;
         this.§+0§ = this.§^![§;
      }
      
      public function get §if §() : Boolean
      {
         return this.§+0§ !== this.§^![§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§`!P§ && this.§+0§ == this.§^![§)
         {
            this.§`!P§ = new URLStream();
            this.§`!P§.endian = Endian.LITTLE_ENDIAN;
            this.§#+§();
            this.§!f§ = [];
            this.§#k§ = new Dictionary();
            this.§+0§ = this.§`U§;
            this.§`!P§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§`!P§ && this.§+0§ == this.§^![§)
         {
            this.§!f§ = [];
            this.§#k§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§+0§ = this.§`U§;
            if(this.parse(param1))
            {
               this.§+0§ = this.§^![§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §<!H§(§<!H§.§=;§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§`!P§)
         {
            this.§+0§ = this.§^![§;
            this.§52§();
            this.§`!P§.close();
            this.§`!P§ = null;
         }
      }
      
      public function §!0§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§<O§ = null;
         if(param1 != null && this.§!f§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§!f§.length)
            {
               if((_loc8_ = this.§!f§[_loc7_] as §<O§) != null)
               {
                  _loc8_.§!0§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§!0§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§7n§);
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
      
      public function §1K§() : uint
      {
         return !!this.§!f§ ? uint(this.§!f§.length) : uint(0);
      }
      
      public function §"j§(param1:uint) : §<O§
      {
         return !!this.§!f§ ? this.§!f§[param1] as §<O§ : null;
      }
      
      public function §+!L§(param1:String) : §<O§
      {
         return !!this.§#k§[param1] ? this.§#k§[param1] as §<O§ : null;
      }
      
      public function §2N§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §<O§
      {
         return this.§,P§(!!this.§!f§ ? uint(this.§!f§.length) : uint(0),param1,param2,param3);
      }
      
      public function §!!?§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §<O§
      {
         return this.§2H§(!!this.§!f§ ? uint(this.§!f§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §,P§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §<O§
      {
         if(this.§!f§ == null)
         {
            this.§!f§ = [];
         }
         if(this.§#k§ == null)
         {
            this.§#k§ = new Dictionary();
         }
         else if(this.§#k§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§<O§;
         (_loc5_ = new §<O§()).§"!N§ = param2;
         _loc5_.§[w§(param3,param4);
         if(param1 >= this.§!f§.length)
         {
            this.§!f§.push(_loc5_);
         }
         else
         {
            this.§!f§.splice(param1,0,_loc5_);
         }
         this.§#k§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §2H§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §<O§
      {
         if(this.§!f§ == null)
         {
            this.§!f§ = [];
         }
         if(this.§#k§ == null)
         {
            this.§#k§ = new Dictionary();
         }
         else if(this.§#k§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§<O§;
         (_loc6_ = new §<O§()).§"!N§ = param2;
         _loc6_.§,W§(param3,param4,param5);
         if(param1 >= this.§!f§.length)
         {
            this.§!f§.push(_loc6_);
         }
         else
         {
            this.§!f§.splice(param1,0,_loc6_);
         }
         this.§#k§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §&B§(param1:uint) : §<O§
      {
         var _loc2_:§<O§ = null;
         if(this.§!f§ != null && this.§#k§ != null && param1 < this.§!f§.length)
         {
            _loc2_ = this.§!f§[param1] as §<O§;
            if(_loc2_ != null)
            {
               this.§!f§.splice(param1,1);
               delete this.§#k§[_loc2_.§"!N§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§+0§(param1))
         {
         }
         return this.§+0§ === this.§^![§;
      }
      
      protected function §^![§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §`U§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §8!C§:
                  this.§+0§ = this.§6w§;
                  this.§[6§ = new §<O§(this.§1=§);
                  break;
               case §each §:
               case §7n§:
               case §;!`§:
               case §"!T§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §'n§:
               case §@P§:
               case §7!>§:
                  this.§+0§ = this.§^![§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §6w§(param1:IDataInput) : Boolean
      {
         if(this.§[6§.parse(param1))
         {
            if(this.§[6§.§`!@§)
            {
               this.§+0§ = this.§>!H§;
               this.§'%§ = new ByteArray();
               this.§-!#§ = 0;
               this.§9!I§ = 0;
               return true;
            }
            this.§,!F§();
            if(this.§+0§ != this.§^![§)
            {
               this.§+0§ = this.§`U§;
               return true;
            }
         }
         return false;
      }
      
      protected function §>!H§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§-!#§ = this.§-!#§ >>> 8 | _loc2_ << 24;
            if(this.§-!#§ == §'n§)
            {
               this.§'%§.length -= 3;
               this.§+0§ = this.§+S§;
               return true;
            }
            this.§'%§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §+S§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§'%§.length == _loc3_)
            {
               this.§'%§.position = 0;
               this.§[6§.§&[§ = _loc2_;
               this.§[6§.§ !<§ = _loc3_;
               this.§[6§.§`%§ = _loc4_;
               this.§[6§.§'!@§(this.§'%§);
               this.§,!F§();
               this.§+0§ = this.§`U§;
            }
            else
            {
               this.§'%§.writeUnsignedInt(_loc2_);
               this.§'%§.writeUnsignedInt(_loc3_);
               this.§'%§.writeUnsignedInt(_loc4_);
               this.§+0§ = this.§>!H§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,!F§() : void
      {
         this.§!f§.push(this.§[6§);
         if(this.§[6§.§"!N§)
         {
            this.§#k§[this.§[6§.§"!N§] = this.§[6§;
         }
         dispatchEvent(new §4!H§(§4!H§.§5P§,this.§[6§));
         this.§[6§ = null;
      }
      
      protected function §49§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§`!P§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§<!H§.§=;§))
            {
               throw e;
            }
            dispatchEvent(new §<!H§(§<!H§.§=;§,e.message));
         }
      }
      
      protected function §=!5§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §?!!§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §#+§() : void
      {
         this.§`!P§.addEventListener(Event.COMPLETE,this.§=!5§);
         this.§`!P§.addEventListener(Event.OPEN,this.§=!5§);
         this.§`!P§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!5§);
         this.§`!P§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!!§);
         this.§`!P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!!§);
         this.§`!P§.addEventListener(ProgressEvent.PROGRESS,this.§49§);
      }
      
      protected function §52§() : void
      {
         this.§`!P§.removeEventListener(Event.COMPLETE,this.§=!5§);
         this.§`!P§.removeEventListener(Event.OPEN,this.§=!5§);
         this.§`!P§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!5§);
         this.§`!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!!§);
         this.§`!P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?!!§);
         this.§`!P§.removeEventListener(ProgressEvent.PROGRESS,this.§49§);
      }
   }
}
