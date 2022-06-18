package §>!I§
{
   import § $%§.§0#`§;
   import §1#W§.§!#&§;
   import §7!j§.§'0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9" § extends EventDispatcher
   {
       
      
      private var §6#;§:String = "";
      
      private var §="V§:String;
      
      private var §+#>§:Dictionary;
      
      private var §+"%§:Vector.<String>;
      
      private var §3O§:String = null;
      
      private var §3"2§:String = null;
      
      private var §>"1§:Array;
      
      private var §">§:String = null;
      
      private var §8$;§:Array;
      
      private var §'#j§:Array;
      
      private var §';§:Boolean;
      
      private var §^#C§:String = null;
      
      private var §#!U§:Array;
      
      private var §]!5§:URLLoader;
      
      protected var §8#>§:§%#'§;
      
      protected var §>!4§:§'0§;
      
      protected var §,!f§:Vector.<§'0§>;
      
      private var §7#n§:String = "pak";
      
      private var §6#b§:Boolean = true;
      
      private var §0_§:int = 1;
      
      public function §9" §(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§+#>§ = new Dictionary();
         this.§+"%§ = new Vector.<String>();
         this.§>"1§ = [];
         this.§8$;§ = [];
         this.§'#j§ = [];
         this.§#!U§ = [];
         this.§,!f§ = new Vector.<§'0§>();
         super();
         this.§6#;§ = param2;
         this.§="V§ = param1;
         this.§6#b§ = param3;
         this.§0_§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §'0§
      {
         return this.§>!4§;
      }
      
      private function §4"9§(param1:String) : Boolean
      {
         var _loc3_:§'0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!f§.length)
         {
            _loc3_ = this.§,!f§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>!4§ = _loc3_;
               this.§3O§ = param1;
               this.§,!f§.splice(_loc2_,1);
               this.§,!f§.unshift(this.§>!4§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §3"%§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§+#>§[param1] != null;
      }
      
      public function §7#'§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§#1§(_loc2_);
            if(!this.§3"%§(_loc3_))
            {
               if(§!#&§.§-#G§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §;"M§(param1:String, param2:Array = null) : void
      {
         if(!param2)
         {
            param2 = [param1];
         }
         else
         {
            param2 = param2.concat();
         }
         var _loc3_:int = param2.length - 1;
         while(_loc3_ >= 0)
         {
            param2[_loc3_] = param2[_loc3_].toLowerCase();
            _loc3_--;
         }
         param1 = param1.toLowerCase();
         if(this.§"$1§())
         {
            if(!this.§;"P§())
            {
               this.§^#C§ = param1;
               this.§#!U§ = param2.concat();
               return;
            }
         }
         this.§3"2§ = param1;
         if(this.§7#'§(param2))
         {
            this.§4"9§(param1);
            if(param1 == this.§3O§ || !this.§6#b§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§1W§(param2);
            }
         }
         else
         {
            this.§#;§(param2);
         }
      }
      
      private function §`9§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §#1§(param1:Object) : String
      {
         var _loc2_:String = null;
         if(param1 is XML)
         {
            _loc2_ = (param1 as XML).@url;
         }
         else
         {
            _loc2_ = String(param1);
         }
         return _loc2_;
      }
      
      private function §7#N§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§'#j§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§#1§(_loc2_);
            if(!this.§3"%§(_loc3_))
            {
               this.§'#j§.push(_loc2_);
            }
         }
      }
      
      private function §#;§(param1:Array) : void
      {
         this.§>"1§ = param1.concat();
         this.§7#N§(param1);
         this.§-_§();
      }
      
      private function §-_§() : Boolean
      {
         if(this.§'#j§.length == 0)
         {
            this.§">§ = null;
            return false;
         }
         var _loc1_:Object = this.§'#j§.pop();
         this.§">§ = this.§#1§(_loc1_);
         var _loc2_:String = "";
         if(this.§6#;§ != null && this.§6#;§.length > 0)
         {
            _loc2_ = "?version=" + this.§6#;§;
         }
         this.§]!5§ = new §0#`§(null,3,50);
         this.§]!5§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]!5§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§]!5§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!-§);
         this.§]!5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!-§);
         var _loc3_:String = this.getFullFilename(this.§">§);
         this.§]!5§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§7#n§;
      }
      
      private function §"$1§() : Boolean
      {
         return this.§]!5§ || this.§';§;
      }
      
      private function §;"P§() : Boolean
      {
         if(this.§]!5§)
         {
            this.§]!5§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§]!5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!-§);
            this.§]!5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!-§);
            try
            {
               this.§]!5§.close();
            }
            catch(e:Error)
            {
            }
            this.§]!5§ = null;
         }
         if(this.§';§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§]!5§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§]!5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!-§);
         this.§]!5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!-§);
         this.§+#>§[this.§">§] = this.§]!5§.data;
         this.§]!5§ = null;
         if(!this.§-_§())
         {
            this.§1W§(this.§>"1§);
         }
      }
      
      private function §2!-§(param1:Event) : void
      {
         this.§]!5§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§]!5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!-§);
         this.§]!5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!-§);
         this.§]!5§.close();
         this.§]!5§ = null;
         this.§3"2§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §%#'§
      {
         return new §%#'§();
      }
      
      protected function §<#[§() : void
      {
         if(this.§8#>§)
         {
            this.§8#>§.dispose();
            this.§8#>§ = null;
         }
      }
      
      private function §1W§(param1:Array) : void
      {
         var _loc2_:§'0§ = null;
         this.§';§ = true;
         while(this.§,!f§.length >= this.§0_§)
         {
            _loc2_ = this.§,!f§.pop();
            _loc2_.dispose();
         }
         this.§<#[§();
         this.§>!4§ = new §'0§(this.§3"2§);
         this.§,!f§.unshift(this.§>!4§);
         this.§8#>§ = this.initPackageLoader();
         this.§8$;§ = param1.concat();
         this.§0j§();
      }
      
      private function §0j§() : Boolean
      {
         if(this.§8$;§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§8$;§.pop();
         var _loc2_:String = this.§#1§(_loc1_);
         this.§8#>§.addEventListener(Event.COMPLETE,this.§=#"§);
         var _loc3_:* = this.§+"%§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§+"%§.push(_loc2_);
         }
         this.§8#>§.§7@§(this.§+#>§[_loc1_],_loc2_,_loc3_,!!this.§`9§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §=#"§(param1:Event) : void
      {
         this.§';§ = false;
         this.§8#>§.removeEventListener(Event.COMPLETE,this.§=#"§);
         if(this.§^#C§)
         {
            this.§;"M§(this.§^#C§,this.§#!U§);
            this.§^#C§ = null;
            this.§#!U§ = null;
            return;
         }
         if(this.§0j§())
         {
            return;
         }
         var _loc2_:int = this.§8#>§.§'$3§.§8"_§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>!4§.§]#`§(this.§8#>§.§'$3§.§?"q§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§&!d§();
         }
         else
         {
            this.§+!X§();
         }
      }
      
      public function §&!d§() : void
      {
         if(this.§"$1§() || this.§8#>§ == null)
         {
            return;
         }
         this.§>!4§.removeEventListener(Event.INIT,this.§4K§);
         if(this.§>!4§.§&!d§())
         {
            this.§+!X§();
         }
         else
         {
            this.§>!4§.addEventListener(Event.INIT,this.§4K§);
         }
      }
      
      private function §+!X§() : void
      {
         this.§<#[§();
         this.§3O§ = this.§3"2§;
         this.§3"2§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §4K§(param1:Event) : void
      {
         this.§+!X§();
      }
   }
}
