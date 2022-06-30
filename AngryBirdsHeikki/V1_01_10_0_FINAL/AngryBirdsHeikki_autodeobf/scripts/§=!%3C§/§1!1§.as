package §=!<§
{
   import §9!2§.§8[§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1!1§ extends EventDispatcher
   {
       
      
      private var §'!G§:String = "";
      
      private var §+!B§:String;
      
      private var §%U§:URLLoader;
      
      private var §+j§:Dictionary;
      
      private var §else§:String = null;
      
      private var §&V§:String = null;
      
      private var §2!§:String = null;
      
      private var §7!A§:Boolean;
      
      private var §=!E§:§8[§;
      
      private var §;u§:§>a§;
      
      private var §'!-§:Vector.<§>a§>;
      
      private var §>A§:String = "pak";
      
      private var §=f§:Boolean = true;
      
      private var §61§:int = 1;
      
      public function §1!1§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§+j§ = new Dictionary();
         this.§'!-§ = new Vector.<§>a§>();
         super();
         this.§'!G§ = param2;
         this.§+!B§ = param1;
         this.§=f§ = param3;
         this.§61§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function §"T§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§+j§[param1] != null;
      }
      
      private function §6!Y§(param1:String) : Boolean
      {
         var _loc3_:§>a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!-§.length)
         {
            _loc3_ = this.§'!-§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§;u§ = _loc3_;
               this.§else§ = param1;
               this.§'!-§.splice(_loc2_,1);
               this.§'!-§.unshift(this.§;u§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9k§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§`!R§())
         {
            if(!this.§1!A§())
            {
               this.§2!§ = param1;
               return;
            }
         }
         if(this.§"T§(param1))
         {
            this.§6!Y§(param1);
            if(param1 == this.§else§ || !this.§=f§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"P§(param1,false);
            }
         }
         else
         {
            this.§1T§(param1);
         }
      }
      
      private function §1T§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§'!G§ != null && this.§'!G§.length > 0)
         {
            _loc2_ = "?version=" + this.§'!G§;
         }
         this.§&V§ = param1;
         this.§%U§ = new URLLoader();
         this.§%U§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§%U§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§%U§.addEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
         this.§%U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
         this.§%U§.load(new URLRequest(this.§+!B§ + "packages/" + param1 + "." + this.§>A§ + _loc2_));
      }
      
      private function §`!R§() : Boolean
      {
         return this.§%U§ || this.§7!A§;
      }
      
      private function §1!A§() : Boolean
      {
         if(this.§%U§)
         {
            this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
            this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
            this.§%U§.close();
            this.§%U§ = null;
         }
         if(this.§7!A§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
         this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
         this.§+j§[this.§&V§] = this.§%U§.data;
         this.§%U§ = null;
         this.§"P§(this.§&V§,true);
      }
      
      private function §"P§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§>a§ = null;
         this.§7!A§ = true;
         this.§&V§ = param1;
         while(this.§'!-§.length >= this.§61§)
         {
            _loc3_ = this.§'!-§.pop();
            _loc3_.dispose();
         }
         if(this.§=!E§)
         {
            this.§=!E§.dispose();
         }
         this.§;u§ = new §>a§(param1);
         this.§'!-§.unshift(this.§;u§);
         this.§=!E§ = new §8[§();
         this.§=!E§.addEventListener(Event.COMPLETE,this.§7A§);
         this.§=!E§.§'#§(this.§+j§[this.§&V§],param2);
      }
      
      private function §,T§(param1:Event) : void
      {
         this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,T§);
         this.§%U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,T§);
         this.§%U§.close();
         this.§%U§ = null;
         this.§&V§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §7A§(param1:Event) : void
      {
         this.§7!A§ = false;
         this.§=!E§.removeEventListener(Event.COMPLETE,this.§7A§);
         if(this.§2!§)
         {
            this.§9k§(this.§2!§);
            this.§2!§ = null;
            return;
         }
         var _loc2_:int = this.§=!E§.§1!=§.§[J§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;u§.§?h§(this.§=!E§.§1!=§.§^m§(_loc3_));
            _loc3_++;
         }
         this.§28§();
      }
      
      public function §28§() : void
      {
         if(this.§`!R§() || this.§=!E§ == null)
         {
            return;
         }
         if(this.§;u§.§28§())
         {
            this.§=!E§.dispose();
            this.§=!E§ = null;
            this.§else§ = this.§&V§;
            this.§&V§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
