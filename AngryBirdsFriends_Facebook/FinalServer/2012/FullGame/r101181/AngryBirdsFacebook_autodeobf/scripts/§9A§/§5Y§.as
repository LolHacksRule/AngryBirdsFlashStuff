package §9A§
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
   
   public class §5Y§ extends EventDispatcher
   {
      
      static const §#8§:uint = 33639248;
      
      static const §^N§:uint = 808471376;
      
      static const §0s§:uint = 67324752;
      
      static const §#"$§:uint = 84233040;
      
      static const §5z§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §00§:uint = 134695760;
      
      static const §^§:uint = 134630224;
      
      static const §%v§:uint = 134695760;
       
      
      protected var §<A§:Array;
      
      protected var §7!x§:Dictionary;
      
      protected var §1H§:URLStream;
      
      protected var §>!@§:String;
      
      protected var §;F§:Function;
      
      protected var §^m§:§>"§;
      
      protected var §`u§:ByteArray;
      
      protected var §+!<§:uint;
      
      protected var §%s§:uint;
      
      public function §5Y§(param1:String = "utf-8")
      {
         super();
         this.§>!@§ = param1;
         this.§;F§ = this.§>!x§;
      }
      
      public function get §'a§() : Boolean
      {
         return this.§;F§ !== this.§>!x§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1H§ && this.§;F§ == this.§>!x§)
         {
            this.§1H§ = new URLStream();
            this.§1H§.endian = Endian.LITTLE_ENDIAN;
            this.§""4§();
            this.§<A§ = [];
            this.§7!x§ = new Dictionary();
            this.§;F§ = this.§"",§;
            this.§1H§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1H§ && this.§;F§ == this.§>!x§)
         {
            this.§<A§ = [];
            this.§7!x§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;F§ = this.§"",§;
            if(this.parse(param1))
            {
               this.§;F§ = this.§>!x§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §`^§(§`^§.§[!B§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1H§)
         {
            this.§;F§ = this.§>!x§;
            this.§>!c§();
            this.§1H§.close();
            this.§1H§ = null;
         }
      }
      
      public function §;!a§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>"§ = null;
         if(param1 != null && this.§<A§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§<A§.length)
            {
               if((_loc8_ = this.§<A§[_loc7_] as §>"§) != null)
               {
                  _loc8_.§;!a§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;!a§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§5z§);
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
      
      public function §"z§() : uint
      {
         return !!this.§<A§ ? uint(this.§<A§.length) : uint(0);
      }
      
      public function §9!8§(param1:uint) : §>"§
      {
         return !!this.§<A§ ? this.§<A§[param1] as §>"§ : null;
      }
      
      public function §&"@§(param1:String) : §>"§
      {
         return !!this.§7!x§[param1] ? this.§7!x§[param1] as §>"§ : null;
      }
      
      public function §`V§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>"§
      {
         return this.§"l§(!!this.§<A§ ? uint(this.§<A§.length) : uint(0),param1,param2,param3);
      }
      
      public function §?!<§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>"§
      {
         return this.§`q§(!!this.§<A§ ? uint(this.§<A§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §"l§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>"§
      {
         if(this.§<A§ == null)
         {
            this.§<A§ = [];
         }
         if(this.§7!x§ == null)
         {
            this.§7!x§ = new Dictionary();
         }
         else if(this.§7!x§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>"§;
         (_loc5_ = new §>"§()).§>" § = param2;
         _loc5_.§!t§(param3,param4);
         if(param1 >= this.§<A§.length)
         {
            this.§<A§.push(_loc5_);
         }
         else
         {
            this.§<A§.splice(param1,0,_loc5_);
         }
         this.§7!x§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §`q§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>"§
      {
         if(this.§<A§ == null)
         {
            this.§<A§ = [];
         }
         if(this.§7!x§ == null)
         {
            this.§7!x§ = new Dictionary();
         }
         else if(this.§7!x§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>"§;
         (_loc6_ = new §>"§()).§>" § = param2;
         _loc6_.§!!X§(param3,param4,param5);
         if(param1 >= this.§<A§.length)
         {
            this.§<A§.push(_loc6_);
         }
         else
         {
            this.§<A§.splice(param1,0,_loc6_);
         }
         this.§7!x§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §]M§(param1:uint) : §>"§
      {
         var _loc2_:§>"§ = null;
         if(this.§<A§ != null && this.§7!x§ != null && param1 < this.§<A§.length)
         {
            _loc2_ = this.§<A§[param1] as §>"§;
            if(_loc2_ != null)
            {
               this.§<A§.splice(param1,1);
               delete this.§7!x§[_loc2_.§>" §];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;F§(param1))
         {
         }
         return this.§;F§ === this.§>!x§;
      }
      
      protected function §>!x§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"",§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §0s§:
                  this.§;F§ = this.§!!H§;
                  this.§^m§ = new §>"§(this.§>!@§);
                  break;
               case §#8§:
               case §5z§:
               case §^N§:
               case §#"$§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §00§:
               case §^§:
               case §%v§:
                  this.§;F§ = this.§>!x§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §!!H§(param1:IDataInput) : Boolean
      {
         if(this.§^m§.parse(param1))
         {
            if(this.§^m§.§,,§)
            {
               this.§;F§ = this.§@!m§;
               this.§`u§ = new ByteArray();
               this.§+!<§ = 0;
               this.§%s§ = 0;
               return true;
            }
            this.§`!b§();
            if(this.§;F§ != this.§>!x§)
            {
               this.§;F§ = this.§"",§;
               return true;
            }
         }
         return false;
      }
      
      protected function §@!m§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§+!<§ = this.§+!<§ >>> 8 | _loc2_ << 24;
            if(this.§+!<§ == §00§)
            {
               this.§`u§.length -= 3;
               this.§;F§ = this.§ !a§;
               return true;
            }
            this.§`u§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function § !a§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§`u§.length == _loc3_)
            {
               this.§`u§.position = 0;
               this.§^m§.§7!$§ = _loc2_;
               this.§^m§.§`!d§ = _loc3_;
               this.§^m§.§default§ = _loc4_;
               this.§^m§.§!@§(this.§`u§);
               this.§`!b§();
               this.§;F§ = this.§"",§;
            }
            else
            {
               this.§`u§.writeUnsignedInt(_loc2_);
               this.§`u§.writeUnsignedInt(_loc3_);
               this.§`u§.writeUnsignedInt(_loc4_);
               this.§;F§ = this.§@!m§;
            }
            return true;
         }
         return false;
      }
      
      protected function §`!b§() : void
      {
         this.§<A§.push(this.§^m§);
         if(this.§^m§.§>" §)
         {
            this.§7!x§[this.§^m§.§>" §] = this.§^m§;
         }
         dispatchEvent(new §?!b§(§?!b§.§6!0§,this.§^m§));
         this.§^m§ = null;
      }
      
      protected function § "1§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1H§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§`^§.§[!B§))
            {
               throw e;
            }
            dispatchEvent(new §`^§(§`^§.§[!B§,e.message));
         }
      }
      
      protected function §5@§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §="3§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §""4§() : void
      {
         this.§1H§.addEventListener(Event.COMPLETE,this.§5@§);
         this.§1H§.addEventListener(Event.OPEN,this.§5@§);
         this.§1H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5@§);
         this.§1H§.addEventListener(IOErrorEvent.IO_ERROR,this.§="3§);
         this.§1H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="3§);
         this.§1H§.addEventListener(ProgressEvent.PROGRESS,this.§ "1§);
      }
      
      protected function §>!c§() : void
      {
         this.§1H§.removeEventListener(Event.COMPLETE,this.§5@§);
         this.§1H§.removeEventListener(Event.OPEN,this.§5@§);
         this.§1H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5@§);
         this.§1H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="3§);
         this.§1H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="3§);
         this.§1H§.removeEventListener(ProgressEvent.PROGRESS,this.§ "1§);
      }
   }
}
