package §<v§
{
   import §0!_§.*;
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
       
      
      private var §#8§:String = "";
      
      private var §6"4§:String;
      
      private var §1!i§:Dictionary;
      
      private var §>R§:Vector.<String>;
      
      private var §9_§:String = null;
      
      private var §5!h§:String = null;
      
      private var §^?§:Array;
      
      private var §`!A§:String = null;
      
      private var § "3§:Array;
      
      private var §3!v§:Array;
      
      private var §="-§:Boolean;
      
      private var §6!?§:String = null;
      
      private var §1+§:Array;
      
      private var §`Q§:URLLoader;
      
      protected var §""7§:§0!k§;
      
      protected var §=!Q§:§!!G§;
      
      protected var §,v§:Vector.<§!!G§>;
      
      private var §=3§:String = "pak";
      
      private var §,m§:Boolean = true;
      
      private var § Q§:int = 1;
      
      public function §0f§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§1!i§ = new Dictionary();
         this.§>R§ = new Vector.<String>();
         this.§^?§ = [];
         this.§ "3§ = [];
         this.§3!v§ = [];
         this.§1+§ = [];
         this.§,v§ = new Vector.<§!!G§>();
         super();
         this.§#8§ = param2;
         this.§6"4§ = param1;
         this.§,m§ = param3;
         this.§ Q§ = Math.max(1,param4);
      }
      
      public function get §^!§() : §!!G§
      {
         return this.§=!Q§;
      }
      
      private function §^l§(param1:String) : Boolean
      {
         var _loc3_:§!!G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,v§.length)
         {
            _loc3_ = this.§,v§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§=!Q§ = _loc3_;
               this.§9_§ = param1;
               this.§,v§.splice(_loc2_,1);
               this.§,v§.unshift(this.§=!Q§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §%!r§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§1!i§[param1] != null;
      }
      
      public function §>%§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§%!r§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function loadContent(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.§9l§())
         {
            if(!this.§1!#§())
            {
               this.§6!?§ = param1;
               this.§1+§ = param2.concat();
               return;
            }
         }
         this.§5!h§ = param1;
         if(this.§>%§(param2))
         {
            this.§^l§(param1);
            if(param1 == this.§9_§ || !this.§,m§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§>u§(param2);
            }
         }
         else
         {
            this.§2j§(param2);
         }
      }
      
      private function §4!h§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§3!v§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§%!r§(_loc2_))
            {
               this.§3!v§.push(_loc2_);
            }
         }
      }
      
      private function §2j§(param1:Array) : void
      {
         this.§^?§ = param1.concat();
         this.§4!h§(param1);
         this.§ "5§();
      }
      
      private function § "5§() : Boolean
      {
         if(this.§3!v§.length == 0)
         {
            this.§`!A§ = null;
            return false;
         }
         this.§`!A§ = this.§3!v§.pop();
         var _loc1_:String = "";
         if(this.§#8§ != null && this.§#8§.length > 0)
         {
            _loc1_ = "?version=" + this.§#8§;
         }
         this.§`Q§ = new URLLoader();
         this.§`Q§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§`Q§.addEventListener(Event.COMPLETE,this.§]!a§);
         this.§`Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§3!,§);
         this.§`Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!,§);
         var _loc2_:String = this.§@!L§(this.§`!A§);
         this.§`Q§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §@!L§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§=3§;
      }
      
      private function §9l§() : Boolean
      {
         return this.§`Q§ || this.§="-§;
      }
      
      private function §1!#§() : Boolean
      {
         if(this.§`Q§)
         {
            this.§`Q§.removeEventListener(Event.COMPLETE,this.§]!a§);
            this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3!,§);
            this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!,§);
            try
            {
               this.§`Q§.close();
            }
            catch(e:Error)
            {
            }
            this.§`Q§ = null;
         }
         if(this.§="-§)
         {
            return false;
         }
         return true;
      }
      
      private function §]!a§(param1:Event) : void
      {
         this.§`Q§.removeEventListener(Event.COMPLETE,this.§]!a§);
         this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3!,§);
         this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!,§);
         this.§1!i§[this.§`!A§] = this.§`Q§.data;
         this.§`Q§ = null;
         if(!this.§ "5§())
         {
            this.§>u§(this.§^?§);
         }
      }
      
      private function §3!,§(param1:Event) : void
      {
         this.§`Q§.removeEventListener(Event.COMPLETE,this.§]!a§);
         this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3!,§);
         this.§`Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3!,§);
         this.§`Q§.close();
         this.§`Q§ = null;
         this.§5!h§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §0!k§
      {
         return new §0!k§();
      }
      
      private function §>u§(param1:Array) : void
      {
         var _loc2_:§!!G§ = null;
         this.§="-§ = true;
         while(this.§,v§.length >= this.§ Q§)
         {
            _loc2_ = this.§,v§.pop();
            _loc2_.dispose();
         }
         if(this.§""7§)
         {
            this.§""7§.dispose();
         }
         this.§=!Q§ = new §!!G§(this.§5!h§);
         this.§,v§.unshift(this.§=!Q§);
         this.§""7§ = this.initPackageLoader();
         this.§ "3§ = param1.concat();
         this.§6!u§();
      }
      
      private function §6!u§() : Boolean
      {
         if(this.§ "3§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§ "3§.pop();
         this.§""7§.addEventListener(Event.COMPLETE,this.§'!T§);
         var _loc2_:* = this.§>R§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§>R§.push(_loc1_);
         }
         this.§""7§.§`!X§(this.§1!i§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §'!T§(param1:Event) : void
      {
         this.§="-§ = false;
         this.§""7§.removeEventListener(Event.COMPLETE,this.§'!T§);
         if(this.§6!?§)
         {
            this.loadContent(this.§6!?§,this.§1+§);
            this.§6!?§ = null;
            this.§1+§ = null;
            return;
         }
         if(this.§6!u§())
         {
            return;
         }
         var _loc2_:int = this.§""7§.§'8§.§ "#§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=!Q§.§'W§(this.§""7§.§'8§.§[!9§(_loc3_),0);
            _loc3_++;
         }
         this.§9Q§();
      }
      
      public function §9Q§() : void
      {
         if(this.§9l§() || this.§""7§ == null)
         {
            return;
         }
         this.§=!Q§.removeEventListener(Event.INIT,this.§`X§);
         if(this.§=!Q§.§9Q§())
         {
            this.§?=§();
         }
         else
         {
            this.§=!Q§.addEventListener(Event.INIT,this.§`X§);
         }
      }
      
      private function §?=§() : void
      {
         this.§""7§.dispose();
         this.§""7§ = null;
         this.§9_§ = this.§5!h§;
         this.§5!h§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §`X§(param1:Event) : void
      {
         this.§?=§();
      }
   }
}
