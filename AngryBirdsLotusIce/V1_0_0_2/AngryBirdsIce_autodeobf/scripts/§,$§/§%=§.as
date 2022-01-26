package §,$§
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
   
   public class §%=§ extends EventDispatcher
   {
      
      static const §]#§:uint = 33639248;
      
      static const §&0§:uint = 808471376;
      
      static const §^!3§:uint = 67324752;
      
      static const §]W§:uint = 84233040;
      
      static const §9r§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §18§:uint = 134695760;
      
      static const §;U§:uint = 134630224;
      
      static const §2=§:uint = 134695760;
       
      
      protected var §8,§:Array;
      
      protected var §?+§:Dictionary;
      
      protected var §!!G§:URLStream;
      
      protected var §<#§:String;
      
      protected var §!L§:Function;
      
      protected var §8Z§:§5^§;
      
      protected var §[]§:ByteArray;
      
      protected var §@h§:uint;
      
      protected var §7!8§:uint;
      
      public function §%=§(param1:String = "utf-8")
      {
         super();
         this.§<#§ = param1;
         this.§!L§ = this.§4!?§;
      }
      
      public function get active() : Boolean
      {
         return this.§!L§ !== this.§4!?§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§!!G§ && this.§!L§ == this.§4!?§)
         {
            this.§!!G§ = new URLStream();
            this.§!!G§.endian = Endian.LITTLE_ENDIAN;
            this.§`!G§();
            this.§8,§ = [];
            this.§?+§ = new Dictionary();
            this.§!L§ = this.§6m§;
            this.§!!G§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§!!G§ && this.§!L§ == this.§4!?§)
         {
            this.§8,§ = [];
            this.§?+§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§!L§ = this.§6m§;
            if(this.parse(param1))
            {
               this.§!L§ = this.§4!?§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §'§(§'§.§&Q§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§!!G§)
         {
            this.§!L§ = this.§4!?§;
            this.§?!>§();
            this.§!!G§.close();
            this.§!!G§ = null;
         }
      }
      
      public function §&I§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§5^§ = null;
         if(param1 != null && this.§8,§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§8,§.length)
            {
               if((_loc8_ = this.§8,§[_loc7_] as §5^§) != null)
               {
                  _loc8_.§&I§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§&I§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§9r§);
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
      
      public function §&$§() : uint
      {
         return !!this.§8,§ ? uint(this.§8,§.length) : uint(0);
      }
      
      public function §5!<§(param1:uint) : §5^§
      {
         return !!this.§8,§ ? this.§8,§[param1] as §5^§ : null;
      }
      
      public function §+?§(param1:String) : §5^§
      {
         return !!this.§?+§[param1] ? this.§?+§[param1] as §5^§ : null;
      }
      
      public function §'K§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §5^§
      {
         return this.§;8§(!!this.§8,§ ? uint(this.§8,§.length) : uint(0),param1,param2,param3);
      }
      
      public function §1=§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §5^§
      {
         return this.§`j§(!!this.§8,§ ? uint(this.§8,§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §;8§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §5^§
      {
         if(this.§8,§ == null)
         {
            this.§8,§ = [];
         }
         if(this.§?+§ == null)
         {
            this.§?+§ = new Dictionary();
         }
         else if(this.§?+§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§5^§;
         (_loc5_ = new §5^§()).§[v§ = param2;
         _loc5_.§4m§(param3,param4);
         if(param1 >= this.§8,§.length)
         {
            this.§8,§.push(_loc5_);
         }
         else
         {
            this.§8,§.splice(param1,0,_loc5_);
         }
         this.§?+§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §`j§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §5^§
      {
         if(this.§8,§ == null)
         {
            this.§8,§ = [];
         }
         if(this.§?+§ == null)
         {
            this.§?+§ = new Dictionary();
         }
         else if(this.§?+§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§5^§;
         (_loc6_ = new §5^§()).§[v§ = param2;
         _loc6_.§7! §(param3,param4,param5);
         if(param1 >= this.§8,§.length)
         {
            this.§8,§.push(_loc6_);
         }
         else
         {
            this.§8,§.splice(param1,0,_loc6_);
         }
         this.§?+§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[w§(param1:uint) : §5^§
      {
         var _loc2_:§5^§ = null;
         if(this.§8,§ != null && this.§?+§ != null && param1 < this.§8,§.length)
         {
            _loc2_ = this.§8,§[param1] as §5^§;
            if(_loc2_ != null)
            {
               this.§8,§.splice(param1,1);
               delete this.§?+§[_loc2_.§[v§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§!L§(param1))
         {
         }
         return this.§!L§ === this.§4!?§;
      }
      
      protected function §4!?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6m§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §^!3§:
                  this.§!L§ = this.§-,§;
                  this.§8Z§ = new §5^§(this.§<#§);
                  break;
               case §]#§:
               case §9r§:
               case §&0§:
               case §]W§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §18§:
               case §;U§:
               case §2=§:
                  this.§!L§ = this.§4!?§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §-,§(param1:IDataInput) : Boolean
      {
         if(this.§8Z§.parse(param1))
         {
            if(this.§8Z§.§`[§)
            {
               this.§!L§ = this.§`!0§;
               this.§[]§ = new ByteArray();
               this.§@h§ = 0;
               this.§7!8§ = 0;
               return true;
            }
            this.§'G§();
            if(this.§!L§ != this.§4!?§)
            {
               this.§!L§ = this.§6m§;
               return true;
            }
         }
         return false;
      }
      
      protected function §`!0§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§@h§ = this.§@h§ >>> 8 | _loc2_ << 24;
            if(this.§@h§ == §18§)
            {
               this.§[]§.length -= 3;
               this.§!L§ = this.§>_§;
               return true;
            }
            this.§[]§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §>_§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§[]§.length == _loc3_)
            {
               this.§[]§.position = 0;
               this.§8Z§.§;!6§ = _loc2_;
               this.§8Z§.§#s§ = _loc3_;
               this.§8Z§.§^$§ = _loc4_;
               this.§8Z§.§<[§(this.§[]§);
               this.§'G§();
               this.§!L§ = this.§6m§;
            }
            else
            {
               this.§[]§.writeUnsignedInt(_loc2_);
               this.§[]§.writeUnsignedInt(_loc3_);
               this.§[]§.writeUnsignedInt(_loc4_);
               this.§!L§ = this.§`!0§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'G§() : void
      {
         this.§8,§.push(this.§8Z§);
         if(this.§8Z§.§[v§)
         {
            this.§?+§[this.§8Z§.§[v§] = this.§8Z§;
         }
         dispatchEvent(new §3M§(§3M§.§#!1§,this.§8Z§));
         this.§8Z§ = null;
      }
      
      protected function §7s§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§!!G§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§'§.§&Q§))
            {
               throw e;
            }
            dispatchEvent(new §'§(§'§.§&Q§,e.message));
         }
      }
      
      protected function §?u§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9R§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §`!G§() : void
      {
         this.§!!G§.addEventListener(Event.COMPLETE,this.§?u§);
         this.§!!G§.addEventListener(Event.OPEN,this.§?u§);
         this.§!!G§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?u§);
         this.§!!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§9R§);
         this.§!!G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9R§);
         this.§!!G§.addEventListener(ProgressEvent.PROGRESS,this.§7s§);
      }
      
      protected function §?!>§() : void
      {
         this.§!!G§.removeEventListener(Event.COMPLETE,this.§?u§);
         this.§!!G§.removeEventListener(Event.OPEN,this.§?u§);
         this.§!!G§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?u§);
         this.§!!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9R§);
         this.§!!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9R§);
         this.§!!G§.removeEventListener(ProgressEvent.PROGRESS,this.§7s§);
      }
   }
}
