package §=0§
{
   import §#!N§.§ ![§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>>§ extends EventDispatcher
   {
       
      
      private var §#K§:String = "";
      
      private var §`!=§:String;
      
      private var §>!#§:URLLoader;
      
      private var §9,§:Dictionary;
      
      private var §3t§:String = null;
      
      private var §[D§:String = null;
      
      private var §>C§:String = null;
      
      private var §?!%§:Boolean;
      
      private var §93§:§ ![§;
      
      private var §<!P§:§>O§;
      
      private var §0g§:Vector.<§>O§>;
      
      private var §%@§:String = "pak";
      
      private var §%_§:Boolean = true;
      
      private var §+>§:int = 1;
      
      public function §>>§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§9,§ = new Dictionary();
         this.§0g§ = new Vector.<§>O§>();
         super();
         this.§#K§ = param2;
         this.§`!=§ = param1;
         this.§%_§ = param3;
         this.§+>§ = Math.max(1,param4);
      }
      
      public function get §!c§() : §>O§
      {
         return this.§<!P§;
      }
      
      public function §#!B§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§9,§[param1] != null;
      }
      
      private function §;!U§(param1:String) : Boolean
      {
         var _loc3_:§>O§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0g§.length)
         {
            _loc3_ = this.§0g§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§<!P§ = _loc3_;
               this.§3t§ = param1;
               this.§0g§.splice(_loc2_,1);
               this.§0g§.unshift(this.§<!P§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §>!`§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9o§())
         {
            if(!this.§=F§())
            {
               this.§>C§ = param1;
               return;
            }
         }
         if(this.§#!B§(param1))
         {
            this.§;!U§(param1);
            if(param1 == this.§3t§ || !this.§%_§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"l§(param1,false);
            }
         }
         else
         {
            this.§!!R§(param1);
         }
      }
      
      private function §!!R§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§#K§ != null && this.§#K§.length > 0)
         {
            _loc2_ = "?version=" + this.§#K§;
         }
         this.§[D§ = param1;
         this.§>!#§ = new URLLoader();
         this.§>!#§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§>!#§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>!#§.addEventListener(IOErrorEvent.IO_ERROR,this.§#"§);
         this.§>!#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"§);
         this.§>!#§.load(new URLRequest(this.§`!=§ + "packages/" + param1 + "." + this.§%@§ + _loc2_));
      }
      
      private function §9o§() : Boolean
      {
         return this.§>!#§ || this.§?!%§;
      }
      
      private function §=F§() : Boolean
      {
         if(this.§>!#§)
         {
            this.§>!#§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"§);
            this.§>!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"§);
            this.§>!#§.close();
            this.§>!#§ = null;
         }
         if(this.§?!%§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>!#§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"§);
         this.§>!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"§);
         this.§9,§[this.§[D§] = this.§>!#§.data;
         this.§>!#§ = null;
         this.§"l§(this.§[D§,true);
      }
      
      private function §"l§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§>O§ = null;
         this.§?!%§ = true;
         this.§[D§ = param1;
         while(this.§0g§.length >= this.§+>§)
         {
            _loc3_ = this.§0g§.pop();
            _loc3_.dispose();
         }
         if(this.§93§)
         {
            this.§93§.dispose();
         }
         this.§<!P§ = new §>O§(param1);
         this.§0g§.unshift(this.§<!P§);
         this.§93§ = new § ![§();
         this.§93§.addEventListener(Event.COMPLETE,this.§6"§);
         this.§93§.§?P§(this.§9,§[this.§[D§],param2);
      }
      
      private function §#"§(param1:Event) : void
      {
         this.§>!#§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"§);
         this.§>!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"§);
         this.§>!#§.close();
         this.§>!#§ = null;
         this.§[D§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §6"§(param1:Event) : void
      {
         this.§?!%§ = false;
         this.§93§.removeEventListener(Event.COMPLETE,this.§6"§);
         if(this.§>C§)
         {
            this.§>!`§(this.§>C§);
            this.§>C§ = null;
            return;
         }
         var _loc2_:int = this.§93§.§ C§.§finally§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§<!P§.§"e§(this.§93§.§ C§.§5v§(_loc3_));
            _loc3_++;
         }
         this.§'6§();
      }
      
      public function §'6§() : void
      {
         if(this.§9o§() || this.§93§ == null)
         {
            return;
         }
         if(this.§<!P§.§'6§())
         {
            this.§93§.dispose();
            this.§93§ = null;
            this.§3t§ = this.§[D§;
            this.§[D§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
