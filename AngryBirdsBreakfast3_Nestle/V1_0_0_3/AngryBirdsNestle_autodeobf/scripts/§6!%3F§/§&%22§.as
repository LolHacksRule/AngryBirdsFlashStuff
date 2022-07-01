package §6!?§
{
   import §#!`§.§%!w§;
   import §>!a§.§5l§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&"§ extends EventDispatcher
   {
       
      
      private var §2g§:String = "";
      
      protected var §0!T§:String;
      
      private var §8,§:Dictionary;
      
      private var §0!§:Vector.<String>;
      
      private var §2!i§:String = null;
      
      private var §#!%§:String = null;
      
      private var §-j§:Array;
      
      private var §#z§:String = null;
      
      private var §%K§:Array;
      
      private var §4!p§:Array;
      
      private var §;Y§:Boolean;
      
      private var §"S§:String = null;
      
      private var §%!p§:Array;
      
      private var §]!e§:URLLoader;
      
      protected var §7,§:§%!w§;
      
      protected var §#=§:§`!O§;
      
      protected var §^!§:§5l§;
      
      protected var §+!V§:Vector.<§`!O§>;
      
      protected var §`u§:String = "pak";
      
      private var §-[§:Boolean = true;
      
      private var §<t§:int = 1;
      
      public function §&"§(param1:String, param2:String, param3:§5l§, param4:Boolean = true, param5:int = 1)
      {
         this.§8,§ = new Dictionary();
         this.§0!§ = new Vector.<String>();
         this.§-j§ = [];
         this.§%K§ = [];
         this.§4!p§ = [];
         this.§%!p§ = [];
         this.§+!V§ = new Vector.<§`!O§>();
         super();
         this.§2g§ = param2;
         this.§0!T§ = param1;
         this.§^!§ = param3;
         this.§-[§ = param4;
         this.§<t§ = Math.max(1,param5);
      }
      
      public function get §&p§() : §`!O§
      {
         return this.§#=§;
      }
      
      private function §`o§(param1:String) : Boolean
      {
         var _loc3_:§`!O§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!V§.length)
         {
            _loc3_ = this.§+!V§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§#=§ = _loc3_;
               this.§2!i§ = param1;
               this.§+!V§.splice(_loc2_,1);
               this.§+!V§.unshift(this.§#=§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9!^§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§8,§[param1] != null;
      }
      
      public function §]!z§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§9!^§(_loc2_))
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
         if(this.§<!8§())
         {
            if(!this.§=!#§())
            {
               this.§"S§ = param1;
               this.§%!p§ = param2.concat();
               return;
            }
         }
         this.§#!%§ = param1;
         if(this.§]!z§(param2))
         {
            this.§`o§(param1);
            if(param1 == this.§2!i§ || !this.§-[§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§<!N§(param2);
            }
         }
         else
         {
            this.§%H§(param2);
         }
      }
      
      private function §5[§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§4!p§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§9!^§(_loc2_))
            {
               this.§4!p§.push(_loc2_);
            }
         }
      }
      
      private function §%H§(param1:Array) : void
      {
         this.§-j§ = param1.concat();
         this.§5[§(param1);
         this.§^!b§();
      }
      
      private function §^!b§() : Boolean
      {
         if(this.§4!p§.length == 0)
         {
            this.§#z§ = null;
            return false;
         }
         this.§#z§ = this.§4!p§.pop();
         var _loc1_:String = "";
         if(this.§2g§ != null && this.§2g§.length > 0)
         {
            _loc1_ = "?version=" + this.§2g§;
         }
         this.§]!e§ = new URLLoader();
         this.§]!e§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]!e§.addEventListener(Event.COMPLETE,this.§+!y§);
         this.§]!e§.addEventListener(IOErrorEvent.IO_ERROR,this.§0!w§);
         this.§]!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!w§);
         var _loc2_:String = this.§-!B§(this.§#z§);
         this.§]!e§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §-!B§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§`u§;
      }
      
      private function §<!8§() : Boolean
      {
         return this.§]!e§ || this.§;Y§;
      }
      
      private function §=!#§() : Boolean
      {
         if(this.§]!e§)
         {
            this.§]!e§.removeEventListener(Event.COMPLETE,this.§+!y§);
            this.§]!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!w§);
            this.§]!e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!w§);
            try
            {
               this.§]!e§.close();
            }
            catch(e:Error)
            {
            }
            this.§]!e§ = null;
         }
         if(this.§;Y§)
         {
            return false;
         }
         return true;
      }
      
      private function §+!y§(param1:Event) : void
      {
         this.§]!e§.removeEventListener(Event.COMPLETE,this.§+!y§);
         this.§]!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!w§);
         this.§]!e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!w§);
         this.§8,§[this.§#z§] = this.§]!e§.data;
         this.§]!e§ = null;
         if(!this.§^!b§())
         {
            this.§<!N§(this.§-j§);
         }
      }
      
      private function §0!w§(param1:Event) : void
      {
         this.§]!e§.removeEventListener(Event.COMPLETE,this.§+!y§);
         this.§]!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!w§);
         this.§]!e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!w§);
         this.§]!e§.close();
         this.§]!e§ = null;
         this.§#!%§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function §&$§() : §%!w§
      {
         return new §%!w§(this.§^!§);
      }
      
      private function §<!N§(param1:Array) : void
      {
         var _loc2_:§`!O§ = null;
         this.§;Y§ = true;
         while(this.§+!V§.length >= this.§<t§)
         {
            _loc2_ = this.§+!V§.pop();
            _loc2_.dispose();
         }
         if(this.§7,§)
         {
            this.§7,§.dispose();
         }
         this.§#=§ = new §`!O§(this.§#!%§);
         this.§+!V§.unshift(this.§#=§);
         this.§7,§ = this.§&$§();
         this.§%K§ = param1.concat();
         this.§%!A§();
      }
      
      private function §%!A§() : Boolean
      {
         if(this.§%K§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§%K§.pop();
         this.§7,§.addEventListener(Event.COMPLETE,this.§6!R§);
         var _loc2_:* = this.§0!§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§0!§.push(_loc1_);
         }
         this.§7,§.§]R§(this.§8,§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §6!R§(param1:Event) : void
      {
         this.§;Y§ = false;
         this.§7,§.removeEventListener(Event.COMPLETE,this.§6!R§);
         if(this.§"S§)
         {
            this.loadContent(this.§"S§,this.§%!p§);
            this.§"S§ = null;
            this.§%!p§ = null;
            return;
         }
         if(this.§%!A§())
         {
            return;
         }
         var _loc2_:int = this.§7,§.§;"#§.§ #§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§#=§.§'!e§(this.§7,§.§;"#§.§<;§(_loc3_),0);
            _loc3_++;
         }
         this.§3r§();
      }
      
      public function §3r§() : void
      {
         if(this.§<!8§() || this.§7,§ == null)
         {
            return;
         }
         this.§#=§.removeEventListener(Event.INIT,this.§,!>§);
         if(this.§#=§.§3r§())
         {
            this.§6"1§();
         }
         else
         {
            this.§#=§.addEventListener(Event.INIT,this.§,!>§);
         }
      }
      
      private function §6"1§() : void
      {
         this.§7,§.dispose();
         this.§7,§ = null;
         this.§2!i§ = this.§#!%§;
         this.§#!%§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §,!>§(param1:Event) : void
      {
         this.§6"1§();
      }
   }
}
