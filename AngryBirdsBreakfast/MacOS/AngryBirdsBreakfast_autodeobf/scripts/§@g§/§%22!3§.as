package §@g§
{
   import § ! §.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §"!3§ extends EventDispatcher
   {
       
      
      private var §]!V§:String = "";
      
      private var §`!!§:String;
      
      private var §^>§:Dictionary;
      
      private var § ",§:Vector.<String>;
      
      private var § #§:String = null;
      
      private var §99§:String = null;
      
      private var §-&§:Array;
      
      private var §]_§:String = null;
      
      private var override:Array;
      
      private var §"!M§:Array;
      
      private var §0!b§:Boolean;
      
      private var §-!B§:String = null;
      
      private var §for §:Array;
      
      private var §=B§:URLLoader;
      
      protected var §="$§:§#!r§;
      
      protected var §`8§:§5!x§;
      
      protected var §^1§:Vector.<§5!x§>;
      
      private var §^"'§:String = "pak";
      
      private var §7!-§:Boolean = true;
      
      private var §+!8§:int = 1;
      
      public function §"!3§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§^>§ = new Dictionary();
         this.§ ",§ = new Vector.<String>();
         this.§-&§ = [];
         this.override = [];
         this.§"!M§ = [];
         this.§for § = [];
         this.§^1§ = new Vector.<§5!x§>();
         super();
         this.§]!V§ = param2;
         this.§`!!§ = param1;
         this.§7!-§ = param3;
         this.§+!8§ = Math.max(1,param4);
      }
      
      public function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      private function §#!F§(param1:String) : Boolean
      {
         var _loc3_:§5!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^1§.length)
         {
            _loc3_ = this.§^1§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§`8§ = _loc3_;
               this.§ #§ = param1;
               this.§^1§.splice(_loc2_,1);
               this.§^1§.unshift(this.§`8§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&E§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§^>§[param1] != null;
      }
      
      public function § P§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§&E§(_loc2_))
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
         if(this.§`>§())
         {
            if(!this.§^!u§())
            {
               this.§-!B§ = param1;
               this.§for § = param2.concat();
               return;
            }
         }
         this.§99§ = param1;
         if(this.§ P§(param2))
         {
            this.§#!F§(param1);
            if(param1 == this.§ #§ || !this.§7!-§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§8!t§(param2);
            }
         }
         else
         {
            this.§=!M§(param2);
         }
      }
      
      private function §<J§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§"!M§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§&E§(_loc2_))
            {
               this.§"!M§.push(_loc2_);
            }
         }
      }
      
      private function §=!M§(param1:Array) : void
      {
         this.§-&§ = param1.concat();
         this.§<J§(param1);
         this.§do §();
      }
      
      private function §do §() : Boolean
      {
         if(this.§"!M§.length == 0)
         {
            this.§]_§ = null;
            return false;
         }
         this.§]_§ = this.§"!M§.pop();
         var _loc1_:String = "";
         if(this.§]!V§ != null && this.§]!V§.length > 0)
         {
            _loc1_ = "?version=" + this.§]!V§;
         }
         this.§=B§ = new URLLoader();
         this.§=B§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§=B§.addEventListener(Event.COMPLETE,this.§2-§);
         this.§=B§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
         this.§=B§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
         var _loc2_:String = this.§>!g§(this.§]_§);
         this.§=B§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §>!g§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§^"'§;
      }
      
      private function §`>§() : Boolean
      {
         return this.§=B§ || this.§0!b§;
      }
      
      private function §^!u§() : Boolean
      {
         if(this.§=B§)
         {
            this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
            this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
            this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
            try
            {
               this.§=B§.close();
            }
            catch(e:Error)
            {
            }
            this.§=B§ = null;
         }
         if(this.§0!b§)
         {
            return false;
         }
         return true;
      }
      
      private function §2-§(param1:Event) : void
      {
         this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
         this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
         this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
         this.§^>§[this.§]_§] = this.§=B§.data;
         this.§=B§ = null;
         if(!this.§do §())
         {
            this.§8!t§(this.§-&§);
         }
      }
      
      private function §9!8§(param1:Event) : void
      {
         this.§=B§.removeEventListener(Event.COMPLETE,this.§2-§);
         this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!8§);
         this.§=B§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!8§);
         this.§=B§.close();
         this.§=B§ = null;
         this.§99§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §#!r§
      {
         return new §#!r§();
      }
      
      private function §8!t§(param1:Array) : void
      {
         var _loc2_:§5!x§ = null;
         this.§0!b§ = true;
         while(this.§^1§.length >= this.§+!8§)
         {
            _loc2_ = this.§^1§.pop();
            _loc2_.dispose();
         }
         if(this.§="$§)
         {
            this.§="$§.dispose();
         }
         this.§`8§ = new §5!x§(this.§99§);
         this.§^1§.unshift(this.§`8§);
         this.§="$§ = this.initPackageLoader();
         this.override = param1.concat();
         this.§ "§();
      }
      
      private function § "§() : Boolean
      {
         if(this.override.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.override.pop();
         this.§="$§.addEventListener(Event.COMPLETE,this.§%!q§);
         var _loc2_:* = this.§ ",§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§ ",§.push(_loc1_);
         }
         this.§="$§.§;!h§(this.§^>§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §%!q§(param1:Event) : void
      {
         this.§0!b§ = false;
         this.§="$§.removeEventListener(Event.COMPLETE,this.§%!q§);
         if(this.§-!B§)
         {
            this.loadContent(this.§-!B§,this.§for §);
            this.§-!B§ = null;
            this.§for § = null;
            return;
         }
         if(this.§ "§())
         {
            return;
         }
         var _loc2_:int = this.§="$§.§-!-§.§]!M§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`8§.§5!"§(this.§="$§.§-!-§.§-!d§(_loc3_),0);
            _loc3_++;
         }
         this.§0"&§();
      }
      
      public function §0"&§() : void
      {
         if(this.§`>§() || this.§="$§ == null)
         {
            return;
         }
         this.§`8§.removeEventListener(Event.INIT,this.§;T§);
         if(this.§`8§.§0"&§())
         {
            this.§%!P§();
         }
         else
         {
            this.§`8§.addEventListener(Event.INIT,this.§;T§);
         }
      }
      
      private function §%!P§() : void
      {
         this.§="$§.dispose();
         this.§="$§ = null;
         this.§ #§ = this.§99§;
         this.§99§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §;T§(param1:Event) : void
      {
         this.§%!P§();
      }
   }
}
