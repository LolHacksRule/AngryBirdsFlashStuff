package §@!§
{
   import §&z§.§"!&§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §0f§ extends EventDispatcher
   {
       
      
      private var §?]§:String = "";
      
      private var §65§:String;
      
      private var § !A§:URLLoader;
      
      private var §&@§:Dictionary;
      
      private var §>?§:String = null;
      
      private var §+!E§:String = null;
      
      private var §41§:String = null;
      
      private var §-k§:Boolean;
      
      private var §&!2§:§"!&§;
      
      private var §`r§:§?! §;
      
      private var §@7§:Vector.<§?! §>;
      
      private var §[!P§:String = "pak";
      
      private var §1^§:Boolean = true;
      
      private var §8!U§:int = 1;
      
      public function §0f§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§&@§ = new Dictionary();
         this.§@7§ = new Vector.<§?! §>();
         super();
         this.§?]§ = param2;
         this.§65§ = param1;
         this.§1^§ = param3;
         this.§8!U§ = Math.max(1,param4);
      }
      
      public function get §>A§() : §?! §
      {
         return this.§`r§;
      }
      
      public function §'!J§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§&@§[param1] != null;
      }
      
      private function §>x§(param1:String) : Boolean
      {
         var _loc3_:§?! § = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@7§.length)
         {
            _loc3_ = this.§@7§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§`r§ = _loc3_;
               this.§>?§ = param1;
               this.§@7§.splice(_loc2_,1);
               this.§@7§.unshift(this.§`r§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!Q§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§>&§())
         {
            if(!this.§9?§())
            {
               this.§41§ = param1;
               return;
            }
         }
         if(this.§'!J§(param1))
         {
            this.§>x§(param1);
            if(param1 == this.§>?§ || !this.§1^§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&]§(param1,false);
            }
         }
         else
         {
            this.§+z§(param1);
         }
      }
      
      private function §+z§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§?]§ != null && this.§?]§.length > 0)
         {
            _loc2_ = "?version=" + this.§?]§;
         }
         this.§+!E§ = param1;
         this.§ !A§ = new URLLoader();
         this.§ !A§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§ !A§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ !A§.addEventListener(IOErrorEvent.IO_ERROR,this.§<!V§);
         this.§ !A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!V§);
         this.§ !A§.load(new URLRequest(this.§65§ + "packages/" + param1 + "." + this.§[!P§ + _loc2_));
      }
      
      private function §>&§() : Boolean
      {
         return this.§ !A§ || this.§-k§;
      }
      
      private function §9?§() : Boolean
      {
         if(this.§ !A§)
         {
            this.§ !A§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ !A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!V§);
            this.§ !A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!V§);
            this.§ !A§.close();
            this.§ !A§ = null;
         }
         if(this.§-k§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!V§);
         this.§ !A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!V§);
         this.§&@§[this.§+!E§] = this.§ !A§.data;
         this.§ !A§ = null;
         this.§&]§(this.§+!E§,true);
      }
      
      private function §&]§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§?! § = null;
         this.§-k§ = true;
         this.§+!E§ = param1;
         while(this.§@7§.length >= this.§8!U§)
         {
            _loc3_ = this.§@7§.pop();
            _loc3_.dispose();
         }
         if(this.§&!2§)
         {
            this.§&!2§.dispose();
         }
         this.§`r§ = new §?! §(param1);
         this.§@7§.unshift(this.§`r§);
         this.§&!2§ = new §"!&§();
         this.§&!2§.addEventListener(Event.COMPLETE,this.§<h§);
         this.§&!2§.§@! §(this.§&@§[this.§+!E§],param2);
      }
      
      private function §<!V§(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!V§);
         this.§ !A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!V§);
         this.§ !A§.close();
         this.§ !A§ = null;
         this.§+!E§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §<h§(param1:Event) : void
      {
         this.§-k§ = false;
         this.§&!2§.removeEventListener(Event.COMPLETE,this.§<h§);
         if(this.§41§)
         {
            this.§?!Q§(this.§41§);
            this.§41§ = null;
            return;
         }
         var _loc2_:int = this.§&!2§.§0N§.§9!M§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`r§.§4T§(this.§&!2§.§0N§.§##§(_loc3_));
            _loc3_++;
         }
         this.§8X§();
      }
      
      public function §8X§() : void
      {
         if(this.§>&§() || this.§&!2§ == null)
         {
            return;
         }
         if(this.§`r§.§8X§())
         {
            this.§&!2§.dispose();
            this.§&!2§ = null;
            this.§>?§ = this.§+!E§;
            this.§+!E§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
