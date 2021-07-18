package §4W§
{
   import §?P§.§;y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9@§ extends EventDispatcher
   {
       
      
      private var §<,§:String = "";
      
      private var §!k§:String;
      
      private var §6!B§:URLLoader;
      
      private var §+n§:Dictionary;
      
      private var §=!M§:String = null;
      
      private var §"!§:String = null;
      
      private var §3`§:String = null;
      
      private var §9!+§:Boolean;
      
      private var § ?§:§;y§;
      
      private var §5<§:§!]§;
      
      private var §&!9§:String = "pak";
      
      private var §^e§:Boolean = true;
      
      public function §9@§(param1:String, param2:String, param3:Boolean = true)
      {
         this.§+n§ = new Dictionary();
         super();
         this.§<,§ = param2;
         this.§!k§ = param1;
         this.§^e§ = param3;
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function §[?§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§+n§[param1] != null;
      }
      
      public function §9=§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§"X§())
         {
            if(!this.§"!%§())
            {
               this.§3`§ = param1;
               return;
            }
         }
         if(this.§[?§(param1))
         {
            if(param1 == this.§=!M§ || !this.§^e§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§=F§(param1,false);
            }
         }
         else
         {
            this.§,x§(param1);
         }
      }
      
      private function §,x§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§<,§ != null && this.§<,§.length > 0)
         {
            _loc2_ = "?version=" + this.§<,§;
         }
         this.§"!§ = param1;
         this.§6!B§ = new URLLoader();
         this.§6!B§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§6!B§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!B§.addEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
         this.§6!B§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
         this.§6!B§.load(new URLRequest(this.§!k§ + "packages/" + param1 + "." + this.§&!9§ + _loc2_));
      }
      
      private function §"X§() : Boolean
      {
         return this.§6!B§ || this.§9!+§;
      }
      
      private function §"!%§() : Boolean
      {
         if(this.§6!B§)
         {
            this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
            this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
            this.§6!B§.close();
            this.§6!B§ = null;
         }
         if(this.§9!+§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
         this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
         this.§+n§[this.§"!§] = this.§6!B§.data;
         this.§6!B§ = null;
         this.§=F§(this.§"!§,true);
      }
      
      private function §=F§(param1:String, param2:Boolean) : void
      {
         this.§9!+§ = true;
         this.§"!§ = param1;
         if(this.§5<§)
         {
            this.§5<§.dispose();
         }
         if(this.§ ?§)
         {
            this.§ ?§.dispose();
         }
         this.§5<§ = new §!]§();
         this.§ ?§ = new §;y§();
         this.§ ?§.addEventListener(Event.COMPLETE,this.§2S§);
         this.§ ?§.§ !=§(this.§+n§[this.§"!§],param2);
      }
      
      private function §9?§(param1:Event) : void
      {
         this.§6!B§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9?§);
         this.§6!B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9?§);
         this.§6!B§.close();
         this.§6!B§ = null;
         this.§"!§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §2S§(param1:Event) : void
      {
         this.§9!+§ = false;
         this.§ ?§.removeEventListener(Event.COMPLETE,this.§2S§);
         if(this.§3`§)
         {
            this.§9=§(this.§3`§);
            this.§3`§ = null;
            return;
         }
         var _loc2_:int = this.§ ?§.§#!J§.§2"§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§5<§.§?1§(this.§ ?§.§#!J§.§0!L§(_loc3_));
            _loc3_++;
         }
         this.§8!K§();
      }
      
      public function §8!K§() : void
      {
         if(this.§"X§() || this.§ ?§ == null)
         {
            return;
         }
         if(this.§5<§.§8!K§())
         {
            this.§ ?§.dispose();
            this.§ ?§ = null;
            this.§=!M§ = this.§"!§;
            this.§"!§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
