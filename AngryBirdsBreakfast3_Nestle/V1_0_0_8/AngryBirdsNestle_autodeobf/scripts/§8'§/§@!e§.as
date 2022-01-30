package §8'§
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
   
   public class §@!e§ extends EventDispatcher
   {
      
      static const §9h§:uint = 33639248;
      
      static const §'!c§:uint = 808471376;
      
      static const §?W§:uint = 67324752;
      
      static const §7G§:uint = 84233040;
      
      static const §@!B§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §<![§:uint = 134695760;
      
      static const §!!2§:uint = 134630224;
      
      static const §<"#§:uint = 134695760;
       
      
      protected var §;!<§:Array;
      
      protected var §6q§:Dictionary;
      
      protected var §91§:URLStream;
      
      protected var § D§:String;
      
      protected var §+!O§:Function;
      
      protected var §&c§:§]!"§;
      
      protected var §;"$§:ByteArray;
      
      protected var §4j§:uint;
      
      protected var §4!8§:uint;
      
      public function §@!e§(param1:String = "utf-8")
      {
         super();
         this.§ D§ = param1;
         this.§+!O§ = this.§0n§;
      }
      
      public function get active() : Boolean
      {
         return this.§+!O§ !== this.§0n§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§91§ && this.§+!O§ == this.§0n§)
         {
            this.§91§ = new URLStream();
            this.§91§.endian = Endian.LITTLE_ENDIAN;
            this.§9!<§();
            this.§;!<§ = [];
            this.§6q§ = new Dictionary();
            this.§+!O§ = this.§ !R§;
            this.§91§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§91§ && this.§+!O§ == this.§0n§)
         {
            this.§;!<§ = [];
            this.§6q§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§+!O§ = this.§ !R§;
            if(this.parse(param1))
            {
               this.§+!O§ = this.§0n§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?1§(§?1§.§2!o§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§91§)
         {
            this.§+!O§ = this.§0n§;
            this.§+2§();
            this.§91§.close();
            this.§91§ = null;
         }
      }
      
      public function §^!;§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§]!"§ = null;
         if(param1 != null && this.§;!<§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§;!<§.length)
            {
               if((_loc8_ = this.§;!<§[_loc7_] as §]!"§) != null)
               {
                  _loc8_.§^!;§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§^!;§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§@!B§);
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
      
      public function §9!E§() : uint
      {
         return !!this.§;!<§ ? uint(this.§;!<§.length) : uint(0);
      }
      
      public function §0A§(param1:uint) : §]!"§
      {
         return !!this.§;!<§ ? this.§;!<§[param1] as §]!"§ : null;
      }
      
      public function §6!]§(param1:String) : §]!"§
      {
         return !!this.§6q§[param1] ? this.§6q§[param1] as §]!"§ : null;
      }
      
      public function §"&§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]!"§
      {
         return this.§1![§(!!this.§;!<§ ? uint(this.§;!<§.length) : uint(0),param1,param2,param3);
      }
      
      public function §4! §(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]!"§
      {
         return this.§,!6§(!!this.§;!<§ ? uint(this.§;!<§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §1![§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]!"§
      {
         if(this.§;!<§ == null)
         {
            this.§;!<§ = [];
         }
         if(this.§6q§ == null)
         {
            this.§6q§ = new Dictionary();
         }
         else if(this.§6q§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§]!"§;
         (_loc5_ = new §]!"§()).§">§ = param2;
         _loc5_.§]!§(param3,param4);
         if(param1 >= this.§;!<§.length)
         {
            this.§;!<§.push(_loc5_);
         }
         else
         {
            this.§;!<§.splice(param1,0,_loc5_);
         }
         this.§6q§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §,!6§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]!"§
      {
         if(this.§;!<§ == null)
         {
            this.§;!<§ = [];
         }
         if(this.§6q§ == null)
         {
            this.§6q§ = new Dictionary();
         }
         else if(this.§6q§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§]!"§;
         (_loc6_ = new §]!"§()).§">§ = param2;
         _loc6_.§"4§(param3,param4,param5);
         if(param1 >= this.§;!<§.length)
         {
            this.§;!<§.push(_loc6_);
         }
         else
         {
            this.§;!<§.splice(param1,0,_loc6_);
         }
         this.§6q§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §,!O§(param1:uint) : §]!"§
      {
         var _loc2_:§]!"§ = null;
         if(this.§;!<§ != null && this.§6q§ != null && param1 < this.§;!<§.length)
         {
            _loc2_ = this.§;!<§[param1] as §]!"§;
            if(_loc2_ != null)
            {
               this.§;!<§.splice(param1,1);
               delete this.§6q§[_loc2_.§">§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§+!O§(param1))
         {
         }
         return this.§+!O§ === this.§0n§;
      }
      
      protected function §0n§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function § !R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §?W§:
                  this.§+!O§ = this.§#s§;
                  this.§&c§ = new §]!"§(this.§ D§);
                  break;
               case §9h§:
               case §@!B§:
               case §'!c§:
               case §7G§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §<![§:
               case §!!2§:
               case §<"#§:
                  this.§+!O§ = this.§0n§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §#s§(param1:IDataInput) : Boolean
      {
         if(this.§&c§.parse(param1))
         {
            if(this.§&c§.§#i§)
            {
               this.§+!O§ = this.§3!+§;
               this.§;"$§ = new ByteArray();
               this.§4j§ = 0;
               this.§4!8§ = 0;
               return true;
            }
            this.§,Q§();
            if(this.§+!O§ != this.§0n§)
            {
               this.§+!O§ = this.§ !R§;
               return true;
            }
         }
         return false;
      }
      
      protected function §3!+§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§4j§ = this.§4j§ >>> 8 | _loc2_ << 24;
            if(this.§4j§ == §<![§)
            {
               this.§;"$§.length -= 3;
               this.§+!O§ = this.§'v§;
               return true;
            }
            this.§;"$§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §'v§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§;"$§.length == _loc3_)
            {
               this.§;"$§.position = 0;
               this.§&c§.§;! § = _loc2_;
               this.§&c§.§>!Q§ = _loc3_;
               this.§&c§.§3!m§ = _loc4_;
               this.§&c§.parseContent(this.§;"$§);
               this.§,Q§();
               this.§+!O§ = this.§ !R§;
            }
            else
            {
               this.§;"$§.writeUnsignedInt(_loc2_);
               this.§;"$§.writeUnsignedInt(_loc3_);
               this.§;"$§.writeUnsignedInt(_loc4_);
               this.§+!O§ = this.§3!+§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,Q§() : void
      {
         this.§;!<§.push(this.§&c§);
         if(this.§&c§.§">§)
         {
            this.§6q§[this.§&c§.§">§] = this.§&c§;
         }
         dispatchEvent(new §8!'§(§8!'§.§1!`§,this.§&c§));
         this.§&c§ = null;
      }
      
      protected function §!g§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§91§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?1§.§2!o§))
            {
               throw e;
            }
            dispatchEvent(new §?1§(§?1§.§2!o§,e.message));
         }
      }
      
      protected function §`!e§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §9!<§() : void
      {
         this.§91§.addEventListener(Event.COMPLETE,this.§`!e§);
         this.§91§.addEventListener(Event.OPEN,this.§`!e§);
         this.§91§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`!e§);
         this.§91§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§91§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§91§.addEventListener(ProgressEvent.PROGRESS,this.§!g§);
      }
      
      protected function §+2§() : void
      {
         this.§91§.removeEventListener(Event.COMPLETE,this.§`!e§);
         this.§91§.removeEventListener(Event.OPEN,this.§`!e§);
         this.§91§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`!e§);
         this.§91§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§91§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§91§.removeEventListener(ProgressEvent.PROGRESS,this.§!g§);
      }
   }
}
