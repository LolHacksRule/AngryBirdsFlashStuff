package §=!-§
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
   
   public class §]#§ extends EventDispatcher
   {
      
      static const §61§:uint = 33639248;
      
      static const §>!J§:uint = 808471376;
      
      static const §0R§:uint = 67324752;
      
      static const §>+§:uint = 84233040;
      
      static const §'?§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-l§:uint = 134695760;
      
      static const §1x§:uint = 134630224;
      
      static const §>@§:uint = 134695760;
       
      
      protected var §8T§:Array;
      
      protected var §^J§:Dictionary;
      
      protected var §7u§:URLStream;
      
      protected var §=N§:String;
      
      protected var §"?§:Function;
      
      protected var §[!X§:§@m§;
      
      protected var §3!0§:ByteArray;
      
      protected var §^x§:uint;
      
      protected var §^O§:uint;
      
      public function §]#§(param1:String = "utf-8")
      {
         super();
         this.§=N§ = param1;
         this.§"?§ = this.§4u§;
      }
      
      public function get § ^§() : Boolean
      {
         return this.§"?§ !== this.§4u§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§7u§ && this.§"?§ == this.§4u§)
         {
            this.§7u§ = new URLStream();
            this.§7u§.endian = Endian.LITTLE_ENDIAN;
            this.§ !8§();
            this.§8T§ = [];
            this.§^J§ = new Dictionary();
            this.§"?§ = this.§#E§;
            this.§7u§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§7u§ && this.§"?§ == this.§4u§)
         {
            this.§8T§ = [];
            this.§^J§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§"?§ = this.§#E§;
            if(this.parse(param1))
            {
               this.§"?§ = this.§4u§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §0h§(§0h§.§&!]§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§7u§)
         {
            this.§"?§ = this.§4u§;
            this.§['§();
            this.§7u§.close();
            this.§7u§ = null;
         }
      }
      
      public function § true§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§@m§ = null;
         if(param1 != null && this.§8T§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§8T§.length)
            {
               if((_loc8_ = this.§8T§[_loc7_] as §@m§) != null)
               {
                  _loc8_.§ true§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§ true§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§'?§);
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
      
      public function §@!V§() : uint
      {
         return !!this.§8T§ ? uint(this.§8T§.length) : uint(0);
      }
      
      public function §9J§(param1:uint) : §@m§
      {
         return !!this.§8T§ ? this.§8T§[param1] as §@m§ : null;
      }
      
      public function §]!!§(param1:String) : §@m§
      {
         return !!this.§^J§[param1] ? this.§^J§[param1] as §@m§ : null;
      }
      
      public function §3H§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §@m§
      {
         return this.§9V§(!!this.§8T§ ? uint(this.§8T§.length) : uint(0),param1,param2,param3);
      }
      
      public function §^!9§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §@m§
      {
         return this.§+x§(!!this.§8T§ ? uint(this.§8T§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §9V§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §@m§
      {
         if(this.§8T§ == null)
         {
            this.§8T§ = [];
         }
         if(this.§^J§ == null)
         {
            this.§^J§ = new Dictionary();
         }
         else if(this.§^J§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§@m§;
         (_loc5_ = new §@m§()).§0k§ = param2;
         _loc5_.§7q§(param3,param4);
         if(param1 >= this.§8T§.length)
         {
            this.§8T§.push(_loc5_);
         }
         else
         {
            this.§8T§.splice(param1,0,_loc5_);
         }
         this.§^J§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §+x§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §@m§
      {
         if(this.§8T§ == null)
         {
            this.§8T§ = [];
         }
         if(this.§^J§ == null)
         {
            this.§^J§ = new Dictionary();
         }
         else if(this.§^J§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§@m§;
         (_loc6_ = new §@m§()).§0k§ = param2;
         _loc6_.§1y§(param3,param4,param5);
         if(param1 >= this.§8T§.length)
         {
            this.§8T§.push(_loc6_);
         }
         else
         {
            this.§8T§.splice(param1,0,_loc6_);
         }
         this.§^J§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §>!+§(param1:uint) : §@m§
      {
         var _loc2_:§@m§ = null;
         if(this.§8T§ != null && this.§^J§ != null && param1 < this.§8T§.length)
         {
            _loc2_ = this.§8T§[param1] as §@m§;
            if(_loc2_ != null)
            {
               this.§8T§.splice(param1,1);
               delete this.§^J§[_loc2_.§0k§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§"?§(param1))
         {
         }
         return this.§"?§ === this.§4u§;
      }
      
      protected function §4u§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#E§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §0R§:
                  this.§"?§ = this.§06§;
                  this.§[!X§ = new §@m§(this.§=N§);
                  break;
               case §61§:
               case §'?§:
               case §>!J§:
               case §>+§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-l§:
               case §1x§:
               case §>@§:
                  this.§"?§ = this.§4u§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §06§(param1:IDataInput) : Boolean
      {
         if(this.§[!X§.parse(param1))
         {
            if(this.§[!X§.§]V§)
            {
               this.§"?§ = this.§7i§;
               this.§3!0§ = new ByteArray();
               this.§^x§ = 0;
               this.§^O§ = 0;
               return true;
            }
            this.§1!U§();
            if(this.§"?§ != this.§4u§)
            {
               this.§"?§ = this.§#E§;
               return true;
            }
         }
         return false;
      }
      
      protected function §7i§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§^x§ = this.§^x§ >>> 8 | _loc2_ << 24;
            if(this.§^x§ == §-l§)
            {
               this.§3!0§.length -= 3;
               this.§"?§ = this.§%g§;
               return true;
            }
            this.§3!0§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §%g§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§3!0§.length == _loc3_)
            {
               this.§3!0§.position = 0;
               this.§[!X§.§&<§ = _loc2_;
               this.§[!X§.§0H§ = _loc3_;
               this.§[!X§.§4!2§ = _loc4_;
               this.§[!X§.§3!N§(this.§3!0§);
               this.§1!U§();
               this.§"?§ = this.§#E§;
            }
            else
            {
               this.§3!0§.writeUnsignedInt(_loc2_);
               this.§3!0§.writeUnsignedInt(_loc3_);
               this.§3!0§.writeUnsignedInt(_loc4_);
               this.§"?§ = this.§7i§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!U§() : void
      {
         this.§8T§.push(this.§[!X§);
         if(this.§[!X§.§0k§)
         {
            this.§^J§[this.§[!X§.§0k§] = this.§[!X§;
         }
         dispatchEvent(new §;o§(§;o§.§-t§,this.§[!X§));
         this.§[!X§ = null;
      }
      
      protected function §-,§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§7u§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§0h§.§&!]§))
            {
               throw e;
            }
            dispatchEvent(new §0h§(§0h§.§&!]§,e.message));
         }
      }
      
      protected function §9!F§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §2!E§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function § !8§() : void
      {
         this.§7u§.addEventListener(Event.COMPLETE,this.§9!F§);
         this.§7u§.addEventListener(Event.OPEN,this.§9!F§);
         this.§7u§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!F§);
         this.§7u§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!E§);
         this.§7u§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!E§);
         this.§7u§.addEventListener(ProgressEvent.PROGRESS,this.§-,§);
      }
      
      protected function §['§() : void
      {
         this.§7u§.removeEventListener(Event.COMPLETE,this.§9!F§);
         this.§7u§.removeEventListener(Event.OPEN,this.§9!F§);
         this.§7u§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!F§);
         this.§7u§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!E§);
         this.§7u§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!E§);
         this.§7u§.removeEventListener(ProgressEvent.PROGRESS,this.§-,§);
      }
   }
}
