package §else §
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
   
   public class §3L§ extends EventDispatcher
   {
      
      static const §!!4§:uint = 33639248;
      
      static const §]w§:uint = 808471376;
      
      static const §9M§:uint = 67324752;
      
      static const §[T§:uint = 84233040;
      
      static const §^-§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §5=§:uint = 134695760;
      
      static const §`!k§:uint = 134630224;
      
      static const §<!4§:uint = 134695760;
       
      
      protected var §4y§:Array;
      
      protected var §<!%§:Dictionary;
      
      protected var §1s§:URLStream;
      
      protected var §]!Q§:String;
      
      protected var §5&§:Function;
      
      protected var §?!E§:§#!I§;
      
      protected var §9U§:ByteArray;
      
      protected var §!$§:uint;
      
      protected var §>!f§:uint;
      
      public function §3L§(param1:String = "utf-8")
      {
         super();
         this.§]!Q§ = param1;
         this.§5&§ = this.§>`§;
      }
      
      public function get §%Q§() : Boolean
      {
         return this.§5&§ !== this.§>`§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§1s§ && this.§5&§ == this.§>`§)
         {
            this.§1s§ = new URLStream();
            this.§1s§.endian = Endian.LITTLE_ENDIAN;
            this.§%h§();
            this.§4y§ = [];
            this.§<!%§ = new Dictionary();
            this.§5&§ = this.§,!@§;
            this.§1s§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§1s§ && this.§5&§ == this.§>`§)
         {
            this.§4y§ = [];
            this.§<!%§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§5&§ = this.§,!@§;
            if(this.parse(param1))
            {
               this.§5&§ = this.§>`§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §;!K§(§;!K§.§&!d§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§1s§)
         {
            this.§5&§ = this.§>`§;
            this.§-!a§();
            this.§1s§.close();
            this.§1s§ = null;
         }
      }
      
      public function §4V§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§#!I§ = null;
         if(param1 != null && this.§4y§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§4y§.length)
            {
               if((_loc8_ = this.§4y§[_loc7_] as §#!I§) != null)
               {
                  _loc8_.§4V§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§4V§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§^-§);
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
      
      public function §]!7§() : uint
      {
         return !!this.§4y§ ? uint(this.§4y§.length) : uint(0);
      }
      
      public function §3-§(param1:uint) : §#!I§
      {
         return !!this.§4y§ ? this.§4y§[param1] as §#!I§ : null;
      }
      
      public function §<V§(param1:String) : §#!I§
      {
         return !!this.§<!%§[param1] ? this.§<!%§[param1] as §#!I§ : null;
      }
      
      public function §30§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §#!I§
      {
         return this.§[S§(!!this.§4y§ ? uint(this.§4y§.length) : uint(0),param1,param2,param3);
      }
      
      public function §8!b§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §#!I§
      {
         return this.§=#§(!!this.§4y§ ? uint(this.§4y§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §[S§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §#!I§
      {
         if(this.§4y§ == null)
         {
            this.§4y§ = [];
         }
         if(this.§<!%§ == null)
         {
            this.§<!%§ = new Dictionary();
         }
         else if(this.§<!%§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§#!I§;
         (_loc5_ = new §#!I§()).§^!R§ = param2;
         _loc5_.§<!!§(param3,param4);
         if(param1 >= this.§4y§.length)
         {
            this.§4y§.push(_loc5_);
         }
         else
         {
            this.§4y§.splice(param1,0,_loc5_);
         }
         this.§<!%§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §=#§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §#!I§
      {
         if(this.§4y§ == null)
         {
            this.§4y§ = [];
         }
         if(this.§<!%§ == null)
         {
            this.§<!%§ = new Dictionary();
         }
         else if(this.§<!%§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§#!I§;
         (_loc6_ = new §#!I§()).§^!R§ = param2;
         _loc6_.§8!4§(param3,param4,param5);
         if(param1 >= this.§4y§.length)
         {
            this.§4y§.push(_loc6_);
         }
         else
         {
            this.§4y§.splice(param1,0,_loc6_);
         }
         this.§<!%§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §8!_§(param1:uint) : §#!I§
      {
         var _loc2_:§#!I§ = null;
         if(this.§4y§ != null && this.§<!%§ != null && param1 < this.§4y§.length)
         {
            _loc2_ = this.§4y§[param1] as §#!I§;
            if(_loc2_ != null)
            {
               this.§4y§.splice(param1,1);
               delete this.§<!%§[_loc2_.§^!R§];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§5&§(param1))
         {
         }
         return this.§5&§ === this.§>`§;
      }
      
      protected function §>`§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,!@§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §9M§:
                  this.§5&§ = this.§5-§;
                  this.§?!E§ = new §#!I§(this.§]!Q§);
                  break;
               case §!!4§:
               case §^-§:
               case §]w§:
               case §[T§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §5=§:
               case §`!k§:
               case §<!4§:
                  this.§5&§ = this.§>`§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §5-§(param1:IDataInput) : Boolean
      {
         if(this.§?!E§.parse(param1))
         {
            if(this.§?!E§.§8!&§)
            {
               this.§5&§ = this.§2!D§;
               this.§9U§ = new ByteArray();
               this.§!$§ = 0;
               this.§>!f§ = 0;
               return true;
            }
            this.§'!3§();
            if(this.§5&§ != this.§>`§)
            {
               this.§5&§ = this.§,!@§;
               return true;
            }
         }
         return false;
      }
      
      protected function §2!D§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§!$§ = this.§!$§ >>> 8 | _loc2_ << 24;
            if(this.§!$§ == §5=§)
            {
               this.§9U§.length -= 3;
               this.§5&§ = this.§7&§;
               return true;
            }
            this.§9U§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function §7&§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§9U§.length == _loc3_)
            {
               this.§9U§.position = 0;
               this.§?!E§.§6+§ = _loc2_;
               this.§?!E§.§[!l§ = _loc3_;
               this.§?!E§.§^!0§ = _loc4_;
               this.§?!E§.§%!Z§(this.§9U§);
               this.§'!3§();
               this.§5&§ = this.§,!@§;
            }
            else
            {
               this.§9U§.writeUnsignedInt(_loc2_);
               this.§9U§.writeUnsignedInt(_loc3_);
               this.§9U§.writeUnsignedInt(_loc4_);
               this.§5&§ = this.§2!D§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'!3§() : void
      {
         this.§4y§.push(this.§?!E§);
         if(this.§?!E§.§^!R§)
         {
            this.§<!%§[this.§?!E§.§^!R§] = this.§?!E§;
         }
         dispatchEvent(new §?!J§(§?!J§.§^!j§,this.§?!E§));
         this.§?!E§ = null;
      }
      
      protected function §>1§(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§1s§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(§;!K§.§&!d§))
            {
               throw e;
            }
            dispatchEvent(new §;!K§(§;!K§.§&!d§,e.message));
         }
      }
      
      protected function §9w§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §9G§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §%h§() : void
      {
         this.§1s§.addEventListener(Event.COMPLETE,this.§9w§);
         this.§1s§.addEventListener(Event.OPEN,this.§9w§);
         this.§1s§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9w§);
         this.§1s§.addEventListener(IOErrorEvent.IO_ERROR,this.§9G§);
         this.§1s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9G§);
         this.§1s§.addEventListener(ProgressEvent.PROGRESS,this.§>1§);
      }
      
      protected function §-!a§() : void
      {
         this.§1s§.removeEventListener(Event.COMPLETE,this.§9w§);
         this.§1s§.removeEventListener(Event.OPEN,this.§9w§);
         this.§1s§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9w§);
         this.§1s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9G§);
         this.§1s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9G§);
         this.§1s§.removeEventListener(ProgressEvent.PROGRESS,this.§>1§);
      }
   }
}
