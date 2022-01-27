package §^e§
{
   import §4",§.§,!j§;
   import §5R§.§0!P§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1"B§ extends EventDispatcher
   {
       
      
      private var §<1§:String = "";
      
      private var §&w§:String;
      
      private var §`-§:Dictionary;
      
      private var §,"!§:Vector.<String>;
      
      private var §]!`§:String = null;
      
      private var §["$§:String = null;
      
      private var §<!`§:Array;
      
      private var §do §:String = null;
      
      private var §!![§:Array;
      
      private var §#!8§:Array;
      
      private var §!!4§:Boolean;
      
      private var §+5§:String = null;
      
      private var §'!4§:Array;
      
      private var §?n§:URLLoader;
      
      protected var §4J§:§0!P§;
      
      protected var §#!v§:§0"1§;
      
      protected var §]m§:§,!j§;
      
      protected var §3g§:Vector.<§0"1§>;
      
      private var § !b§:String = "pak";
      
      private var §^8§:Boolean = true;
      
      private var §[!F§:int = 1;
      
      public function §1"B§(param1:String, param2:String, param3:§,!j§, param4:Boolean = true, param5:int = 1)
      {
         this.§`-§ = new Dictionary();
         this.§,"!§ = new Vector.<String>();
         this.§<!`§ = [];
         this.§!![§ = [];
         this.§#!8§ = [];
         this.§'!4§ = [];
         this.§3g§ = new Vector.<§0"1§>();
         super();
         this.§<1§ = param2;
         this.§&w§ = param1;
         this.§]m§ = param3;
         this.§^8§ = param4;
         this.§[!F§ = Math.max(1,param5);
      }
      
      public function get textureManager() : §0"1§
      {
         return this.§#!v§;
      }
      
      private function §!h§(param1:String) : Boolean
      {
         var _loc3_:§0"1§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3g§.length)
         {
            _loc3_ = this.§3g§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§#!v§ = _loc3_;
               this.§]!`§ = param1;
               this.§3g§.splice(_loc2_,1);
               this.§3g§.unshift(this.§#!v§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&!J§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§`-§[param1] != null;
      }
      
      public function §-!%§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§&!J§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §,'§(param1:String, param2:Array = null) : void
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
         if(this.§`"5§())
         {
            if(!this.§%K§())
            {
               this.§+5§ = param1;
               this.§'!4§ = param2.concat();
               return;
            }
         }
         this.§["$§ = param1;
         if(this.§-!%§(param2))
         {
            this.§!h§(param1);
            if(param1 == this.§]!`§ || !this.§^8§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§'" §(param2);
            }
         }
         else
         {
            this.§7"&§(param2);
         }
      }
      
      private function §3§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§#!8§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§&!J§(_loc2_))
            {
               this.§#!8§.push(_loc2_);
            }
         }
      }
      
      private function §7"&§(param1:Array) : void
      {
         this.§<!`§ = param1.concat();
         this.§3§(param1);
         this.§<!V§();
      }
      
      private function §<!V§() : Boolean
      {
         if(this.§#!8§.length == 0)
         {
            this.§do § = null;
            return false;
         }
         this.§do § = this.§#!8§.pop();
         var _loc1_:String = "";
         if(this.§<1§ != null && this.§<1§.length > 0)
         {
            _loc1_ = "?version=" + this.§<1§;
         }
         this.§?n§ = new URLLoader();
         this.§?n§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§?n§.addEventListener(Event.COMPLETE,this.§[Z§);
         this.§?n§.addEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
         this.§?n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         this.§?n§.load(new URLRequest(this.§&w§ + "packages/" + this.§do § + "." + this.§ !b§ + _loc1_));
         return true;
      }
      
      private function §`"5§() : Boolean
      {
         return this.§?n§ || this.§!!4§;
      }
      
      private function §%K§() : Boolean
      {
         if(this.§?n§)
         {
            this.§?n§.removeEventListener(Event.COMPLETE,this.§[Z§);
            this.§?n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
            this.§?n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
            try
            {
               this.§?n§.close();
            }
            catch(e:Error)
            {
            }
            this.§?n§ = null;
         }
         if(this.§!!4§)
         {
            return false;
         }
         return true;
      }
      
      private function §[Z§(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§[Z§);
         this.§?n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
         this.§?n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         this.§`-§[this.§do §] = this.§?n§.data;
         this.§?n§ = null;
         if(!this.§<!V§())
         {
            this.§'" §(this.§<!`§);
         }
      }
      
      private function § J§(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§[Z§);
         this.§?n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ J§);
         this.§?n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ J§);
         this.§?n§.close();
         this.§?n§ = null;
         this.§["$§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageManager() : §0!P§
      {
         return new §0!P§(this.§]m§);
      }
      
      private function §'" §(param1:Array) : void
      {
         var _loc2_:§0"1§ = null;
         this.§!!4§ = true;
         while(this.§3g§.length >= this.§[!F§)
         {
            _loc2_ = this.§3g§.pop();
            _loc2_.dispose();
         }
         if(this.§4J§)
         {
            this.§4J§.dispose();
         }
         this.§#!v§ = new §0"1§(this.§["$§);
         this.§3g§.unshift(this.§#!v§);
         this.§4J§ = this.initPackageManager();
         this.§!![§ = param1.concat();
         this.§@!k§();
      }
      
      private function §@!k§() : Boolean
      {
         if(this.§!![§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§!![§.pop();
         this.§4J§.addEventListener(Event.COMPLETE,this.§05§);
         var _loc2_:* = this.§,"!§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§,"!§.push(_loc1_);
         }
         this.§4J§.§"[§(this.§`-§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §05§(param1:Event) : void
      {
         this.§!!4§ = false;
         this.§4J§.removeEventListener(Event.COMPLETE,this.§05§);
         if(this.§+5§)
         {
            this.§,'§(this.§+5§,this.§'!4§);
            this.§+5§ = null;
            this.§'!4§ = null;
            return;
         }
         if(this.§@!k§())
         {
            return;
         }
         var _loc2_:int = this.§4J§.§91§.§%z§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§#!v§.§-!$§(this.§4J§.§91§.§`;§(_loc3_),0);
            _loc3_++;
         }
         this.§[![§();
      }
      
      public function §[![§() : void
      {
         if(this.§`"5§() || this.§4J§ == null)
         {
            return;
         }
         this.§#!v§.removeEventListener(Event.INIT,this.§8d§);
         if(this.§#!v§.§[![§())
         {
            this.§=!H§();
         }
         else
         {
            this.§#!v§.addEventListener(Event.INIT,this.§8d§);
         }
      }
      
      private function §=!H§() : void
      {
         this.§4J§.dispose();
         this.§4J§ = null;
         this.§]!`§ = this.§["$§;
         this.§["$§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §8d§(param1:Event) : void
      {
         this.§=!H§();
      }
   }
}
