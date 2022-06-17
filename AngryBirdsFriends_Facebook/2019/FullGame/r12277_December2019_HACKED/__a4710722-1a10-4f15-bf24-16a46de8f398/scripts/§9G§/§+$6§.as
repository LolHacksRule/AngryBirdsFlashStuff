package §9G§
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
   
   public class §+$6§ extends EventDispatcher
   {
      
      static const §^F§:uint = 33639248;
      
      static const §3!P§:uint = 808471376;
      
      static const §#$-§:uint = 67324752;
      
      static const §8#&§:uint = 84233040;
      
      static const §7"L§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §%!C§:uint = 134695760;
      
      static const §continue§:uint = 134630224;
      
      static const §<!f§:uint = 134695760;
       
      
      protected var §4!5§:Array;
      
      protected var §?p§:Dictionary;
      
      protected var §0X§:URLStream;
      
      protected var §+!r§:String;
      
      protected var §0#l§:Function;
      
      protected var §6!n§:§5# §;
      
      protected var §[q§:ByteArray;
      
      protected var §?"-§:uint;
      
      protected var §2"e§:uint;
      
      public function §+$6§(param1:String = "utf-8")
      {
         super();
         this.§+!r§ = param1;
         this.§0#l§ = this.§8!?§;
      }
      
      public function get active() : Boolean
      {
         return this.§0#l§ !== this.§8!?§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§0X§ && this.§0#l§ == this.§8!?§)
         {
            this.§0X§ = new URLStream();
            this.§0X§.endian = Endian.LITTLE_ENDIAN;
            this.§5l§();
            this.§4!5§ = [];
            this.§?p§ = new Dictionary();
            this.§0#l§ = this.§ "<§;
            this.§0X§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§0X§ && this.§0#l§ == this.§8!?§)
         {
            this.§4!5§ = [];
            this.§?p§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§0#l§ = this.§ "<§;
            if(this.parse(param1))
            {
               this.§0#l§ = this.§8!?§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §=k§(§=k§.§&">§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§0X§)
         {
            this.§0#l§ = this.§8!?§;
            this.§+!M§();
            this.§0X§.close();
            this.§0X§ = null;
         }
      }
      
      public function §!2§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§5# § = null;
         if(param1 != null && this.§4!5§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§4!5§.length)
            {
               if((_loc8_ = this.§4!5§[_loc7_] as §5# §) != null)
               {
                  _loc8_.§!2§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§!2§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§7"L§);
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
      
      public function §[$-§() : uint
      {
         return !!this.§4!5§ ? uint(this.§4!5§.length) : uint(0);
      }
      
      public function §?+§(param1:uint) : §5# §
      {
         return !!this.§4!5§ ? this.§4!5§[param1] as §5# § : null;
      }
      
      public function §,!q§(param1:String) : §5# §
      {
         return !!this.§?p§[param1] ? this.§?p§[param1] as §5# § : null;
      }
      
      public function §-7§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §5# §
      {
         return this.§"!V§(!!this.§4!5§ ? uint(this.§4!5§.length) : uint(0),param1,param2,param3);
      }
      
      public function §=#X§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §5# §
      {
         return this.§##U§(!!this.§4!5§ ? uint(this.§4!5§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §"!V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §5# §
      {
         if(this.§4!5§ == null)
         {
            this.§4!5§ = [];
         }
         if(this.§?p§ == null)
         {
            this.§?p§ = new Dictionary();
         }
         else if(this.§?p§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§5# §;
         (_loc5_ = new §5# §()).filename = param2;
         _loc5_.§]#e§(param3,param4);
         if(param1 >= this.§4!5§.length)
         {
            this.§4!5§.push(_loc5_);
         }
         else
         {
            this.§4!5§.splice(param1,0,_loc5_);
         }
         this.§?p§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §##U§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §5# §
      {
         if(this.§4!5§ == null)
         {
            this.§4!5§ = [];
         }
         if(this.§?p§ == null)
         {
            this.§?p§ = new Dictionary();
         }
         else if(this.§?p§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§5# §;
         (_loc6_ = new §5# §()).filename = param2;
         _loc6_.§9!>§(param3,param4,param5);
         if(param1 >= this.§4!5§.length)
         {
            this.§4!5§.push(_loc6_);
         }
         else
         {
            this.§4!5§.splice(param1,0,_loc6_);
         }
         this.§?p§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §!$3§(param1:uint) : §5# §
      {
         var _loc2_:§5# § = null;
         if(this.§4!5§ != null && this.§?p§ != null && param1 < this.§4!5§.length)
         {
            _loc2_ = this.§4!5§[param1] as §5# §;
            if(_loc2_ != null)
            {
               this.§4!5§.splice(param1,1);
               delete this.§?p§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§0#l§(param1))
         {
         }
         return this.§0#l§ === this.§8!?§;
      }
      
      protected function §8!?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function § "<§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §#$-§:
                  this.§0#l§ = this.§[!H§;
                  this.§6!n§ = new §5# §(this.§+!r§);
                  break;
               case §^F§:
               case §7"L§:
               case §3!P§:
               case §8#&§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §%!C§:
               case §continue§:
               case §<!f§:
                  this.§0#l§ = this.§8!?§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §[!H§(param1:IDataInput) : Boolean
      {
         if(this.§6!n§.parse(param1))
         {
            if(this.§6!n§.§1$!§)
            {
               this.§0#l§ = this.§&#h§;
               this.§[q§ = new ByteArray();
               this.§?"-§ = 0;
               this.§2"e§ = 0;
               return true;
            }
            this.§""n§();
            if(this.§0#l§ != this.§8!?§)
            {
               this.§0#l§ = this.§ "<§;
               return true;
            }
         }
         return false;
      }
      
      protected function §&#h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§?"-§ = this.§?"-§ >>> 8 | _loc2_ << 24;
            if(this.§?"-§ == §%!C§)
            {
               this.§[q§.length -= 3;
               this.§0#l§ = this.§%!0§;
               return true;
            }
            this.§[q§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §%!0§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§[q§.length == _loc3_)
            {
               this.§[q§.position = 0;
               this.§6!n§.§8"L§ = _loc2_;
               this.§6!n§.§0"4§ = _loc3_;
               this.§6!n§.§3%§ = _loc4_;
               this.§6!n§.§;!Q§(this.§[q§);
               this.§""n§();
               this.§0#l§ = this.§ "<§;
            }
            else
            {
               this.§[q§.writeUnsignedInt(_loc2_);
               this.§[q§.writeUnsignedInt(_loc3_);
               this.§[q§.writeUnsignedInt(_loc4_);
               this.§0#l§ = this.§&#h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §""n§() : void
      {
         this.§4!5§.push(this.§6!n§);
         if(this.§6!n§.filename)
         {
            this.§?p§[this.§6!n§.filename] = this.§6!n§;
         }
         dispatchEvent(new §0"-§(§0"-§.§'m§,this.§6!n§));
         this.§6!n§ = null;
      }
      
      protected function §%!j§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§0X§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(hasEventListener(§=k§.§&">§))
            {
               dispatchEvent(new §=k§(§=k§.§&">§,e.message));
            }
            else
            {
               throw e;
            }
         }
      }
      
      protected function §-"5§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §3#-§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §5l§() : void
      {
         this.§0X§.addEventListener(Event.COMPLETE,this.§-"5§);
         this.§0X§.addEventListener(Event.OPEN,this.§-"5§);
         this.§0X§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-"5§);
         this.§0X§.addEventListener(IOErrorEvent.IO_ERROR,this.§3#-§);
         this.§0X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#-§);
         this.§0X§.addEventListener(ProgressEvent.PROGRESS,this.§%!j§);
      }
      
      protected function §+!M§() : void
      {
         this.§0X§.removeEventListener(Event.COMPLETE,this.§-"5§);
         this.§0X§.removeEventListener(Event.OPEN,this.§-"5§);
         this.§0X§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-"5§);
         this.§0X§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3#-§);
         this.§0X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#-§);
         this.§0X§.removeEventListener(ProgressEvent.PROGRESS,this.§%!j§);
      }
   }
}
