package §9!2§
{
   import §!!@§.§,A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §!v§ extends EventDispatcher
   {
       
      
      private var §02§:String = "";
      
      private var §9v§:String;
      
      private var §1R§:URLLoader;
      
      private var §-r§:Dictionary;
      
      private var §1h§:String = null;
      
      private var §97§:String = null;
      
      private var §@?§:String = null;
      
      private var §3m§:Boolean;
      
      private var §7!X§:§,A§;
      
      private var §5-§:§'![§;
      
      private var §3,§:Vector.<§'![§>;
      
      private var §>!X§:String = "pak";
      
      private var §9[§:Boolean = true;
      
      private var §4A§:int = 1;
      
      public function §!v§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§-r§ = new Dictionary();
         this.§3,§ = new Vector.<§'![§>();
         super();
         this.§02§ = param2;
         this.§9v§ = param1;
         this.§9[§ = param3;
         this.§4A§ = Math.max(1,param4);
      }
      
      public function get §2!#§() : §'![§
      {
         return this.§5-§;
      }
      
      public function §'`§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§-r§[param1] != null;
      }
      
      private function §^!+§(param1:String) : Boolean
      {
         var _loc3_:§'![§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3,§.length)
         {
            _loc3_ = this.§3,§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§5-§ = _loc3_;
               this.§1h§ = param1;
               this.§3,§.splice(_loc2_,1);
               this.§3,§.unshift(this.§5-§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^#§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§;e§())
         {
            if(!this.§&h§())
            {
               this.§@?§ = param1;
               return;
            }
         }
         if(this.§'`§(param1))
         {
            this.§^!+§(param1);
            if(param1 == this.§1h§ || !this.§9[§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§7w§(param1,false);
            }
         }
         else
         {
            this.§'#§(param1);
         }
      }
      
      private function §'#§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§02§ != null && this.§02§.length > 0)
         {
            _loc2_ = "?version=" + this.§02§;
         }
         this.§97§ = param1;
         this.§1R§ = new URLLoader();
         this.§1R§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§1R§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§1R§.addEventListener(IOErrorEvent.IO_ERROR,this.§`G§);
         this.§1R§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`G§);
         this.§1R§.load(new URLRequest(this.§9v§ + "packages/" + param1 + "." + this.§>!X§ + _loc2_));
      }
      
      private function §;e§() : Boolean
      {
         return this.§1R§ || this.§3m§;
      }
      
      private function §&h§() : Boolean
      {
         if(this.§1R§)
         {
            this.§1R§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§1R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`G§);
            this.§1R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`G§);
            this.§1R§.close();
            this.§1R§ = null;
         }
         if(this.§3m§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§1R§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§1R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`G§);
         this.§1R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`G§);
         this.§-r§[this.§97§] = this.§1R§.data;
         this.§1R§ = null;
         this.§7w§(this.§97§,true);
      }
      
      private function §7w§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§'![§ = null;
         this.§3m§ = true;
         this.§97§ = param1;
         while(this.§3,§.length >= this.§4A§)
         {
            _loc3_ = this.§3,§.pop();
            _loc3_.dispose();
         }
         if(this.§7!X§)
         {
            this.§7!X§.dispose();
         }
         this.§5-§ = new §'![§(param1);
         this.§3,§.unshift(this.§5-§);
         this.§7!X§ = new §,A§();
         this.§7!X§.addEventListener(Event.COMPLETE,this.§]!N§);
         this.§7!X§.§#$§(this.§-r§[this.§97§],param2);
      }
      
      private function §`G§(param1:Event) : void
      {
         this.§1R§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§1R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`G§);
         this.§1R§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`G§);
         this.§1R§.close();
         this.§1R§ = null;
         this.§97§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]!N§(param1:Event) : void
      {
         this.§3m§ = false;
         this.§7!X§.removeEventListener(Event.COMPLETE,this.§]!N§);
         if(this.§@?§)
         {
            this.§^#§(this.§@?§);
            this.§@?§ = null;
            return;
         }
         var _loc2_:int = this.§7!X§.§6_§.§[Y§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§5-§.§?n§(this.§7!X§.§6_§.§]!1§(_loc3_));
            _loc3_++;
         }
         this.§-!_§();
      }
      
      public function §-!_§() : void
      {
         if(this.§;e§() || this.§7!X§ == null)
         {
            return;
         }
         if(this.§5-§.§-!_§())
         {
            this.§7!X§.dispose();
            this.§7!X§ = null;
            this.§1h§ = this.§97§;
            this.§97§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
