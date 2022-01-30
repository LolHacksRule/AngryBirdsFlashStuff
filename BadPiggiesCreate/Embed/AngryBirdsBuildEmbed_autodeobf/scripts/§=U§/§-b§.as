package §=U§
{
   import §1j§.§1R§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §-b§ extends EventDispatcher
   {
       
      
      private var §&V§:String = "";
      
      private var §5D§:String;
      
      private var §2O§:URLLoader;
      
      private var §^L§:Dictionary;
      
      private var §7!f§:String = null;
      
      private var §+!s§:String = null;
      
      private var §3l§:String = null;
      
      private var §<#§:Boolean;
      
      private var §<^§:§1R§;
      
      private var §>!S§:§3p§;
      
      private var §+H§:Vector.<§3p§>;
      
      private var §&"§:String = "pak";
      
      private var §^D§:Boolean = true;
      
      private var §;!v§:int = 1;
      
      public function §-b§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§^L§ = new Dictionary();
         this.§+H§ = new Vector.<§3p§>();
         super();
         this.§&V§ = param2;
         this.§5D§ = param1;
         this.§^D§ = param3;
         this.§;!v§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function §<!s§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§^L§[param1] != null;
      }
      
      private function §^O§(param1:String) : Boolean
      {
         var _loc3_:§3p§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+H§.length)
         {
            _loc3_ = this.§+H§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>!S§ = _loc3_;
               this.§7!f§ = param1;
               this.§+H§.splice(_loc2_,1);
               this.§+H§.unshift(this.§>!S§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §95§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§&`§())
         {
            if(!this.§=§())
            {
               this.§3l§ = param1;
               return;
            }
         }
         if(this.§<!s§(param1))
         {
            this.§^O§(param1);
            if(param1 == this.§7!f§ || !this.§^D§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§@!I§(param1,false);
            }
         }
         else
         {
            this.§3j§(param1);
         }
      }
      
      private function §3j§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§&V§ != null && this.§&V§.length > 0)
         {
            _loc2_ = "?version=" + this.§&V§;
         }
         this.§+!s§ = param1;
         this.§2O§ = new URLLoader();
         this.§2O§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§2O§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2O§.load(new URLRequest(this.§5D§ + "packages/" + param1 + "." + this.§&"§ + _loc2_));
      }
      
      private function §&`§() : Boolean
      {
         return this.§2O§ || this.§<#§;
      }
      
      private function §=§() : Boolean
      {
         if(this.§2O§)
         {
            this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§2O§.close();
            this.§2O§ = null;
         }
         if(this.§<#§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^L§[this.§+!s§] = this.§2O§.data;
         this.§2O§ = null;
         this.§@!I§(this.§+!s§,true);
      }
      
      private function §@!I§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§3p§ = null;
         this.§<#§ = true;
         this.§+!s§ = param1;
         while(this.§+H§.length >= this.§;!v§)
         {
            _loc3_ = this.§+H§.pop();
            _loc3_.dispose();
         }
         if(this.§<^§)
         {
            this.§<^§.dispose();
         }
         this.§>!S§ = new §3p§(param1);
         this.§+H§.unshift(this.§>!S§);
         this.§<^§ = new §1R§();
         this.§<^§.addEventListener(Event.COMPLETE,this.§@!v§);
         this.§<^§.§83§(this.§^L§[this.§+!s§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§2O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2O§.close();
         this.§2O§ = null;
         this.§+!s§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §@!v§(param1:Event) : void
      {
         this.§<#§ = false;
         this.§<^§.removeEventListener(Event.COMPLETE,this.§@!v§);
         if(this.§3l§)
         {
            this.§95§(this.§3l§);
            this.§3l§ = null;
            return;
         }
         var _loc2_:int = this.§<^§.§#!a§.§0!@§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>!S§.§+t§(this.§<^§.§#!a§.§0g§(_loc3_));
            _loc3_++;
         }
         this.§[!>§();
      }
      
      public function §[!>§() : void
      {
         if(this.§&`§() || this.§<^§ == null)
         {
            return;
         }
         if(this.§>!S§.§[!>§())
         {
            this.§<^§.dispose();
            this.§<^§ = null;
            this.§7!f§ = this.§+!s§;
            this.§+!s§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
