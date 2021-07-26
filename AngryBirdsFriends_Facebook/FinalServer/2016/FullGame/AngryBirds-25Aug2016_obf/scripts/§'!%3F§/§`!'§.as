package §'!?§
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
   
   public class §`!'§ extends EventDispatcher
   {
      
      static const §9!X§:uint = 33639248;
      
      static const §##B§:uint = 808471376;
      
      static const §>#T§:uint = 67324752;
      
      static const §&!K§:uint = 84233040;
      
      static const §3!W§:uint = 101010256;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:uint = 101075792;
      
      static const SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:uint = 117853008;
      
      static const §@!y§:uint = 134695760;
      
      static const §]!B§:uint = 134630224;
      
      static const §?$'§:uint = 134695760;
       
      
      protected var §;"g§:Array;
      
      protected var §7;§:Dictionary;
      
      protected var §;E§:URLStream;
      
      protected var §8"=§:String;
      
      protected var §4#j§:Function;
      
      protected var §#"_§:§with§;
      
      protected var §,"+§:ByteArray;
      
      protected var §"#U§:uint;
      
      protected var §1v§:uint;
      
      public function §`!'§(param1:String = "utf-8")
      {
         super();
         this.§8"=§ = param1;
         this.§4#j§ = this.§?!7§;
      }
      
      public function get active() : Boolean
      {
         return this.§4#j§ !== this.§?!7§;
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!this.§;E§ && this.§4#j§ == this.§?!7§)
         {
            this.§;E§ = new URLStream();
            this.§;E§.endian = Endian.LITTLE_ENDIAN;
            this.§5"[§();
            this.§;"g§ = [];
            this.§7;§ = new Dictionary();
            this.§4#j§ = this.§"z§;
            this.§;E§.load(param1);
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!this.§;E§ && this.§4#j§ == this.§?!7§)
         {
            this.§;"g§ = [];
            this.§7;§ = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            this.§4#j§ = this.§"z§;
            if(this.parse(param1))
            {
               this.§4#j§ = this.§?!7§;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new §6n§(§6n§.§#!Q§,"EOF"));
            }
         }
      }
      
      public function close() : void
      {
         if(this.§;E§)
         {
            this.§4#j§ = this.§?!7§;
            this.§0L§();
            this.§;E§.close();
            this.§;E§ = null;
         }
      }
      
      public function §']§(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:§with§ = null;
         if(param1 != null && this.§;"g§.length > 0)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < this.§;"g§.length)
            {
               if((_loc8_ = this.§;"g§[_loc7_] as §with§) != null)
               {
                  _loc8_.§']§(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.§']§(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(§3!W§);
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
      
      public function §6$-§() : uint
      {
         return !!this.§;"g§ ? uint(this.§;"g§.length) : uint(0);
      }
      
      public function §4!!§(param1:uint) : §with§
      {
         return !!this.§;"g§ ? this.§;"g§[param1] as §with§ : null;
      }
      
      public function §8!Y§(param1:String) : §with§
      {
         return !!this.§7;§[param1] ? this.§7;§[param1] as §with§ : null;
      }
      
      public function §?"[§(param1:String, param2:ByteArray = null, param3:Boolean = true) : §with§
      {
         return this.§>f§(!!this.§;"g§ ? uint(this.§;"g§.length) : uint(0),param1,param2,param3);
      }
      
      public function §2!W§(param1:String, param2:String, param3:String = "utf-8", param4:Boolean = true) : §with§
      {
         return this.§^#t§(!!this.§;"g§ ? uint(this.§;"g§.length) : uint(0),param1,param2,param3,param4);
      }
      
      public function §>f§(param1:uint, param2:String, param3:ByteArray = null, param4:Boolean = true) : §with§
      {
         if(this.§;"g§ == null)
         {
            this.§;"g§ = [];
         }
         if(this.§7;§ == null)
         {
            this.§7;§ = new Dictionary();
         }
         else if(this.§7;§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:§with§;
         (_loc5_ = new §with§()).filename = param2;
         _loc5_.§<!N§(param3,param4);
         if(param1 >= this.§;"g§.length)
         {
            this.§;"g§.push(_loc5_);
         }
         else
         {
            this.§;"g§.splice(param1,0,_loc5_);
         }
         this.§7;§[param2] = _loc5_;
         return _loc5_;
      }
      
      public function §^#t§(param1:uint, param2:String, param3:String, param4:String = "utf-8", param5:Boolean = true) : §with§
      {
         if(this.§;"g§ == null)
         {
            this.§;"g§ = [];
         }
         if(this.§7;§ == null)
         {
            this.§7;§ = new Dictionary();
         }
         else if(this.§7;§[param2])
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc6_:§with§;
         (_loc6_ = new §with§()).filename = param2;
         _loc6_.§'`§(param3,param4,param5);
         if(param1 >= this.§;"g§.length)
         {
            this.§;"g§.push(_loc6_);
         }
         else
         {
            this.§;"g§.splice(param1,0,_loc6_);
         }
         this.§7;§[param2] = _loc6_;
         return _loc6_;
      }
      
      public function §=!K§(param1:uint) : §with§
      {
         var _loc2_:§with§ = null;
         if(this.§;"g§ != null && this.§7;§ != null && param1 < this.§;"g§.length)
         {
            _loc2_ = this.§;"g§[param1] as §with§;
            if(_loc2_ != null)
            {
               this.§;"g§.splice(param1,1);
               delete this.§7;§[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      protected function parse(param1:IDataInput) : Boolean
      {
         while(this.§4#j§(param1))
         {
         }
         return this.§4#j§ === this.§?!7§;
      }
      
      protected function §?!7§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"z§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = param1.readUnsignedInt();
            switch(_loc2_)
            {
               case §>#T§:
                  this.§4#j§ = this.§'#l§;
                  this.§#"_§ = new §with§(this.§8"=§);
                  break;
               case §9!X§:
               case §3!W§:
               case §##B§:
               case §&!K§:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY:
               case SIG_ZIP64_END_OF_CENTRAL_DIRECTORY_LOCATOR:
               case §@!y§:
               case §]!B§:
               case §?$'§:
                  this.§4#j§ = this.§?!7§;
                  break;
               default:
                  throw new Error("Unknown record signature: 0x" + _loc2_.toString(16));
            }
            return true;
         }
         return false;
      }
      
      protected function §'#l§(param1:IDataInput) : Boolean
      {
         if(this.§#"_§.parse(param1))
         {
            if(this.§#"_§.§!#h§)
            {
               this.§4#j§ = this.§`!A§;
               this.§,"+§ = new ByteArray();
               this.§"#U§ = 0;
               this.§1v§ = 0;
               return true;
            }
            this.§ #0§();
            if(this.§4#j§ != this.§?!7§)
            {
               this.§4#j§ = this.§"z§;
               return true;
            }
         }
         return false;
      }
      
      protected function §`!A§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ = param1.readUnsignedByte();
            this.§"#U§ = this.§"#U§ >>> 8 | _loc2_ << 24;
            if(this.§"#U§ == §@!y§)
            {
               this.§,"+§.length -= 3;
               this.§4#j§ = this.§ try§;
               return true;
            }
            this.§,"+§.writeByte(_loc2_);
         }
         return false;
      }
      
      protected function § try§(param1:IDataInput) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.bytesAvailable >= 12)
         {
            _loc2_ = param1.readUnsignedInt();
            _loc3_ = param1.readUnsignedInt();
            _loc4_ = param1.readUnsignedInt();
            if(this.§,"+§.length == _loc3_)
            {
               this.§,"+§.position = 0;
               this.§#"_§.§="L§ = _loc2_;
               this.§#"_§.§1"D§ = _loc3_;
               this.§#"_§.§0p§ = _loc4_;
               this.§#"_§.§=#l§(this.§,"+§);
               this.§ #0§();
               this.§4#j§ = this.§"z§;
            }
            else
            {
               this.§,"+§.writeUnsignedInt(_loc2_);
               this.§,"+§.writeUnsignedInt(_loc3_);
               this.§,"+§.writeUnsignedInt(_loc4_);
               this.§4#j§ = this.§`!A§;
            }
            return true;
         }
         return false;
      }
      
      protected function § #0§() : void
      {
         this.§;"g§.push(this.§#"_§);
         if(this.§#"_§.filename)
         {
            this.§7;§[this.§#"_§.filename] = this.§#"_§;
         }
         dispatchEvent(new §&!z§(§&!z§.§##v§,this.§#"_§));
         this.§#"_§ = null;
      }
      
      protected function §]#"§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         false;
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(this.parse(this.§;E§))
            {
               this.close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            if(_loc4_ || this)
            {
               close();
               do
               {
                  if(!hasEventListener(§6n§.§#!Q§))
                  {
                     throw e;
                  }
                  continue;
               }
               while(!_loc4_);
               
            }
            dispatchEvent(new §6n§(§6n§.§#!Q§,e.message));
         }
      }
      
      protected function §,#7§(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function §8"C§(param1:Event) : void
      {
         this.close();
         dispatchEvent(param1.clone());
      }
      
      protected function §5"[§() : void
      {
         this.§;E§.addEventListener(Event.COMPLETE,this.§,#7§);
         this.§;E§.addEventListener(Event.OPEN,this.§,#7§);
         this.§;E§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,#7§);
         this.§;E§.addEventListener(IOErrorEvent.IO_ERROR,this.§8"C§);
         this.§;E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8"C§);
         this.§;E§.addEventListener(ProgressEvent.PROGRESS,this.§]#"§);
      }
      
      protected function §0L§() : void
      {
         this.§;E§.removeEventListener(Event.COMPLETE,this.§,#7§);
         this.§;E§.removeEventListener(Event.OPEN,this.§,#7§);
         this.§;E§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,#7§);
         this.§;E§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8"C§);
         this.§;E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8"C§);
         this.§;E§.removeEventListener(ProgressEvent.PROGRESS,this.§]#"§);
      }
   }
}
