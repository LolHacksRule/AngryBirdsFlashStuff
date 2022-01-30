package §6_§
{
   import §'<§.§=!o§;
   import §[j§.§8&§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §=!"§ extends EventDispatcher
   {
       
      
      private var §>!w§:String = "";
      
      protected var § ""§:String;
      
      private var §^!m§:Dictionary;
      
      private var §<!4§:Vector.<String>;
      
      private var §=m§:String = null;
      
      private var §+!2§:String = null;
      
      private var §7!m§:Array;
      
      private var §&!L§:String = null;
      
      private var §;"&§:Array;
      
      private var §4>§:Array;
      
      private var §?!2§:Boolean;
      
      private var §0T§:String = null;
      
      private var §=q§:Array;
      
      private var §`>§:URLLoader;
      
      protected var §'!"§:§8&§;
      
      protected var §'+§:§,!>§;
      
      protected var §+o§:§=!o§;
      
      protected var §'!n§:Vector.<§,!>§>;
      
      protected var §1!p§:String = "pak";
      
      private var §3!-§:Boolean = true;
      
      private var §?!0§:int = 1;
      
      public function §=!"§(param1:String, param2:String, param3:§=!o§, param4:Boolean = true, param5:int = 1)
      {
         this.§^!m§ = new Dictionary();
         this.§<!4§ = new Vector.<String>();
         this.§7!m§ = [];
         this.§;"&§ = [];
         this.§4>§ = [];
         this.§=q§ = [];
         this.§'!n§ = new Vector.<§,!>§>();
         super();
         this.§>!w§ = param2;
         this.§ ""§ = param1;
         this.§+o§ = param3;
         this.§3!-§ = param4;
         this.§?!0§ = Math.max(1,param5);
      }
      
      public function get §`!`§() : §,!>§
      {
         return this.§'+§;
      }
      
      private function §4"%§(param1:String) : Boolean
      {
         var _loc3_:§,!>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!n§.length)
         {
            _loc3_ = this.§'!n§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§'+§ = _loc3_;
               this.§=m§ = param1;
               this.§'!n§.splice(_loc2_,1);
               this.§'!n§.unshift(this.§'+§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §7!b§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§^!m§[param1] != null;
      }
      
      public function §<!6§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§7!b§(_loc2_))
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
         if(this.§<!c§())
         {
            if(!this.§6!'§())
            {
               this.§0T§ = param1;
               this.§=q§ = param2.concat();
               return;
            }
         }
         this.§+!2§ = param1;
         if(this.§<!6§(param2))
         {
            this.§4"%§(param1);
            if(param1 == this.§=m§ || !this.§3!-§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§'R§(param2);
            }
         }
         else
         {
            this.§ ^§(param2);
         }
      }
      
      private function §6!j§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§4>§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§7!b§(_loc2_))
            {
               this.§4>§.push(_loc2_);
            }
         }
      }
      
      private function § ^§(param1:Array) : void
      {
         this.§7!m§ = param1.concat();
         this.§6!j§(param1);
         this.§16§();
      }
      
      private function §16§() : Boolean
      {
         if(this.§4>§.length == 0)
         {
            this.§&!L§ = null;
            return false;
         }
         this.§&!L§ = this.§4>§.pop();
         var _loc1_:String = "";
         if(this.§>!w§ != null && this.§>!w§.length > 0)
         {
            _loc1_ = "?version=" + this.§>!w§;
         }
         this.§`>§ = new URLLoader();
         this.§`>§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§`>§.addEventListener(Event.COMPLETE,this.§1p§);
         this.§`>§.addEventListener(IOErrorEvent.IO_ERROR,this.§>!-§);
         this.§`>§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!-§);
         var _loc2_:String = this.§0!§(this.§&!L§);
         this.§`>§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §0!§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§1!p§;
      }
      
      private function §<!c§() : Boolean
      {
         return this.§`>§ || this.§?!2§;
      }
      
      private function §6!'§() : Boolean
      {
         if(this.§`>§)
         {
            this.§`>§.removeEventListener(Event.COMPLETE,this.§1p§);
            this.§`>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!-§);
            this.§`>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!-§);
            try
            {
               this.§`>§.close();
            }
            catch(e:Error)
            {
            }
            this.§`>§ = null;
         }
         if(this.§?!2§)
         {
            return false;
         }
         return true;
      }
      
      private function §1p§(param1:Event) : void
      {
         this.§`>§.removeEventListener(Event.COMPLETE,this.§1p§);
         this.§`>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!-§);
         this.§`>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!-§);
         this.§^!m§[this.§&!L§] = this.§`>§.data;
         this.§`>§ = null;
         if(!this.§16§())
         {
            this.§'R§(this.§7!m§);
         }
      }
      
      private function §>!-§(param1:Event) : void
      {
         this.§`>§.removeEventListener(Event.COMPLETE,this.§1p§);
         this.§`>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!-§);
         this.§`>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>!-§);
         this.§`>§.close();
         this.§`>§ = null;
         this.§+!2§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function §;!Q§() : §8&§
      {
         return new §8&§(this.§+o§);
      }
      
      private function §'R§(param1:Array) : void
      {
         var _loc2_:§,!>§ = null;
         this.§?!2§ = true;
         while(this.§'!n§.length >= this.§?!0§)
         {
            _loc2_ = this.§'!n§.pop();
            _loc2_.dispose();
         }
         if(this.§'!"§)
         {
            this.§'!"§.dispose();
         }
         this.§'+§ = new §,!>§(this.§+!2§);
         this.§'!n§.unshift(this.§'+§);
         this.§'!"§ = this.§;!Q§();
         this.§;"&§ = param1.concat();
         this.§8f§();
      }
      
      private function §8f§() : Boolean
      {
         if(this.§;"&§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§;"&§.pop();
         this.§'!"§.addEventListener(Event.COMPLETE,this.§-D§);
         var _loc2_:* = this.§<!4§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§<!4§.push(_loc1_);
         }
         this.§'!"§.§=!=§(this.§^!m§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §-D§(param1:Event) : void
      {
         this.§?!2§ = false;
         this.§'!"§.removeEventListener(Event.COMPLETE,this.§-D§);
         if(this.§0T§)
         {
            this.loadContent(this.§0T§,this.§=q§);
            this.§0T§ = null;
            this.§=q§ = null;
            return;
         }
         if(this.§8f§())
         {
            return;
         }
         var _loc2_:int = this.§'!"§.§7!u§.§+"§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§'+§.§0A§(this.§'!"§.§7!u§.§>4§(_loc3_),0);
            _loc3_++;
         }
         this.§`c§();
      }
      
      public function §`c§() : void
      {
         if(this.§<!c§() || this.§'!"§ == null)
         {
            return;
         }
         this.§'+§.removeEventListener(Event.INIT,this.§%!#§);
         if(this.§'+§.§`c§())
         {
            this.§=j§();
         }
         else
         {
            this.§'+§.addEventListener(Event.INIT,this.§%!#§);
         }
      }
      
      private function §=j§() : void
      {
         this.§'!"§.dispose();
         this.§'!"§ = null;
         this.§=m§ = this.§+!2§;
         this.§+!2§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §%!#§(param1:Event) : void
      {
         this.§=j§();
      }
   }
}
