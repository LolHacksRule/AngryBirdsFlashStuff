package §#"5§
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
   
   public class §`c§ extends EventDispatcher
   {
      
      static const §=!V§:uint = 33639248;
      
      static const §53§:uint = 808471376;
      
      static const §,n§:uint = 67324752;
      
      static const §%@§:uint = 84233040;
      
      static const §!"8§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §!§:uint = 134695760;
      
      static const §8!$§:uint = 134630224;
      
      static const §>x§:uint = 134695760;
       
      
      protected var §9!E§:Array;
      
      protected var §1!d§:Dictionary;
      
      protected var §`M§:URLStream;
      
      protected var §%"#§:String;
      
      protected var §<J§:Function;
      
      protected var §+K§:§'!S§;
      
      protected var §"!!§:ByteArray;
      
      protected var §;O§:uint;
      
      protected var §;b§:uint;
      
      public function §`c§(param1:String = "utf-8")
      {
         super();
         this.§%"#§ = param1;
         this.§<J§ = this.§9![§;
      }
      
      public function get §]K§() : Boolean
      {
         return this.§<J§ !== this.§9![§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§`M§ && this.§<J§ == this.§9![§)
         {
            this.§`M§ = new URLStream();
            this.§`M§.endian = Endian.LITTLE_ENDIAN;
            this.§%!$§();
            this.§9!E§ = [];
            this.§1!d§ = new Dictionary();
            this.§<J§ = this.§!!K§;
            this.§`M§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§`M§ && this.§<J§ == this.§9![§)
         {
            this.§9!E§ = [];
            this.§1!d§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§<J§ = this.§!!K§;
            if(this.parse(param1))
            {
               this.§<J§ = this.§9![§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §]L§(§]L§.§5!D§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§`M§)
         {
            this.§<J§ = this.§9![§;
            this.§]"'§();
            this.§`M§.close();
            this.§`M§ = null;
         }
      }
      
      public function §7!!§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§'!S§ = null;
         if(param1 != null && this.§9!E§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§9!E§.length)
            {
               if((_loc8_ = this.§9!E§[_loc7_] as §'!S§) != null)
               {
                  _loc8_.§7!!§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§7!!§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!"8§);
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
      
      public function §5"=§() : uint
      {
         return !!this.§9!E§ ? uint(this.§9!E§.length) : uint(0);
      }
      
      public function §-7§(param1:uint) : §'!S§
      {
         return !!this.§9!E§ ? this.§9!E§[param1] as §'!S§ : null;
      }
      
      public function §!!=§(param1:String) : §'!S§
      {
         return !!this.§1!d§[param1] ? this.§1!d§[param1] as §'!S§ : null;
      }
      
      public function §9#§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §'!S§
      {
         return this.§4"4§(!!this.§9!E§ ? uint(this.§9!E§.length) : uint(0),param1,param2,param3);
      }
      
      public function §,!>§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §'!S§
      {
         return this.§'!C§(!!this.§9!E§ ? uint(this.§9!E§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §4"4§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §'!S§
      {
         if(this.§9!E§ == null)
         {
            this.§9!E§ = [];
         }
         if(this.§1!d§ == null)
         {
            this.§1!d§ = new Dictionary();
         }
         else if(this.§1!d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§'!S§;
         (_loc5_ = new §'!S§()).§&"§ = param2;
         _loc5_.§]!h§(param3,param4);
         if(param1 >= this.§9!E§.length)
         {
            this.§9!E§.push(_loc5_);
         }
         else
         {
            this.§9!E§.splice(param1,0,_loc5_);
         }
         this.§1!d§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §'!C§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §'!S§
      {
         if(this.§9!E§ == null)
         {
            this.§9!E§ = [];
         }
         if(this.§1!d§ == null)
         {
            this.§1!d§ = new Dictionary();
         }
         else if(this.§1!d§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§'!S§;
         (_loc6_ = new §'!S§()).§&"§ = param2;
         _loc6_.§4!i§(param3,param4,param5);
         if(param1 >= this.§9!E§.length)
         {
            this.§9!E§.push(_loc6_);
         }
         else
         {
            this.§9!E§.splice(param1,0,_loc6_);
         }
         this.§1!d§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §"!C§(param1:uint) : §'!S§
      {
         var _loc2_:§'!S§ = null;
         if(this.§9!E§ != null && this.§1!d§ != null && param1 < this.§9!E§.length)
         {
            _loc2_ = this.§9!E§[param1] as §'!S§;
            if(_loc2_ != null)
            {
               this.§9!E§.splice(param1,1);
               delete this.§1!d§[_loc2_.§&"§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§<J§(param1))
         {
         }
         return this.§<J§ === this.§9![§;
      }
      
      protected function §9![§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!K§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §,n§:
                  this.§<J§ = this.§"m§;
                  this.§+K§ = new §'!S§(this.§%"#§);
                  break;
               case §=!V§:
               case §!"8§:
               case §53§:
               case §%@§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §!§:
               case §8!$§:
               case §>x§:
                  this.§<J§ = this.§9![§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §"m§(param1:IDataInput) : Boolean
      {
         if(this.§+K§.parse(param1))
         {
            if(this.§+K§.§&!9§)
            {
               this.§<J§ = this.§@a§;
               this.§"!!§ = new ByteArray();
               this.§;O§ = 0;
               this.§;b§ = 0;
               return true;
            }
            this.§[!u§();
            if(this.§<J§ != this.§9![§)
            {
               this.§<J§ = this.§!!K§;
               return true;
            }
         }
         return false;
      }
      
      protected function §@a§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§;O§ = this.§;O§ >>> 8 | _loc2_ << 24;
            if(this.§;O§ == §!§)
            {
               this.§"!!§.length -= 3;
               this.§<J§ = this.§[!4§;
               return true;
            }
            this.§"!!§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §[!4§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§"!!§.length == _loc3_)
            {
               this.§"!!§.position = 0;
               this.§+K§.§%!u§ = _loc2_;
               this.§+K§.§7!K§ = _loc3_;
               this.§+K§.§,g§ = _loc4_;
               this.§+K§.§,![§(this.§"!!§);
               this.§[!u§();
               this.§<J§ = this.§!!K§;
            }
            else
            {
               this.§"!!§.writeUnsignedInt(_loc2_);
               this.§"!!§.writeUnsignedInt(_loc3_);
               this.§"!!§.writeUnsignedInt(_loc4_);
               this.§<J§ = this.§@a§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[!u§() : void
      {
         this.§9!E§.push(this.§+K§);
         if(this.§+K§.§&"§)
         {
            this.§1!d§[this.§+K§.§&"§] = this.§+K§;
         }
         dispatchEvent(new §=x§(§=x§.§6"=§,this.§+K§));
         this.§+K§ = null;
      }
      
      protected function §!!^§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§`M§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§]L§.§5!D§))
            {
               throw e;
            }
            dispatchEvent(new §]L§(§]L§.§5!D§,e.message));
         }
      }
      
      protected function §;W§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9"B§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §%!$§() : void
      {
         this.§`M§.addEventListener(Event.COMPLETE,this.§;W§);
         this.§`M§.addEventListener(Event.OPEN,this.§;W§);
         this.§`M§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;W§);
         this.§`M§.addEventListener(IOErrorEvent.IO_ERROR,this.§9"B§);
         this.§`M§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9"B§);
         this.§`M§.addEventListener(ProgressEvent.PROGRESS,this.§!!^§);
      }
      
      protected function §]"'§() : void
      {
         this.§`M§.removeEventListener(Event.COMPLETE,this.§;W§);
         this.§`M§.removeEventListener(Event.OPEN,this.§;W§);
         this.§`M§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;W§);
         this.§`M§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"B§);
         this.§`M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9"B§);
         this.§`M§.removeEventListener(ProgressEvent.PROGRESS,this.§!!^§);
      }
   }
}
