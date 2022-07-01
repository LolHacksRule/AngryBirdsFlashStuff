package §5h§
{
   import §6`§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §8!A§ extends EventDispatcher
   {
       
      
      private var §>X§:String = "";
      
      private var §["0§:String;
      
      private var §""+§:Dictionary;
      
      private var §&!$§:Vector.<String>;
      
      private var §[""§:String = null;
      
      private var §4!p§:String = null;
      
      private var § s§:Array;
      
      private var §#"1§:String = null;
      
      private var §;V§:Array;
      
      private var §4!;§:Array;
      
      private var §'k§:Boolean;
      
      private var §'!v§:String = null;
      
      private var §'i§:Array;
      
      private var §9!P§:URLLoader;
      
      protected var §"!,§:§[!;§;
      
      protected var §1!5§:§2a§;
      
      protected var §;#§:Vector.<§2a§>;
      
      private var §2E§:String = "pak";
      
      private var §<!X§:Boolean = true;
      
      private var §9!6§:int = 1;
      
      public function §8!A§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§""+§ = new Dictionary();
         this.§&!$§ = new Vector.<String>();
         this.§ s§ = [];
         this.§;V§ = [];
         this.§4!;§ = [];
         this.§'i§ = [];
         this.§;#§ = new Vector.<§2a§>();
         super();
         this.§>X§ = param2;
         this.§["0§ = param1;
         this.§<!X§ = param3;
         this.§9!6§ = Math.max(1,param4);
      }
      
      public function get § X§() : §2a§
      {
         return this.§1!5§;
      }
      
      private function §1" §(param1:String) : Boolean
      {
         var _loc3_:§2a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;#§.length)
         {
            _loc3_ = this.§;#§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§1!5§ = _loc3_;
               this.§[""§ = param1;
               this.§;#§.splice(_loc2_,1);
               this.§;#§.unshift(this.§1!5§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §!h§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§""+§[param1] != null;
      }
      
      public function §]!h§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§!h§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function loadContent(param1:String, param2:Array = null) : void
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
         if(this.§2T§())
         {
            if(!this.§8!8§())
            {
               this.§'!v§ = param1;
               this.§'i§ = param2.concat();
               return;
            }
         }
         this.§4!p§ = param1;
         if(this.§]!h§(param2))
         {
            this.§1" §(param1);
            if(param1 == this.§[""§ || !this.§<!X§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§@H§(param2);
            }
         }
         else
         {
            this.§@!j§(param2);
         }
      }
      
      private function § !w§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§4!;§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§!h§(_loc2_))
            {
               this.§4!;§.push(_loc2_);
            }
         }
      }
      
      private function §@!j§(param1:Array) : void
      {
         this.§ s§ = param1.concat();
         this.§ !w§(param1);
         this.§?!A§();
      }
      
      private function §?!A§() : Boolean
      {
         if(this.§4!;§.length == 0)
         {
            this.§#"1§ = null;
            return false;
         }
         this.§#"1§ = this.§4!;§.pop();
         var _loc1_:String = "";
         if(this.§>X§ != null && this.§>X§.length > 0)
         {
            _loc1_ = "?version=" + this.§>X§;
         }
         this.§9!P§ = new URLLoader();
         this.§9!P§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§9!P§.addEventListener(Event.COMPLETE,this.§6F§);
         this.§9!P§.addEventListener(IOErrorEvent.IO_ERROR,this.§7!L§);
         this.§9!P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!L§);
         var _loc2_:String = this.§5!;§(this.§#"1§);
         this.§9!P§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §5!;§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§2E§;
      }
      
      private function §2T§() : Boolean
      {
         return this.§9!P§ || this.§'k§;
      }
      
      private function §8!8§() : Boolean
      {
         if(this.§9!P§)
         {
            this.§9!P§.removeEventListener(Event.COMPLETE,this.§6F§);
            this.§9!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!L§);
            this.§9!P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!L§);
            try
            {
               this.§9!P§.close();
            }
            catch(e:Error)
            {
            }
            this.§9!P§ = null;
         }
         if(this.§'k§)
         {
            return false;
         }
         return true;
      }
      
      private function §6F§(param1:Event) : void
      {
         this.§9!P§.removeEventListener(Event.COMPLETE,this.§6F§);
         this.§9!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!L§);
         this.§9!P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!L§);
         this.§""+§[this.§#"1§] = this.§9!P§.data;
         this.§9!P§ = null;
         if(!this.§?!A§())
         {
            this.§@H§(this.§ s§);
         }
      }
      
      private function §7!L§(param1:Event) : void
      {
         this.§9!P§.removeEventListener(Event.COMPLETE,this.§6F§);
         this.§9!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!L§);
         this.§9!P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!L§);
         this.§9!P§.close();
         this.§9!P§ = null;
         this.§4!p§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §[!;§
      {
         return new §[!;§();
      }
      
      private function §@H§(param1:Array) : void
      {
         var _loc2_:§2a§ = null;
         this.§'k§ = true;
         while(this.§;#§.length >= this.§9!6§)
         {
            _loc2_ = this.§;#§.pop();
            _loc2_.dispose();
         }
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
         }
         this.§1!5§ = new §2a§(this.§4!p§);
         this.§;#§.unshift(this.§1!5§);
         this.§"!,§ = this.initPackageLoader();
         this.§;V§ = param1.concat();
         this.§"!D§();
      }
      
      private function §"!D§() : Boolean
      {
         if(this.§;V§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§;V§.pop();
         this.§"!,§.addEventListener(Event.COMPLETE,this.§6!K§);
         var _loc2_:* = this.§&!$§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§&!$§.push(_loc1_);
         }
         this.§"!,§.§+!8§(this.§""+§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §6!K§(param1:Event) : void
      {
         this.§'k§ = false;
         this.§"!,§.removeEventListener(Event.COMPLETE,this.§6!K§);
         if(this.§'!v§)
         {
            this.loadContent(this.§'!v§,this.§'i§);
            this.§'!v§ = null;
            this.§'i§ = null;
            return;
         }
         if(this.§"!D§())
         {
            return;
         }
         var _loc2_:int = this.§"!,§.§3V§.§;-§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§1!5§.§0!6§(this.§"!,§.§3V§.§%3§(_loc3_),0);
            _loc3_++;
         }
         this.§,!'§();
      }
      
      public function §,!'§() : void
      {
         if(this.§2T§() || this.§"!,§ == null)
         {
            return;
         }
         this.§1!5§.removeEventListener(Event.INIT,this.§"!"§);
         if(this.§1!5§.§,!'§())
         {
            this.§5"!§();
         }
         else
         {
            this.§1!5§.addEventListener(Event.INIT,this.§"!"§);
         }
      }
      
      private function §5"!§() : void
      {
         this.§"!,§.dispose();
         this.§"!,§ = null;
         this.§[""§ = this.§4!p§;
         this.§4!p§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §"!"§(param1:Event) : void
      {
         this.§5"!§();
      }
   }
}
