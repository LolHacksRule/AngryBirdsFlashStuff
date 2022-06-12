package §&"5§
{
   import §="6§.§;!a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §3s§ extends EventDispatcher
   {
       
      
      private var §,j§:String = "";
      
      private var §%!^§:String;
      
      private var §@!#§:URLLoader;
      
      private var §!!4§:Dictionary;
      
      private var §+!t§:String = null;
      
      private var §]!z§:String = null;
      
      private var §5!S§:String = null;
      
      private var §["#§:Boolean;
      
      private var §[#§:§;!a§;
      
      private var §2"!§:§7!P§;
      
      private var §-!;§:Vector.<§7!P§>;
      
      private var §#!W§:String = "pak";
      
      private var §]"<§:Boolean = true;
      
      private var §,!r§:int = 1;
      
      public function §3s§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§!!4§ = new Dictionary();
         this.§-!;§ = new Vector.<§7!P§>();
         super();
         this.§,j§ = param2;
         this.§%!^§ = param1;
         this.§]"<§ = param3;
         this.§,!r§ = Math.max(1,param4);
      }
      
      public function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function §,!Z§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§!!4§[param1] != null;
      }
      
      private function §]! §(param1:String) : Boolean
      {
         var _loc3_:§7!P§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!;§.length)
         {
            _loc3_ = this.§-!;§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§2"!§ = _loc3_;
               this.§+!t§ = param1;
               this.§-!;§.splice(_loc2_,1);
               this.§-!;§.unshift(this.§2"!§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §"f§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§7!>§())
         {
            if(!this.§5!X§())
            {
               this.§5!S§ = param1;
               return;
            }
         }
         if(this.§,!Z§(param1))
         {
            this.§]! §(param1);
            if(param1 == this.§+!t§ || !this.§]"<§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§<!Q§(param1,false);
            }
         }
         else
         {
            this.§#"-§(param1);
         }
      }
      
      private function §#"-§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§,j§ != null && this.§,j§.length > 0)
         {
            _loc2_ = "?version=" + this.§,j§;
         }
         this.§]!z§ = param1;
         this.§@!#§ = new URLLoader();
         this.§@!#§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§@!#§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§@!#§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§@!#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§@!#§.load(new URLRequest(this.§%!^§ + "packages/" + param1 + "." + this.§#!W§ + _loc2_));
      }
      
      private function §7!>§() : Boolean
      {
         return this.§@!#§ || this.§["#§;
      }
      
      private function §5!X§() : Boolean
      {
         if(this.§@!#§)
         {
            this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§@!#§.close();
            this.§@!#§ = null;
         }
         if(this.§["#§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!!4§[this.§]!z§] = this.§@!#§.data;
         this.§@!#§ = null;
         this.§<!Q§(this.§]!z§,true);
      }
      
      private function §<!Q§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§7!P§ = null;
         this.§["#§ = true;
         this.§]!z§ = param1;
         while(this.§-!;§.length >= this.§,!r§)
         {
            _loc3_ = this.§-!;§.pop();
            _loc3_.dispose();
         }
         if(this.§[#§)
         {
            this.§[#§.dispose();
         }
         this.§2"!§ = new §7!P§(param1);
         this.§-!;§.unshift(this.§2"!§);
         this.§[#§ = new §;!a§();
         this.§[#§.addEventListener(Event.COMPLETE,this.§^,§);
         this.§[#§.§^a§(this.§!!4§[this.§]!z§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§@!#§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§@!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§@!#§.close();
         this.§@!#§ = null;
         this.§]!z§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §^,§(param1:Event) : void
      {
         this.§["#§ = false;
         this.§[#§.removeEventListener(Event.COMPLETE,this.§^,§);
         if(this.§5!S§)
         {
            this.§"f§(this.§5!S§);
            this.§5!S§ = null;
            return;
         }
         var _loc2_:int = this.§[#§.§>"0§.§9!a§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2"!§.§@!@§(this.§[#§.§>"0§.§["=§(_loc3_));
            _loc3_++;
         }
         this.§;"#§();
      }
      
      public function §;"#§() : void
      {
         if(this.§7!>§() || this.§[#§ == null)
         {
            return;
         }
         if(this.§2"!§.§;"#§())
         {
            this.§[#§.dispose();
            this.§[#§ = null;
            this.§+!t§ = this.§]!z§;
            this.§]!z§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
