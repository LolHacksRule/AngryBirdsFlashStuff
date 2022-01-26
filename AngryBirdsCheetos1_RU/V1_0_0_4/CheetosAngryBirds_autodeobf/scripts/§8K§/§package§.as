package §8K§
{
   import §21§.§5z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §package§ extends EventDispatcher
   {
       
      
      private var §6!R§:String = "";
      
      private var §%H§:String;
      
      private var §<!W§:URLLoader;
      
      private var §=j§:Dictionary;
      
      private var §[f§:String = null;
      
      private var §3@§:String = null;
      
      private var §#F§:String = null;
      
      private var §9w§:Boolean;
      
      private var §4s§:§5z§;
      
      private var §2!_§:§>g§;
      
      private var §?m§:Vector.<§>g§>;
      
      private var §-]§:String = "pak";
      
      private var §7!@§:Boolean = true;
      
      private var §8i§:int = 1;
      
      public function §package§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=j§ = new Dictionary();
         this.§?m§ = new Vector.<§>g§>();
         super();
         this.§6!R§ = param2;
         this.§%H§ = param1;
         this.§7!@§ = param3;
         this.§8i§ = Math.max(1,param4);
      }
      
      public function get §^!"§() : §>g§
      {
         return this.§2!_§;
      }
      
      public function §3"§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=j§[param1] != null;
      }
      
      private function §<@§(param1:String) : Boolean
      {
         var _loc3_:§>g§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?m§.length)
         {
            _loc3_ = this.§?m§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§2!_§ = _loc3_;
               this.§[f§ = param1;
               this.§?m§.splice(_loc2_,1);
               this.§?m§.unshift(this.§2!_§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;B§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9u§())
         {
            if(!this.§=k§())
            {
               this.§#F§ = param1;
               return;
            }
         }
         if(this.§3"§(param1))
         {
            this.§<@§(param1);
            if(param1 == this.§[f§ || !this.§7!@§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§;Z§(param1,false);
            }
         }
         else
         {
            this.§50§(param1);
         }
      }
      
      private function §50§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6!R§ != null && this.§6!R§.length > 0)
         {
            _loc2_ = "?version=" + this.§6!R§;
         }
         this.§3@§ = param1;
         this.§<!W§ = new URLLoader();
         this.§<!W§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§<!W§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<!W§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
         this.§<!W§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
         this.§<!W§.load(new URLRequest(this.§%H§ + "packages/" + param1 + "." + this.§-]§ + _loc2_));
      }
      
      private function §9u§() : Boolean
      {
         return this.§<!W§ || this.§9w§;
      }
      
      private function §=k§() : Boolean
      {
         if(this.§<!W§)
         {
            this.§<!W§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§<!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
            this.§<!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
            this.§<!W§.close();
            this.§<!W§ = null;
         }
         if(this.§9w§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§<!W§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
         this.§<!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
         this.§=j§[this.§3@§] = this.§<!W§.data;
         this.§<!W§ = null;
         this.§;Z§(this.§3@§,true);
      }
      
      private function §;Z§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§>g§ = null;
         this.§9w§ = true;
         this.§3@§ = param1;
         while(this.§?m§.length >= this.§8i§)
         {
            _loc3_ = this.§?m§.pop();
            _loc3_.dispose();
         }
         if(this.§4s§)
         {
            this.§4s§.dispose();
         }
         this.§2!_§ = new §>g§(param1);
         this.§?m§.unshift(this.§2!_§);
         this.§4s§ = new §5z§();
         this.§4s§.addEventListener(Event.COMPLETE,this.§]G§);
         this.§4s§.§>_§(this.§=j§[this.§3@§],param2);
      }
      
      private function §-!`§(param1:Event) : void
      {
         this.§<!W§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
         this.§<!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
         this.§<!W§.close();
         this.§<!W§ = null;
         this.§3@§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]G§(param1:Event) : void
      {
         this.§9w§ = false;
         this.§4s§.removeEventListener(Event.COMPLETE,this.§]G§);
         if(this.§#F§)
         {
            this.§;B§(this.§#F§);
            this.§#F§ = null;
            return;
         }
         var _loc2_:int = this.§4s§.§9&§.§&F§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2!_§.§[!>§(this.§4s§.§9&§.§8!W§(_loc3_));
            _loc3_++;
         }
         this.§#+§();
      }
      
      public function §#+§() : void
      {
         if(this.§9u§() || this.§4s§ == null)
         {
            return;
         }
         if(this.§2!_§.§#+§())
         {
            this.§4s§.dispose();
            this.§4s§ = null;
            this.§[f§ = this.§3@§;
            this.§3@§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
