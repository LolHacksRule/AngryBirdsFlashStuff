package §&!W§
{
   import §#"§.§?P§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §4W§ extends EventDispatcher
   {
       
      
      private var §!k§:String = "";
      
      private var § each§:String;
      
      private var §4!0§:URLLoader;
      
      private var §9@§:Dictionary;
      
      private var §+n§:String = null;
      
      private var §=!M§:String = null;
      
      private var §"!§:String = null;
      
      private var §3`§:Boolean;
      
      private var § ?§:§?P§;
      
      private var §&U§:§8!K§;
      
      private var §`D§:String = "pak";
      
      private var §9!+§:Boolean = true;
      
      public function §4W§(param1:String, param2:String, param3:Boolean = true)
      {
         this.§9@§ = new Dictionary();
         super();
         this.§!k§ = param2;
         this.§ each§ = param1;
         this.§9!+§ = param3;
      }
      
      public function get §"B§() : §8!K§
      {
         return this.§&U§;
      }
      
      public function §^e§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§9@§[param1] != null;
      }
      
      public function §[?§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§,x§())
         {
            if(!this.§"X§())
            {
               this.§"!§ = param1;
               return;
            }
         }
         if(this.§^e§(param1))
         {
            if(param1 == this.§+n§ || !this.§9!+§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"!%§(param1,false);
            }
         }
         else
         {
            this.§9=§(param1);
         }
      }
      
      private function §9=§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§!k§ != null && this.§!k§.length > 0)
         {
            _loc2_ = "?version=" + this.§!k§;
         }
         this.§=!M§ = param1;
         this.§4!0§ = new URLLoader();
         this.§4!0§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§4!0§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!0§.addEventListener(IOErrorEvent.IO_ERROR,this.§=F§);
         this.§4!0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=F§);
         this.§4!0§.load(new URLRequest(this.§ each§ + "packages/" + param1 + "." + this.§`D§ + _loc2_));
      }
      
      private function §,x§() : Boolean
      {
         return this.§4!0§ || this.§3`§;
      }
      
      private function §"X§() : Boolean
      {
         if(this.§4!0§)
         {
            this.§4!0§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=F§);
            this.§4!0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=F§);
            this.§4!0§.close();
            this.§4!0§ = null;
         }
         if(this.§3`§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4!0§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=F§);
         this.§4!0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=F§);
         this.§9@§[this.§=!M§] = this.§4!0§.data;
         this.§4!0§ = null;
         this.§"!%§(this.§=!M§,true);
      }
      
      private function §"!%§(param1:String, param2:Boolean) : void
      {
         this.§3`§ = true;
         this.§=!M§ = param1;
         if(this.§&U§)
         {
            this.§&U§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         this.§&U§ = new §8!K§();
         this.§ ?§ = new §?P§();
         this.§ ?§.addEventListener(Event.COMPLETE,this.§9?§);
         this.§ ?§.§6G§(this.§9@§[this.§=!M§],param2);
      }
      
      private function §=F§(param1:Event) : void
      {
         this.§4!0§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=F§);
         this.§4!0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=F§);
         this.§4!0§.close();
         this.§4!0§ = null;
         this.§=!M§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §9?§(param1:Event) : void
      {
         this.§3`§ = false;
         this.§ ?§.removeEventListener(Event.COMPLETE,this.§9?§);
         if(this.§"!§)
         {
            this.§[?§(this.§"!§);
            this.§"!§ = null;
            return;
         }
         var _loc2_:int = this.§ ?§.§&H§.§2"§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§&U§.§<!H§(this.§ ?§.§&H§.§0!L§(_loc3_));
            _loc3_++;
         }
         this.§2S§();
      }
      
      public function §2S§() : void
      {
         if(this.§,x§() || this.§ ?§ == null)
         {
            return;
         }
         if(this.§&U§.§2S§())
         {
            this.§ ?§.dispose();
            this.§ ?§ = null;
            this.§+n§ = this.§=!M§;
            this.§=!M§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
