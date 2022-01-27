package §@[§
{
   import §!!k§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § !0§ extends EventDispatcher
   {
       
      
      private var §^g§:String = "";
      
      private var §@`§:String;
      
      private var §7#7§:Dictionary;
      
      private var §9"p§:Vector.<String>;
      
      private var §[B§:String = null;
      
      private var §5"c§:String = null;
      
      private var § !J§:Array;
      
      private var §%"t§:String = null;
      
      private var §?"'§:Array;
      
      private var §!"4§:Array;
      
      private var §]!]§:Boolean;
      
      private var §2#7§:String = null;
      
      private var §0#%§:Array;
      
      private var §3$§:URLLoader;
      
      protected var §2"z§:§<!+§;
      
      protected var §9!G§:§0!B§;
      
      protected var §4#1§:Vector.<§0!B§>;
      
      private var §=B§:String = "pak";
      
      private var §9!6§:Boolean = true;
      
      private var §>"P§:int = 1;
      
      public function § !0§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§7#7§ = new Dictionary();
         this.§9"p§ = new Vector.<String>();
         this.§ !J§ = [];
         this.§?"'§ = [];
         this.§!"4§ = [];
         this.§0#%§ = [];
         this.§4#1§ = new Vector.<§0!B§>();
         super();
         this.§^g§ = param2;
         this.§@`§ = param1;
         this.§9!6§ = param3;
         this.§>"P§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §0!B§
      {
         return this.§9!G§;
      }
      
      private function §5"'§(param1:String) : Boolean
      {
         var _loc3_:§0!B§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4#1§.length)
         {
            _loc3_ = this.§4#1§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9!G§ = _loc3_;
               this.§[B§ = param1;
               this.§4#1§.splice(_loc2_,1);
               this.§4#1§.unshift(this.§9!G§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#"[§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§7#7§[param1] != null;
      }
      
      public function §4"<§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§#"[§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §6`§(param1:String, param2:Array = null) : void
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
            if(!this.§,!x§())
            {
               this.§2#7§ = param1;
               this.§0#%§ = param2.concat();
               return;
            }
         }
         this.§5"c§ = param1;
         if(this.§4"<§(param2))
         {
            this.§5"'§(param1);
            if(param1 == this.§[B§ || !this.§9!6§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§?!?§(param2);
            }
         }
         else
         {
            this.§;8§(param2);
         }
      }
      
      private function §2Z§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§!"4§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§#"[§(_loc2_))
            {
               this.§!"4§.push(_loc2_);
            }
         }
      }
      
      private function §;8§(param1:Array) : void
      {
         this.§ !J§ = param1.concat();
         this.§2Z§(param1);
         this.§4$§();
      }
      
      private function §4$§() : Boolean
      {
         if(this.§!"4§.length == 0)
         {
            this.§%"t§ = null;
            return false;
         }
         this.§%"t§ = this.§!"4§.pop();
         var _loc1_:String = "";
         if(this.§^g§ != null && this.§^g§.length > 0)
         {
            _loc1_ = "?version=" + this.§^g§;
         }
         this.§3$§ = new URLLoader();
         this.§3$§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§3$§.addEventListener(Event.COMPLETE,this.§>"5§);
         this.§3$§.addEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
         this.§3$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
         var _loc2_:String = this.§'S§(this.§%"t§);
         this.§3$§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §'S§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§=B§;
      }
      
      private function isLoading() : Boolean
      {
         return this.§3$§ || this.§]!]§;
      }
      
      private function §,!x§() : Boolean
      {
         if(this.§3$§)
         {
            this.§3$§.removeEventListener(Event.COMPLETE,this.§>"5§);
            this.§3$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
            this.§3$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
            try
            {
               this.§3$§.close();
            }
            catch(e:Error)
            {
            }
            this.§3$§ = null;
         }
         if(this.§]!]§)
         {
            return false;
         }
         return true;
      }
      
      private function §>"5§(param1:Event) : void
      {
         this.§3$§.removeEventListener(Event.COMPLETE,this.§>"5§);
         this.§3$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
         this.§3$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
         this.§7#7§[this.§%"t§] = this.§3$§.data;
         this.§3$§ = null;
         if(!this.§4$§())
         {
            this.§?!?§(this.§ !J§);
         }
      }
      
      private function §!!4§(param1:Event) : void
      {
         this.§3$§.removeEventListener(Event.COMPLETE,this.§>"5§);
         this.§3$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!4§);
         this.§3$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!4§);
         this.§3$§.close();
         this.§3$§ = null;
         this.§5"c§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §<!+§
      {
         return new §<!+§();
      }
      
      private function §?!?§(param1:Array) : void
      {
         var _loc2_:§0!B§ = null;
         this.§]!]§ = true;
         while(this.§4#1§.length >= this.§>"P§)
         {
            _loc2_ = this.§4#1§.pop();
            _loc2_.dispose();
         }
         if(this.§2"z§)
         {
            this.§2"z§.dispose();
         }
         this.§9!G§ = new §0!B§(this.§5"c§);
         this.§4#1§.unshift(this.§9!G§);
         this.§2"z§ = this.initPackageLoader();
         this.§?"'§ = param1.concat();
         this.§ !p§();
      }
      
      private function § !p§() : Boolean
      {
         if(this.§?"'§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§?"'§.pop();
         this.§2"z§.addEventListener(Event.COMPLETE,this.§]!K§);
         var _loc2_:* = this.§9"p§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§9"p§.push(_loc1_);
         }
         this.§2"z§.§-"@§(this.§7#7§[_loc1_],_loc1_,_loc2_);
         return true;
      }
      
      private function §]!K§(param1:Event) : void
      {
         this.§]!]§ = false;
         this.§2"z§.removeEventListener(Event.COMPLETE,this.§]!K§);
         if(this.§2#7§)
         {
            this.§6`§(this.§2#7§,this.§0#%§);
            this.§2#7§ = null;
            this.§0#%§ = null;
            return;
         }
         if(this.§ !p§())
         {
            return;
         }
         var _loc2_:int = this.§2"z§.§4!K§.§<6§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9!G§.§;C§(this.§2"z§.§4!K§.§'!1§(_loc3_),0);
            _loc3_++;
         }
         this.initializeTextures();
      }
      
      public function initializeTextures() : void
      {
         if(this.isLoading() || this.§2"z§ == null)
         {
            return;
         }
         this.§9!G§.removeEventListener(Event.INIT,this.§="+§);
         if(this.§9!G§.initializeTextures())
         {
            this.§-8§();
         }
         else
         {
            this.§9!G§.addEventListener(Event.INIT,this.§="+§);
         }
      }
      
      private function §-8§() : void
      {
         this.§2"z§.dispose();
         this.§2"z§ = null;
         this.§[B§ = this.§5"c§;
         this.§5"c§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §="+§(param1:Event) : void
      {
         this.§-8§();
      }
   }
}
