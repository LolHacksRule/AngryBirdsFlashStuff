package §-!b§
{
   import § !T§.§ q§;
   import §?!v§.§ "4§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §0!D§ extends EventDispatcher
   {
       
      
      private var §get §:String = "";
      
      protected var §4u§:String;
      
      private var §8`§:Dictionary;
      
      private var §'!n§:Vector.<String>;
      
      private var §9"3§:String = null;
      
      private var §3!6§:String = null;
      
      private var §;!E§:Array;
      
      private var §6u§:String = null;
      
      private var §`R§:Array;
      
      private var §;!C§:Array;
      
      private var § <§:Boolean;
      
      private var §^2§:String = null;
      
      private var §<0§:Array;
      
      private var §0^§:URLLoader;
      
      protected var §5!q§:§ "4§;
      
      protected var §@=§:§[E§;
      
      protected var §="4§:§ q§;
      
      protected var §`!2§:Vector.<§[E§>;
      
      protected var §]" §:String = "pak";
      
      private var §+!I§:Boolean = true;
      
      private var §""!§:int = 1;
      
      public function §0!D§(param1:String, param2:String, param3:§ q§, param4:Boolean = true, param5:int = 1)
      {
         this.§8`§ = new Dictionary();
         this.§'!n§ = new Vector.<String>();
         this.§;!E§ = [];
         this.§`R§ = [];
         this.§;!C§ = [];
         this.§<0§ = [];
         this.§`!2§ = new Vector.<§[E§>();
         super();
         this.§get § = param2;
         this.§4u§ = param1;
         this.§="4§ = param3;
         this.§+!I§ = param4;
         this.§""!§ = Math.max(1,param5);
      }
      
      public function get §0p§() : §[E§
      {
         return this.§@=§;
      }
      
      private function §?C§(param1:String) : Boolean
      {
         var _loc3_:§[E§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!2§.length)
         {
            _loc3_ = this.§`!2§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§@=§ = _loc3_;
               this.§9"3§ = param1;
               this.§`!2§.splice(_loc2_,1);
               this.§`!2§.unshift(this.§@=§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § P§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§8`§[param1] != null;
      }
      
      public function §1Z§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§ P§(_loc2_))
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
         if(this.§%3§())
         {
            if(!this.§&o§())
            {
               this.§^2§ = param1;
               this.§<0§ = param2.concat();
               return;
            }
         }
         this.§3!6§ = param1;
         if(this.§1Z§(param2))
         {
            this.§?C§(param1);
            if(param1 == this.§9"3§ || !this.§+!I§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§7P§(param2);
            }
         }
         else
         {
            this.override(param2);
         }
      }
      
      private function §+!m§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§;!C§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§ P§(_loc2_))
            {
               this.§;!C§.push(_loc2_);
            }
         }
      }
      
      private function override(param1:Array) : void
      {
         this.§;!E§ = param1.concat();
         this.§+!m§(param1);
         this.§[!l§();
      }
      
      private function §[!l§() : Boolean
      {
         if(this.§;!C§.length == 0)
         {
            this.§6u§ = null;
            return false;
         }
         this.§6u§ = this.§;!C§.pop();
         var _loc1_:String = "";
         if(this.§get § != null && this.§get §.length > 0)
         {
            _loc1_ = "?version=" + this.§get §;
         }
         this.§0^§ = new URLLoader();
         this.§0^§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§0^§.addEventListener(Event.COMPLETE,this.§[O§);
         this.§0^§.addEventListener(IOErrorEvent.IO_ERROR,this.§`C§);
         this.§0^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`C§);
         var _loc2_:String = this.§8!l§(this.§6u§);
         this.§0^§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §8!l§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§]" §;
      }
      
      private function §%3§() : Boolean
      {
         return this.§0^§ || this.§ <§;
      }
      
      private function §&o§() : Boolean
      {
         if(this.§0^§)
         {
            this.§0^§.removeEventListener(Event.COMPLETE,this.§[O§);
            this.§0^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`C§);
            this.§0^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`C§);
            try
            {
               this.§0^§.close();
            }
            catch(e:Error)
            {
            }
            this.§0^§ = null;
         }
         if(this.§ <§)
         {
            return false;
         }
         return true;
      }
      
      private function §[O§(param1:Event) : void
      {
         this.§0^§.removeEventListener(Event.COMPLETE,this.§[O§);
         this.§0^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`C§);
         this.§0^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`C§);
         this.§8`§[this.§6u§] = this.§0^§.data;
         this.§0^§ = null;
         if(!this.§[!l§())
         {
            this.§7P§(this.§;!E§);
         }
      }
      
      private function §`C§(param1:Event) : void
      {
         this.§0^§.removeEventListener(Event.COMPLETE,this.§[O§);
         this.§0^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`C§);
         this.§0^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`C§);
         this.§0^§.close();
         this.§0^§ = null;
         this.§3!6§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function §<!J§() : § "4§
      {
         return new § "4§(this.§="4§);
      }
      
      private function §7P§(param1:Array) : void
      {
         var _loc2_:§[E§ = null;
         this.§ <§ = true;
         while(this.§`!2§.length >= this.§""!§)
         {
            _loc2_ = this.§`!2§.pop();
            _loc2_.dispose();
         }
         if(this.§5!q§)
         {
            this.§5!q§.dispose();
         }
         this.§@=§ = new §[E§(this.§3!6§);
         this.§`!2§.unshift(this.§@=§);
         this.§5!q§ = this.§<!J§();
         this.§`R§ = param1.concat();
         this.§8!Y§();
      }
      
      private function §8!Y§() : Boolean
      {
         if(this.§`R§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§`R§.pop();
         this.§5!q§.addEventListener(Event.COMPLETE,this.§<!_§);
         var _loc2_:* = this.§'!n§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§'!n§.push(_loc1_);
         }
         this.§5!q§.§5!s§(this.§8`§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §<!_§(param1:Event) : void
      {
         this.§ <§ = false;
         this.§5!q§.removeEventListener(Event.COMPLETE,this.§<!_§);
         if(this.§^2§)
         {
            this.loadContent(this.§^2§,this.§<0§);
            this.§^2§ = null;
            this.§<0§ = null;
            return;
         }
         if(this.§8!Y§())
         {
            return;
         }
         var _loc2_:int = this.§5!q§.§!!,§.§><§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@=§.§#%§(this.§5!q§.§!!,§.§3P§(_loc3_),0);
            _loc3_++;
         }
         this.§<?§();
      }
      
      public function §<?§() : void
      {
         if(this.§%3§() || this.§5!q§ == null)
         {
            return;
         }
         this.§@=§.removeEventListener(Event.INIT,this.§5!B§);
         if(this.§@=§.§<?§())
         {
            this.§,!5§();
         }
         else
         {
            this.§@=§.addEventListener(Event.INIT,this.§5!B§);
         }
      }
      
      private function §,!5§() : void
      {
         this.§5!q§.dispose();
         this.§5!q§ = null;
         this.§9"3§ = this.§3!6§;
         this.§3!6§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §5!B§(param1:Event) : void
      {
         this.§,!5§();
      }
   }
}
