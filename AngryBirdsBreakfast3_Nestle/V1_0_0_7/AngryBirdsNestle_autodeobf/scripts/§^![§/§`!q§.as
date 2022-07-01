package §^![§
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
   
   public class §`!q§ extends EventDispatcher
   {
      
      static const §,!'§:uint = 33639248;
      
      static const §;!l§:uint = 808471376;
      
      static const §[!y§:uint = 67324752;
      
      static const §`!J§:uint = 84233040;
      
      static const §0!x§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §[!z§:uint = 134695760;
      
      static const §8g§:uint = 134630224;
      
      static const §,P§:uint = 134695760;
       
      
      protected var §#x§:Array;
      
      protected var §"!'§:Dictionary;
      
      protected var §@!t§:URLStream;
      
      protected var §#!Q§:String;
      
      protected var §>x§:Function;
      
      protected var §?!j§:§2p§;
      
      protected var §^!$§:ByteArray;
      
      protected var §]!N§:uint;
      
      protected var §6N§:uint;
      
      public function §`!q§(param1:String = "utf-8")
      {
         super();
         this.§#!Q§ = param1;
         this.§>x§ = this.§2S§;
      }
      
      public function get active() : Boolean
      {
         return this.§>x§ !== this.§2S§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§@!t§ && this.§>x§ == this.§2S§)
         {
            this.§@!t§ = new URLStream();
            this.§@!t§.endian = Endian.LITTLE_ENDIAN;
            this.§]V§();
            this.§#x§ = [];
            this.§"!'§ = new Dictionary();
            this.§>x§ = this.§?H§;
            this.§@!t§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§@!t§ && this.§>x§ == this.§2S§)
         {
            this.§#x§ = [];
            this.§"!'§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§>x§ = this.§?H§;
            if(this.parse(param1))
            {
               this.§>x§ = this.§2S§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §,s§(§,s§.§"!]§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§@!t§)
         {
            this.§>x§ = this.§2S§;
            this.§-!M§();
            this.§@!t§.close();
            this.§@!t§ = null;
         }
      }
      
      public function §-!x§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§2p§ = null;
         if(param1 != null && this.§#x§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§#x§.length)
            {
               if((_loc8_ = this.§#x§[_loc7_] as §2p§) != null)
               {
                  _loc8_.§-!x§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§-!x§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§0!x§);
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
      
      public function §^s§() : uint
      {
         return !!this.§#x§ ? uint(this.§#x§.length) : uint(0);
      }
      
      public function §]O§(param1:uint) : §2p§
      {
         return !!this.§#x§ ? this.§#x§[param1] as §2p§ : null;
      }
      
      public function §+V§(param1:String) : §2p§
      {
         return !!this.§"!'§[param1] ? this.§"!'§[param1] as §2p§ : null;
      }
      
      public function §=d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §2p§
      {
         return this.§6!U§(!!this.§#x§ ? uint(this.§#x§.length) : uint(0),param1,param2,param3);
      }
      
      public function §?!e§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §2p§
      {
         return this.§<Y§(!!this.§#x§ ? uint(this.§#x§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §6!U§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §2p§
      {
         if(this.§#x§ == null)
         {
            this.§#x§ = [];
         }
         if(this.§"!'§ == null)
         {
            this.§"!'§ = new Dictionary();
         }
         else if(this.§"!'§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§2p§;
         (_loc5_ = new §2p§()).§]!+§ = param2;
         _loc5_.§9h§(param3,param4);
         if(param1 >= this.§#x§.length)
         {
            this.§#x§.push(_loc5_);
         }
         else
         {
            this.§#x§.splice(param1,0,_loc5_);
         }
         this.§"!'§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §<Y§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §2p§
      {
         if(this.§#x§ == null)
         {
            this.§#x§ = [];
         }
         if(this.§"!'§ == null)
         {
            this.§"!'§ = new Dictionary();
         }
         else if(this.§"!'§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§2p§;
         (_loc6_ = new §2p§()).§]!+§ = param2;
         _loc6_.§2^§(param3,param4,param5);
         if(param1 >= this.§#x§.length)
         {
            this.§#x§.push(_loc6_);
         }
         else
         {
            this.§#x§.splice(param1,0,_loc6_);
         }
         this.§"!'§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §0y§(param1:uint) : §2p§
      {
         var _loc2_:§2p§ = null;
         if(this.§#x§ != null && this.§"!'§ != null && param1 < this.§#x§.length)
         {
            _loc2_ = this.§#x§[param1] as §2p§;
            if(_loc2_ != null)
            {
               this.§#x§.splice(param1,1);
               delete this.§"!'§[_loc2_.§]!+§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§>x§(param1))
         {
         }
         return this.§>x§ === this.§2S§;
      }
      
      protected function §2S§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?H§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §[!y§:
                  this.§>x§ = this.§["3§;
                  this.§?!j§ = new §2p§(this.§#!Q§);
                  break;
               case §,!'§:
               case §0!x§:
               case §;!l§:
               case §`!J§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §[!z§:
               case §8g§:
               case §,P§:
                  this.§>x§ = this.§2S§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §["3§(param1:IDataInput) : Boolean
      {
         if(this.§?!j§.parse(param1))
         {
            if(this.§?!j§.§5!%§)
            {
               this.§>x§ = this.§1!7§;
               this.§^!$§ = new ByteArray();
               this.§]!N§ = 0;
               this.§6N§ = 0;
               return true;
            }
            this.§%!+§();
            if(this.§>x§ != this.§2S§)
            {
               this.§>x§ = this.§?H§;
               return true;
            }
         }
         return false;
      }
      
      protected function §1!7§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§]!N§ = this.§]!N§ >>> 8 | _loc2_ << 24;
            if(this.§]!N§ == §[!z§)
            {
               this.§^!$§.length -= 3;
               this.§>x§ = this.§`u§;
               return true;
            }
            this.§^!$§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`u§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§^!$§.length == _loc3_)
            {
               this.§^!$§.position = 0;
               this.§?!j§.§#"1§ = _loc2_;
               this.§?!j§.§8x§ = _loc3_;
               this.§?!j§.§&J§ = _loc4_;
               this.§?!j§.parseContent(this.§^!$§);
               this.§%!+§();
               this.§>x§ = this.§?H§;
            }
            else
            {
               this.§^!$§.writeUnsignedInt(_loc2_);
               this.§^!$§.writeUnsignedInt(_loc3_);
               this.§^!$§.writeUnsignedInt(_loc4_);
               this.§>x§ = this.§1!7§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%!+§() : void
      {
         this.§#x§.push(this.§?!j§);
         if(this.§?!j§.§]!+§)
         {
            this.§"!'§[this.§?!j§.§]!+§] = this.§?!j§;
         }
         dispatchEvent(new §%!l§(§%!l§.§>!0§,this.§?!j§));
         this.§?!j§ = null;
      }
      
      protected function §&!M§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§@!t§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§,s§.§"!]§))
            {
               throw e;
            }
            dispatchEvent(new §,s§(§,s§.§"!]§,e.message));
         }
      }
      
      protected function §=!-§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §]V§() : void
      {
         this.§@!t§.addEventListener(Event.COMPLETE,this.§=!-§);
         this.§@!t§.addEventListener(Event.OPEN,this.§=!-§);
         this.§@!t§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!-§);
         this.§@!t§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§@!t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§@!t§.addEventListener(ProgressEvent.PROGRESS,this.§&!M§);
      }
      
      protected function §-!M§() : void
      {
         this.§@!t§.removeEventListener(Event.COMPLETE,this.§=!-§);
         this.§@!t§.removeEventListener(Event.OPEN,this.§=!-§);
         this.§@!t§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=!-§);
         this.§@!t§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§@!t§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§@!t§.removeEventListener(ProgressEvent.PROGRESS,this.§&!M§);
      }
   }
}
