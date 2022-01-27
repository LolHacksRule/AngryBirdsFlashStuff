package §!"N§
{
   import §3"$§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;l§ extends EventDispatcher
   {
       
      
      private var § "i§:String = "";
      
      private var §!"7§:String;
      
      private var §?!5§:Dictionary;
      
      private var §9!_§:Vector.<String>;
      
      private var §2H§:String = null;
      
      private var §!!e§:String = null;
      
      private var §6"#§:Array;
      
      private var §8!b§:String = null;
      
      private var § u§:Array;
      
      private var §6"d§:Array;
      
      private var §#!x§:Boolean;
      
      private var §%i§:String = null;
      
      private var §+"=§:Array;
      
      private var §3!Q§:URLLoader;
      
      protected var §!!-§:§>"]§;
      
      protected var §-#7§:§&"0§;
      
      protected var §;F§:Vector.<§&"0§>;
      
      private var §]m§:String = "pak";
      
      private var §^#3§:Boolean = true;
      
      private var §'o§:int = 1;
      
      public function §;l§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§?!5§ = new Dictionary();
         this.§9!_§ = new Vector.<String>();
         this.§6"#§ = [];
         this.§ u§ = [];
         this.§6"d§ = [];
         this.§+"=§ = [];
         this.§;F§ = new Vector.<§&"0§>();
         super();
         this.§ "i§ = param2;
         this.§!"7§ = param1;
         this.§^#3§ = param3;
         this.§'o§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §&"0§
      {
         return this.§-#7§;
      }
      
      private function §^!L§(param1:String) : Boolean
      {
         var _loc3_:§&"0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;F§.length)
         {
            _loc3_ = this.§;F§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§-#7§ = _loc3_;
               this.§2H§ = param1;
               this.§;F§.splice(_loc2_,1);
               this.§;F§.unshift(this.§-#7§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^!y§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§?!5§[param1] != null;
      }
      
      public function §-!4§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§^!y§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §+!6§(param1:String, param2:Array = null) : void
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
         if(this.isLoading())
         {
            if(!this.§0!m§())
            {
               this.§%i§ = param1;
               this.§+"=§ = param2.concat();
               return;
            }
         }
         this.§!!e§ = param1;
         if(this.§-!4§(param2))
         {
            this.§^!L§(param1);
            if(param1 == this.§2H§ || !this.§^#3§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&!_§(param2);
            }
         }
         else
         {
            this.§8=§(param2);
         }
      }
      
      private function §%!+§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§6"d§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§^!y§(_loc2_))
            {
               this.§6"d§.push(_loc2_);
            }
         }
      }
      
      private function §8=§(param1:Array) : void
      {
         this.§6"#§ = param1.concat();
         this.§%!+§(param1);
         this.§,<§();
      }
      
      private function §,<§() : Boolean
      {
         if(this.§6"d§.length == 0)
         {
            this.§8!b§ = null;
            return false;
         }
         this.§8!b§ = this.§6"d§.pop();
         var _loc1_:String = "";
         if(this.§ "i§ != null && this.§ "i§.length > 0)
         {
            _loc1_ = "?version=" + this.§ "i§;
         }
         this.§3!Q§ = new URLLoader();
         this.§3!Q§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§3!Q§.addEventListener(Event.COMPLETE,this.§!^§);
         this.§3!Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§;"j§);
         this.§3!Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;"j§);
         var _loc2_:String = this.§3!5§(this.§8!b§);
         this.§3!Q§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §3!5§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§]m§;
      }
      
      private function isLoading() : Boolean
      {
         return this.§3!Q§ || this.§#!x§;
      }
      
      private function §0!m§() : Boolean
      {
         if(this.§3!Q§)
         {
            this.§3!Q§.removeEventListener(Event.COMPLETE,this.§!^§);
            this.§3!Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;"j§);
            this.§3!Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;"j§);
            try
            {
               this.§3!Q§.close();
            }
            catch(e:Error)
            {
            }
            this.§3!Q§ = null;
         }
         if(this.§#!x§)
         {
            return false;
         }
         return true;
      }
      
      private function §!^§(param1:Event) : void
      {
         this.§3!Q§.removeEventListener(Event.COMPLETE,this.§!^§);
         this.§3!Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;"j§);
         this.§3!Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;"j§);
         this.§?!5§[this.§8!b§] = this.§3!Q§.data;
         this.§3!Q§ = null;
         if(!this.§,<§())
         {
            this.§&!_§(this.§6"#§);
         }
      }
      
      private function §;"j§(param1:Event) : void
      {
         this.§3!Q§.removeEventListener(Event.COMPLETE,this.§!^§);
         this.§3!Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;"j§);
         this.§3!Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;"j§);
         this.§3!Q§.close();
         this.§3!Q§ = null;
         this.§!!e§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §>"]§
      {
         return new §>"]§();
      }
      
      private function §&!_§(param1:Array) : void
      {
         var _loc2_:§&"0§ = null;
         this.§#!x§ = true;
         while(this.§;F§.length >= this.§'o§)
         {
            _loc2_ = this.§;F§.pop();
            _loc2_.dispose();
         }
         if(this.§!!-§)
         {
            this.§!!-§.dispose();
         }
         this.§-#7§ = new §&"0§(this.§!!e§);
         this.§;F§.unshift(this.§-#7§);
         this.§!!-§ = this.initPackageLoader();
         this.§ u§ = param1.concat();
         this.§;! §();
      }
      
      private function §;! §() : Boolean
      {
         if(this.§ u§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§ u§.pop();
         this.§!!-§.addEventListener(Event.COMPLETE,this.§^"W§);
         var _loc2_:* = this.§9!_§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§9!_§.push(_loc1_);
         }
         this.§!!-§.§#"a§(this.§?!5§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §^"W§(param1:Event) : void
      {
         this.§#!x§ = false;
         this.§!!-§.removeEventListener(Event.COMPLETE,this.§^"W§);
         if(this.§%i§)
         {
            this.§+!6§(this.§%i§,this.§+"=§);
            this.§%i§ = null;
            this.§+"=§ = null;
            return;
         }
         if(this.§;! §())
         {
            return;
         }
         var _loc2_:int = this.§!!-§.§7"k§.§6§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-#7§.§>!j§(this.§!!-§.§7"k§.§2!E§(_loc3_),0);
            _loc3_++;
         }
         this.initializeTextures();
      }
      
      public function initializeTextures() : void
      {
         if(this.isLoading() || this.§!!-§ == null)
         {
            return;
         }
         this.§-#7§.removeEventListener(Event.INIT,this.§#"8§);
         if(this.§-#7§.initializeTextures())
         {
            this.§^!v§();
         }
         else
         {
            this.§-#7§.addEventListener(Event.INIT,this.§#"8§);
         }
      }
      
      private function §^!v§() : void
      {
         this.§!!-§.dispose();
         this.§!!-§ = null;
         this.§2H§ = this.§!!e§;
         this.§!!e§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §#"8§(param1:Event) : void
      {
         this.§^!v§();
      }
   }
}
