package §5$=§
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
   
   public class §%#v§ extends EventDispatcher
   {
      
      static const §3!V§:uint = 33639248;
      
      static const §<"6§:uint = 808471376;
      
      static const §;!B§:uint = 67324752;
      
      static const §5!<§:uint = 84233040;
      
      static const §!V§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §]!w§:uint = 134695760;
      
      static const §5"=§:uint = 134630224;
      
      static const §,#T§:uint = 134695760;
       
      
      protected var §&#Q§:Array;
      
      protected var §3"h§:Dictionary;
      
      protected var §7#I§:URLStream;
      
      protected var §8"w§:String;
      
      protected var §&"9§:Function;
      
      protected var §@"%§:§+!P§;
      
      protected var §7"[§:ByteArray;
      
      protected var §3"6§:uint;
      
      protected var §>!E§:uint;
      
      public function §%#v§(param1:String = "utf-8")
      {
         super();
         this.§8"w§ = param1;
         this.§&"9§ = this.§>[§;
      }
      
      public function get active() : Boolean
      {
         return this.§&"9§ !== this.§>[§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§7#I§ && this.§&"9§ == this.§>[§)
         {
            this.§7#I§ = new URLStream();
            this.§7#I§.endian = Endian.LITTLE_ENDIAN;
            this.§1!G§();
            this.§&#Q§ = [];
            this.§3"h§ = new Dictionary();
            this.§&"9§ = this.§!!C§;
            this.§7#I§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§7#I§ && this.§&"9§ == this.§>[§)
         {
            this.§&#Q§ = [];
            this.§3"h§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§&"9§ = this.§!!C§;
            if(this.parse(param1))
            {
               this.§&"9§ = this.§>[§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new § !Y§(§ !Y§.§"!j§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§7#I§)
         {
            this.§&"9§ = this.§>[§;
            this.§="5§();
            this.§7#I§.close();
            this.§7#I§ = null;
         }
      }
      
      public function §&"F§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§+!P§ = null;
         if(param1 != null && this.§&#Q§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§&#Q§.length)
            {
               if((_loc8_ = this.§&#Q§[_loc7_] as §+!P§) != null)
               {
                  _loc8_.§&"F§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&"F§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!V§);
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
      
      public function §0#4§() : uint
      {
         return !!this.§&#Q§ ? uint(this.§&#Q§.length) : uint(0);
      }
      
      public function §2#,§(param1:uint) : §+!P§
      {
         return !!this.§&#Q§ ? this.§&#Q§[param1] as §+!P§ : null;
      }
      
      public function §&]§(param1:String) : §+!P§
      {
         return !!this.§3"h§[param1] ? this.§3"h§[param1] as §+!P§ : null;
      }
      
      public function §!b§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §+!P§
      {
         return this.§&!I§(!!this.§&#Q§ ? uint(this.§&#Q§.length) : uint(0),param1,param2,param3);
      }
      
      public function §?#k§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §+!P§
      {
         return this.§,;§(!!this.§&#Q§ ? uint(this.§&#Q§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §&!I§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §+!P§
      {
         if(this.§&#Q§ == null)
         {
            this.§&#Q§ = [];
         }
         if(this.§3"h§ == null)
         {
            this.§3"h§ = new Dictionary();
         }
         else if(this.§3"h§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§+!P§;
         (_loc5_ = new §+!P§()).filename = param2;
         _loc5_.§#!v§(param3,param4);
         if(param1 >= this.§&#Q§.length)
         {
            this.§&#Q§.push(_loc5_);
         }
         else
         {
            this.§&#Q§.splice(param1,0,_loc5_);
         }
         this.§3"h§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §,;§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §+!P§
      {
         if(this.§&#Q§ == null)
         {
            this.§&#Q§ = [];
         }
         if(this.§3"h§ == null)
         {
            this.§3"h§ = new Dictionary();
         }
         else if(this.§3"h§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§+!P§;
         (_loc6_ = new §+!P§()).filename = param2;
         _loc6_.§<7§(param3,param4,param5);
         if(param1 >= this.§&#Q§.length)
         {
            this.§&#Q§.push(_loc6_);
         }
         else
         {
            this.§&#Q§.splice(param1,0,_loc6_);
         }
         this.§3"h§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §^#0§(param1:uint) : §+!P§
      {
         var _loc2_:§+!P§ = null;
         if(this.§&#Q§ != null && this.§3"h§ != null && param1 < this.§&#Q§.length)
         {
            _loc2_ = this.§&#Q§[param1] as §+!P§;
            if(_loc2_ != null)
            {
               this.§&#Q§.splice(param1,1);
               delete this.§3"h§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§&"9§(param1))
         {
         }
         return this.§&"9§ === this.§>[§;
      }
      
      protected function §>[§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!C§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §;!B§:
                  this.§&"9§ = this.§[9§;
                  this.§@"%§ = new §+!P§(this.§8"w§);
                  break;
               case §3!V§:
               case §!V§:
               case §<"6§:
               case §5!<§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §]!w§:
               case §5"=§:
               case §,#T§:
                  this.§&"9§ = this.§>[§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §[9§(param1:IDataInput) : Boolean
      {
         if(this.§@"%§.parse(param1))
         {
            if(this.§@"%§.§8$<§)
            {
               this.§&"9§ = this.§`"R§;
               this.§7"[§ = new ByteArray();
               this.§3"6§ = 0;
               this.§>!E§ = 0;
               return true;
            }
            this.§]"i§();
            if(this.§&"9§ != this.§>[§)
            {
               this.§&"9§ = this.§!!C§;
               return true;
            }
         }
         return false;
      }
      
      protected function §`"R§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§3"6§ = this.§3"6§ >>> 8 | _loc2_ << 24;
            if(this.§3"6§ == §]!w§)
            {
               this.§7"[§.length -= 3;
               this.§&"9§ = this.§@#H§;
               return true;
            }
            this.§7"[§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §@#H§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§7"[§.length == _loc3_)
            {
               this.§7"[§.position = 0;
               this.§@"%§.§`! § = _loc2_;
               this.§@"%§.§5#@§ = _loc3_;
               this.§@"%§.§<#0§ = _loc4_;
               this.§@"%§.§&"K§(this.§7"[§);
               this.§]"i§();
               this.§&"9§ = this.§!!C§;
            }
            else
            {
               this.§7"[§.writeUnsignedInt(_loc2_);
               this.§7"[§.writeUnsignedInt(_loc3_);
               this.§7"[§.writeUnsignedInt(_loc4_);
               this.§&"9§ = this.§`"R§;
            }
            return true;
         }
         return false;
      }
      
      protected function §]"i§() : void
      {
         this.§&#Q§.push(this.§@"%§);
         if(this.§@"%§.filename)
         {
            this.§3"h§[this.§@"%§.filename] = this.§@"%§;
         }
         dispatchEvent(new §5#B§(§5#B§.§+$-§,this.§@"%§));
         this.§@"%§ = null;
      }
      
      protected function §"!E§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§7#I§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§ !Y§.§"!j§))
            {
               throw e;
            }
            dispatchEvent(new § !Y§(§ !Y§.§"!j§,e.message));
         }
      }
      
      protected function §#!#§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function § #V§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §1!G§() : void
      {
         this.§7#I§.addEventListener(Event.COMPLETE,this.§#!#§);
         this.§7#I§.addEventListener(Event.OPEN,this.§#!#§);
         this.§7#I§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!#§);
         this.§7#I§.addEventListener(IOErrorEvent.IO_ERROR,this.§ #V§);
         this.§7#I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ #V§);
         this.§7#I§.addEventListener(ProgressEvent.PROGRESS,this.§"!E§);
      }
      
      protected function §="5§() : void
      {
         this.§7#I§.removeEventListener(Event.COMPLETE,this.§#!#§);
         this.§7#I§.removeEventListener(Event.OPEN,this.§#!#§);
         this.§7#I§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!#§);
         this.§7#I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ #V§);
         this.§7#I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ #V§);
         this.§7#I§.removeEventListener(ProgressEvent.PROGRESS,this.§"!E§);
      }
   }
}
