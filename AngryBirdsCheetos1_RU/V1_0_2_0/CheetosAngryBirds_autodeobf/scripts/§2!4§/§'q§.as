package §2!4§
{
   import §,"§.§ !W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §'q§ extends EventDispatcher
   {
       
      
      private var §&!?§:String = "";
      
      private var § I§:String;
      
      private var §'O§:URLLoader;
      
      private var §<!_§:Dictionary;
      
      private var §2;§:String = null;
      
      private var §-!N§:String = null;
      
      private var §[q§:String = null;
      
      private var §^A§:Boolean;
      
      private var §=!4§:§ !W§;
      
      private var §^!2§:§5T§;
      
      private var §^g§:Vector.<§5T§>;
      
      private var §%!J§:String = "pak";
      
      private var §^z§:Boolean = true;
      
      private var §%!+§:int = 1;
      
      public function §'q§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§<!_§ = new Dictionary();
         this.§^g§ = new Vector.<§5T§>();
         super();
         this.§&!?§ = param2;
         this.§ I§ = param1;
         this.§^z§ = param3;
         this.§%!+§ = Math.max(1,param4);
      }
      
      public function get §&w§() : §5T§
      {
         return this.§^!2§;
      }
      
      public function §1!@§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§<!_§[param1] != null;
      }
      
      private function §&u§(param1:String) : Boolean
      {
         var _loc3_:§5T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^g§.length)
         {
            _loc3_ = this.§^g§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^!2§ = _loc3_;
               this.§2;§ = param1;
               this.§^g§.splice(_loc2_,1);
               this.§^g§.unshift(this.§^!2§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?b§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§=§())
         {
            if(!this.§"!E§())
            {
               this.§[q§ = param1;
               return;
            }
         }
         if(this.§1!@§(param1))
         {
            this.§&u§(param1);
            if(param1 == this.§2;§ || !this.§^z§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&!a§(param1,false);
            }
         }
         else
         {
            this.§='§(param1);
         }
      }
      
      private function §='§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§&!?§ != null && this.§&!?§.length > 0)
         {
            _loc2_ = "?version=" + this.§&!?§;
         }
         this.§-!N§ = param1;
         this.§'O§ = new URLLoader();
         this.§'O§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§'O§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§'O§.addEventListener(IOErrorEvent.IO_ERROR,this.§3G§);
         this.§'O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3G§);
         this.§'O§.load(new URLRequest(this.§ I§ + "packages/" + param1 + "." + this.§%!J§ + _loc2_));
      }
      
      private function §=§() : Boolean
      {
         return this.§'O§ || this.§^A§;
      }
      
      private function §"!E§() : Boolean
      {
         if(this.§'O§)
         {
            this.§'O§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§'O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3G§);
            this.§'O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3G§);
            this.§'O§.close();
            this.§'O§ = null;
         }
         if(this.§^A§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§'O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§'O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3G§);
         this.§'O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3G§);
         this.§<!_§[this.§-!N§] = this.§'O§.data;
         this.§'O§ = null;
         this.§&!a§(this.§-!N§,true);
      }
      
      private function §&!a§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§5T§ = null;
         this.§^A§ = true;
         this.§-!N§ = param1;
         while(this.§^g§.length >= this.§%!+§)
         {
            _loc3_ = this.§^g§.pop();
            _loc3_.dispose();
         }
         if(this.§=!4§)
         {
            this.§=!4§.dispose();
         }
         this.§^!2§ = new §5T§(param1);
         this.§^g§.unshift(this.§^!2§);
         this.§=!4§ = new § !W§();
         this.§=!4§.addEventListener(Event.COMPLETE,this.§5!!§);
         this.§=!4§.§>!@§(this.§<!_§[this.§-!N§],param2);
      }
      
      private function §3G§(param1:Event) : void
      {
         this.§'O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§'O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3G§);
         this.§'O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3G§);
         this.§'O§.close();
         this.§'O§ = null;
         this.§-!N§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §5!!§(param1:Event) : void
      {
         this.§^A§ = false;
         this.§=!4§.removeEventListener(Event.COMPLETE,this.§5!!§);
         if(this.§[q§)
         {
            this.§?b§(this.§[q§);
            this.§[q§ = null;
            return;
         }
         var _loc2_:int = this.§=!4§.§8I§.§%a§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^!2§.§<!J§(this.§=!4§.§8I§.§=8§(_loc3_));
            _loc3_++;
         }
         this.§25§();
      }
      
      public function §25§() : void
      {
         if(this.§=§() || this.§=!4§ == null)
         {
            return;
         }
         if(this.§^!2§.§25§())
         {
            this.§=!4§.dispose();
            this.§=!4§ = null;
            this.§2;§ = this.§-!N§;
            this.§-!N§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
