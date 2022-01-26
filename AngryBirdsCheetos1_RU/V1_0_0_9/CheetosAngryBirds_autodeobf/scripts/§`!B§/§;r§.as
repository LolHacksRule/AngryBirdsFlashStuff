package §`!B§
{
   import §%§.§<;§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;r§ extends EventDispatcher
   {
       
      
      private var §9N§:String = "";
      
      private var §<R§:String;
      
      private var §3j§:URLLoader;
      
      private var §4d§:Dictionary;
      
      private var §+z§:String = null;
      
      private var §%!F§:String = null;
      
      private var §"!>§:String = null;
      
      private var §?8§:Boolean;
      
      private var §>!F§:§<;§;
      
      private var §7!W§:§=m§;
      
      private var §-?§:Vector.<§=m§>;
      
      private var §&1§:String = "pak";
      
      private var §"[§:Boolean = true;
      
      private var §]n§:int = 1;
      
      public function §;r§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§4d§ = new Dictionary();
         this.§-?§ = new Vector.<§=m§>();
         super();
         this.§9N§ = param2;
         this.§<R§ = param1;
         this.§"[§ = param3;
         this.§]n§ = Math.max(1,param4);
      }
      
      public function get §59§() : §=m§
      {
         return this.§7!W§;
      }
      
      public function §4!Z§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§4d§[param1] != null;
      }
      
      private function §"!§(param1:String) : Boolean
      {
         var _loc3_:§=m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-?§.length)
         {
            _loc3_ = this.§-?§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§7!W§ = _loc3_;
               this.§+z§ = param1;
               this.§-?§.splice(_loc2_,1);
               this.§-?§.unshift(this.§7!W§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §'-§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§!t§())
         {
            if(!this.§@!<§())
            {
               this.§"!>§ = param1;
               return;
            }
         }
         if(this.§4!Z§(param1))
         {
            this.§"!§(param1);
            if(param1 == this.§+z§ || !this.§"[§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§`Q§(param1,false);
            }
         }
         else
         {
            this.§9!_§(param1);
         }
      }
      
      private function §9!_§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§9N§ != null && this.§9N§.length > 0)
         {
            _loc2_ = "?version=" + this.§9N§;
         }
         this.§%!F§ = param1;
         this.§3j§ = new URLLoader();
         this.§3j§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§3j§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§3j§.addEventListener(IOErrorEvent.IO_ERROR,this.§do §);
         this.§3j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§do §);
         this.§3j§.load(new URLRequest(this.§<R§ + "packages/" + param1 + "." + this.§&1§ + _loc2_));
      }
      
      private function §!t§() : Boolean
      {
         return this.§3j§ || this.§?8§;
      }
      
      private function §@!<§() : Boolean
      {
         if(this.§3j§)
         {
            this.§3j§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§3j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§do §);
            this.§3j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§do §);
            this.§3j§.close();
            this.§3j§ = null;
         }
         if(this.§?8§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§3j§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§3j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§do §);
         this.§3j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§do §);
         this.§4d§[this.§%!F§] = this.§3j§.data;
         this.§3j§ = null;
         this.§`Q§(this.§%!F§,true);
      }
      
      private function §`Q§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§=m§ = null;
         this.§?8§ = true;
         this.§%!F§ = param1;
         while(this.§-?§.length >= this.§]n§)
         {
            _loc3_ = this.§-?§.pop();
            _loc3_.dispose();
         }
         if(this.§>!F§)
         {
            this.§>!F§.dispose();
         }
         this.§7!W§ = new §=m§(param1);
         this.§-?§.unshift(this.§7!W§);
         this.§>!F§ = new §<;§();
         this.§>!F§.addEventListener(Event.COMPLETE,this.§!d§);
         this.§>!F§.§+!#§(this.§4d§[this.§%!F§],param2);
      }
      
      private function §do §(param1:Event) : void
      {
         this.§3j§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§3j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§do §);
         this.§3j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§do §);
         this.§3j§.close();
         this.§3j§ = null;
         this.§%!F§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §!d§(param1:Event) : void
      {
         this.§?8§ = false;
         this.§>!F§.removeEventListener(Event.COMPLETE,this.§!d§);
         if(this.§"!>§)
         {
            this.§'-§(this.§"!>§);
            this.§"!>§ = null;
            return;
         }
         var _loc2_:int = this.§>!F§.§`'§.§1d§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!W§.§"![§(this.§>!F§.§`'§.§`!Y§(_loc3_));
            _loc3_++;
         }
         this.§7d§();
      }
      
      public function §7d§() : void
      {
         if(this.§!t§() || this.§>!F§ == null)
         {
            return;
         }
         if(this.§7!W§.§7d§())
         {
            this.§>!F§.dispose();
            this.§>!F§ = null;
            this.§+z§ = this.§%!F§;
            this.§%!F§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
