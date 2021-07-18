package § !C§
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
   
   public class §&4§ extends EventDispatcher
   {
      
      static const § e§:uint = 33639248;
      
      static const §[!C§:uint = 808471376;
      
      static const §'9§:uint = 67324752;
      
      static const §>S§:uint = 84233040;
      
      static const §0p§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §!![§:uint = 134695760;
      
      static const §3!K§:uint = 134630224;
      
      static const §!!q§:uint = 134695760;
       
      
      protected var §8a§:Array;
      
      protected var §!"=§:Dictionary;
      
      protected var §?!J§:URLStream;
      
      protected var §<o§:String;
      
      protected var §'"%§:Function;
      
      protected var §7[§:§>!y§;
      
      protected var §%"8§:ByteArray;
      
      protected var §%s§:uint;
      
      protected var §5M§:uint;
      
      public function §&4§(param1:String = "utf-8")
      {
         super();
         this.§<o§ = param1;
         this.§'"%§ = this.§@c§;
      }
      
      public function get §4!N§() : Boolean
      {
         return this.§'"%§ !== this.§@c§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§?!J§ && this.§'"%§ == this.§@c§)
         {
            this.§?!J§ = new URLStream();
            this.§?!J§.endian = Endian.LITTLE_ENDIAN;
            this.§!H§();
            this.§8a§ = [];
            this.§!"=§ = new Dictionary();
            this.§'"%§ = this.§=!K§;
            this.§?!J§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§?!J§ && this.§'"%§ == this.§@c§)
         {
            this.§8a§ = [];
            this.§!"=§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§'"%§ = this.§=!K§;
            if(this.parse(param1))
            {
               this.§'"%§ = this.§@c§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §?i§(§?i§.§?";§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§?!J§)
         {
            this.§'"%§ = this.§@c§;
            this.§;!#§();
            this.§?!J§.close();
            this.§?!J§ = null;
         }
      }
      
      public function §0!@§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§>!y§ = null;
         if(param1 != null && this.§8a§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§8a§.length)
            {
               if((_loc8_ = this.§8a§[_loc7_] as §>!y§) != null)
               {
                  _loc8_.§0!@§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§0!@§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§0p§);
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
      
      public function §!"?§() : uint
      {
         return !!this.§8a§ ? uint(this.§8a§.length) : uint(0);
      }
      
      public function §&!p§(param1:uint) : §>!y§
      {
         return !!this.§8a§ ? this.§8a§[param1] as §>!y§ : null;
      }
      
      public function §+!F§(param1:String) : §>!y§
      {
         return !!this.§!"=§[param1] ? this.§!"=§[param1] as §>!y§ : null;
      }
      
      public function §[r§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §>!y§
      {
         return this.§-!3§(!!this.§8a§ ? uint(this.§8a§.length) : uint(0),param1,param2,param3);
      }
      
      public function §8!u§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §>!y§
      {
         return this.§#L§(!!this.§8a§ ? uint(this.§8a§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §-!3§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §>!y§
      {
         if(this.§8a§ == null)
         {
            this.§8a§ = [];
         }
         if(this.§!"=§ == null)
         {
            this.§!"=§ = new Dictionary();
         }
         else if(this.§!"=§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§>!y§;
         (_loc5_ = new §>!y§()).§8`§ = param2;
         _loc5_.§=E§(param3,param4);
         if(param1 >= this.§8a§.length)
         {
            this.§8a§.push(_loc5_);
         }
         else
         {
            this.§8a§.splice(param1,0,_loc5_);
         }
         this.§!"=§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §#L§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §>!y§
      {
         if(this.§8a§ == null)
         {
            this.§8a§ = [];
         }
         if(this.§!"=§ == null)
         {
            this.§!"=§ = new Dictionary();
         }
         else if(this.§!"=§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§>!y§;
         (_loc6_ = new §>!y§()).§8`§ = param2;
         _loc6_.§&!E§(param3,param4,param5);
         if(param1 >= this.§8a§.length)
         {
            this.§8a§.push(_loc6_);
         }
         else
         {
            this.§8a§.splice(param1,0,_loc6_);
         }
         this.§!"=§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §[=§(param1:uint) : §>!y§
      {
         var _loc2_:§>!y§ = null;
         if(this.§8a§ != null && this.§!"=§ != null && param1 < this.§8a§.length)
         {
            _loc2_ = this.§8a§[param1] as §>!y§;
            if(_loc2_ != null)
            {
               this.§8a§.splice(param1,1);
               delete this.§!"=§[_loc2_.§8`§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§'"%§(param1))
         {
         }
         return this.§'"%§ === this.§@c§;
      }
      
      protected function §@c§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=!K§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §'9§:
                  this.§'"%§ = this.§^!^§;
                  this.§7[§ = new §>!y§(this.§<o§);
                  break;
               case § e§:
               case §0p§:
               case §[!C§:
               case §>S§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §!![§:
               case §3!K§:
               case §!!q§:
                  this.§'"%§ = this.§@c§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §^!^§(param1:IDataInput) : Boolean
      {
         if(this.§7[§.parse(param1))
         {
            if(this.§7[§.§8!2§)
            {
               this.§'"%§ = this.§2!f§;
               this.§%"8§ = new ByteArray();
               this.§%s§ = 0;
               this.§5M§ = 0;
               return true;
            }
            this.§7!g§();
            if(this.§'"%§ != this.§@c§)
            {
               this.§'"%§ = this.§=!K§;
               return true;
            }
         }
         return false;
      }
      
      protected function §2!f§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§%s§ = this.§%s§ >>> 8 | _loc2_ << 24;
            if(this.§%s§ == §!![§)
            {
               this.§%"8§.length -= 3;
               this.§'"%§ = this.§<"§;
               return true;
            }
            this.§%"8§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §<"§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§%"8§.length == _loc3_)
            {
               this.§%"8§.position = 0;
               this.§7[§.§-!D§ = _loc2_;
               this.§7[§.§&C§ = _loc3_;
               this.§7[§.§2!3§ = _loc4_;
               this.§7[§.§!!9§(this.§%"8§);
               this.§7!g§();
               this.§'"%§ = this.§=!K§;
            }
            else
            {
               this.§%"8§.writeUnsignedInt(_loc2_);
               this.§%"8§.writeUnsignedInt(_loc3_);
               this.§%"8§.writeUnsignedInt(_loc4_);
               this.§'"%§ = this.§2!f§;
            }
            return true;
         }
         return false;
      }
      
      protected function §7!g§() : void
      {
         this.§8a§.push(this.§7[§);
         if(this.§7[§.§8`§)
         {
            this.§!"=§[this.§7[§.§8`§] = this.§7[§;
         }
         dispatchEvent(new §'!&§(§'!&§.§;!,§,this.§7[§));
         this.§7[§ = null;
      }
      
      protected function §"u§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§?!J§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§?i§.§?";§))
            {
               throw e;
            }
            dispatchEvent(new §?i§(§?i§.§?";§,e.message));
         }
      }
      
      protected function §]""§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §]!X§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §!H§() : void
      {
         this.§?!J§.addEventListener(Event.COMPLETE,this.§]""§);
         this.§?!J§.addEventListener(Event.OPEN,this.§]""§);
         this.§?!J§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]""§);
         this.§?!J§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!X§);
         this.§?!J§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!X§);
         this.§?!J§.addEventListener(ProgressEvent.PROGRESS,this.§"u§);
      }
      
      protected function §;!#§() : void
      {
         this.§?!J§.removeEventListener(Event.COMPLETE,this.§]""§);
         this.§?!J§.removeEventListener(Event.OPEN,this.§]""§);
         this.§?!J§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]""§);
         this.§?!J§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!X§);
         this.§?!J§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!X§);
         this.§?!J§.removeEventListener(ProgressEvent.PROGRESS,this.§"u§);
      }
   }
}
