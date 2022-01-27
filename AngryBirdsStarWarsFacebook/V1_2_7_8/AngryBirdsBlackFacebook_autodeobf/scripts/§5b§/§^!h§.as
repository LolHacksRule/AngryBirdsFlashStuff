package §5b§
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
   
   public class §^!h§ extends EventDispatcher
   {
      
      static const §'3§:uint = 33639248;
      
      static const §`"q§:uint = 808471376;
      
      static const §]",§:uint = 67324752;
      
      static const §8v§:uint = 84233040;
      
      static const §80§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §-"O§:uint = 134695760;
      
      static const §93§:uint = 134630224;
      
      static const §3k§:uint = 134695760;
       
      
      protected var §%!9§:Array;
      
      protected var §#"T§:Dictionary;
      
      protected var §6"T§:URLStream;
      
      protected var §,1§:String;
      
      protected var §[S§:Function;
      
      protected var §9"J§:§8"g§;
      
      protected var §7X§:ByteArray;
      
      protected var §<w§:uint;
      
      protected var §;!h§:uint;
      
      public function §^!h§(param1:String = "utf-8")
      {
         super();
         this.§,1§ = param1;
         this.§[S§ = this.§!"n§;
      }
      
      public function get active() : Boolean
      {
         return this.§[S§ !== this.§!"n§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§6"T§ && this.§[S§ == this.§!"n§)
         {
            this.§6"T§ = new URLStream();
            this.§6"T§.endian = Endian.LITTLE_ENDIAN;
            this.§!"2§();
            this.§%!9§ = [];
            this.§#"T§ = new Dictionary();
            this.§[S§ = this.§6S§;
            this.§6"T§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§6"T§ && this.§[S§ == this.§!"n§)
         {
            this.§%!9§ = [];
            this.§#"T§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§[S§ = this.§6S§;
            if(this.parse(param1))
            {
               this.§[S§ = this.§!"n§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'"m§(§'"m§.§'F§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§6"T§)
         {
            this.§[S§ = this.§!"n§;
            this.§+c§();
            this.§6"T§.close();
            this.§6"T§ = null;
         }
      }
      
      public function §6!S§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§8"g§ = null;
         if(param1 != null && this.§%!9§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§%!9§.length)
            {
               if((_loc8_ = this.§%!9§[_loc7_] as §8"g§) != null)
               {
                  _loc8_.§6!S§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§6!S§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§80§);
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
      
      public function §^"E§() : uint
      {
         return !!this.§%!9§ ? uint(this.§%!9§.length) : uint(0);
      }
      
      public function §8"<§(param1:uint) : §8"g§
      {
         return !!this.§%!9§ ? this.§%!9§[param1] as §8"g§ : null;
      }
      
      public function §;"`§(param1:String) : §8"g§
      {
         return !!this.§#"T§[param1] ? this.§#"T§[param1] as §8"g§ : null;
      }
      
      public function §+k§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §8"g§
      {
         return this.§%"K§(!!this.§%!9§ ? uint(this.§%!9§.length) : uint(0),param1,param2,param3);
      }
      
      public function §'"v§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §8"g§
      {
         return this.§ Q§(!!this.§%!9§ ? uint(this.§%!9§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §%"K§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §8"g§
      {
         if(this.§%!9§ == null)
         {
            this.§%!9§ = [];
         }
         if(this.§#"T§ == null)
         {
            this.§#"T§ = new Dictionary();
         }
         else if(this.§#"T§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§8"g§;
         (_loc5_ = new §8"g§()).§+V§ = param2;
         _loc5_.§@"j§(param3,param4);
         if(param1 >= this.§%!9§.length)
         {
            this.§%!9§.push(_loc5_);
         }
         else
         {
            this.§%!9§.splice(param1,0,_loc5_);
         }
         this.§#"T§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function § Q§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §8"g§
      {
         if(this.§%!9§ == null)
         {
            this.§%!9§ = [];
         }
         if(this.§#"T§ == null)
         {
            this.§#"T§ = new Dictionary();
         }
         else if(this.§#"T§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§8"g§;
         (_loc6_ = new §8"g§()).§+V§ = param2;
         _loc6_.§<k§(param3,param4,param5);
         if(param1 >= this.§%!9§.length)
         {
            this.§%!9§.push(_loc6_);
         }
         else
         {
            this.§%!9§.splice(param1,0,_loc6_);
         }
         this.§#"T§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §0"+§(param1:uint) : §8"g§
      {
         var _loc2_:§8"g§ = null;
         if(this.§%!9§ != null && this.§#"T§ != null && param1 < this.§%!9§.length)
         {
            _loc2_ = this.§%!9§[param1] as §8"g§;
            if(_loc2_ != null)
            {
               this.§%!9§.splice(param1,1);
               delete this.§#"T§[_loc2_.§+V§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§[S§(param1))
         {
         }
         return this.§[S§ === this.§!"n§;
      }
      
      protected function §!"n§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6S§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §]",§:
                  this.§[S§ = this.§4r§;
                  this.§9"J§ = new §8"g§(this.§,1§);
                  break;
               case §'3§:
               case §80§:
               case §`"q§:
               case §8v§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §-"O§:
               case §93§:
               case §3k§:
                  this.§[S§ = this.§!"n§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §4r§(param1:IDataInput) : Boolean
      {
         if(this.§9"J§.parse(param1))
         {
            if(this.§9"J§.§?" §)
            {
               this.§[S§ = this.§?"x§;
               this.§7X§ = new ByteArray();
               this.§<w§ = 0;
               this.§;!h§ = 0;
               return true;
            }
            this.§'!y§();
            if(this.§[S§ != this.§!"n§)
            {
               this.§[S§ = this.§6S§;
               return true;
            }
         }
         return false;
      }
      
      protected function §?"x§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§<w§ = this.§<w§ >>> 8 | _loc2_ << 24;
            if(this.§<w§ == §-"O§)
            {
               this.§7X§.length -= 3;
               this.§[S§ = this.§!"&§;
               return true;
            }
            this.§7X§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §!"&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7X§.length == _loc3_)
            {
               this.§7X§.position = 0;
               this.§9"J§.§^"`§ = _loc2_;
               this.§9"J§.§%!U§ = _loc3_;
               this.§9"J§.§7Q§ = _loc4_;
               this.§9"J§.§&!Z§(this.§7X§);
               this.§'!y§();
               this.§[S§ = this.§6S§;
            }
            else
            {
               this.§7X§.writeUnsignedInt(_loc2_);
               this.§7X§.writeUnsignedInt(_loc3_);
               this.§7X§.writeUnsignedInt(_loc4_);
               this.§[S§ = this.§?"x§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'!y§() : void
      {
         this.§%!9§.push(this.§9"J§);
         if(this.§9"J§.§+V§)
         {
            this.§#"T§[this.§9"J§.§+V§] = this.§9"J§;
         }
         dispatchEvent(new § !-§(§ !-§.§8b§,this.§9"J§));
         this.§9"J§ = null;
      }
      
      protected function §1!^§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§6"T§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'"m§.§'F§))
            {
               throw e;
            }
            dispatchEvent(new §'"m§(§'"m§.§'F§,e.message));
         }
      }
      
      protected function §<"r§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §+!'§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §!"2§() : void
      {
         this.§6"T§.addEventListener(Event.COMPLETE,this.§<"r§);
         this.§6"T§.addEventListener(Event.OPEN,this.§<"r§);
         this.§6"T§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<"r§);
         this.§6"T§.addEventListener(IOErrorEvent.IO_ERROR,this.§+!'§);
         this.§6"T§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!'§);
         this.§6"T§.addEventListener(ProgressEvent.PROGRESS,this.§1!^§);
      }
      
      protected function §+c§() : void
      {
         this.§6"T§.removeEventListener(Event.COMPLETE,this.§<"r§);
         this.§6"T§.removeEventListener(Event.OPEN,this.§<"r§);
         this.§6"T§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<"r§);
         this.§6"T§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+!'§);
         this.§6"T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!'§);
         this.§6"T§.removeEventListener(ProgressEvent.PROGRESS,this.§1!^§);
      }
   }
}
