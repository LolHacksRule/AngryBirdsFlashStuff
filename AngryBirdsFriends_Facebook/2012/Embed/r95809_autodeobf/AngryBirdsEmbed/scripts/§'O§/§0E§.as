package §'O§
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
   
   public class §0E§ extends EventDispatcher
   {
      
      static const §+!D§:uint = 33639248;
      
      static const §[!5§:uint = 808471376;
      
      static const §?O§:uint = 67324752;
      
      static const §8!E§:uint = 84233040;
      
      static const §4!?§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §5_§:uint = 134695760;
      
      static const §+!=§:uint = 134630224;
      
      static const § !<§:uint = 134695760;
       
      
      protected var §?v§:Array;
      
      protected var §<=§:Dictionary;
      
      protected var §^W§:URLStream;
      
      protected var §`'§:String;
      
      protected var §6m§:Function;
      
      protected var §`D§:§]!D§;
      
      protected var §1S§:ByteArray;
      
      protected var §"Y§:uint;
      
      protected var §"2§:uint;
      
      public function §0E§(param1:String = "utf-8")
      {
         super();
         this.§`'§ = param1;
         this.§6m§ = this.§6<§;
      }
      
      public function get active() : Boolean
      {
         return this.§6m§ !== this.§6<§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§^W§ && this.§6m§ == this.§6<§)
         {
            this.§^W§ = new URLStream();
            this.§^W§.endian = Endian.LITTLE_ENDIAN;
            this.§<_§();
            this.§?v§ = [];
            this.§<=§ = new Dictionary();
            this.§6m§ = this.§9e§;
            this.§^W§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§^W§ && this.§6m§ == this.§6<§)
         {
            this.§?v§ = [];
            this.§<=§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§6m§ = this.§9e§;
            if(this.parse(param1))
            {
               this.§6m§ = this.§6<§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §+@§(§+@§.§+3§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§^W§)
         {
            this.§6m§ = this.§6<§;
            this.§,&§();
            this.§^W§.close();
            this.§^W§ = null;
         }
      }
      
      public function §&R§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§]!D§ = null;
         if(param1 != null && this.§?v§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§?v§.length)
            {
               if((_loc8_ = this.§?v§[_loc7_] as §]!D§) != null)
               {
                  _loc8_.§&R§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&R§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§4!?§);
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
      
      public function §9A§() : uint
      {
         return !!this.§?v§ ? uint(this.§?v§.length) : uint(0);
      }
      
      public function §3y§(param1:uint) : §]!D§
      {
         return !!this.§?v§ ? this.§?v§[param1] as §]!D§ : null;
      }
      
      public function §`z§(param1:String) : §]!D§
      {
         return !!this.§<=§[param1] ? this.§<=§[param1] as §]!D§ : null;
      }
      
      public function §<!G§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §]!D§
      {
         return this.§^6§(!!this.§?v§ ? uint(this.§?v§.length) : uint(0),param1,param2,param3);
      }
      
      public function §>!9§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §]!D§
      {
         return this.§0!;§(!!this.§?v§ ? uint(this.§?v§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §^6§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §]!D§
      {
         if(this.§?v§ == null)
         {
            this.§?v§ = [];
         }
         if(this.§<=§ == null)
         {
            this.§<=§ = new Dictionary();
         }
         else if(this.§<=§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§]!D§;
         (_loc5_ = new §]!D§()).§%1§ = param2;
         _loc5_.§5o§(param3,param4);
         if(param1 >= this.§?v§.length)
         {
            this.§?v§.push(_loc5_);
         }
         else
         {
            this.§?v§.splice(param1,0,_loc5_);
         }
         this.§<=§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §0!;§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §]!D§
      {
         if(this.§?v§ == null)
         {
            this.§?v§ = [];
         }
         if(this.§<=§ == null)
         {
            this.§<=§ = new Dictionary();
         }
         else if(this.§<=§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§]!D§;
         (_loc6_ = new §]!D§()).§%1§ = param2;
         _loc6_.§;!?§(param3,param4,param5);
         if(param1 >= this.§?v§.length)
         {
            this.§?v§.push(_loc6_);
         }
         else
         {
            this.§?v§.splice(param1,0,_loc6_);
         }
         this.§<=§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §-m§(param1:uint) : §]!D§
      {
         var _loc2_:§]!D§ = null;
         if(this.§?v§ != null && this.§<=§ != null && param1 < this.§?v§.length)
         {
            _loc2_ = this.§?v§[param1] as §]!D§;
            if(_loc2_ != null)
            {
               this.§?v§.splice(param1,1);
               delete this.§<=§[_loc2_.§%1§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§6m§(param1))
         {
         }
         return this.§6m§ === this.§6<§;
      }
      
      protected function §6<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9e§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §?O§:
                  this.§6m§ = this.§]R§;
                  this.§`D§ = new §]!D§(this.§`'§);
                  break;
               case §+!D§:
               case §4!?§:
               case §[!5§:
               case §8!E§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §5_§:
               case §+!=§:
               case § !<§:
                  this.§6m§ = this.§6<§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §]R§(param1:IDataInput) : Boolean
      {
         if(this.§`D§.parse(param1))
         {
            if(this.§`D§.§@u§)
            {
               this.§6m§ = this.§[k§;
               this.§1S§ = new ByteArray();
               this.§"Y§ = 0;
               this.§"2§ = 0;
               return true;
            }
            this.§>A§();
            if(this.§6m§ != this.§6<§)
            {
               this.§6m§ = this.§9e§;
               return true;
            }
         }
         return false;
      }
      
      protected function §[k§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§"Y§ = this.§"Y§ >>> 8 | _loc2_ << 24;
            if(this.§"Y§ == §5_§)
            {
               this.§1S§.length -= 3;
               this.§6m§ = this.§!V§;
               return true;
            }
            this.§1S§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §!V§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§1S§.length == _loc3_)
            {
               this.§1S§.position = 0;
               this.§`D§.§1!3§ = _loc2_;
               this.§`D§.§[>§ = _loc3_;
               this.§`D§.§7!&§ = _loc4_;
               this.§`D§.§4"§(this.§1S§);
               this.§>A§();
               this.§6m§ = this.§9e§;
            }
            else
            {
               this.§1S§.writeUnsignedInt(_loc2_);
               this.§1S§.writeUnsignedInt(_loc3_);
               this.§1S§.writeUnsignedInt(_loc4_);
               this.§6m§ = this.§[k§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>A§() : void
      {
         this.§?v§.push(this.§`D§);
         if(this.§`D§.§%1§)
         {
            this.§<=§[this.§`D§.§%1§] = this.§`D§;
         }
         dispatchEvent(new §`m§(§`m§.§9!2§,this.§`D§));
         this.§`D§ = null;
      }
      
      protected function §^l§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§^W§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§+@§.§+3§))
            {
               throw e;
            }
            dispatchEvent(new §+@§(§+@§.§+3§,e.message));
         }
      }
      
      protected function §^x§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §]&§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §<_§() : void
      {
         this.§^W§.addEventListener(Event.COMPLETE,this.§^x§);
         this.§^W§.addEventListener(Event.OPEN,this.§^x§);
         this.§^W§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^x§);
         this.§^W§.addEventListener(IOErrorEvent.IO_ERROR,this.§]&§);
         this.§^W§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]&§);
         this.§^W§.addEventListener(ProgressEvent.PROGRESS,this.§^l§);
      }
      
      protected function §,&§() : void
      {
         this.§^W§.removeEventListener(Event.COMPLETE,this.§^x§);
         this.§^W§.removeEventListener(Event.OPEN,this.§^x§);
         this.§^W§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^x§);
         this.§^W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]&§);
         this.§^W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]&§);
         this.§^W§.removeEventListener(ProgressEvent.PROGRESS,this.§^l§);
      }
   }
}
