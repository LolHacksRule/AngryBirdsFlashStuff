package §;!<§
{
   import §]'§.§%!J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>!>§ extends EventDispatcher
   {
       
      
      private var §=6§:String = "";
      
      private var §2U§:String;
      
      private var §>!L§:URLLoader;
      
      private var §'!p§:Dictionary;
      
      private var §%!q§:String = null;
      
      private var §%"#§:String = null;
      
      private var §-!@§:String = null;
      
      private var §4!F§:Boolean;
      
      private var §`"!§:§%!J§;
      
      private var §0<§:§7!f§;
      
      private var §`!§:Vector.<§7!f§>;
      
      private var §[!G§:String = "pak";
      
      private var §]!3§:Boolean = true;
      
      private var §4G§:int = 1;
      
      public function §>!>§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§'!p§ = new Dictionary();
         this.§`!§ = new Vector.<§7!f§>();
         super();
         this.§=6§ = param2;
         this.§2U§ = param1;
         this.§]!3§ = param3;
         this.§4G§ = Math.max(1,param4);
      }
      
      public function get §20§() : §7!f§
      {
         return this.§0<§;
      }
      
      public function §2t§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§'!p§[param1] != null;
      }
      
      private function § 8§(param1:String) : Boolean
      {
         var _loc3_:§7!f§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!§.length)
         {
            _loc3_ = this.§`!§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§0<§ = _loc3_;
               this.§%!q§ = param1;
               this.§`!§.splice(_loc2_,1);
               this.§`!§.unshift(this.§0<§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#"5§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§5!H§())
         {
            if(!this.§4<§())
            {
               this.§-!@§ = param1;
               return;
            }
         }
         if(this.§2t§(param1))
         {
            this.§ 8§(param1);
            if(param1 == this.§%!q§ || !this.§]!3§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§?7§(param1,false);
            }
         }
         else
         {
            this.§@j§(param1);
         }
      }
      
      private function §@j§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§=6§ != null && this.§=6§.length > 0)
         {
            _loc2_ = "?version=" + this.§=6§;
         }
         this.§%"#§ = param1;
         this.§>!L§ = new URLLoader();
         this.§>!L§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§>!L§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>!L§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>!L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>!L§.load(new URLRequest(this.§2U§ + "packages/" + param1 + "." + this.§[!G§ + _loc2_));
      }
      
      private function §5!H§() : Boolean
      {
         return this.§>!L§ || this.§4!F§;
      }
      
      private function §4<§() : Boolean
      {
         if(this.§>!L§)
         {
            this.§>!L§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>!L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>!L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>!L§.close();
            this.§>!L§ = null;
         }
         if(this.§4!F§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>!L§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>!L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>!L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§'!p§[this.§%"#§] = this.§>!L§.data;
         this.§>!L§ = null;
         this.§?7§(this.§%"#§,true);
      }
      
      private function §?7§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§7!f§ = null;
         this.§4!F§ = true;
         this.§%"#§ = param1;
         while(this.§`!§.length >= this.§4G§)
         {
            _loc3_ = this.§`!§.pop();
            _loc3_.dispose();
         }
         if(this.§`"!§)
         {
            this.§`"!§.dispose();
         }
         this.§0<§ = new §7!f§(param1);
         this.§`!§.unshift(this.§0<§);
         this.§`"!§ = new §%!J§();
         this.§`"!§.addEventListener(Event.COMPLETE,this.§41§);
         this.§`"!§.§"!s§(this.§'!p§[this.§%"#§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§>!L§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>!L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>!L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>!L§.close();
         this.§>!L§ = null;
         this.§%"#§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §41§(param1:Event) : void
      {
         this.§4!F§ = false;
         this.§`"!§.removeEventListener(Event.COMPLETE,this.§41§);
         if(this.§-!@§)
         {
            this.§#"5§(this.§-!@§);
            this.§-!@§ = null;
            return;
         }
         var _loc2_:int = this.§`"!§.§#C§.§<!F§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§0<§.§#!S§(this.§`"!§.§#C§.§2!3§(_loc3_));
            _loc3_++;
         }
         this.§]"#§();
      }
      
      public function §]"#§() : void
      {
         if(this.§5!H§() || this.§`"!§ == null)
         {
            return;
         }
         if(this.§0<§.§]"#§())
         {
            this.§`"!§.dispose();
            this.§`"!§ = null;
            this.§%!q§ = this.§%"#§;
            this.§%"#§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
