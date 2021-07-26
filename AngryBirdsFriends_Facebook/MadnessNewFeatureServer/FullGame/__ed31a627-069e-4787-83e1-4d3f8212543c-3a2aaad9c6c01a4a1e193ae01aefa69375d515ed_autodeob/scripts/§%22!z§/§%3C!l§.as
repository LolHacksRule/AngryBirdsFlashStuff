package §"!z§
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
   
   public class §<!l§ extends EventDispatcher
   {
      
      static const §9#=§:uint = 33639248;
      
      static const §1e§:uint = 808471376;
      
      static const §;#M§:uint = 67324752;
      
      static const §;#L§:uint = 84233040;
      
      static const §9#Z§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §<!G§:uint = 134695760;
      
      static const §+2§:uint = 134630224;
      
      static const §1"U§:uint = 134695760;
       
      
      protected var §`!_§:Array;
      
      protected var §^!<§:Dictionary;
      
      protected var §>"5§:URLStream;
      
      protected var §4#e§:String;
      
      protected var §1!O§:Function;
      
      protected var §%#5§:§^a§;
      
      protected var §!"F§:ByteArray;
      
      protected var §+"u§:uint;
      
      protected var §>!_§:uint;
      
      public function §<!l§(param1:String = "utf-8")
      {
         super();
         this.§4#e§ = param1;
         this.§1!O§ = this.§,q§;
      }
      
      public function get active() : Boolean
      {
         return this.§1!O§ !== this.§,q§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§>"5§ && this.§1!O§ == this.§,q§)
         {
            this.§>"5§ = new URLStream();
            this.§>"5§.endian = Endian.LITTLE_ENDIAN;
            this.§&#7§();
            this.§`!_§ = [];
            this.§^!<§ = new Dictionary();
            this.§1!O§ = this.§!!$§;
            this.§>"5§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§>"5§ && this.§1!O§ == this.§,q§)
         {
            this.§`!_§ = [];
            this.§^!<§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§1!O§ = this.§!!$§;
            if(this.parse(param1))
            {
               this.§1!O§ = this.§,q§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §0!3§(§0!3§.§!9§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§>"5§)
         {
            this.§1!O§ = this.§,q§;
            this.§25§();
            this.§>"5§.close();
            this.§>"5§ = null;
         }
      }
      
      public function §,$ §(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§^a§ = null;
         if(param1 != null && this.§`!_§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§`!_§.length)
            {
               if((_loc8_ = this.§`!_§[_loc7_] as §^a§) != null)
               {
                  _loc8_.§,$ §(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§,$ §(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9#Z§);
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
      
      public function §4!f§() : uint
      {
         return !!this.§`!_§ ? uint(this.§`!_§.length) : uint(0);
      }
      
      public function §?"=§(param1:uint) : §^a§
      {
         return !!this.§`!_§ ? this.§`!_§[param1] as §^a§ : null;
      }
      
      public function §!#?§(param1:String) : §^a§
      {
         return !!this.§^!<§[param1] ? this.§^!<§[param1] as §^a§ : null;
      }
      
      public function §0#q§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §^a§
      {
         return this.§5!V§(!!this.§`!_§ ? uint(this.§`!_§.length) : uint(0),param1,param2,param3);
      }
      
      public function § 2§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §^a§
      {
         return this.§["%§(!!this.§`!_§ ? uint(this.§`!_§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §5!V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §^a§
      {
         if(this.§`!_§ == null)
         {
            this.§`!_§ = [];
         }
         if(this.§^!<§ == null)
         {
            this.§^!<§ = new Dictionary();
         }
         else if(this.§^!<§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§^a§;
         (_loc5_ = new §^a§()).filename = param2;
         _loc5_.§]#U§(param3,param4);
         if(param1 >= this.§`!_§.length)
         {
            this.§`!_§.push(_loc5_);
         }
         else
         {
            this.§`!_§.splice(param1,0,_loc5_);
         }
         this.§^!<§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §["%§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §^a§
      {
         if(this.§`!_§ == null)
         {
            this.§`!_§ = [];
         }
         if(this.§^!<§ == null)
         {
            this.§^!<§ = new Dictionary();
         }
         else if(this.§^!<§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§^a§;
         (_loc6_ = new §^a§()).filename = param2;
         _loc6_.§4""§(param3,param4,param5);
         if(param1 >= this.§`!_§.length)
         {
            this.§`!_§.push(_loc6_);
         }
         else
         {
            this.§`!_§.splice(param1,0,_loc6_);
         }
         this.§^!<§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §3S§(param1:uint) : §^a§
      {
         var _loc2_:§^a§ = null;
         if(this.§`!_§ != null && this.§^!<§ != null && param1 < this.§`!_§.length)
         {
            _loc2_ = this.§`!_§[param1] as §^a§;
            if(_loc2_ != null)
            {
               this.§`!_§.splice(param1,1);
               delete this.§^!<§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§1!O§(param1))
         {
         }
         return this.§1!O§ === this.§,q§;
      }
      
      protected function §,q§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!$§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §;#M§:
                  this.§1!O§ = this.§4!h§;
                  this.§%#5§ = new §^a§(this.§4#e§);
                  break;
               case §9#=§:
               case §9#Z§:
               case §1e§:
               case §;#L§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §<!G§:
               case §+2§:
               case §1"U§:
                  this.§1!O§ = this.§,q§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §4!h§(param1:IDataInput) : Boolean
      {
         if(this.§%#5§.parse(param1))
         {
            if(this.§%#5§.§9$#§)
            {
               this.§1!O§ = this.§67§;
               this.§!"F§ = new ByteArray();
               this.§+"u§ = 0;
               this.§>!_§ = 0;
               return true;
            }
            this.§`!s§();
            if(this.§1!O§ != this.§,q§)
            {
               this.§1!O§ = this.§!!$§;
               return true;
            }
         }
         return false;
      }
      
      protected function §67§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§+"u§ = this.§+"u§ >>> 8 | _loc2_ << 24;
            if(this.§+"u§ == §<!G§)
            {
               this.§!"F§.length -= 3;
               this.§1!O§ = this.§0$?§;
               return true;
            }
            this.§!"F§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §0$?§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§!"F§.length == _loc3_)
            {
               this.§!"F§.position = 0;
               this.§%#5§.§<"[§ = _loc2_;
               this.§%#5§.§!#0§ = _loc3_;
               this.§%#5§.§5!l§ = _loc4_;
               this.§%#5§.§?E§(this.§!"F§);
               this.§`!s§();
               this.§1!O§ = this.§!!$§;
            }
            else
            {
               this.§!"F§.writeUnsignedInt(_loc2_);
               this.§!"F§.writeUnsignedInt(_loc3_);
               this.§!"F§.writeUnsignedInt(_loc4_);
               this.§1!O§ = this.§67§;
            }
            return true;
         }
         return false;
      }
      
      protected function §`!s§() : void
      {
         this.§`!_§.push(this.§%#5§);
         if(this.§%#5§.filename)
         {
            this.§^!<§[this.§%#5§.filename] = this.§%#5§;
         }
         dispatchEvent(new § "K§(§ "K§.§#!'§,this.§%#5§));
         this.§%#5§ = null;
      }
      
      protected function §0G§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§>"5§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§0!3§.§!9§))
            {
               throw e;
            }
            dispatchEvent(new §0!3§(§0!3§.§!9§,e.message));
         }
      }
      
      protected function §5T§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §5#[§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §&#7§() : void
      {
         this.§>"5§.addEventListener(Event.COMPLETE,this.§5T§);
         this.§>"5§.addEventListener(Event.OPEN,this.§5T§);
         this.§>"5§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5T§);
         this.§>"5§.addEventListener(IOErrorEvent.IO_ERROR,this.§5#[§);
         this.§>"5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5#[§);
         this.§>"5§.addEventListener(ProgressEvent.PROGRESS,this.§0G§);
      }
      
      protected function §25§() : void
      {
         this.§>"5§.removeEventListener(Event.COMPLETE,this.§5T§);
         this.§>"5§.removeEventListener(Event.OPEN,this.§5T§);
         this.§>"5§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5T§);
         this.§>"5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5#[§);
         this.§>"5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5#[§);
         this.§>"5§.removeEventListener(ProgressEvent.PROGRESS,this.§0G§);
      }
   }
}
