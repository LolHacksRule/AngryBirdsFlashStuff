package §`"2§
{
   import §07§.§ >§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&"5§ extends EventDispatcher
   {
       
      
      private var §'u§:String = "";
      
      private var §?!d§:String;
      
      private var §?!H§:URLLoader;
      
      private var §[U§:Dictionary;
      
      private var §]$§:String = null;
      
      private var § X§:String = null;
      
      private var §!F§:String = null;
      
      private var § !#§:Boolean;
      
      private var § for§:§ >§;
      
      private var §>!t§:§6!,§;
      
      private var §]t§:Vector.<§6!,§>;
      
      private var §4!I§:String = "pak";
      
      private var §<C§:Boolean = true;
      
      private var §'!W§:int = 1;
      
      public function §&"5§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§[U§ = new Dictionary();
         this.§]t§ = new Vector.<§6!,§>();
         super();
         this.§'u§ = param2;
         this.§?!d§ = param1;
         this.§<C§ = param3;
         this.§'!W§ = Math.max(1,param4);
      }
      
      public function get §4F§() : §6!,§
      {
         return this.§>!t§;
      }
      
      public function §?j§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§[U§[param1] != null;
      }
      
      private function §=2§(param1:String) : Boolean
      {
         var _loc3_:§6!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]t§.length)
         {
            _loc3_ = this.§]t§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>!t§ = _loc3_;
               this.§]$§ = param1;
               this.§]t§.splice(_loc2_,1);
               this.§]t§.unshift(this.§>!t§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,"6§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§ #§())
         {
            if(!this.§>!k§())
            {
               this.§!F§ = param1;
               return;
            }
         }
         if(this.§?j§(param1))
         {
            this.§=2§(param1);
            if(param1 == this.§]$§ || !this.§<C§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§1-§(param1,false);
            }
         }
         else
         {
            this.§=!S§(param1);
         }
      }
      
      private function §=!S§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§'u§ != null && this.§'u§.length > 0)
         {
            _loc2_ = "?version=" + this.§'u§;
         }
         this.§ X§ = param1;
         this.§?!H§ = new URLLoader();
         this.§?!H§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§?!H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§?!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?!H§.load(new URLRequest(this.§?!d§ + "packages/" + param1 + "." + this.§4!I§ + _loc2_));
      }
      
      private function § #§() : Boolean
      {
         return this.§?!H§ || this.§ !#§;
      }
      
      private function §>!k§() : Boolean
      {
         if(this.§?!H§)
         {
            this.§?!H§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§?!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§?!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§?!H§.close();
            this.§?!H§ = null;
         }
         if(this.§ !#§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§?!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§?!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[U§[this.§ X§] = this.§?!H§.data;
         this.§?!H§ = null;
         this.§1-§(this.§ X§,true);
      }
      
      private function §1-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§6!,§ = null;
         this.§ !#§ = true;
         this.§ X§ = param1;
         while(this.§]t§.length >= this.§'!W§)
         {
            _loc3_ = this.§]t§.pop();
            _loc3_.dispose();
         }
         if(this.§ for§)
         {
            this.§ for§.dispose();
         }
         this.§>!t§ = new §6!,§(param1);
         this.§]t§.unshift(this.§>!t§);
         this.§ for§ = new § >§();
         this.§ for§.addEventListener(Event.COMPLETE,this.§6!R§);
         this.§ for§.§^!7§(this.§[U§[this.§ X§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§?!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§?!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?!H§.close();
         this.§?!H§ = null;
         this.§ X§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §6!R§(param1:Event) : void
      {
         this.§ !#§ = false;
         this.§ for§.removeEventListener(Event.COMPLETE,this.§6!R§);
         if(this.§!F§)
         {
            this.§,"6§(this.§!F§);
            this.§!F§ = null;
            return;
         }
         var _loc2_:int = this.§ for§.§;&§.§,!a§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>!t§.§3!=§(this.§ for§.§;&§.§8'§(_loc3_));
            _loc3_++;
         }
         this.§%b§();
      }
      
      public function §%b§() : void
      {
         if(this.§ #§() || this.§ for§ == null)
         {
            return;
         }
         if(this.§>!t§.§%b§())
         {
            this.§ for§.dispose();
            this.§ for§ = null;
            this.§]$§ = this.§ X§;
            this.§ X§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
