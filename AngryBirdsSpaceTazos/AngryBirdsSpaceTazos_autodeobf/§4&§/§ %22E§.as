package §4&§
{
   import §!?§.§@"C§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § "E§ extends EventDispatcher
   {
       
      
      private var §6"7§:String = "";
      
      private var §+" §:String;
      
      private var §-q§:Dictionary;
      
      private var §+!<§:Vector.<String>;
      
      private var §&!I§:String = null;
      
      private var §5b§:String = null;
      
      private var §1G§:Array;
      
      private var §-"+§:String = null;
      
      private var §2%§:Array;
      
      private var §5P§:Array;
      
      private var §#1§:Boolean;
      
      private var §;!v§:String = null;
      
      private var §@"9§:Array;
      
      private var §6!Y§:URLLoader;
      
      protected var §^?§:§@"C§;
      
      protected var §7!T§:§,C§;
      
      protected var §6u§:§9"!§;
      
      protected var §'Q§:Vector.<§,C§>;
      
      private var §!k§:String = "pak";
      
      private var §?$§:Boolean = true;
      
      private var §3!e§:int = 1;
      
      public function § "E§(param1:String, param2:String, param3:§9"!§, param4:Boolean = true, param5:int = 1)
      {
         this.§-q§ = new Dictionary();
         this.§+!<§ = new Vector.<String>();
         this.§1G§ = [];
         this.§2%§ = [];
         this.§5P§ = [];
         this.§@"9§ = [];
         this.§'Q§ = new Vector.<§,C§>();
         super();
         this.§6"7§ = param2;
         this.§+" § = param1;
         this.§6u§ = param3;
         this.§?$§ = param4;
         this.§3!e§ = Math.max(1,param5);
      }
      
      public function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      private function § !A§(param1:String) : Boolean
      {
         var _loc3_:§,C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'Q§.length)
         {
            _loc3_ = this.§'Q§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§7!T§ = _loc3_;
               this.§&!I§ = param1;
               this.§'Q§.splice(_loc2_,1);
               this.§'Q§.unshift(this.§7!T§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2!5§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§-q§[param1] != null;
      }
      
      public function §<n§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§2!5§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §@t§(param1:String, param2:Array = null) : void
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
         if(this.§8";§())
         {
            if(!this.§2!U§())
            {
               this.§;!v§ = param1;
               this.§@"9§ = param2.concat();
               return;
            }
         }
         this.§5b§ = param1;
         if(this.§<n§(param2))
         {
            this.§ !A§(param1);
            if(param1 == this.§&!I§ || !this.§?$§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§[!S§(param2);
            }
         }
         else
         {
            this.§[m§(param2);
         }
      }
      
      private function §2"4§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§5P§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§2!5§(_loc2_))
            {
               this.§5P§.push(_loc2_);
            }
         }
      }
      
      private function §[m§(param1:Array) : void
      {
         this.§1G§ = param1.concat();
         this.§2"4§(param1);
         this.§+Y§();
      }
      
      private function §+Y§() : Boolean
      {
         if(this.§5P§.length == 0)
         {
            this.§-"+§ = null;
            return false;
         }
         this.§-"+§ = this.§5P§.pop();
         var _loc1_:String = "";
         if(this.§6"7§ != null && this.§6"7§.length > 0)
         {
            _loc1_ = "?version=" + this.§6"7§;
         }
         this.§6!Y§ = new URLLoader();
         this.§6!Y§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§6!Y§.addEventListener(Event.COMPLETE,this.§;"?§);
         this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
         this.§6!Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
         this.§6!Y§.load(new URLRequest(this.§+" § + "packages/" + this.§-"+§ + "." + this.§!k§ + _loc1_));
         return true;
      }
      
      private function §8";§() : Boolean
      {
         return this.§6!Y§ || this.§#1§;
      }
      
      private function §2!U§() : Boolean
      {
         if(this.§6!Y§)
         {
            this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
            this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
            this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
            try
            {
               this.§6!Y§.close();
            }
            catch(e:Error)
            {
            }
            this.§6!Y§ = null;
         }
         if(this.§#1§)
         {
            return false;
         }
         return true;
      }
      
      private function §;"?§(param1:Event) : void
      {
         this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
         this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
         this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
         this.§-q§[this.§-"+§] = this.§6!Y§.data;
         this.§6!Y§ = null;
         if(!this.§+Y§())
         {
            this.§[!S§(this.§1G§);
         }
      }
      
      private function §<h§(param1:Event) : void
      {
         this.§6!Y§.removeEventListener(Event.COMPLETE,this.§;"?§);
         this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<h§);
         this.§6!Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<h§);
         this.§6!Y§.close();
         this.§6!Y§ = null;
         this.§5b§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageManager() : §@"C§
      {
         return new §@"C§(this.§6u§);
      }
      
      private function §[!S§(param1:Array) : void
      {
         var _loc2_:§,C§ = null;
         this.§#1§ = true;
         while(this.§'Q§.length >= this.§3!e§)
         {
            _loc2_ = this.§'Q§.pop();
            _loc2_.dispose();
         }
         if(this.§^?§)
         {
            this.§^?§.dispose();
         }
         this.§7!T§ = new §,C§(this.§5b§);
         this.§'Q§.unshift(this.§7!T§);
         this.§^?§ = this.initPackageManager();
         this.§2%§ = param1.concat();
         this.§;%§();
      }
      
      private function §;%§() : Boolean
      {
         if(this.§2%§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§2%§.pop();
         this.§^?§.addEventListener(Event.COMPLETE,this.§>!l§);
         var _loc2_:* = this.§+!<§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§+!<§.push(_loc1_);
         }
         this.§^?§.§?C§(this.§-q§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §>!l§(param1:Event) : void
      {
         this.§#1§ = false;
         this.§^?§.removeEventListener(Event.COMPLETE,this.§>!l§);
         if(this.§;!v§)
         {
            this.§@t§(this.§;!v§,this.§@"9§);
            this.§;!v§ = null;
            this.§@"9§ = null;
            return;
         }
         if(this.§;%§())
         {
            return;
         }
         var _loc2_:int = this.§^?§.§-" §.§4T§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§7!T§.§?";§(this.§^?§.§-" §.§5!v§(_loc3_),0);
            _loc3_++;
         }
         this.§;!j§();
      }
      
      public function §;!j§() : void
      {
         if(this.§8";§() || this.§^?§ == null)
         {
            return;
         }
         if(this.§7!T§.§;!j§())
         {
            this.§^?§.dispose();
            this.§^?§ = null;
            this.§&!I§ = this.§5b§;
            this.§5b§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
