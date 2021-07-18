package §;"7§
{
   import §5u§.§-!h§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1!O§ extends EventDispatcher
   {
       
      
      private var §5K§:String = "";
      
      private var §1!J§:String;
      
      private var §29§:URLLoader;
      
      private var §'!l§:Dictionary;
      
      private var §%"%§:String = null;
      
      private var §4!H§:String = null;
      
      private var §,!X§:String = null;
      
      private var §&7§:Boolean;
      
      private var §2!1§:§-!h§;
      
      private var §7k§:§="<§;
      
      private var §<!K§:Vector.<§="<§>;
      
      private var §%!G§:String = "pak";
      
      private var §'S§:Boolean = true;
      
      private var §%'§:int = 1;
      
      public function §1!O§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§'!l§ = new Dictionary();
         this.§<!K§ = new Vector.<§="<§>();
         super();
         this.§5K§ = param2;
         this.§1!J§ = param1;
         this.§'S§ = param3;
         this.§%'§ = Math.max(1,param4);
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function §]!>§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§'!l§[param1] != null;
      }
      
      private function §@Y§(param1:String) : Boolean
      {
         var _loc3_:§="<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!K§.length)
         {
            _loc3_ = this.§<!K§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§7k§ = _loc3_;
               this.§%"%§ = param1;
               this.§<!K§.splice(_loc2_,1);
               this.§<!K§.unshift(this.§7k§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?2§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§1!C§())
         {
            if(!this.§'!y§())
            {
               this.§,!X§ = param1;
               return;
            }
         }
         if(this.§]!>§(param1))
         {
            this.§@Y§(param1);
            if(param1 == this.§%"%§ || !this.§'S§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§2!S§(param1,false);
            }
         }
         else
         {
            this.§#f§(param1);
         }
      }
      
      private function §#f§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§5K§ != null && this.§5K§.length > 0)
         {
            _loc2_ = "?version=" + this.§5K§;
         }
         this.§4!H§ = param1;
         this.§29§ = new URLLoader();
         this.§29§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§29§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§29§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§29§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§29§.load(new URLRequest(this.§1!J§ + "packages/" + param1 + "." + this.§%!G§ + _loc2_));
      }
      
      private function §1!C§() : Boolean
      {
         return this.§29§ || this.§&7§;
      }
      
      private function §'!y§() : Boolean
      {
         if(this.§29§)
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§29§.close();
            this.§29§ = null;
         }
         if(this.§&7§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§'!l§[this.§4!H§] = this.§29§.data;
         this.§29§ = null;
         this.§2!S§(this.§4!H§,true);
      }
      
      private function §2!S§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§="<§ = null;
         this.§&7§ = true;
         this.§4!H§ = param1;
         while(this.§<!K§.length >= this.§%'§)
         {
            _loc3_ = this.§<!K§.pop();
            _loc3_.dispose();
         }
         if(this.§2!1§)
         {
            this.§2!1§.dispose();
         }
         this.§7k§ = new §="<§(param1);
         this.§<!K§.unshift(this.§7k§);
         this.§2!1§ = new §-!h§();
         this.§2!1§.addEventListener(Event.COMPLETE,this.§+!G§);
         this.§2!1§.§+"0§(this.§'!l§[this.§4!H§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§29§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§29§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§29§.close();
         this.§29§ = null;
         this.§4!H§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §+!G§(param1:Event) : void
      {
         this.§&7§ = false;
         this.§2!1§.removeEventListener(Event.COMPLETE,this.§+!G§);
         if(this.§,!X§)
         {
            this.§?2§(this.§,!X§);
            this.§,!X§ = null;
            return;
         }
         var _loc2_:int = this.§2!1§.§1h§.§-"-§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7k§.§[h§(this.§2!1§.§1h§.§@"=§(_loc3_));
            _loc3_++;
         }
         this.§8!u§();
      }
      
      public function §8!u§() : void
      {
         if(this.§1!C§() || this.§2!1§ == null)
         {
            return;
         }
         if(this.§7k§.§8!u§())
         {
            this.§2!1§.dispose();
            this.§2!1§ = null;
            this.§%"%§ = this.§4!H§;
            this.§4!H§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
