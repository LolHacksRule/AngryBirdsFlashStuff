package §[_§
{
   import §]X§.§>q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]#§ extends EventDispatcher
   {
       
      
      private var §"F§:String = "";
      
      private var §4!z§:String;
      
      private var §]!;§:URLLoader;
      
      private var §`!u§:Dictionary;
      
      private var §4N§:String = null;
      
      private var §<"&§:String = null;
      
      private var §3]§:String = null;
      
      private var §#l§:Boolean;
      
      private var §2"0§:§>q§;
      
      private var §3!W§:§2!B§;
      
      private var §!c§:Vector.<§2!B§>;
      
      private var §;!<§:String = "pak";
      
      private var §%!_§:Boolean = true;
      
      private var §%!9§:int = 1;
      
      public function §]#§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§`!u§ = new Dictionary();
         this.§!c§ = new Vector.<§2!B§>();
         super();
         this.§"F§ = param2;
         this.§4!z§ = param1;
         this.§%!_§ = param3;
         this.§%!9§ = Math.max(1,param4);
      }
      
      public function get §while§() : §2!B§
      {
         return this.§3!W§;
      }
      
      public function §"!5§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§`!u§[param1] != null;
      }
      
      private function §<!;§(param1:String) : Boolean
      {
         var _loc3_:§2!B§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!c§.length)
         {
            _loc3_ = this.§!c§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§3!W§ = _loc3_;
               this.§4N§ = param1;
               this.§!c§.splice(_loc2_,1);
               this.§!c§.unshift(this.§3!W§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §4!a§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§6!x§())
         {
            if(!this.§!"8§())
            {
               this.§3]§ = param1;
               return;
            }
         }
         if(this.§"!5§(param1))
         {
            this.§<!;§(param1);
            if(param1 == this.§4N§ || !this.§%!_§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"!D§(param1,false);
            }
         }
         else
         {
            this.§!""§(param1);
         }
      }
      
      private function §!""§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§"F§ != null && this.§"F§.length > 0)
         {
            _loc2_ = "?version=" + this.§"F§;
         }
         this.§<"&§ = param1;
         this.§]!;§ = new URLLoader();
         this.§]!;§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]!;§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]!;§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]!;§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!;§.load(new URLRequest(this.§4!z§ + "packages/" + param1 + "." + this.§;!<§ + _loc2_));
      }
      
      private function §6!x§() : Boolean
      {
         return this.§]!;§ || this.§#l§;
      }
      
      private function §!"8§() : Boolean
      {
         if(this.§]!;§)
         {
            this.§]!;§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]!;§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§]!;§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§]!;§.close();
            this.§]!;§ = null;
         }
         if(this.§#l§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§]!;§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]!;§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]!;§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`!u§[this.§<"&§] = this.§]!;§.data;
         this.§]!;§ = null;
         this.§"!D§(this.§<"&§,true);
      }
      
      private function §"!D§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§2!B§ = null;
         this.§#l§ = true;
         this.§<"&§ = param1;
         while(this.§!c§.length >= this.§%!9§)
         {
            _loc3_ = this.§!c§.pop();
            _loc3_.dispose();
         }
         if(this.§2"0§)
         {
            this.§2"0§.dispose();
         }
         this.§3!W§ = new §2!B§(param1);
         this.§!c§.unshift(this.§3!W§);
         this.§2"0§ = new §>q§();
         this.§2"0§.addEventListener(Event.COMPLETE,this.§",§);
         this.§2"0§.§"i§(this.§`!u§[this.§<"&§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§]!;§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]!;§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]!;§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!;§.close();
         this.§]!;§ = null;
         this.§<"&§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §",§(param1:Event) : void
      {
         this.§#l§ = false;
         this.§2"0§.removeEventListener(Event.COMPLETE,this.§",§);
         if(this.§3]§)
         {
            this.§4!a§(this.§3]§);
            this.§3]§ = null;
            return;
         }
         var _loc2_:int = this.§2"0§.§7"!§.§0[§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3!W§.§-3§(this.§2"0§.§7"!§.§`P§(_loc3_));
            _loc3_++;
         }
         this.§!9§();
      }
      
      public function §!9§() : void
      {
         if(this.§6!x§() || this.§2"0§ == null)
         {
            return;
         }
         if(this.§3!W§.§!9§())
         {
            this.§2"0§.dispose();
            this.§2"0§ = null;
            this.§4N§ = this.§<"&§;
            this.§<"&§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
