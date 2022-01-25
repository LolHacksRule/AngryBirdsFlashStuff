package §48§
{
   import §'! §.§'b§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §^!!§ extends EventDispatcher
   {
       
      
      private var §#%§:String = "";
      
      private var § 2§:String;
      
      private var §-!4§:URLLoader;
      
      private var §-4§:Dictionary;
      
      private var §3Q§:String = null;
      
      private var §!m§:String = null;
      
      private var §8!F§:String = null;
      
      private var §6!+§:Boolean;
      
      private var §"L§:§'b§;
      
      private var §<d§:§4a§;
      
      private var §&f§:Vector.<§4a§>;
      
      private var §;6§:String = "pak";
      
      private var §@j§:Boolean = true;
      
      private var §!F§:int = 1;
      
      public function §^!!§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§-4§ = new Dictionary();
         this.§&f§ = new Vector.<§4a§>();
         super();
         this.§#%§ = param2;
         this.§ 2§ = param1;
         this.§@j§ = param3;
         this.§!F§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §4a§
      {
         return this.§<d§;
      }
      
      public function §'r§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§-4§[param1] != null;
      }
      
      private function §=k§(param1:String) : Boolean
      {
         var _loc3_:§4a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&f§.length)
         {
            _loc3_ = this.§&f§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§<d§ = _loc3_;
               this.§3Q§ = param1;
               this.§&f§.splice(_loc2_,1);
               this.§&f§.unshift(this.§<d§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §>F§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§<'§())
         {
            if(!this.§[n§())
            {
               this.§8!F§ = param1;
               return;
            }
         }
         if(this.§'r§(param1))
         {
            this.§=k§(param1);
            if(param1 == this.§3Q§ || !this.§@j§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§^u§(param1,false);
            }
         }
         else
         {
            this.§>&§(param1);
         }
      }
      
      private function §>&§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§#%§ != null && this.§#%§.length > 0)
         {
            _loc2_ = "?version=" + this.§#%§;
         }
         this.§!m§ = param1;
         this.§-!4§ = new URLLoader();
         this.§-!4§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§-!4§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§-!4§.addEventListener(IOErrorEvent.IO_ERROR,this.§4'§);
         this.§-!4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4'§);
         this.§-!4§.load(new URLRequest(this.§ 2§ + "packages/" + param1 + "." + this.§;6§ + _loc2_));
      }
      
      private function §<'§() : Boolean
      {
         return this.§-!4§ || this.§6!+§;
      }
      
      private function §[n§() : Boolean
      {
         if(this.§-!4§)
         {
            this.§-!4§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§-!4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4'§);
            this.§-!4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4'§);
            this.§-!4§.close();
            this.§-!4§ = null;
         }
         if(this.§6!+§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§-!4§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§-!4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4'§);
         this.§-!4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4'§);
         this.§-4§[this.§!m§] = this.§-!4§.data;
         this.§-!4§ = null;
         this.§^u§(this.§!m§,true);
      }
      
      private function §^u§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§4a§ = null;
         this.§6!+§ = true;
         this.§!m§ = param1;
         while(this.§&f§.length >= this.§!F§)
         {
            _loc3_ = this.§&f§.pop();
            _loc3_.dispose();
         }
         if(this.§"L§)
         {
            this.§"L§.dispose();
         }
         this.§<d§ = new §4a§(param1);
         this.§&f§.unshift(this.§<d§);
         this.§"L§ = new §'b§();
         this.§"L§.addEventListener(Event.COMPLETE,this.§[A§);
         this.§"L§.§%!1§(this.§-4§[this.§!m§],param2);
      }
      
      private function §4'§(param1:Event) : void
      {
         this.§-!4§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§-!4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4'§);
         this.§-!4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4'§);
         this.§-!4§.close();
         this.§-!4§ = null;
         this.§!m§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §[A§(param1:Event) : void
      {
         this.§6!+§ = false;
         this.§"L§.removeEventListener(Event.COMPLETE,this.§[A§);
         if(this.§8!F§)
         {
            this.§>F§(this.§8!F§);
            this.§8!F§ = null;
            return;
         }
         var _loc2_:int = this.§"L§.§;!C§.§7!T§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§<d§.§&!Z§(this.§"L§.§;!C§.§]!1§(_loc3_));
            _loc3_++;
         }
         this.§;C§();
      }
      
      public function §;C§() : void
      {
         if(this.§<'§() || this.§"L§ == null)
         {
            return;
         }
         if(this.§<d§.§;C§())
         {
            this.§"L§.dispose();
            this.§"L§ = null;
            this.§3Q§ = this.§!m§;
            this.§!m§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
