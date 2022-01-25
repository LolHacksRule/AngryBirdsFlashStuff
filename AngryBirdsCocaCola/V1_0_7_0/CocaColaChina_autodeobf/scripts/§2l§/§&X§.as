package §2l§
{
   import §+o§.§!o§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&X§ extends EventDispatcher
   {
       
      
      private var §^q§:String = "";
      
      private var §9J§:String;
      
      private var §;!A§:URLLoader;
      
      private var §[Q§:Dictionary;
      
      private var §8%§:String = null;
      
      private var §"-§:String = null;
      
      private var §%k§:String = null;
      
      private var §3!0§:Boolean;
      
      private var §1,§:§!o§;
      
      private var §!!@§:§]O§;
      
      private var §@!F§:Vector.<§]O§>;
      
      private var §%!5§:String = "pak";
      
      private var §;;§:Boolean = true;
      
      private var §true§:int = 1;
      
      public function §&X§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§[Q§ = new Dictionary();
         this.§@!F§ = new Vector.<§]O§>();
         super();
         this.§^q§ = param2;
         this.§9J§ = param1;
         this.§;;§ = param3;
         this.§true§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §]O§
      {
         return this.§!!@§;
      }
      
      public function § &§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§[Q§[param1] != null;
      }
      
      private function §!U§(param1:String) : Boolean
      {
         var _loc3_:§]O§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!F§.length)
         {
            _loc3_ = this.§@!F§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§!!@§ = _loc3_;
               this.§8%§ = param1;
               this.§@!F§.splice(_loc2_,1);
               this.§@!F§.unshift(this.§!!@§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6y§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§=s§())
         {
            if(!this.§+!O§())
            {
               this.§%k§ = param1;
               return;
            }
         }
         if(this.§ &§(param1))
         {
            this.§!U§(param1);
            if(param1 == this.§8%§ || !this.§;;§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§0[§(param1,false);
            }
         }
         else
         {
            this.§[i§(param1);
         }
      }
      
      private function §[i§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§^q§ != null && this.§^q§.length > 0)
         {
            _loc2_ = "?version=" + this.§^q§;
         }
         this.§"-§ = param1;
         this.§;!A§ = new URLLoader();
         this.§;!A§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§;!A§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§;!A§.addEventListener(IOErrorEvent.IO_ERROR,this.§;Q§);
         this.§;!A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;Q§);
         this.§;!A§.load(new URLRequest(this.§9J§ + "packages/" + param1 + "." + this.§%!5§ + _loc2_));
      }
      
      private function §=s§() : Boolean
      {
         return this.§;!A§ || this.§3!0§;
      }
      
      private function §+!O§() : Boolean
      {
         if(this.§;!A§)
         {
            this.§;!A§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§;!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;Q§);
            this.§;!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;Q§);
            this.§;!A§.close();
            this.§;!A§ = null;
         }
         if(this.§3!0§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§;!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§;!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;Q§);
         this.§;!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;Q§);
         this.§[Q§[this.§"-§] = this.§;!A§.data;
         this.§;!A§ = null;
         this.§0[§(this.§"-§,true);
      }
      
      private function §0[§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§]O§ = null;
         this.§3!0§ = true;
         this.§"-§ = param1;
         while(this.§@!F§.length >= this.§true§)
         {
            _loc3_ = this.§@!F§.pop();
            _loc3_.dispose();
         }
         if(this.§1,§)
         {
            this.§1,§.dispose();
         }
         this.§!!@§ = new §]O§(param1);
         this.§@!F§.unshift(this.§!!@§);
         this.§1,§ = new §!o§();
         this.§1,§.addEventListener(Event.COMPLETE,this.§5!I§);
         this.§1,§.§5!X§(this.§[Q§[this.§"-§],param2);
      }
      
      private function §;Q§(param1:Event) : void
      {
         this.§;!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§;!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;Q§);
         this.§;!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;Q§);
         this.§;!A§.close();
         this.§;!A§ = null;
         this.§"-§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §5!I§(param1:Event) : void
      {
         this.§3!0§ = false;
         this.§1,§.removeEventListener(Event.COMPLETE,this.§5!I§);
         if(this.§%k§)
         {
            this.§6y§(this.§%k§);
            this.§%k§ = null;
            return;
         }
         var _loc2_:int = this.§1,§.§4!2§.§`"§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!!@§.§&B§(this.§1,§.§4!2§.§&R§(_loc3_));
            _loc3_++;
         }
         this.§-!P§();
      }
      
      public function §-!P§() : void
      {
         if(this.§=s§() || this.§1,§ == null)
         {
            return;
         }
         if(this.§!!@§.§-!P§())
         {
            this.§1,§.dispose();
            this.§1,§ = null;
            this.§8%§ = this.§"-§;
            this.§"-§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
