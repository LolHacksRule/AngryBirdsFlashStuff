package §["5§
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
   
   public class §+4§ extends EventDispatcher
   {
      
      static const §>!m§:uint = 33639248;
      
      static const §%u§:uint = 808471376;
      
      static const §?M§:uint = 67324752;
      
      static const §`E§:uint = 84233040;
      
      static const §=!7§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §2!k§:uint = 134695760;
      
      static const §0!9§:uint = 134630224;
      
      static const §+"$§:uint = 134695760;
       
      
      protected var §&!?§:Array;
      
      protected var §&!U§:Dictionary;
      
      protected var § "-§:URLStream;
      
      protected var §?-§:String;
      
      protected var §`!n§:Function;
      
      protected var §[!5§:§8!z§;
      
      protected var §7w§:ByteArray;
      
      protected var §5'§:uint;
      
      protected var §5j§:uint;
      
      public function §+4§(param1:String = "utf-8")
      {
         super();
         this.§?-§ = param1;
         this.§`!n§ = this.§-,§;
      }
      
      public function get §%!W§() : Boolean
      {
         return this.§`!n§ !== this.§-,§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§ "-§ && this.§`!n§ == this.§-,§)
         {
            this.§ "-§ = new URLStream();
            this.§ "-§.endian = Endian.LITTLE_ENDIAN;
            this.§?!?§();
            this.§&!?§ = [];
            this.§&!U§ = new Dictionary();
            this.§`!n§ = this.§,!o§;
            this.§ "-§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§ "-§ && this.§`!n§ == this.§-,§)
         {
            this.§&!?§ = [];
            this.§&!U§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§`!n§ = this.§,!o§;
            if(this.parse(param1))
            {
               this.§`!n§ = this.§-,§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §,"&§(§,"&§.§'" §,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§ "-§)
         {
            this.§`!n§ = this.§-,§;
            this.§8"-§();
            this.§ "-§.close();
            this.§ "-§ = null;
         }
      }
      
      public function §0!%§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§8!z§ = null;
         if(param1 != null && this.§&!?§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§&!?§.length)
            {
               if((_loc8_ = this.§&!?§[_loc7_] as §8!z§) != null)
               {
                  _loc8_.§0!%§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§0!%§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§=!7§);
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
      
      public function §[^§() : uint
      {
         return !!this.§&!?§ ? uint(this.§&!?§.length) : uint(0);
      }
      
      public function §6!F§(param1:uint) : §8!z§
      {
         return !!this.§&!?§ ? this.§&!?§[param1] as §8!z§ : null;
      }
      
      public function §+"§(param1:String) : §8!z§
      {
         return !!this.§&!U§[param1] ? this.§&!U§[param1] as §8!z§ : null;
      }
      
      public function §7d§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §8!z§
      {
         return this.§ w§(!!this.§&!?§ ? uint(this.§&!?§.length) : uint(0),param1,param2,param3);
      }
      
      public function §-!y§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §8!z§
      {
         return this.§]$§(!!this.§&!?§ ? uint(this.§&!?§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function § w§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §8!z§
      {
         if(this.§&!?§ == null)
         {
            this.§&!?§ = [];
         }
         if(this.§&!U§ == null)
         {
            this.§&!U§ = new Dictionary();
         }
         else if(this.§&!U§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§8!z§;
         (_loc5_ = new §8!z§()).§!!'§ = param2;
         _loc5_.§,!3§(param3,param4);
         if(param1 >= this.§&!?§.length)
         {
            this.§&!?§.push(_loc5_);
         }
         else
         {
            this.§&!?§.splice(param1,0,_loc5_);
         }
         this.§&!U§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §]$§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §8!z§
      {
         if(this.§&!?§ == null)
         {
            this.§&!?§ = [];
         }
         if(this.§&!U§ == null)
         {
            this.§&!U§ = new Dictionary();
         }
         else if(this.§&!U§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§8!z§;
         (_loc6_ = new §8!z§()).§!!'§ = param2;
         _loc6_.§'&§(param3,param4,param5);
         if(param1 >= this.§&!?§.length)
         {
            this.§&!?§.push(_loc6_);
         }
         else
         {
            this.§&!?§.splice(param1,0,_loc6_);
         }
         this.§&!U§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §#A§(param1:uint) : §8!z§
      {
         var _loc2_:§8!z§ = null;
         if(this.§&!?§ != null && this.§&!U§ != null && param1 < this.§&!?§.length)
         {
            _loc2_ = this.§&!?§[param1] as §8!z§;
            if(_loc2_ != null)
            {
               this.§&!?§.splice(param1,1);
               delete this.§&!U§[_loc2_.§!!'§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§`!n§(param1))
         {
         }
         return this.§`!n§ === this.§-,§;
      }
      
      protected function §-,§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,!o§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §?M§:
                  this.§`!n§ = this.§2y§;
                  this.§[!5§ = new §8!z§(this.§?-§);
                  break;
               case §>!m§:
               case §=!7§:
               case §%u§:
               case §`E§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §2!k§:
               case §0!9§:
               case §+"$§:
                  this.§`!n§ = this.§-,§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §2y§(param1:IDataInput) : Boolean
      {
         if(this.§[!5§.parse(param1))
         {
            if(this.§[!5§.§?$§)
            {
               this.§`!n§ = this.§2S§;
               this.§7w§ = new ByteArray();
               this.§5'§ = 0;
               this.§5j§ = 0;
               return true;
            }
            this.§'![§();
            if(this.§`!n§ != this.§-,§)
            {
               this.§`!n§ = this.§,!o§;
               return true;
            }
         }
         return false;
      }
      
      protected function §2S§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§5'§ = this.§5'§ >>> 8 | _loc2_ << 24;
            if(this.§5'§ == §2!k§)
            {
               this.§7w§.length -= 3;
               this.§`!n§ = this.§`8§;
               return true;
            }
            this.§7w§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`8§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7w§.length == _loc3_)
            {
               this.§7w§.position = 0;
               this.§[!5§.§5h§ = _loc2_;
               this.§[!5§.§^!v§ = _loc3_;
               this.§[!5§.§"d§ = _loc4_;
               this.§[!5§.§1J§(this.§7w§);
               this.§'![§();
               this.§`!n§ = this.§,!o§;
            }
            else
            {
               this.§7w§.writeUnsignedInt(_loc2_);
               this.§7w§.writeUnsignedInt(_loc3_);
               this.§7w§.writeUnsignedInt(_loc4_);
               this.§`!n§ = this.§2S§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'![§() : void
      {
         this.§&!?§.push(this.§[!5§);
         if(this.§[!5§.§!!'§)
         {
            this.§&!U§[this.§[!5§.§!!'§] = this.§[!5§;
         }
         dispatchEvent(new §>!H§(§>!H§.§,o§,this.§[!5§));
         this.§[!5§ = null;
      }
      
      protected function §2,§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§ "-§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§,"&§.§'" §))
            {
               throw e;
            }
            dispatchEvent(new §,"&§(§,"&§.§'" §,e.message));
         }
      }
      
      protected function §%!@§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §#!n§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §?!?§() : void
      {
         this.§ "-§.addEventListener(Event.COMPLETE,this.§%!@§);
         this.§ "-§.addEventListener(Event.OPEN,this.§%!@§);
         this.§ "-§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!@§);
         this.§ "-§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!n§);
         this.§ "-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!n§);
         this.§ "-§.addEventListener(ProgressEvent.PROGRESS,this.§2,§);
      }
      
      protected function §8"-§() : void
      {
         this.§ "-§.removeEventListener(Event.COMPLETE,this.§%!@§);
         this.§ "-§.removeEventListener(Event.OPEN,this.§%!@§);
         this.§ "-§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!@§);
         this.§ "-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!n§);
         this.§ "-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!n§);
         this.§ "-§.removeEventListener(ProgressEvent.PROGRESS,this.§2,§);
      }
   }
}
