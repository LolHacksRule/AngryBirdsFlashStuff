package §8o§
{
   import §""%§.§"!@§;
   import §;!0§.;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §^!L§ extends EventDispatcher
   {
       
      
      private var §5F§:String = "";
      
      private var §6!Y§:String;
      
      private var §"!9§:Dictionary;
      
      private var §9!k§:Vector.<String>;
      
      private var §6" §:String = null;
      
      private var §`a§:String = null;
      
      private var §4!M§:Array;
      
      private var §'!C§:String = null;
      
      private var §"4§:Array;
      
      private var § case§:Array;
      
      private var §0!q§:Boolean;
      
      private var §2R§:String = null;
      
      private var §+!a§:Array;
      
      private var §+!2§:URLLoader;
      
      protected var §!!$§:§"!@§;
      
      protected var §3'§:§5"%§;
      
      protected var §,W§:§#2§;
      
      protected var §"!#§:Vector.<§5"%§>;
      
      private var §-!e§:String = "pak";
      
      private var §@!`§:Boolean = true;
      
      private var §!-§:int = 1;
      
      public function §^!L§(param1:String, param2:String, param3:§#2§, param4:Boolean = true, param5:int = 1)
      {
         this.§"!9§ = new Dictionary();
         this.§9!k§ = new Vector.<String>();
         this.§4!M§ = [];
         this.§"4§ = [];
         this.§ case§ = [];
         this.§+!a§ = [];
         this.§"!#§ = new Vector.<§5"%§>();
         super();
         this.§5F§ = param2;
         this.§6!Y§ = param1;
         this.§,W§ = param3;
         this.§@!`§ = param4;
         this.§!-§ = Math.max(1,param5);
      }
      
      public function get textureManager() : §5"%§
      {
         return this.§3'§;
      }
      
      private function §%"!§(param1:String) : Boolean
      {
         var _loc3_:§5"%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!#§.length)
         {
            _loc3_ = this.§"!#§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§3'§ = _loc3_;
               this.§6" § = param1;
               this.§"!#§.splice(_loc2_,1);
               this.§"!#§.unshift(this.§3'§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6!0§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§"!9§[param1] != null;
      }
      
      public function §6!"§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§6!0§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §5m§(param1:String, param2:Array = null) : void
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
         if(this.§#L§())
         {
            if(!this.§@!0§())
            {
               this.§2R§ = param1;
               this.§+!a§ = param2.concat();
               return;
            }
         }
         this.§`a§ = param1;
         if(this.§6!"§(param2))
         {
            this.§%"!§(param1);
            if(param1 == this.§6" § || !this.§@!`§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§'!K§(param2);
            }
         }
         else
         {
            this.§2!,§(param2);
         }
      }
      
      private function §?!f§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§ case§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§6!0§(_loc2_))
            {
               this.§ case§.push(_loc2_);
            }
         }
      }
      
      private function §2!,§(param1:Array) : void
      {
         this.§4!M§ = param1.concat();
         this.§?!f§(param1);
         this.§^D§();
      }
      
      private function §^D§() : Boolean
      {
         if(this.§ case§.length == 0)
         {
            this.§'!C§ = null;
            return false;
         }
         this.§'!C§ = this.§ case§.pop();
         var _loc1_:String = "";
         if(this.§5F§ != null && this.§5F§.length > 0)
         {
            _loc1_ = "?version=" + this.§5F§;
         }
         this.§+!2§ = new URLLoader();
         this.§+!2§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+!2§.addEventListener(Event.COMPLETE,this.§^9§);
         this.§+!2§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!6§);
         this.§+!2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!6§);
         this.§+!2§.load(new URLRequest(this.§6!Y§ + "packages/" + this.§'!C§ + "." + this.§-!e§ + _loc1_));
         return true;
      }
      
      private function §#L§() : Boolean
      {
         return this.§+!2§ || this.§0!q§;
      }
      
      private function §@!0§() : Boolean
      {
         if(this.§+!2§)
         {
            this.§+!2§.removeEventListener(Event.COMPLETE,this.§^9§);
            this.§+!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!6§);
            this.§+!2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!6§);
            try
            {
               this.§+!2§.close();
            }
            catch(e:Error)
            {
            }
            this.§+!2§ = null;
         }
         if(this.§0!q§)
         {
            return false;
         }
         return true;
      }
      
      private function §^9§(param1:Event) : void
      {
         this.§+!2§.removeEventListener(Event.COMPLETE,this.§^9§);
         this.§+!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!6§);
         this.§+!2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!6§);
         this.§"!9§[this.§'!C§] = this.§+!2§.data;
         this.§+!2§ = null;
         if(!this.§^D§())
         {
            this.§'!K§(this.§4!M§);
         }
      }
      
      private function §=!6§(param1:Event) : void
      {
         this.§+!2§.removeEventListener(Event.COMPLETE,this.§^9§);
         this.§+!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!6§);
         this.§+!2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!6§);
         this.§+!2§.close();
         this.§+!2§ = null;
         this.§`a§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageManager() : §"!@§
      {
         return new §"!@§(this.§,W§);
      }
      
      private function §'!K§(param1:Array) : void
      {
         var _loc2_:§5"%§ = null;
         this.§0!q§ = true;
         while(this.§"!#§.length >= this.§!-§)
         {
            _loc2_ = this.§"!#§.pop();
            _loc2_.dispose();
         }
         if(this.§!!$§)
         {
            this.§!!$§.dispose();
         }
         this.§3'§ = new §5"%§(this.§`a§);
         this.§"!#§.unshift(this.§3'§);
         this.§!!$§ = this.initPackageManager();
         this.§"4§ = param1.concat();
         this.§"Z§();
      }
      
      private function §"Z§() : Boolean
      {
         if(this.§"4§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§"4§.pop();
         this.§!!$§.addEventListener(Event.COMPLETE,this.§'r§);
         var _loc2_:* = this.§9!k§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§9!k§.push(_loc1_);
         }
         this.§!!$§.§1!r§(this.§"!9§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §'r§(param1:Event) : void
      {
         this.§0!q§ = false;
         this.§!!$§.removeEventListener(Event.COMPLETE,this.§'r§);
         if(this.§2R§)
         {
            this.§5m§(this.§2R§,this.§+!a§);
            this.§2R§ = null;
            this.§+!a§ = null;
            return;
         }
         if(this.§"Z§())
         {
            return;
         }
         var _loc2_:int = this.§!!$§.§%5§.§<!3§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3'§.§8#§(this.§!!$§.§%5§.§,!;§(_loc3_),0);
            _loc3_++;
         }
         this.§""=§();
      }
      
      public function §""=§() : void
      {
         if(this.§#L§() || this.§!!$§ == null)
         {
            return;
         }
         if(this.§3'§.§""=§())
         {
            this.§!!$§.dispose();
            this.§!!$§ = null;
            this.§6" § = this.§`a§;
            this.§`a§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
