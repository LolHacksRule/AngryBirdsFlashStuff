package §0!H§
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
   
   public class §1!y§ extends EventDispatcher
   {
      
      static const §2!X§:uint = 33639248;
      
      static const §4!l§:uint = 808471376;
      
      static const §]!r§:uint = 67324752;
      
      static const §#!d§:uint = 84233040;
      
      static const §[^§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §+! §:uint = 134695760;
      
      static const §1b§:uint = 134630224;
      
      static const include:uint = 134695760;
       
      
      protected var §7+§:Array;
      
      protected var §`!7§:Dictionary;
      
      protected var §3!1§:URLStream;
      
      protected var §?&§:String;
      
      protected var §&l§:Function;
      
      protected var §!a§:§^!?§;
      
      protected var §%x§:ByteArray;
      
      protected var §,!7§:uint;
      
      protected var §9!j§:uint;
      
      public function §1!y§(param1:String = "utf-8")
      {
         super();
         this.§?&§ = param1;
         this.§&l§ = this.§0z§;
      }
      
      public function get §=r§() : Boolean
      {
         return this.§&l§ !== this.§0z§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§3!1§ && this.§&l§ == this.§0z§)
         {
            this.§3!1§ = new URLStream();
            this.§3!1§.endian = Endian.LITTLE_ENDIAN;
            this.§@n§();
            this.§7+§ = [];
            this.§`!7§ = new Dictionary();
            this.§&l§ = this.§3g§;
            this.§3!1§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§3!1§ && this.§&l§ == this.§0z§)
         {
            this.§7+§ = [];
            this.§`!7§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§&l§ = this.§3g§;
            if(this.parse(param1))
            {
               this.§&l§ = this.§0z§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §<!&§(§<!&§.§<K§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§3!1§)
         {
            this.§&l§ = this.§0z§;
            this.§]!%§();
            this.§3!1§.close();
            this.§3!1§ = null;
         }
      }
      
      public function §'!9§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§^!?§ = null;
         if(param1 != null && this.§7+§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§7+§.length)
            {
               if((_loc8_ = this.§7+§[_loc7_] as §^!?§) != null)
               {
                  _loc8_.§'!9§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§'!9§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§[^§);
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
      
      public function §^!W§() : uint
      {
         return !!this.§7+§ ? uint(this.§7+§.length) : uint(0);
      }
      
      public function §<x§(param1:uint) : §^!?§
      {
         return !!this.§7+§ ? this.§7+§[param1] as §^!?§ : null;
      }
      
      public function §%!!§(param1:String) : §^!?§
      {
         return !!this.§`!7§[param1] ? this.§`!7§[param1] as §^!?§ : null;
      }
      
      public function §?! §(param1:String, param2:ByteArray = null, param3:Boolean = true) : §^!?§
      {
         return this.§class§(!!this.§7+§ ? uint(this.§7+§.length) : uint(0),param1,param2,param3);
      }
      
      public function §&!B§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §^!?§
      {
         return this.§"c§(!!this.§7+§ ? uint(this.§7+§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §class§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §^!?§
      {
         if(this.§7+§ == null)
         {
            this.§7+§ = [];
         }
         if(this.§`!7§ == null)
         {
            this.§`!7§ = new Dictionary();
         }
         else if(this.§`!7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§^!?§;
         (_loc5_ = new §^!?§()).§1L§ = param2;
         _loc5_.§3+§(param3,param4);
         if(param1 >= this.§7+§.length)
         {
            this.§7+§.push(_loc5_);
         }
         else
         {
            this.§7+§.splice(param1,0,_loc5_);
         }
         this.§`!7§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §"c§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §^!?§
      {
         if(this.§7+§ == null)
         {
            this.§7+§ = [];
         }
         if(this.§`!7§ == null)
         {
            this.§`!7§ = new Dictionary();
         }
         else if(this.§`!7§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§^!?§;
         (_loc6_ = new §^!?§()).§1L§ = param2;
         _loc6_.§?M§(param3,param4,param5);
         if(param1 >= this.§7+§.length)
         {
            this.§7+§.push(_loc6_);
         }
         else
         {
            this.§7+§.splice(param1,0,_loc6_);
         }
         this.§`!7§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §#!X§(param1:uint) : §^!?§
      {
         var _loc2_:§^!?§ = null;
         if(this.§7+§ != null && this.§`!7§ != null && param1 < this.§7+§.length)
         {
            _loc2_ = this.§7+§[param1] as §^!?§;
            if(_loc2_ != null)
            {
               this.§7+§.splice(param1,1);
               delete this.§`!7§[_loc2_.§1L§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§&l§(param1))
         {
         }
         return this.§&l§ === this.§0z§;
      }
      
      protected function §0z§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §3g§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §]!r§:
                  this.§&l§ = this.§5!j§;
                  this.§!a§ = new §^!?§(this.§?&§);
                  break;
               case §2!X§:
               case §[^§:
               case §4!l§:
               case §#!d§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §+! §:
               case §1b§:
               case include:
                  this.§&l§ = this.§0z§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5!j§(param1:IDataInput) : Boolean
      {
         if(this.§!a§.parse(param1))
         {
            if(this.§!a§.§ !9§)
            {
               this.§&l§ = this.§"d§;
               this.§%x§ = new ByteArray();
               this.§,!7§ = 0;
               this.§9!j§ = 0;
               return true;
            }
            this.§-!^§();
            if(this.§&l§ != this.§0z§)
            {
               this.§&l§ = this.§3g§;
               return true;
            }
         }
         return false;
      }
      
      protected function §"d§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§,!7§ = this.§,!7§ >>> 8 | _loc2_ << 24;
            if(this.§,!7§ == §+! §)
            {
               this.§%x§.length -= 3;
               this.§&l§ = this.§>!h§;
               return true;
            }
            this.§%x§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §>!h§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§%x§.length == _loc3_)
            {
               this.§%x§.position = 0;
               this.§!a§.§&c§ = _loc2_;
               this.§!a§.§0O§ = _loc3_;
               this.§!a§.§5&§ = _loc4_;
               this.§!a§.§!! §(this.§%x§);
               this.§-!^§();
               this.§&l§ = this.§3g§;
            }
            else
            {
               this.§%x§.writeUnsignedInt(_loc2_);
               this.§%x§.writeUnsignedInt(_loc3_);
               this.§%x§.writeUnsignedInt(_loc4_);
               this.§&l§ = this.§"d§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-!^§() : void
      {
         this.§7+§.push(this.§!a§);
         if(this.§!a§.§1L§)
         {
            this.§`!7§[this.§!a§.§1L§] = this.§!a§;
         }
         dispatchEvent(new §&!5§(§&!5§.§7!i§,this.§!a§));
         this.§!a§ = null;
      }
      
      protected function §=!H§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§3!1§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§<!&§.§<K§))
            {
               throw e;
            }
            dispatchEvent(new §<!&§(§<!&§.§<K§,e.message));
         }
      }
      
      protected function §%3§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §4!6§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §@n§() : void
      {
         this.§3!1§.addEventListener(Event.COMPLETE,this.§%3§);
         this.§3!1§.addEventListener(Event.OPEN,this.§%3§);
         this.§3!1§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%3§);
         this.§3!1§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!6§);
         this.§3!1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!6§);
         this.§3!1§.addEventListener(ProgressEvent.PROGRESS,this.§=!H§);
      }
      
      protected function §]!%§() : void
      {
         this.§3!1§.removeEventListener(Event.COMPLETE,this.§%3§);
         this.§3!1§.removeEventListener(Event.OPEN,this.§%3§);
         this.§3!1§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%3§);
         this.§3!1§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!6§);
         this.§3!1§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4!6§);
         this.§3!1§.removeEventListener(ProgressEvent.PROGRESS,this.§=!H§);
      }
   }
}
