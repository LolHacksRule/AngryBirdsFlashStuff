package §,6§
{
   import §8!Z§.§ !D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §]!f§ extends EventDispatcher
   {
       
      
      private var §6!u§:String = "";
      
      private var §-C§:String;
      
      private var §+H§:URLLoader;
      
      private var §>R§:Dictionary;
      
      private var §2L§:String = null;
      
      private var §5-§:String = null;
      
      private var §<!s§:String = null;
      
      private var §3!P§:Boolean;
      
      private var §+!'§:§ !D§;
      
      private var §3!L§:§!o§;
      
      private var §%!m§:Vector.<§!o§>;
      
      private var §2§:String = "pak";
      
      private var §&!0§:Boolean = true;
      
      private var §;!k§:int = 1;
      
      public function §]!f§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§>R§ = new Dictionary();
         this.§%!m§ = new Vector.<§!o§>();
         super();
         this.§6!u§ = param2;
         this.§-C§ = param1;
         this.§&!0§ = param3;
         this.§;!k§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function §0!$§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§>R§[param1] != null;
      }
      
      private function §]!T§(param1:String) : Boolean
      {
         var _loc3_:§!o§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!m§.length)
         {
            _loc3_ = this.§%!m§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§3!L§ = _loc3_;
               this.§2L§ = param1;
               this.§%!m§.splice(_loc2_,1);
               this.§%!m§.unshift(this.§3!L§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §1m§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§6j§())
         {
            if(!this.§^!b§())
            {
               this.§<!s§ = param1;
               return;
            }
         }
         if(this.§0!$§(param1))
         {
            this.§]!T§(param1);
            if(param1 == this.§2L§ || !this.§&!0§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§?n§(param1,false);
            }
         }
         else
         {
            this.§^R§(param1);
         }
      }
      
      private function §^R§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6!u§ != null && this.§6!u§.length > 0)
         {
            _loc2_ = "?version=" + this.§6!u§;
         }
         this.§5-§ = param1;
         this.§+H§ = new URLLoader();
         this.§+H§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+H§.load(new URLRequest(this.§-C§ + "packages/" + param1 + "." + this.§2§ + _loc2_));
      }
      
      private function §6j§() : Boolean
      {
         return this.§+H§ || this.§3!P§;
      }
      
      private function §^!b§() : Boolean
      {
         if(this.§+H§)
         {
            this.§+H§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+H§.close();
            this.§+H§ = null;
         }
         if(this.§3!P§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§+H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>R§[this.§5-§] = this.§+H§.data;
         this.§+H§ = null;
         this.§?n§(this.§5-§,true);
      }
      
      private function §?n§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§!o§ = null;
         this.§3!P§ = true;
         this.§5-§ = param1;
         while(this.§%!m§.length >= this.§;!k§)
         {
            _loc3_ = this.§%!m§.pop();
            _loc3_.dispose();
         }
         if(this.§+!'§)
         {
            this.§+!'§.dispose();
         }
         this.§3!L§ = new §!o§(param1);
         this.§%!m§.unshift(this.§3!L§);
         this.§+!'§ = new § !D§();
         this.§+!'§.addEventListener(Event.COMPLETE,this.§"l§);
         this.§+!'§.§3!%§(this.§>R§[this.§5-§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§+H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+H§.close();
         this.§+H§ = null;
         this.§5-§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §"l§(param1:Event) : void
      {
         this.§3!P§ = false;
         this.§+!'§.removeEventListener(Event.COMPLETE,this.§"l§);
         if(this.§<!s§)
         {
            this.§1m§(this.§<!s§);
            this.§<!s§ = null;
            return;
         }
         var _loc2_:int = this.§+!'§.§package§.§?%§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3!L§.§4!c§(this.§+!'§.§package§.§6!q§(_loc3_));
            _loc3_++;
         }
         this.§"!A§();
      }
      
      public function §"!A§() : void
      {
         if(this.§6j§() || this.§+!'§ == null)
         {
            return;
         }
         if(this.§3!L§.§"!A§())
         {
            this.§+!'§.dispose();
            this.§+!'§ = null;
            this.§2L§ = this.§5-§;
            this.§5-§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
