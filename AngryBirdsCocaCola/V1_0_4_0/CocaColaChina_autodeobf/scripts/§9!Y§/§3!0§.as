package §9!Y§
{
   import §8B§.§?7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §3!0§ extends EventDispatcher
   {
       
      
      private var §;#§:String = "";
      
      private var §>!4§:String;
      
      private var §6!I§:URLLoader;
      
      private var §@!F§:Dictionary;
      
      private var §;;§:String = null;
      
      private var §true§:String = null;
      
      private var § &§:String = null;
      
      private var §!U§:Boolean;
      
      private var §1,§:§?7§;
      
      private var §!!@§:§!q§;
      
      private var §6y§:Vector.<§!q§>;
      
      private var §!4§:String = "pak";
      
      private var §[i§:Boolean = true;
      
      private var §=s§:int = 1;
      
      public function §3!0§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§@!F§ = new Dictionary();
         this.§6y§ = new Vector.<§!q§>();
         super();
         this.§;#§ = param2;
         this.§>!4§ = param1;
         this.§[i§ = param3;
         this.§=s§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §!q§
      {
         return this.§!!@§;
      }
      
      public function §+!O§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§@!F§[param1] != null;
      }
      
      private function §0[§(param1:String) : Boolean
      {
         var _loc3_:§!q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6y§.length)
         {
            _loc3_ = this.§6y§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§!!@§ = _loc3_;
               this.§;;§ = param1;
               this.§6y§.splice(_loc2_,1);
               this.§6y§.unshift(this.§!!@§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;Q§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§%i§())
         {
            if(!this.§9!H§())
            {
               this.§ &§ = param1;
               return;
            }
         }
         if(this.§+!O§(param1))
         {
            this.§0[§(param1);
            if(param1 == this.§;;§ || !this.§[i§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§package§(param1,false);
            }
         }
         else
         {
            this.§5!I§(param1);
         }
      }
      
      private function §5!I§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§;#§ != null && this.§;#§.length > 0)
         {
            _loc2_ = "?version=" + this.§;#§;
         }
         this.§true§ = param1;
         this.§6!I§ = new URLLoader();
         this.§6!I§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§6!I§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!I§.addEventListener(IOErrorEvent.IO_ERROR,this.§^!@§);
         this.§6!I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!@§);
         this.§6!I§.load(new URLRequest(this.§>!4§ + "packages/" + param1 + "." + this.§!4§ + _loc2_));
      }
      
      private function §%i§() : Boolean
      {
         return this.§6!I§ || this.§!U§;
      }
      
      private function §9!H§() : Boolean
      {
         if(this.§6!I§)
         {
            this.§6!I§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!@§);
            this.§6!I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!@§);
            this.§6!I§.close();
            this.§6!I§ = null;
         }
         if(this.§!U§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§6!I§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!@§);
         this.§6!I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!@§);
         this.§@!F§[this.§true§] = this.§6!I§.data;
         this.§6!I§ = null;
         this.§package§(this.§true§,true);
      }
      
      private function §package§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§!q§ = null;
         this.§!U§ = true;
         this.§true§ = param1;
         while(this.§6y§.length >= this.§=s§)
         {
            _loc3_ = this.§6y§.pop();
            _loc3_.dispose();
         }
         if(this.§1,§)
         {
            this.§1,§.dispose();
         }
         this.§!!@§ = new §!q§(param1);
         this.§6y§.unshift(this.§!!@§);
         this.§1,§ = new §?7§();
         this.§1,§.addEventListener(Event.COMPLETE,this.§ !§);
         this.§1,§.§&v§(this.§@!F§[this.§true§],param2);
      }
      
      private function §^!@§(param1:Event) : void
      {
         this.§6!I§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!@§);
         this.§6!I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!@§);
         this.§6!I§.close();
         this.§6!I§ = null;
         this.§true§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function § !§(param1:Event) : void
      {
         this.§!U§ = false;
         this.§1,§.removeEventListener(Event.COMPLETE,this.§ !§);
         if(this.§ &§)
         {
            this.§;Q§(this.§ &§);
            this.§ &§ = null;
            return;
         }
         var _loc2_:int = this.§1,§.§5!D§.§-!L§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!!@§.§#!?§(this.§1,§.§5!D§.§&!Z§(_loc3_));
            _loc3_++;
         }
         this.§,&§();
      }
      
      public function §,&§() : void
      {
         if(this.§%i§() || this.§1,§ == null)
         {
            return;
         }
         if(this.§!!@§.§,&§())
         {
            this.§1,§.dispose();
            this.§1,§ = null;
            this.§;;§ = this.§true§;
            this.§true§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
