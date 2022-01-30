package § !V§
{
   import §;!+§.§?p§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §8!J§ extends EventDispatcher
   {
       
      
      private var §6Q§:String = "";
      
      private var §0A§:String;
      
      private var §&",§:URLLoader;
      
      private var §<5§:Dictionary;
      
      private var §9!c§:String = null;
      
      private var §98§:String = null;
      
      private var §'!I§:String = null;
      
      private var §&"!§:Boolean;
      
      private var §@!z§:§?p§;
      
      private var § d§:§7!P§;
      
      private var §`@§:Vector.<§7!P§>;
      
      private var §'N§:String = "pak";
      
      private var §#!U§:Boolean = true;
      
      private var §[`§:int = 1;
      
      public function §8!J§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§<5§ = new Dictionary();
         this.§`@§ = new Vector.<§7!P§>();
         super();
         this.§6Q§ = param2;
         this.§0A§ = param1;
         this.§#!U§ = param3;
         this.§[`§ = Math.max(1,param4);
      }
      
      public function get §7<§() : §7!P§
      {
         return this.§ d§;
      }
      
      public function §^9§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§<5§[param1] != null;
      }
      
      private function §'c§(param1:String) : Boolean
      {
         var _loc3_:§7!P§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`@§.length)
         {
            _loc3_ = this.§`@§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§ d§ = _loc3_;
               this.§9!c§ = param1;
               this.§`@§.splice(_loc2_,1);
               this.§`@§.unshift(this.§ d§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&^§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§'!L§())
         {
            if(!this.§%[§())
            {
               this.§'!I§ = param1;
               return;
            }
         }
         if(this.§^9§(param1))
         {
            this.§'c§(param1);
            if(param1 == this.§9!c§ || !this.§#!U§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§=]§(param1,false);
            }
         }
         else
         {
            this.§&g§(param1);
         }
      }
      
      private function §&g§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6Q§ != null && this.§6Q§.length > 0)
         {
            _loc2_ = "?version=" + this.§6Q§;
         }
         this.§98§ = param1;
         this.§&",§ = new URLLoader();
         this.§&",§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§&",§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&",§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&",§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&",§.load(new URLRequest(this.§0A§ + "packages/" + param1 + "." + this.§'N§ + _loc2_));
      }
      
      private function §'!L§() : Boolean
      {
         return this.§&",§ || this.§&"!§;
      }
      
      private function §%[§() : Boolean
      {
         if(this.§&",§)
         {
            this.§&",§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&",§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&",§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&",§.close();
            this.§&",§ = null;
         }
         if(this.§&"!§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&",§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&",§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&",§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<5§[this.§98§] = this.§&",§.data;
         this.§&",§ = null;
         this.§=]§(this.§98§,true);
      }
      
      private function §=]§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§7!P§ = null;
         this.§&"!§ = true;
         this.§98§ = param1;
         while(this.§`@§.length >= this.§[`§)
         {
            _loc3_ = this.§`@§.pop();
            _loc3_.dispose();
         }
         if(this.§@!z§)
         {
            this.§@!z§.dispose();
         }
         this.§ d§ = new §7!P§(param1);
         this.§`@§.unshift(this.§ d§);
         this.§@!z§ = new §?p§();
         this.§@!z§.addEventListener(Event.COMPLETE,this.§,Q§);
         this.§@!z§.§'"$§(this.§<5§[this.§98§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§&",§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&",§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&",§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&",§.close();
         this.§&",§ = null;
         this.§98§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §,Q§(param1:Event) : void
      {
         this.§&"!§ = false;
         this.§@!z§.removeEventListener(Event.COMPLETE,this.§,Q§);
         if(this.§'!I§)
         {
            this.§&^§(this.§'!I§);
            this.§'!I§ = null;
            return;
         }
         var _loc2_:int = this.§@!z§.§2!J§.§#!C§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ d§.§?!R§(this.§@!z§.§2!J§.§&!i§(_loc3_));
            _loc3_++;
         }
         this.§ ! §();
      }
      
      public function § ! §() : void
      {
         if(this.§'!L§() || this.§@!z§ == null)
         {
            return;
         }
         if(this.§ d§.§ ! §())
         {
            this.§@!z§.dispose();
            this.§@!z§ = null;
            this.§9!c§ = this.§98§;
            this.§98§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
