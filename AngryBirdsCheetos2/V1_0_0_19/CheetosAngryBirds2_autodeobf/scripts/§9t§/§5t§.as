package §9t§
{
   import §6N§.§1!9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5t§ extends EventDispatcher
   {
       
      
      private var §,G§:String = "";
      
      private var §+t§:String;
      
      private var §4!8§:URLLoader;
      
      private var §>b§:Dictionary;
      
      private var §<7§:String = null;
      
      private var §5F§:String = null;
      
      private var §[?§:String = null;
      
      private var §#!h§:Boolean;
      
      private var §2W§:§1!9§;
      
      private var §>!K§:§=!>§;
      
      private var §?j§:Vector.<§=!>§>;
      
      private var § !H§:String = "pak";
      
      private var §'!K§:Boolean = true;
      
      private var §>2§:int = 1;
      
      public function §5t§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§>b§ = new Dictionary();
         this.§?j§ = new Vector.<§=!>§>();
         super();
         this.§,G§ = param2;
         this.§+t§ = param1;
         this.§'!K§ = param3;
         this.§>2§ = Math.max(1,param4);
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function §!!Y§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§>b§[param1] != null;
      }
      
      private function §3!J§(param1:String) : Boolean
      {
         var _loc3_:§=!>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?j§.length)
         {
            _loc3_ = this.§?j§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>!K§ = _loc3_;
               this.§<7§ = param1;
               this.§?j§.splice(_loc2_,1);
               this.§?j§.unshift(this.§>!K§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,A§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§^"§())
         {
            if(!this.§0_§())
            {
               this.§[?§ = param1;
               return;
            }
         }
         if(this.§!!Y§(param1))
         {
            this.§3!J§(param1);
            if(param1 == this.§<7§ || !this.§'!K§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§<<§(param1,false);
            }
         }
         else
         {
            this.§ @§(param1);
         }
      }
      
      protected function § @§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§,G§ != null && this.§,G§.length > 0)
         {
            _loc2_ = "?version=" + this.§,G§;
         }
         this.§5F§ = param1;
         this.§4!8§ = new URLLoader();
         this.§4!8§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§4!8§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!8§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
         this.§4!8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
         var _loc3_:String = this.§&u§(param1);
         this.§4!8§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §&u§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§ !H§;
      }
      
      private function §^"§() : Boolean
      {
         return this.§4!8§ || this.§#!h§;
      }
      
      private function §0_§() : Boolean
      {
         if(this.§4!8§)
         {
            this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
            this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
            this.§4!8§.close();
            this.§4!8§ = null;
         }
         if(this.§#!h§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
         this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
         this.§>b§[this.§5F§] = this.§4!8§.data;
         this.§4!8§ = null;
         this.§<<§(this.§5F§,true);
      }
      
      private function §<<§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§=!>§ = null;
         this.§#!h§ = true;
         this.§5F§ = param1;
         while(this.§?j§.length >= this.§>2§)
         {
            _loc3_ = this.§?j§.pop();
            _loc3_.dispose();
         }
         if(this.§2W§)
         {
            this.§2W§.dispose();
         }
         this.§>!K§ = new §=!>§(param1);
         this.§?j§.unshift(this.§>!K§);
         this.§2W§ = new §1!9§();
         this.§2W§.addEventListener(Event.COMPLETE,this.§?!_§);
         this.§2W§.§+B§(this.§5F§);
         this.§2W§.§^R§(this.§>b§[this.§5F§],param2);
      }
      
      private function §4"§(param1:Event) : void
      {
         this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"§);
         this.§4!8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"§);
         this.§4!8§.close();
         this.§4!8§ = null;
         this.§5F§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §?!_§(param1:Event) : void
      {
         this.§#!h§ = false;
         this.§2W§.removeEventListener(Event.COMPLETE,this.§?!_§);
         if(this.§[?§)
         {
            this.§,A§(this.§[?§);
            this.§[?§ = null;
            return;
         }
         var _loc2_:int = this.§2W§.§]A§.§-x§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>!K§.§;Y§(this.§2W§.§]A§.§[j§(_loc3_));
            _loc3_++;
         }
         this.§<h§();
      }
      
      public function §<h§() : void
      {
         if(this.§^"§() || this.§2W§ == null)
         {
            return;
         }
         if(this.§>!K§.§<h§())
         {
            this.§2W§.dispose();
            this.§2W§ = null;
            this.§<7§ = this.§5F§;
            this.§5F§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
