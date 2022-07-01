package §"!w§
{
   import §2`§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&>§ extends EventDispatcher
   {
       
      
      private var §?k§:String = "";
      
      private var §6,§:String;
      
      private var §1n§:Dictionary;
      
      private var §""+§:Vector.<String>;
      
      private var §+!T§:String = null;
      
      private var §8z§:String = null;
      
      private var § X§:Array;
      
      private var §2%§:String = null;
      
      private var §6&§:Array;
      
      private var §=u§:Array;
      
      private var § "'§:Boolean;
      
      private var §%!i§:String = null;
      
      private var §#s§:Array;
      
      private var §]o§:URLLoader;
      
      protected var §!!&§:§[,§;
      
      protected var §,%§:§%!!§;
      
      protected var §`q§:Vector.<§%!!§>;
      
      private var §#!-§:String = "pak";
      
      private var §6P§:Boolean = true;
      
      private var §^?§:int = 1;
      
      public function §&>§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§1n§ = new Dictionary();
         this.§""+§ = new Vector.<String>();
         this.§ X§ = [];
         this.§6&§ = [];
         this.§=u§ = [];
         this.§#s§ = [];
         this.§`q§ = new Vector.<§%!!§>();
         super();
         this.§?k§ = param2;
         this.§6,§ = param1;
         this.§6P§ = param3;
         this.§^?§ = Math.max(1,param4);
      }
      
      public function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      private function §^!a§(param1:String) : Boolean
      {
         var _loc3_:§%!!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`q§.length)
         {
            _loc3_ = this.§`q§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§,%§ = _loc3_;
               this.§+!T§ = param1;
               this.§`q§.splice(_loc2_,1);
               this.§`q§.unshift(this.§,%§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §1!-§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§1n§[param1] != null;
      }
      
      public function §@!4§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§1!-§(_loc2_))
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
         if(this.§7!h§())
         {
            if(!this.§<![§())
            {
               this.§%!i§ = param1;
               this.§#s§ = param2.concat();
               return;
            }
         }
         this.§8z§ = param1;
         if(this.§@!4§(param2))
         {
            this.§^!a§(param1);
            if(param1 == this.§+!T§ || !this.§6P§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§"K§(param2);
            }
         }
         else
         {
            this.§&!P§(param2);
         }
      }
      
      private function §8R§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§=u§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§1!-§(_loc2_))
            {
               this.§=u§.push(_loc2_);
            }
         }
      }
      
      private function §&!P§(param1:Array) : void
      {
         this.§ X§ = param1.concat();
         this.§8R§(param1);
         this.§8q§();
      }
      
      private function §8q§() : Boolean
      {
         if(this.§=u§.length == 0)
         {
            this.§2%§ = null;
            return false;
         }
         this.§2%§ = this.§=u§.pop();
         var _loc1_:String = "";
         if(this.§?k§ != null && this.§?k§.length > 0)
         {
            _loc1_ = "?version=" + this.§?k§;
         }
         this.§]o§ = new URLLoader();
         this.§]o§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§]o§.addEventListener(Event.COMPLETE,this.§null §);
         this.§]o§.addEventListener(IOErrorEvent.IO_ERROR,this.§%!H§);
         this.§]o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!H§);
         var _loc2_:String = this.§44§(this.§2%§);
         this.§]o§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §44§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§#!-§;
      }
      
      private function §7!h§() : Boolean
      {
         return this.§]o§ || this.§ "'§;
      }
      
      private function §<![§() : Boolean
      {
         if(this.§]o§)
         {
            this.§]o§.removeEventListener(Event.COMPLETE,this.§null §);
            this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%!H§);
            this.§]o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!H§);
            try
            {
               this.§]o§.close();
            }
            catch(e:Error)
            {
            }
            this.§]o§ = null;
         }
         if(this.§ "'§)
         {
            return false;
         }
         return true;
      }
      
      private function §null §(param1:Event) : void
      {
         this.§]o§.removeEventListener(Event.COMPLETE,this.§null §);
         this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%!H§);
         this.§]o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!H§);
         this.§1n§[this.§2%§] = this.§]o§.data;
         this.§]o§ = null;
         if(!this.§8q§())
         {
            this.§"K§(this.§ X§);
         }
      }
      
      private function §%!H§(param1:Event) : void
      {
         this.§]o§.removeEventListener(Event.COMPLETE,this.§null §);
         this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%!H§);
         this.§]o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!H§);
         this.§]o§.close();
         this.§]o§ = null;
         this.§8z§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §[,§
      {
         return new §[,§();
      }
      
      private function §"K§(param1:Array) : void
      {
         var _loc2_:§%!!§ = null;
         this.§ "'§ = true;
         while(this.§`q§.length >= this.§^?§)
         {
            _loc2_ = this.§`q§.pop();
            _loc2_.dispose();
         }
         if(this.§!!&§)
         {
            this.§!!&§.dispose();
         }
         this.§,%§ = new §%!!§(this.§8z§);
         this.§`q§.unshift(this.§,%§);
         this.§!!&§ = this.initPackageLoader();
         this.§6&§ = param1.concat();
         this.§?"'§();
      }
      
      private function §?"'§() : Boolean
      {
         if(this.§6&§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§6&§.pop();
         this.§!!&§.addEventListener(Event.COMPLETE,this.§[!B§);
         var _loc2_:* = this.§""+§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§""+§.push(_loc1_);
         }
         this.§!!&§.§,!L§(this.§1n§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §[!B§(param1:Event) : void
      {
         this.§ "'§ = false;
         this.§!!&§.removeEventListener(Event.COMPLETE,this.§[!B§);
         if(this.§%!i§)
         {
            this.loadContent(this.§%!i§,this.§#s§);
            this.§%!i§ = null;
            this.§#s§ = null;
            return;
         }
         if(this.§?"'§())
         {
            return;
         }
         var _loc2_:int = this.§!!&§.§"1§.§8!h§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§,%§.§^!0§(this.§!!&§.§"1§.§!!-§(_loc3_),0);
            _loc3_++;
         }
         this.§,!X§();
      }
      
      public function §,!X§() : void
      {
         if(this.§7!h§() || this.§!!&§ == null)
         {
            return;
         }
         this.§,%§.removeEventListener(Event.INIT,this.§<!6§);
         if(this.§,%§.§,!X§())
         {
            this.§9!j§();
         }
         else
         {
            this.§,%§.addEventListener(Event.INIT,this.§<!6§);
         }
      }
      
      private function §9!j§() : void
      {
         this.§!!&§.dispose();
         this.§!!&§ = null;
         this.§+!T§ = this.§8z§;
         this.§8z§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §<!6§(param1:Event) : void
      {
         this.§9!j§();
      }
   }
}
