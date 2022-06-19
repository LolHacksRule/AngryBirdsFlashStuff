package §6!`§
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
   
   public class § "§ extends EventDispatcher
   {
      
      static const §^!§:uint = 33639248;
      
      static const §," §:uint = 808471376;
      
      static const §[";§:uint = 67324752;
      
      static const §,8§:uint = 84233040;
      
      static const §!o§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §0q§:uint = 134695760;
      
      static const §!"-§:uint = 134630224;
      
      static const §'"A§:uint = 134695760;
       
      
      protected var §'"C§:Array;
      
      protected var §"X§:Dictionary;
      
      protected var §;!p§:URLStream;
      
      protected var §`T§:String;
      
      protected var §]!9§:Function;
      
      protected var §=D§:§3!^§;
      
      protected var §3!+§:ByteArray;
      
      protected var §@'§:uint;
      
      protected var §"!h§:uint;
      
      public function § "§(param1:String = "utf-8")
      {
         super();
         this.§`T§ = param1;
         this.§]!9§ = this.§,E§;
      }
      
      public function get § "$§() : Boolean
      {
         return this.§]!9§ !== this.§,E§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;!p§ && this.§]!9§ == this.§,E§)
         {
            this.§;!p§ = new URLStream();
            this.§;!p§.endian = Endian.LITTLE_ENDIAN;
            this.§6"=§();
            this.§'"C§ = [];
            this.§"X§ = new Dictionary();
            this.§]!9§ = this.§@!T§;
            this.§;!p§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;!p§ && this.§]!9§ == this.§,E§)
         {
            this.§'"C§ = [];
            this.§"X§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§]!9§ = this.§@!T§;
            if(this.parse(param1))
            {
               this.§]!9§ = this.§,E§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §#!A§(§#!A§.§ !Q§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;!p§)
         {
            this.§]!9§ = this.§,E§;
            this.§>Z§();
            this.§;!p§.close();
            this.§;!p§ = null;
         }
      }
      
      public function §;4§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§3!^§ = null;
         if(param1 != null && this.§'"C§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§'"C§.length)
            {
               if((_loc8_ = this.§'"C§[_loc7_] as §3!^§) != null)
               {
                  _loc8_.§;4§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§;4§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§!o§);
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
      
      public function §;M§() : uint
      {
         return !!this.§'"C§ ? uint(this.§'"C§.length) : uint(0);
      }
      
      public function §2!9§(param1:uint) : §3!^§
      {
         return !!this.§'"C§ ? this.§'"C§[param1] as §3!^§ : null;
      }
      
      public function §?!f§(param1:String) : §3!^§
      {
         return !!this.§"X§[param1] ? this.§"X§[param1] as §3!^§ : null;
      }
      
      public function §2""§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §3!^§
      {
         return this.§,^§(!!this.§'"C§ ? uint(this.§'"C§.length) : uint(0),param1,param2,param3);
      }
      
      public function §7!Y§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §3!^§
      {
         return this.§3!0§(!!this.§'"C§ ? uint(this.§'"C§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §,^§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §3!^§
      {
         if(this.§'"C§ == null)
         {
            this.§'"C§ = [];
         }
         if(this.§"X§ == null)
         {
            this.§"X§ = new Dictionary();
         }
         else if(this.§"X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§3!^§;
         (_loc5_ = new §3!^§()).§14§ = param2;
         _loc5_.§1!-§(param3,param4);
         if(param1 >= this.§'"C§.length)
         {
            this.§'"C§.push(_loc5_);
         }
         else
         {
            this.§'"C§.splice(param1,0,_loc5_);
         }
         this.§"X§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §3!0§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §3!^§
      {
         if(this.§'"C§ == null)
         {
            this.§'"C§ = [];
         }
         if(this.§"X§ == null)
         {
            this.§"X§ = new Dictionary();
         }
         else if(this.§"X§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§3!^§;
         (_loc6_ = new §3!^§()).§14§ = param2;
         _loc6_.§!!e§(param3,param4,param5);
         if(param1 >= this.§'"C§.length)
         {
            this.§'"C§.push(_loc6_);
         }
         else
         {
            this.§'"C§.splice(param1,0,_loc6_);
         }
         this.§"X§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §!!r§(param1:uint) : §3!^§
      {
         var _loc2_:§3!^§ = null;
         if(this.§'"C§ != null && this.§"X§ != null && param1 < this.§'"C§.length)
         {
            _loc2_ = this.§'"C§[param1] as §3!^§;
            if(_loc2_ != null)
            {
               this.§'"C§.splice(param1,1);
               delete this.§"X§[_loc2_.§14§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§]!9§(param1))
         {
         }
         return this.§]!9§ === this.§,E§;
      }
      
      protected function §,E§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §@!T§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §[";§:
                  this.§]!9§ = this.§%!m§;
                  this.§=D§ = new §3!^§(this.§`T§);
                  break;
               case §^!§:
               case §!o§:
               case §," §:
               case §,8§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §0q§:
               case §!"-§:
               case §'"A§:
                  this.§]!9§ = this.§,E§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §%!m§(param1:IDataInput) : Boolean
      {
         if(this.§=D§.parse(param1))
         {
            if(this.§=D§.§<!g§)
            {
               this.§]!9§ = this.§&"-§;
               this.§3!+§ = new ByteArray();
               this.§@'§ = 0;
               this.§"!h§ = 0;
               return true;
            }
            this.§;!8§();
            if(this.§]!9§ != this.§,E§)
            {
               this.§]!9§ = this.§@!T§;
               return true;
            }
         }
         return false;
      }
      
      protected function §&"-§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§@'§ = this.§@'§ >>> 8 | _loc2_ << 24;
            if(this.§@'§ == §0q§)
            {
               this.§3!+§.length -= 3;
               this.§]!9§ = this.§^"0§;
               return true;
            }
            this.§3!+§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §^"0§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§3!+§.length == _loc3_)
            {
               this.§3!+§.position = 0;
               this.§=D§.§0l§ = _loc2_;
               this.§=D§.§ "'§ = _loc3_;
               this.§=D§.§false§ = _loc4_;
               this.§=D§.§4!N§(this.§3!+§);
               this.§;!8§();
               this.§]!9§ = this.§@!T§;
            }
            else
            {
               this.§3!+§.writeUnsignedInt(_loc2_);
               this.§3!+§.writeUnsignedInt(_loc3_);
               this.§3!+§.writeUnsignedInt(_loc4_);
               this.§]!9§ = this.§&"-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §;!8§() : void
      {
         this.§'"C§.push(this.§=D§);
         if(this.§=D§.§14§)
         {
            this.§"X§[this.§=D§.§14§] = this.§=D§;
         }
         dispatchEvent(new §%!"§(§%!"§.§'!+§,this.§=D§));
         this.§=D§ = null;
      }
      
      protected function §3!F§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;!p§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§#!A§.§ !Q§))
            {
               throw e;
            }
            dispatchEvent(new §#!A§(§#!A§.§ !Q§,e.message));
         }
      }
      
      protected function §return§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §"[§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §6"=§() : void
      {
         this.§;!p§.addEventListener(Event.COMPLETE,this.§return§);
         this.§;!p§.addEventListener(Event.OPEN,this.§return§);
         this.§;!p§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§return§);
         this.§;!p§.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         this.§;!p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"[§);
         this.§;!p§.addEventListener(ProgressEvent.PROGRESS,this.§3!F§);
      }
      
      protected function §>Z§() : void
      {
         this.§;!p§.removeEventListener(Event.COMPLETE,this.§return§);
         this.§;!p§.removeEventListener(Event.OPEN,this.§return§);
         this.§;!p§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§return§);
         this.§;!p§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         this.§;!p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"[§);
         this.§;!p§.removeEventListener(ProgressEvent.PROGRESS,this.§3!F§);
      }
   }
}
