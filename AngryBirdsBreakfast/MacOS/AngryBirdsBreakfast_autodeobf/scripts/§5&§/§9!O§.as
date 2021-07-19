package §5&§
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
   
   public class §9!O§ extends EventDispatcher
   {
      
      static const §^!1§:uint = 33639248;
      
      static const §;!L§:uint = 808471376;
      
      static const §'""§:uint = 67324752;
      
      static const §3![§:uint = 84233040;
      
      static const §4,§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §>&§:uint = 134695760;
      
      static const §4!X§:uint = 134630224;
      
      static const §;!H§:uint = 134695760;
       
      
      protected var §return§:Array;
      
      protected var §<a§:Dictionary;
      
      protected var §,r§:URLStream;
      
      protected var §1a§:String;
      
      protected var §;!2§:Function;
      
      protected var §%3§:§ B§;
      
      protected var §,!h§:ByteArray;
      
      protected var §>n§:uint;
      
      protected var §3!x§:uint;
      
      public function §9!O§(param1:String = "utf-8")
      {
         super();
         this.§1a§ = param1;
         this.§;!2§ = this.§7""§;
      }
      
      public function get active() : Boolean
      {
         return this.§;!2§ !== this.§7""§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§,r§ && this.§;!2§ == this.§7""§)
         {
            this.§,r§ = new URLStream();
            this.§,r§.endian = Endian.LITTLE_ENDIAN;
            this.§]b§();
            this.§return§ = [];
            this.§<a§ = new Dictionary();
            this.§;!2§ = this.§>c§;
            this.§,r§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§,r§ && this.§;!2§ == this.§7""§)
         {
            this.§return§ = [];
            this.§<a§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§;!2§ = this.§>c§;
            if(this.parse(param1))
            {
               this.§;!2§ = this.§7""§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §1I§(§1I§.§=O§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§,r§)
         {
            this.§;!2§ = this.§7""§;
            this.§<i§();
            this.§,r§.close();
            this.§,r§ = null;
         }
      }
      
      public function §`$§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§ B§ = null;
         if(param1 != null && this.§return§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§return§.length)
            {
               if((_loc8_ = this.§return§[_loc7_] as § B§) != null)
               {
                  _loc8_.§`$§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§`$§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§4,§);
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
      
      public function §3!?§() : uint
      {
         return !!this.§return§ ? uint(this.§return§.length) : uint(0);
      }
      
      public function §[!;§(param1:uint) : § B§
      {
         return !!this.§return§ ? this.§return§[param1] as § B§ : null;
      }
      
      public function §"![§(param1:String) : § B§
      {
         return !!this.§<a§[param1] ? this.§<a§[param1] as § B§ : null;
      }
      
      public function §=!D§(param1:String, param2:ByteArray = null, param3:Boolean = true) : § B§
      {
         return this.§,!v§(!!this.§return§ ? uint(this.§return§.length) : uint(0),param1,param2,param3);
      }
      
      public function § !X§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : § B§
      {
         return this.§4p§(!!this.§return§ ? uint(this.§return§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §,!v§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : § B§
      {
         if(this.§return§ == null)
         {
            this.§return§ = [];
         }
         if(this.§<a§ == null)
         {
            this.§<a§ = new Dictionary();
         }
         else if(this.§<a§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§ B§;
         (_loc5_ = new § B§()).§!! § = param2;
         _loc5_.§4!g§(param3,param4);
         if(param1 >= this.§return§.length)
         {
            this.§return§.push(_loc5_);
         }
         else
         {
            this.§return§.splice(param1,0,_loc5_);
         }
         this.§<a§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §4p§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : § B§
      {
         if(this.§return§ == null)
         {
            this.§return§ = [];
         }
         if(this.§<a§ == null)
         {
            this.§<a§ = new Dictionary();
         }
         else if(this.§<a§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§ B§;
         (_loc6_ = new § B§()).§!! § = param2;
         _loc6_.§[K§(param3,param4,param5);
         if(param1 >= this.§return§.length)
         {
            this.§return§.push(_loc6_);
         }
         else
         {
            this.§return§.splice(param1,0,_loc6_);
         }
         this.§<a§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §3!S§(param1:uint) : § B§
      {
         var _loc2_:§ B§ = null;
         if(this.§return§ != null && this.§<a§ != null && param1 < this.§return§.length)
         {
            _loc2_ = this.§return§[param1] as § B§;
            if(_loc2_ != null)
            {
               this.§return§.splice(param1,1);
               delete this.§<a§[_loc2_.§!! §];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§;!2§(param1))
         {
         }
         return this.§;!2§ === this.§7""§;
      }
      
      protected function §7""§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>c§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §'""§:
                  this.§;!2§ = this.§5!h§;
                  this.§%3§ = new § B§(this.§1a§);
                  break;
               case §^!1§:
               case §4,§:
               case §;!L§:
               case §3![§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §>&§:
               case §4!X§:
               case §;!H§:
                  this.§;!2§ = this.§7""§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5!h§(param1:IDataInput) : Boolean
      {
         if(this.§%3§.parse(param1))
         {
            if(this.§%3§.§?!w§)
            {
               this.§;!2§ = this.§+!b§;
               this.§,!h§ = new ByteArray();
               this.§>n§ = 0;
               this.§3!x§ = 0;
               return true;
            }
            this.§6R§();
            if(this.§;!2§ != this.§7""§)
            {
               this.§;!2§ = this.§>c§;
               return true;
            }
         }
         return false;
      }
      
      protected function §+!b§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§>n§ = this.§>n§ >>> 8 | _loc2_ << 24;
            if(this.§>n§ == §>&§)
            {
               this.§,!h§.length -= 3;
               this.§;!2§ = this.§8!;§;
               return true;
            }
            this.§,!h§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §8!;§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§,!h§.length == _loc3_)
            {
               this.§,!h§.position = 0;
               this.§%3§.§1"+§ = _loc2_;
               this.§%3§.§>!W§ = _loc3_;
               this.§%3§.§-!O§ = _loc4_;
               this.§%3§.parseContent(this.§,!h§);
               this.§6R§();
               this.§;!2§ = this.§>c§;
            }
            else
            {
               this.§,!h§.writeUnsignedInt(_loc2_);
               this.§,!h§.writeUnsignedInt(_loc3_);
               this.§,!h§.writeUnsignedInt(_loc4_);
               this.§;!2§ = this.§+!b§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6R§() : void
      {
         this.§return§.push(this.§%3§);
         if(this.§%3§.§!! §)
         {
            this.§<a§[this.§%3§.§!! §] = this.§%3§;
         }
         dispatchEvent(new §?!y§(§?!y§.§0!4§,this.§%3§));
         this.§%3§ = null;
      }
      
      protected function §'=§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§,r§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§1I§.§=O§))
            {
               throw e;
            }
            dispatchEvent(new §1I§(§1I§.§=O§,e.message));
         }
      }
      
      protected function §'[§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §]b§() : void
      {
         this.§,r§.addEventListener(Event.COMPLETE,this.§'[§);
         this.§,r§.addEventListener(Event.OPEN,this.§'[§);
         this.§,r§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'[§);
         this.§,r§.addEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§,r§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§,r§.addEventListener(ProgressEvent.PROGRESS,this.§'=§);
      }
      
      protected function §<i§() : void
      {
         this.§,r§.removeEventListener(Event.COMPLETE,this.§'[§);
         this.§,r§.removeEventListener(Event.OPEN,this.§'[§);
         this.§,r§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'[§);
         this.§,r§.removeEventListener(IOErrorEvent.IO_ERROR,this.defaultErrorHandler);
         this.§,r§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.defaultErrorHandler);
         this.§,r§.removeEventListener(ProgressEvent.PROGRESS,this.§'=§);
      }
   }
}
