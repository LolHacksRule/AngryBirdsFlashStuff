package §+N§
{
   import §2!3§.§#F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §#4§ extends EventDispatcher
   {
       
      
      private var §=]§:String = "";
      
      private var §!5§:String;
      
      private var §+<§:URLLoader;
      
      private var §2!B§:Dictionary;
      
      private var §+J§:String = null;
      
      private var § s§:String = null;
      
      private var §"!^§:String = null;
      
      private var §]!W§:Boolean;
      
      private var § !6§:§#F§;
      
      private var §!v§:§``§;
      
      private var §'!>§:Vector.<§``§>;
      
      private var §+!I§:String = "pak";
      
      private var §0![§:Boolean = true;
      
      private var §>P§:int = 1;
      
      public function §#4§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§2!B§ = new Dictionary();
         this.§'!>§ = new Vector.<§``§>();
         super();
         this.§=]§ = param2;
         this.§!5§ = param1;
         this.§0![§ = param3;
         this.§>P§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §``§
      {
         return this.§!v§;
      }
      
      public function §2Q§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§2!B§[param1] != null;
      }
      
      private function §=g§(param1:String) : Boolean
      {
         var _loc3_:§``§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!>§.length)
         {
            _loc3_ = this.§'!>§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§!v§ = _loc3_;
               this.§+J§ = param1;
               this.§'!>§.splice(_loc2_,1);
               this.§'!>§.unshift(this.§!v§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§!W§())
         {
            if(!this.§%!b§())
            {
               this.§"!^§ = param1;
               return;
            }
         }
         if(this.§2Q§(param1))
         {
            this.§=g§(param1);
            if(param1 == this.§+J§ || !this.§0![§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&9§(param1,false);
            }
         }
         else
         {
            this.§@P§(param1);
         }
      }
      
      private function §@P§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§=]§ != null && this.§=]§.length > 0)
         {
            _loc2_ = "?version=" + this.§=]§;
         }
         this.§ s§ = param1;
         this.§+<§ = new URLLoader();
         this.§+<§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+<§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+<§.addEventListener(IOErrorEvent.IO_ERROR,this.§]0§);
         this.§+<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]0§);
         this.§+<§.load(new URLRequest(this.§!5§ + "packages/" + param1 + "." + this.§+!I§ + _loc2_));
      }
      
      private function §!W§() : Boolean
      {
         return this.§+<§ || this.§]!W§;
      }
      
      private function §%!b§() : Boolean
      {
         if(this.§+<§)
         {
            this.§+<§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]0§);
            this.§+<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]0§);
            this.§+<§.close();
            this.§+<§ = null;
         }
         if(this.§]!W§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§+<§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]0§);
         this.§+<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]0§);
         this.§2!B§[this.§ s§] = this.§+<§.data;
         this.§+<§ = null;
         this.§&9§(this.§ s§,true);
      }
      
      private function §&9§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§``§ = null;
         this.§]!W§ = true;
         this.§ s§ = param1;
         while(this.§'!>§.length >= this.§>P§)
         {
            _loc3_ = this.§'!>§.pop();
            _loc3_.dispose();
         }
         if(this.§ !6§)
         {
            this.§ !6§.dispose();
         }
         this.§!v§ = new §``§(param1);
         this.§'!>§.unshift(this.§!v§);
         this.§ !6§ = new §#F§();
         this.§ !6§.addEventListener(Event.COMPLETE,this.§+G§);
         this.§ !6§.§!9§(this.§2!B§[this.§ s§],param2);
      }
      
      private function §]0§(param1:Event) : void
      {
         this.§+<§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]0§);
         this.§+<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]0§);
         this.§+<§.close();
         this.§+<§ = null;
         this.§ s§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §+G§(param1:Event) : void
      {
         this.§]!W§ = false;
         this.§ !6§.removeEventListener(Event.COMPLETE,this.§+G§);
         if(this.§"!^§)
         {
            this.§<§(this.§"!^§);
            this.§"!^§ = null;
            return;
         }
         var _loc2_:int = this.§ !6§.§ k§.§0!Q§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§!v§.§]!a§(this.§ !6§.§ k§.§#!]§(_loc3_));
            _loc3_++;
         }
         this.§-!?§();
      }
      
      public function §-!?§() : void
      {
         if(this.§!W§() || this.§ !6§ == null)
         {
            return;
         }
         if(this.§!v§.§-!?§())
         {
            this.§ !6§.dispose();
            this.§ !6§ = null;
            this.§+J§ = this.§ s§;
            this.§ s§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
