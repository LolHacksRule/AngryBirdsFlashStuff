package §"a§
{
   import §7^§.§4Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`9§ extends EventDispatcher
   {
       
      
      private var §&C§:String = "";
      
      private var §2[§:String;
      
      private var §8O§:URLLoader;
      
      private var §&-§:Dictionary;
      
      private var §+y§:String = null;
      
      private var §#9§:String = null;
      
      private var §,5§:String = null;
      
      private var §7q§:Boolean;
      
      private var §#!;§:§4Q§;
      
      private var §>t§:§>X§;
      
      private var §22§:Vector.<§>X§>;
      
      private var §0!5§:String = "pak";
      
      private var §'!$§:Boolean = true;
      
      private var §3N§:int = 1;
      
      public function §`9§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§&-§ = new Dictionary();
         this.§22§ = new Vector.<§>X§>();
         super();
         this.§&C§ = param2;
         this.§2[§ = param1;
         this.§'!$§ = param3;
         this.§3N§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §>X§
      {
         return this.§>t§;
      }
      
      public function §;!7§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§&-§[param1] != null;
      }
      
      private function §#]§(param1:String) : Boolean
      {
         var _loc3_:§>X§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§22§.length)
         {
            _loc3_ = this.§22§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>t§ = _loc3_;
               this.§+y§ = param1;
               this.§22§.splice(_loc2_,1);
               this.§22§.unshift(this.§>t§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!J§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§-i§())
         {
            if(!this.§,!>§())
            {
               this.§,5§ = param1;
               return;
            }
         }
         if(this.§;!7§(param1))
         {
            this.§#]§(param1);
            if(param1 == this.§+y§ || !this.§'!$§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§,C§(param1,false);
            }
         }
         else
         {
            this.§8§(param1);
         }
      }
      
      private function §8§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§&C§ != null && this.§&C§.length > 0)
         {
            _loc2_ = "?version=" + this.§&C§;
         }
         this.§#9§ = param1;
         this.§8O§ = new URLLoader();
         this.§8O§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§8O§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§8O§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§8O§.load(new URLRequest(this.§2[§ + "packages/" + param1 + "." + this.§0!5§ + _loc2_));
      }
      
      private function §-i§() : Boolean
      {
         return this.§8O§ || this.§7q§;
      }
      
      private function §,!>§() : Boolean
      {
         if(this.§8O§)
         {
            this.§8O§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§8O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§8O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§8O§.close();
            this.§8O§ = null;
         }
         if(this.§7q§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§8O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§8O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&-§[this.§#9§] = this.§8O§.data;
         this.§8O§ = null;
         this.§,C§(this.§#9§,true);
      }
      
      private function §,C§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§>X§ = null;
         this.§7q§ = true;
         this.§#9§ = param1;
         while(this.§22§.length >= this.§3N§)
         {
            _loc3_ = this.§22§.pop();
            _loc3_.dispose();
         }
         if(this.§#!;§)
         {
            this.§#!;§.dispose();
         }
         this.§>t§ = new §>X§(param1);
         this.§22§.unshift(this.§>t§);
         this.§#!;§ = new §4Q§();
         this.§#!;§.addEventListener(Event.COMPLETE,this.§^!0§);
         this.§#!;§.§5l§(this.§&-§[this.§#9§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§8O§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§8O§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§8O§.close();
         this.§8O§ = null;
         this.§#9§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §^!0§(param1:Event) : void
      {
         this.§7q§ = false;
         this.§#!;§.removeEventListener(Event.COMPLETE,this.§^!0§);
         if(this.§,5§)
         {
            this.§=!J§(this.§,5§);
            this.§,5§ = null;
            return;
         }
         var _loc2_:int = this.§#!;§.§+f§.§]!?§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>t§.§"_§(this.§#!;§.§+f§.§0U§(_loc3_));
            _loc3_++;
         }
         this.§>j§();
      }
      
      public function §>j§() : void
      {
         if(this.§-i§() || this.§#!;§ == null)
         {
            return;
         }
         if(this.§>t§.§>j§())
         {
            this.§#!;§.dispose();
            this.§#!;§ = null;
            this.§+y§ = this.§#9§;
            this.§#9§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
