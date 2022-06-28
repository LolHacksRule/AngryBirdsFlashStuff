package §=!M§
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
   
   public class §3Q§ extends EventDispatcher
   {
      
      static const §2s§:uint = 33639248;
      
      static const §71§:uint = 808471376;
      
      static const §<p§:uint = 67324752;
      
      static const §4u§:uint = 84233040;
      
      static const §=!'§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §=S§:uint = 134695760;
      
      static const §?t§:uint = 134630224;
      
      static const §!![§:uint = 134695760;
       
      
      protected var §,r§:Array;
      
      protected var §-z§:Dictionary;
      
      protected var §>!Z§:URLStream;
      
      protected var §%F§:String;
      
      protected var §3!b§:Function;
      
      protected var §0!?§:§"T§;
      
      protected var §-!X§:ByteArray;
      
      protected var §6T§:uint;
      
      protected var §1!^§:uint;
      
      public function §3Q§(param1:String = "utf-8")
      {
         super();
         this.§%F§ = param1;
         this.§3!b§ = this.§5!'§;
      }
      
      public function get §,O§() : Boolean
      {
         return this.§3!b§ !== this.§5!'§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§>!Z§ && this.§3!b§ == this.§5!'§)
         {
            this.§>!Z§ = new URLStream();
            this.§>!Z§.endian = Endian.LITTLE_ENDIAN;
            this.§ G§();
            this.§,r§ = [];
            this.§-z§ = new Dictionary();
            this.§3!b§ = this.§!f§;
            this.§>!Z§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§>!Z§ && this.§3!b§ == this.§5!'§)
         {
            this.§,r§ = [];
            this.§-z§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§3!b§ = this.§!f§;
            if(this.parse(param1))
            {
               this.§3!b§ = this.§5!'§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §%"§(§%"§.§'T§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§>!Z§)
         {
            this.§3!b§ = this.§5!'§;
            this.§^U§();
            this.§>!Z§.close();
            this.§>!Z§ = null;
         }
      }
      
      public function §+p§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§"T§ = null;
         if(param1 != null && this.§,r§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§,r§.length)
            {
               if((_loc8_ = this.§,r§[_loc7_] as §"T§) != null)
               {
                  _loc8_.§+p§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§+p§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§=!'§);
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
      
      public function §'!H§() : uint
      {
         return !!this.§,r§ ? uint(this.§,r§.length) : uint(0);
      }
      
      public function §"I§(param1:uint) : §"T§
      {
         return !!this.§,r§ ? this.§,r§[param1] as §"T§ : null;
      }
      
      public function §;!i§(param1:String) : §"T§
      {
         return !!this.§-z§[param1] ? this.§-z§[param1] as §"T§ : null;
      }
      
      public function §3I§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §"T§
      {
         return this.§9!-§(!!this.§,r§ ? uint(this.§,r§.length) : uint(0),param1,param2,param3);
      }
      
      public function §=&§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §"T§
      {
         return this.§0o§(!!this.§,r§ ? uint(this.§,r§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §9!-§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §"T§
      {
         if(this.§,r§ == null)
         {
            this.§,r§ = [];
         }
         if(this.§-z§ == null)
         {
            this.§-z§ = new Dictionary();
         }
         else if(this.§-z§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§"T§;
         (_loc5_ = new §"T§()).§,,§ = param2;
         _loc5_.§=1§(param3,param4);
         if(param1 >= this.§,r§.length)
         {
            this.§,r§.push(_loc5_);
         }
         else
         {
            this.§,r§.splice(param1,0,_loc5_);
         }
         this.§-z§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §0o§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §"T§
      {
         if(this.§,r§ == null)
         {
            this.§,r§ = [];
         }
         if(this.§-z§ == null)
         {
            this.§-z§ = new Dictionary();
         }
         else if(this.§-z§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§"T§;
         (_loc6_ = new §"T§()).§,,§ = param2;
         _loc6_.§5!8§(param3,param4,param5);
         if(param1 >= this.§,r§.length)
         {
            this.§,r§.push(_loc6_);
         }
         else
         {
            this.§,r§.splice(param1,0,_loc6_);
         }
         this.§-z§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §8!j§(param1:uint) : §"T§
      {
         var _loc2_:§"T§ = null;
         if(this.§,r§ != null && this.§-z§ != null && param1 < this.§,r§.length)
         {
            _loc2_ = this.§,r§[param1] as §"T§;
            if(_loc2_ != null)
            {
               this.§,r§.splice(param1,1);
               delete this.§-z§[_loc2_.§,,§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§3!b§(param1))
         {
         }
         return this.§3!b§ === this.§5!'§;
      }
      
      protected function §5!'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!f§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §<p§:
                  this.§3!b§ = this.§9v§;
                  this.§0!?§ = new §"T§(this.§%F§);
                  break;
               case §2s§:
               case §=!'§:
               case §71§:
               case §4u§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §=S§:
               case §?t§:
               case §!![§:
                  this.§3!b§ = this.§5!'§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §9v§(param1:IDataInput) : Boolean
      {
         if(this.§0!?§.parse(param1))
         {
            if(this.§0!?§.§ for§)
            {
               this.§3!b§ = this.§5L§;
               this.§-!X§ = new ByteArray();
               this.§6T§ = 0;
               this.§1!^§ = 0;
               return true;
            }
            this.§1?§();
            if(this.§3!b§ != this.§5!'§)
            {
               this.§3!b§ = this.§!f§;
               return true;
            }
         }
         return false;
      }
      
      protected function §5L§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§6T§ = this.§6T§ >>> 8 | _loc2_ << 24;
            if(this.§6T§ == §=S§)
            {
               this.§-!X§.length -= 3;
               this.§3!b§ = this.§`!d§;
               return true;
            }
            this.§-!X§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`!d§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§-!X§.length == _loc3_)
            {
               this.§-!X§.position = 0;
               this.§0!?§.§%b§ = _loc2_;
               this.§0!?§.§3!3§ = _loc3_;
               this.§0!?§.§!Q§ = _loc4_;
               this.§0!?§.§&!G§(this.§-!X§);
               this.§1?§();
               this.§3!b§ = this.§!f§;
            }
            else
            {
               this.§-!X§.writeUnsignedInt(_loc2_);
               this.§-!X§.writeUnsignedInt(_loc3_);
               this.§-!X§.writeUnsignedInt(_loc4_);
               this.§3!b§ = this.§5L§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1?§() : void
      {
         this.§,r§.push(this.§0!?§);
         if(this.§0!?§.§,,§)
         {
            this.§-z§[this.§0!?§.§,,§] = this.§0!?§;
         }
         dispatchEvent(new §>!M§(§>!M§.§4!Q§,this.§0!?§));
         this.§0!?§ = null;
      }
      
      protected function §2!N§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§>!Z§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§%"§.§'T§))
            {
               throw e;
            }
            dispatchEvent(new §%"§(§%"§.§'T§,e.message));
         }
      }
      
      protected function §?q§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §^`§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § G§() : void
      {
         this.§>!Z§.addEventListener(Event.COMPLETE,this.§?q§);
         this.§>!Z§.addEventListener(Event.OPEN,this.§?q§);
         this.§>!Z§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?q§);
         this.§>!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§^`§);
         this.§>!Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^`§);
         this.§>!Z§.addEventListener(ProgressEvent.PROGRESS,this.§2!N§);
      }
      
      protected function §^U§() : void
      {
         this.§>!Z§.removeEventListener(Event.COMPLETE,this.§?q§);
         this.§>!Z§.removeEventListener(Event.OPEN,this.§?q§);
         this.§>!Z§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?q§);
         this.§>!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^`§);
         this.§>!Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^`§);
         this.§>!Z§.removeEventListener(ProgressEvent.PROGRESS,this.§2!N§);
      }
   }
}
