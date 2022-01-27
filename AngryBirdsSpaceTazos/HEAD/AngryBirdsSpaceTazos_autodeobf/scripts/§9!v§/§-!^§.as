package §9!v§
{
   import §%!P§.§;"H§;
   import §1z§.§^!@§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §-!^§ extends EventDispatcher
   {
       
      
      private var §4F§:String = "";
      
      private var §6!]§:String;
      
      private var §`^§:Dictionary;
      
      private var §!!6§:Vector.<String>;
      
      private var §["%§:String = null;
      
      private var §7!V§:String = null;
      
      private var §9!f§:Array;
      
      private var §0!V§:String = null;
      
      private var § "?§:Array;
      
      private var §>!S§:Array;
      
      private var § !Q§:Boolean;
      
      private var §>!y§:String = null;
      
      private var §@!;§:Array;
      
      private var §[@§:URLLoader;
      
      protected var §+!h§:§;"H§;
      
      protected var §@k§:§6a§;
      
      protected var §#"=§:§^!@§;
      
      protected var §5k§:Vector.<§6a§>;
      
      private var §'!$§:String = "pak";
      
      private var §%s§:Boolean = true;
      
      private var §'""§:int = 1;
      
      public function §-!^§(param1:String, param2:String, param3:§^!@§, param4:Boolean = true, param5:int = 1)
      {
         this.§`^§ = new Dictionary();
         this.§!!6§ = new Vector.<String>();
         this.§9!f§ = [];
         this.§ "?§ = [];
         this.§>!S§ = [];
         this.§@!;§ = [];
         this.§5k§ = new Vector.<§6a§>();
         super();
         this.§4F§ = param2;
         this.§6!]§ = param1;
         this.§#"=§ = param3;
         this.§%s§ = param4;
         this.§'""§ = Math.max(1,param5);
      }
      
      public function get textureManager() : §6a§
      {
         return this.§@k§;
      }
      
      private function §5c§(param1:String) : Boolean
      {
         var _loc3_:§6a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5k§.length)
         {
            _loc3_ = this.§5k§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§@k§ = _loc3_;
               this.§["%§ = param1;
               this.§5k§.splice(_loc2_,1);
               this.§5k§.unshift(this.§@k§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#!H§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§`^§[param1] != null;
      }
      
      public function §99§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§#!H§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §?">§(param1:String, param2:Array = null) : void
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
         if(this.§4"6§())
         {
            if(!this.§ "#§())
            {
               this.§>!y§ = param1;
               this.§@!;§ = param2.concat();
               return;
            }
         }
         this.§7!V§ = param1;
         if(this.§99§(param2))
         {
            this.§5c§(param1);
            if(param1 == this.§["%§ || !this.§%s§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§";§(param2);
            }
         }
         else
         {
            this.§!!B§(param2);
         }
      }
      
      private function §,!c§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§>!S§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§#!H§(_loc2_))
            {
               this.§>!S§.push(_loc2_);
            }
         }
      }
      
      private function §!!B§(param1:Array) : void
      {
         this.§9!f§ = param1.concat();
         this.§,!c§(param1);
         this.§["G§();
      }
      
      private function §["G§() : Boolean
      {
         if(this.§>!S§.length == 0)
         {
            this.§0!V§ = null;
            return false;
         }
         this.§0!V§ = this.§>!S§.pop();
         var _loc1_:String = "";
         if(this.§4F§ != null && this.§4F§.length > 0)
         {
            _loc1_ = "?version=" + this.§4F§;
         }
         this.§[@§ = new URLLoader();
         this.§[@§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§[@§.addEventListener(Event.COMPLETE,this.§]A§);
         this.§[@§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"?§);
         this.§[@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"?§);
         this.§[@§.load(new URLRequest(this.§6!]§ + "packages/" + this.§0!V§ + "." + this.§'!$§ + _loc1_));
         return true;
      }
      
      private function §4"6§() : Boolean
      {
         return this.§[@§ || this.§ !Q§;
      }
      
      private function § "#§() : Boolean
      {
         if(this.§[@§)
         {
            this.§[@§.removeEventListener(Event.COMPLETE,this.§]A§);
            this.§[@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"?§);
            this.§[@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"?§);
            try
            {
               this.§[@§.close();
            }
            catch(e:Error)
            {
            }
            this.§[@§ = null;
         }
         if(this.§ !Q§)
         {
            return false;
         }
         return true;
      }
      
      private function §]A§(param1:Event) : void
      {
         this.§[@§.removeEventListener(Event.COMPLETE,this.§]A§);
         this.§[@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"?§);
         this.§[@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"?§);
         this.§`^§[this.§0!V§] = this.§[@§.data;
         this.§[@§ = null;
         if(!this.§["G§())
         {
            this.§";§(this.§9!f§);
         }
      }
      
      private function §4"?§(param1:Event) : void
      {
         this.§[@§.removeEventListener(Event.COMPLETE,this.§]A§);
         this.§[@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"?§);
         this.§[@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"?§);
         this.§[@§.close();
         this.§[@§ = null;
         this.§7!V§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageManager() : §;"H§
      {
         return new §;"H§(this.§#"=§);
      }
      
      private function §";§(param1:Array) : void
      {
         var _loc2_:§6a§ = null;
         this.§ !Q§ = true;
         while(this.§5k§.length >= this.§'""§)
         {
            _loc2_ = this.§5k§.pop();
            _loc2_.dispose();
         }
         if(this.§+!h§)
         {
            this.§+!h§.dispose();
         }
         this.§@k§ = new §6a§(this.§7!V§);
         this.§5k§.unshift(this.§@k§);
         this.§+!h§ = this.initPackageManager();
         this.§ "?§ = param1.concat();
         this.§;!&§();
      }
      
      private function §;!&§() : Boolean
      {
         if(this.§ "?§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§ "?§.pop();
         this.§+!h§.addEventListener(Event.COMPLETE,this.§`$§);
         var _loc2_:* = this.§!!6§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§!!6§.push(_loc1_);
         }
         this.§+!h§.§'l§(this.§`^§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §`$§(param1:Event) : void
      {
         this.§ !Q§ = false;
         this.§+!h§.removeEventListener(Event.COMPLETE,this.§`$§);
         if(this.§>!y§)
         {
            this.§?">§(this.§>!y§,this.§@!;§);
            this.§>!y§ = null;
            this.§@!;§ = null;
            return;
         }
         if(this.§;!&§())
         {
            return;
         }
         var _loc2_:int = this.§+!h§.§6@§.§&",§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@k§.§<%§(this.§+!h§.§6@§.§7#§(_loc3_),0);
            _loc3_++;
         }
         this.§!m§();
      }
      
      public function §!m§() : void
      {
         if(this.§4"6§() || this.§+!h§ == null)
         {
            return;
         }
         this.§@k§.removeEventListener(Event.INIT,this.§["1§);
         if(this.§@k§.§!m§())
         {
            this.§6!K§();
         }
         else
         {
            this.§@k§.addEventListener(Event.INIT,this.§["1§);
         }
      }
      
      private function §6!K§() : void
      {
         this.§+!h§.dispose();
         this.§+!h§ = null;
         this.§["%§ = this.§7!V§;
         this.§7!V§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §["1§(param1:Event) : void
      {
         this.§6!K§();
      }
   }
}
