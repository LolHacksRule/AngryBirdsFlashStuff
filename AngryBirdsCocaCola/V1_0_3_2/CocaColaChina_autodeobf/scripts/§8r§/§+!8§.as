package §8r§
{
   import §1Q§.§`![§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §+!8§ extends EventDispatcher
   {
       
      
      private var §<_§:String = "";
      
      private var §2!"§:String;
      
      private var §5!Z§:URLLoader;
      
      private var §!5§:Dictionary;
      
      private var §else§:String = null;
      
      private var §<!D§:String = null;
      
      private var §0R§:String = null;
      
      private var §<!"§:Boolean;
      
      private var §'q§:§`![§;
      
      private var § u§:§@V§;
      
      private var §0k§:Vector.<§@V§>;
      
      private var §^;§:String = "pak";
      
      private var §^P§:Boolean = true;
      
      private var § ![§:int = 1;
      
      public function §+!8§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§!5§ = new Dictionary();
         this.§0k§ = new Vector.<§@V§>();
         super();
         this.§<_§ = param2;
         this.§2!"§ = param1;
         this.§^P§ = param3;
         this.§ ![§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §@V§
      {
         return this.§ u§;
      }
      
      public function §?K§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§!5§[param1] != null;
      }
      
      private function §;R§(param1:String) : Boolean
      {
         var _loc3_:§@V§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0k§.length)
         {
            _loc3_ = this.§0k§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§ u§ = _loc3_;
               this.§else§ = param1;
               this.§0k§.splice(_loc2_,1);
               this.§0k§.unshift(this.§ u§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!6§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§+!4§())
         {
            if(!this.§ !]§())
            {
               this.§0R§ = param1;
               return;
            }
         }
         if(this.§?K§(param1))
         {
            this.§;R§(param1);
            if(param1 == this.§else§ || !this.§^P§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§8!8§(param1,false);
            }
         }
         else
         {
            this.§"?§(param1);
         }
      }
      
      private function §"?§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§<_§ != null && this.§<_§.length > 0)
         {
            _loc2_ = "?version=" + this.§<_§;
         }
         this.§<!D§ = param1;
         this.§5!Z§ = new URLLoader();
         this.§5!Z§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§5!Z§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§#A§);
         this.§5!Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#A§);
         this.§5!Z§.load(new URLRequest(this.§2!"§ + "packages/" + param1 + "." + this.§^;§ + _loc2_));
      }
      
      private function §+!4§() : Boolean
      {
         return this.§5!Z§ || this.§<!"§;
      }
      
      private function § !]§() : Boolean
      {
         if(this.§5!Z§)
         {
            this.§5!Z§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#A§);
            this.§5!Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#A§);
            this.§5!Z§.close();
            this.§5!Z§ = null;
         }
         if(this.§<!"§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§5!Z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#A§);
         this.§5!Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#A§);
         this.§!5§[this.§<!D§] = this.§5!Z§.data;
         this.§5!Z§ = null;
         this.§8!8§(this.§<!D§,true);
      }
      
      private function §8!8§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§@V§ = null;
         this.§<!"§ = true;
         this.§<!D§ = param1;
         while(this.§0k§.length >= this.§ ![§)
         {
            _loc3_ = this.§0k§.pop();
            _loc3_.dispose();
         }
         if(this.§'q§)
         {
            this.§'q§.dispose();
         }
         this.§ u§ = new §@V§(param1);
         this.§0k§.unshift(this.§ u§);
         this.§'q§ = new §`![§();
         this.§'q§.addEventListener(Event.COMPLETE,this.§7!#§);
         this.§'q§.§[_§(this.§!5§[this.§<!D§],param2);
      }
      
      private function §#A§(param1:Event) : void
      {
         this.§5!Z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#A§);
         this.§5!Z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#A§);
         this.§5!Z§.close();
         this.§5!Z§ = null;
         this.§<!D§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §7!#§(param1:Event) : void
      {
         this.§<!"§ = false;
         this.§'q§.removeEventListener(Event.COMPLETE,this.§7!#§);
         if(this.§0R§)
         {
            this.§=!6§(this.§0R§);
            this.§0R§ = null;
            return;
         }
         var _loc2_:int = this.§'q§.§^!P§.§8!@§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ u§.§3p§(this.§'q§.§^!P§.§6!R§(_loc3_));
            _loc3_++;
         }
         this.§[X§();
      }
      
      public function §[X§() : void
      {
         if(this.§+!4§() || this.§'q§ == null)
         {
            return;
         }
         if(this.§ u§.§[X§())
         {
            this.§'q§.dispose();
            this.§'q§ = null;
            this.§else§ = this.§<!D§;
            this.§<!D§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
