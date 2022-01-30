package §4!O§
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
   
   public class §!V§ extends EventDispatcher
   {
      
      static const §4!9§:uint = 33639248;
      
      static const §,=§:uint = 808471376;
      
      static const § !5§:uint = 67324752;
      
      static const §^!8§:uint = 84233040;
      
      static const §2;§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §&!O§:uint = 134695760;
      
      static const §#!Q§:uint = 134630224;
      
      static const § 1§:uint = 134695760;
       
      
      protected var §8K§:Array;
      
      protected var §7!4§:Dictionary;
      
      protected var §7"8§:URLStream;
      
      protected var §,H§:String;
      
      protected var §#n§:Function;
      
      protected var §>"!§:§'"&§;
      
      protected var §;=§:ByteArray;
      
      protected var §^#§:uint;
      
      protected var §1a§:uint;
      
      public function §!V§(param1:String = "utf-8")
      {
         super();
         this.§,H§ = param1;
         this.§#n§ = this.§<!p§;
      }
      
      public function get §!!E§() : Boolean
      {
         return this.§#n§ !== this.§<!p§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§7"8§ && this.§#n§ == this.§<!p§)
         {
            this.§7"8§ = new URLStream();
            this.§7"8§.endian = Endian.LITTLE_ENDIAN;
            this.§4L§();
            this.§8K§ = [];
            this.§7!4§ = new Dictionary();
            this.§#n§ = this.§2R§;
            this.§7"8§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§7"8§ && this.§#n§ == this.§<!p§)
         {
            this.§8K§ = [];
            this.§7!4§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§#n§ = this.§2R§;
            if(this.parse(param1))
            {
               this.§#n§ = this.§<!p§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §2!8§(§2!8§.§8N§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§7"8§)
         {
            this.§#n§ = this.§<!p§;
            this.§1G§();
            this.§7"8§.close();
            this.§7"8§ = null;
         }
      }
      
      public function §"3§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§'"&§ = null;
         if(param1 != null && this.§8K§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§8K§.length)
            {
               if((_loc8_ = this.§8K§[_loc7_] as §'"&§) != null)
               {
                  _loc8_.§"3§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§"3§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§2;§);
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
      
      public function §9!1§() : uint
      {
         return !!this.§8K§ ? uint(this.§8K§.length) : uint(0);
      }
      
      public function §,!Y§(param1:uint) : §'"&§
      {
         return !!this.§8K§ ? this.§8K§[param1] as §'"&§ : null;
      }
      
      public function §&" §(param1:String) : §'"&§
      {
         return !!this.§7!4§[param1] ? this.§7!4§[param1] as §'"&§ : null;
      }
      
      public function §2!L§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §'"&§
      {
         return this.§=y§(!!this.§8K§ ? uint(this.§8K§.length) : uint(0),param1,param2,param3);
      }
      
      public function §"!F§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §'"&§
      {
         return this.§1!D§(!!this.§8K§ ? uint(this.§8K§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §=y§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §'"&§
      {
         if(this.§8K§ == null)
         {
            this.§8K§ = [];
         }
         if(this.§7!4§ == null)
         {
            this.§7!4§ = new Dictionary();
         }
         else if(this.§7!4§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§'"&§;
         (_loc5_ = new §'"&§()).§6!S§ = param2;
         _loc5_.§,!r§(param3,param4);
         if(param1 >= this.§8K§.length)
         {
            this.§8K§.push(_loc5_);
         }
         else
         {
            this.§8K§.splice(param1,0,_loc5_);
         }
         this.§7!4§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §1!D§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §'"&§
      {
         if(this.§8K§ == null)
         {
            this.§8K§ = [];
         }
         if(this.§7!4§ == null)
         {
            this.§7!4§ = new Dictionary();
         }
         else if(this.§7!4§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§'"&§;
         (_loc6_ = new §'"&§()).§6!S§ = param2;
         _loc6_.§;l§(param3,param4,param5);
         if(param1 >= this.§8K§.length)
         {
            this.§8K§.push(_loc6_);
         }
         else
         {
            this.§8K§.splice(param1,0,_loc6_);
         }
         this.§7!4§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §4!u§(param1:uint) : §'"&§
      {
         var _loc2_:§'"&§ = null;
         if(this.§8K§ != null && this.§7!4§ != null && param1 < this.§8K§.length)
         {
            _loc2_ = this.§8K§[param1] as §'"&§;
            if(_loc2_ != null)
            {
               this.§8K§.splice(param1,1);
               delete this.§7!4§[_loc2_.§6!S§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§#n§(param1))
         {
         }
         return this.§#n§ === this.§<!p§;
      }
      
      protected function §<!p§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case § !5§:
                  this.§#n§ = this.§?!x§;
                  this.§>"!§ = new §'"&§(this.§,H§);
                  break;
               case §4!9§:
               case §2;§:
               case §,=§:
               case §^!8§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §&!O§:
               case §#!Q§:
               case § 1§:
                  this.§#n§ = this.§<!p§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §?!x§(param1:IDataInput) : Boolean
      {
         if(this.§>"!§.parse(param1))
         {
            if(this.§>"!§.§8<§)
            {
               this.§#n§ = this.§<"3§;
               this.§;=§ = new ByteArray();
               this.§^#§ = 0;
               this.§1a§ = 0;
               return true;
            }
            this.§[8§();
            if(this.§#n§ != this.§<!p§)
            {
               this.§#n§ = this.§2R§;
               return true;
            }
         }
         return false;
      }
      
      protected function §<"3§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§^#§ = this.§^#§ >>> 8 | _loc2_ << 24;
            if(this.§^#§ == §&!O§)
            {
               this.§;=§.length -= 3;
               this.§#n§ = this.§>!]§;
               return true;
            }
            this.§;=§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §>!]§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§;=§.length == _loc3_)
            {
               this.§;=§.position = 0;
               this.§>"!§.§8!a§ = _loc2_;
               this.§>"!§.§9h§ = _loc3_;
               this.§>"!§.§!P§ = _loc4_;
               this.§>"!§.§ c§(this.§;=§);
               this.§[8§();
               this.§#n§ = this.§2R§;
            }
            else
            {
               this.§;=§.writeUnsignedInt(_loc2_);
               this.§;=§.writeUnsignedInt(_loc3_);
               this.§;=§.writeUnsignedInt(_loc4_);
               this.§#n§ = this.§<"3§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[8§() : void
      {
         this.§8K§.push(this.§>"!§);
         if(this.§>"!§.§6!S§)
         {
            this.§7!4§[this.§>"!§.§6!S§] = this.§>"!§;
         }
         dispatchEvent(new §3R§(§3R§.§5g§,this.§>"!§));
         this.§>"!§ = null;
      }
      
      protected function §>!o§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§7"8§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§2!8§.§8N§))
            {
               throw e;
            }
            dispatchEvent(new §2!8§(§2!8§.§8N§,e.message));
         }
      }
      
      protected function §6]§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §=m§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §4L§() : void
      {
         this.§7"8§.addEventListener(Event.COMPLETE,this.§6]§);
         this.§7"8§.addEventListener(Event.OPEN,this.§6]§);
         this.§7"8§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6]§);
         this.§7"8§.addEventListener(IOErrorEvent.IO_ERROR,this.§=m§);
         this.§7"8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=m§);
         this.§7"8§.addEventListener(ProgressEvent.PROGRESS,this.§>!o§);
      }
      
      protected function §1G§() : void
      {
         this.§7"8§.removeEventListener(Event.COMPLETE,this.§6]§);
         this.§7"8§.removeEventListener(Event.OPEN,this.§6]§);
         this.§7"8§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6]§);
         this.§7"8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=m§);
         this.§7"8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=m§);
         this.§7"8§.removeEventListener(ProgressEvent.PROGRESS,this.§>!o§);
      }
   }
}
