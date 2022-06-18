package §[!$§
{
   import §%Z§.§1y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;"§ extends EventDispatcher
   {
       
      
      private var §6Z§:String = "";
      
      private var §?Y§:String;
      
      private var §^!D§:URLLoader;
      
      private var §=;§:Dictionary;
      
      private var §3O§:String = null;
      
      private var §7D§:String = null;
      
      private var §]O§:String = null;
      
      private var §#X§:Boolean;
      
      private var §=`§:§1y§;
      
      private var §7K§:§"!%§;
      
      private var §;b§:Vector.<§"!%§>;
      
      private var §@M§:String = "pak";
      
      private var §2C§:Boolean = true;
      
      private var §4!=§:int = 1;
      
      public function §;"§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=;§ = new Dictionary();
         this.§;b§ = new Vector.<§"!%§>();
         super();
         this.§6Z§ = param2;
         this.§?Y§ = param1;
         this.§2C§ = param3;
         this.§4!=§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §"!%§
      {
         return this.§7K§;
      }
      
      public function §8G§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=;§[param1] != null;
      }
      
      private function §1^§(param1:String) : Boolean
      {
         var _loc3_:§"!%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;b§.length)
         {
            _loc3_ = this.§;b§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§7K§ = _loc3_;
               this.§3O§ = param1;
               this.§;b§.splice(_loc2_,1);
               this.§;b§.unshift(this.§7K§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[!!§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§[-§())
         {
            if(!this.§#-§())
            {
               this.§]O§ = param1;
               return;
            }
         }
         if(this.§8G§(param1))
         {
            this.§1^§(param1);
            if(param1 == this.§3O§ || !this.§2C§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"&§(param1,false);
            }
         }
         else
         {
            this.§[+§(param1);
         }
      }
      
      private function §[+§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6Z§ != null && this.§6Z§.length > 0)
         {
            _loc2_ = "?version=" + this.§6Z§;
         }
         this.§7D§ = param1;
         this.§^!D§ = new URLLoader();
         this.§^!D§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§^!D§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^!D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!D§.load(new URLRequest(this.§?Y§ + "packages/" + param1 + "." + this.§@M§ + _loc2_));
      }
      
      private function §[-§() : Boolean
      {
         return this.§^!D§ || this.§#X§;
      }
      
      private function §#-§() : Boolean
      {
         if(this.§^!D§)
         {
            this.§^!D§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§^!D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§^!D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§^!D§.close();
            this.§^!D§ = null;
         }
         if(this.§#X§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!D§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§=;§[this.§7D§] = this.§^!D§.data;
         this.§^!D§ = null;
         this.§"&§(this.§7D§,true);
      }
      
      private function §"&§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§"!%§ = null;
         this.§#X§ = true;
         this.§7D§ = param1;
         while(this.§;b§.length >= this.§4!=§)
         {
            _loc3_ = this.§;b§.pop();
            _loc3_.dispose();
         }
         if(this.§=`§)
         {
            this.§=`§.dispose();
         }
         this.§7K§ = new §"!%§(param1);
         this.§;b§.unshift(this.§7K§);
         this.§=`§ = new §1y§();
         this.§=`§.addEventListener(Event.COMPLETE,this.§`0§);
         this.§=`§.§ true§(this.§=;§[this.§7D§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§^!D§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!D§.close();
         this.§^!D§ = null;
         this.§7D§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §`0§(param1:Event) : void
      {
         this.§#X§ = false;
         this.§=`§.removeEventListener(Event.COMPLETE,this.§`0§);
         if(this.§]O§)
         {
            this.§[!!§(this.§]O§);
            this.§]O§ = null;
            return;
         }
         var _loc2_:int = this.§=`§.§2o§.§&!B§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7K§.§04§(this.§=`§.§2o§.§+f§(_loc3_));
            _loc3_++;
         }
         this.§1N§();
      }
      
      public function §1N§() : void
      {
         if(this.§[-§() || this.§=`§ == null)
         {
            return;
         }
         if(this.§7K§.§1N§())
         {
            this.§=`§.dispose();
            this.§=`§ = null;
            this.§3O§ = this.§7D§;
            this.§7D§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
