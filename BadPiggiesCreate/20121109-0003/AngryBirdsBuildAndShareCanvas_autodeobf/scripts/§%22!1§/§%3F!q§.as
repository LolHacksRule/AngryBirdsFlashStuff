package §"!1§
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
   
   public class §?!q§ extends EventDispatcher
   {
      
      static const §-!Q§:uint = 33639248;
      
      static const §9b§:uint = 808471376;
      
      static const §'!b§:uint = 67324752;
      
      static const §]!K§:uint = 84233040;
      
      static const §'!n§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §0L§:uint = 134695760;
      
      static const §3!w§:uint = 134630224;
      
      static const § n§:uint = 134695760;
       
      
      protected var §?!_§:Array;
      
      protected var §0u§:Dictionary;
      
      protected var §+!^§:URLStream;
      
      protected var §<d§:String;
      
      protected var §44§:Function;
      
      protected var §!!A§:§4!b§;
      
      protected var §+!_§:ByteArray;
      
      protected var §#"§:uint;
      
      protected var §6!S§:uint;
      
      public function §?!q§(param1:String = "utf-8")
      {
         super();
         this.§<d§ = param1;
         this.§44§ = this.§1§;
      }
      
      public function get §`!U§() : Boolean
      {
         return this.§44§ !== this.§1§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§+!^§ && this.§44§ == this.§1§)
         {
            this.§+!^§ = new URLStream();
            this.§+!^§.endian = Endian.LITTLE_ENDIAN;
            this.§,T§();
            this.§?!_§ = [];
            this.§0u§ = new Dictionary();
            this.§44§ = this.§"Y§;
            this.§+!^§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§+!^§ && this.§44§ == this.§1§)
         {
            this.§?!_§ = [];
            this.§0u§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§44§ = this.§"Y§;
            if(this.parse(param1))
            {
               this.§44§ = this.§1§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §&"<§(§&"<§.§,"$§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§+!^§)
         {
            this.§44§ = this.§1§;
            this.§1">§();
            this.§+!^§.close();
            this.§+!^§ = null;
         }
      }
      
      public function §>!3§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§4!b§ = null;
         if(param1 != null && this.§?!_§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§?!_§.length)
            {
               if((_loc8_ = this.§?!_§[_loc7_] as §4!b§) != null)
               {
                  _loc8_.§>!3§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§>!3§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§'!n§);
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
      
      public function §-!E§() : uint
      {
         return !!this.§?!_§ ? uint(this.§?!_§.length) : uint(0);
      }
      
      public function §@!M§(param1:uint) : §4!b§
      {
         return !!this.§?!_§ ? this.§?!_§[param1] as §4!b§ : null;
      }
      
      public function §3" §(param1:String) : §4!b§
      {
         return !!this.§0u§[param1] ? this.§0u§[param1] as §4!b§ : null;
      }
      
      public function §>!g§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §4!b§
      {
         return this.§?&§(!!this.§?!_§ ? uint(this.§?!_§.length) : uint(0),param1,param2,param3);
      }
      
      public function §+!Z§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §4!b§
      {
         return this.§&r§(!!this.§?!_§ ? uint(this.§?!_§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §?&§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §4!b§
      {
         if(this.§?!_§ == null)
         {
            this.§?!_§ = [];
         }
         if(this.§0u§ == null)
         {
            this.§0u§ = new Dictionary();
         }
         else if(this.§0u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§4!b§;
         (_loc5_ = new §4!b§()).§['§ = param2;
         _loc5_.§'h§(param3,param4);
         if(param1 >= this.§?!_§.length)
         {
            this.§?!_§.push(_loc5_);
         }
         else
         {
            this.§?!_§.splice(param1,0,_loc5_);
         }
         this.§0u§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §&r§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §4!b§
      {
         if(this.§?!_§ == null)
         {
            this.§?!_§ = [];
         }
         if(this.§0u§ == null)
         {
            this.§0u§ = new Dictionary();
         }
         else if(this.§0u§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§4!b§;
         (_loc6_ = new §4!b§()).§['§ = param2;
         _loc6_.§&!V§(param3,param4,param5);
         if(param1 >= this.§?!_§.length)
         {
            this.§?!_§.push(_loc6_);
         }
         else
         {
            this.§?!_§.splice(param1,0,_loc6_);
         }
         this.§0u§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §1l§(param1:uint) : §4!b§
      {
         var _loc2_:§4!b§ = null;
         if(this.§?!_§ != null && this.§0u§ != null && param1 < this.§?!_§.length)
         {
            _loc2_ = this.§?!_§[param1] as §4!b§;
            if(_loc2_ != null)
            {
               this.§?!_§.splice(param1,1);
               delete this.§0u§[_loc2_.§['§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§44§(param1))
         {
         }
         return this.§44§ === this.§1§;
      }
      
      protected function §1§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"Y§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §'!b§:
                  this.§44§ = this.§#!a§;
                  this.§!!A§ = new §4!b§(this.§<d§);
                  break;
               case §-!Q§:
               case §'!n§:
               case §9b§:
               case §]!K§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §0L§:
               case §3!w§:
               case § n§:
                  this.§44§ = this.§1§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §#!a§(param1:IDataInput) : Boolean
      {
         if(this.§!!A§.parse(param1))
         {
            if(this.§!!A§.§'H§)
            {
               this.§44§ = this.§%!z§;
               this.§+!_§ = new ByteArray();
               this.§#"§ = 0;
               this.§6!S§ = 0;
               return true;
            }
            this.§9A§();
            if(this.§44§ != this.§1§)
            {
               this.§44§ = this.§"Y§;
               return true;
            }
         }
         return false;
      }
      
      protected function §%!z§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§#"§ = this.§#"§ >>> 8 | _loc2_ << 24;
            if(this.§#"§ == §0L§)
            {
               this.§+!_§.length -= 3;
               this.§44§ = this.§`!t§;
               return true;
            }
            this.§+!_§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §`!t§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§+!_§.length == _loc3_)
            {
               this.§+!_§.position = 0;
               this.§!!A§.§8d§ = _loc2_;
               this.§!!A§.§5!w§ = _loc3_;
               this.§!!A§.§&!_§ = _loc4_;
               this.§!!A§.§<h§(this.§+!_§);
               this.§9A§();
               this.§44§ = this.§"Y§;
            }
            else
            {
               this.§+!_§.writeUnsignedInt(_loc2_);
               this.§+!_§.writeUnsignedInt(_loc3_);
               this.§+!_§.writeUnsignedInt(_loc4_);
               this.§44§ = this.§%!z§;
            }
            return true;
         }
         return false;
      }
      
      protected function §9A§() : void
      {
         this.§?!_§.push(this.§!!A§);
         if(this.§!!A§.§['§)
         {
            this.§0u§[this.§!!A§.§['§] = this.§!!A§;
         }
         dispatchEvent(new §%3§(§%3§.§,"6§,this.§!!A§));
         this.§!!A§ = null;
      }
      
      protected function § J§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§+!^§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§&"<§.§,"$§))
            {
               throw e;
            }
            dispatchEvent(new §&"<§(§&"<§.§,"$§,e.message));
         }
      }
      
      protected function §'Y§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §>!<§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §,T§() : void
      {
         this.§+!^§.addEventListener(Event.COMPLETE,this.§'Y§);
         this.§+!^§.addEventListener(Event.OPEN,this.§'Y§);
         this.§+!^§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'Y§);
         this.§+!^§.addEventListener(IOErrorEvent.IO_ERROR,this.§>!<§);
         this.§+!^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!<§);
         this.§+!^§.addEventListener(ProgressEvent.PROGRESS,this.§ J§);
      }
      
      protected function §1">§() : void
      {
         this.§+!^§.removeEventListener(Event.COMPLETE,this.§'Y§);
         this.§+!^§.removeEventListener(Event.OPEN,this.§'Y§);
         this.§+!^§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'Y§);
         this.§+!^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!<§);
         this.§+!^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!<§);
         this.§+!^§.removeEventListener(ProgressEvent.PROGRESS,this.§ J§);
      }
   }
}
