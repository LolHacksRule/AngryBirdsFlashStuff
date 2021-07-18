package §%R§
{
   import §7!F§.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>H§ extends EventDispatcher
   {
       
      
      private var §;#[§:String = "";
      
      private var §8#!§:String;
      
      private var §-"J§:Dictionary;
      
      private var §,N§:Vector.<String>;
      
      private var §-"E§:String = null;
      
      private var §5!p§:String = null;
      
      private var §<"N§:Array;
      
      private var §&"G§:String = null;
      
      private var §!!g§:Array;
      
      private var §&2§:Array;
      
      private var §<+§:Boolean;
      
      private var §?w§:String = null;
      
      private var §<"A§:Array;
      
      private var §+!&§:URLLoader;
      
      protected var §9"T§:§@"F§;
      
      protected var §6V§:§7#5§;
      
      protected var §1A§:Vector.<§7#5§>;
      
      private var §;"-§:String = "pak";
      
      private var §!"=§:Boolean = true;
      
      private var §7"x§:int = 1;
      
      public function §>H§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§-"J§ = new Dictionary();
         this.§,N§ = new Vector.<String>();
         this.§<"N§ = [];
         this.§!!g§ = [];
         this.§&2§ = [];
         this.§<"A§ = [];
         this.§1A§ = new Vector.<§7#5§>();
         super();
         this.§;#[§ = param2;
         this.§8#!§ = param1;
         this.§!"=§ = param3;
         this.§7"x§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      private function §?#@§(param1:String) : Boolean
      {
         var _loc3_:§7#5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1A§.length)
         {
            _loc3_ = this.§1A§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§6V§ = _loc3_;
               this.§-"E§ = param1;
               this.§1A§.splice(_loc2_,1);
               this.§1A§.unshift(this.§6V§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §1#X§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§-"J§[param1] != null;
      }
      
      public function §!m§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!this.§1#X§(_loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §'!t§(param1:String, param2:Array = null) : void
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
            if(!this.§3"M§())
            {
               this.§?w§ = param1;
               this.§<"A§ = param2.concat();
               return;
            }
         }
         this.§5!p§ = param1;
         if(this.§!m§(param2))
         {
            this.§?#@§(param1);
            if(param1 == this.§-"E§ || !this.§!"=§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§8!^§(param2);
            }
         }
         else
         {
            this.§5A§(param2);
         }
      }
      
      private function §?!l§(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§&2§ = [];
         for each(_loc2_ in param1)
         {
            if(!this.§1#X§(_loc2_))
            {
               this.§&2§.push(_loc2_);
            }
         }
      }
      
      private function §5A§(param1:Array) : void
      {
         this.§<"N§ = param1.concat();
         this.§?!l§(param1);
         this.§&"I§();
      }
      
      private function §&"I§() : Boolean
      {
         if(this.§&2§.length == 0)
         {
            this.§&"G§ = null;
            return false;
         }
         this.§&"G§ = this.§&2§.pop();
         var _loc1_:String = "";
         if(this.§;#[§ != null && this.§;#[§.length > 0)
         {
            _loc1_ = "?version=" + this.§;#[§;
         }
         this.§+!&§ = new URLLoader();
         this.§+!&§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+!&§.addEventListener(Event.COMPLETE,this.§?"E§);
         this.§+!&§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
         this.§+!&§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
         var _loc2_:String = this.§4"a§(this.§&"G§);
         this.§+!&§.load(new URLRequest(_loc2_ + _loc1_));
         return true;
      }
      
      protected function §4"a§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§;"-§;
      }
      
      private function isLoading() : Boolean
      {
         return this.§+!&§ || this.§<+§;
      }
      
      private function §3"M§() : Boolean
      {
         if(this.§+!&§)
         {
            this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
            this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
            this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
            try
            {
               this.§+!&§.close();
            }
            catch(e:Error)
            {
            }
            this.§+!&§ = null;
         }
         if(this.§<+§)
         {
            return false;
         }
         return true;
      }
      
      private function §?"E§(param1:Event) : void
      {
         this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
         this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
         this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
         this.§-"J§[this.§&"G§] = this.§+!&§.data;
         this.§+!&§ = null;
         if(!this.§&"I§())
         {
            this.§8!^§(this.§<"N§);
         }
      }
      
      private function §<"l§(param1:Event) : void
      {
         this.§+!&§.removeEventListener(Event.COMPLETE,this.§?"E§);
         this.§+!&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"l§);
         this.§+!&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"l§);
         this.§+!&§.close();
         this.§+!&§ = null;
         this.§5!p§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §@"F§
      {
         return new §@"F§();
      }
      
      private function §8!^§(param1:Array) : void
      {
         var _loc2_:§7#5§ = null;
         this.§<+§ = true;
         while(this.§1A§.length >= this.§7"x§)
         {
            _loc2_ = this.§1A§.pop();
            _loc2_.dispose();
         }
         if(this.§9"T§)
         {
            this.§9"T§.dispose();
         }
         this.§6V§ = new §7#5§(this.§5!p§);
         this.§1A§.unshift(this.§6V§);
         this.§9"T§ = this.initPackageLoader();
         this.§!!g§ = param1.concat();
         this.§+"w§();
      }
      
      private function §+"w§() : Boolean
      {
         if(this.§!!g§.length == 0)
         {
            return false;
         }
         var _loc1_:String = this.§!!g§.pop();
         this.§9"T§.addEventListener(Event.COMPLETE,this.§##V§);
         var _loc2_:* = this.§,N§.indexOf(_loc1_) < 0;
         if(_loc2_)
         {
            this.§,N§.push(_loc1_);
         }
         this.§9"T§.§[#!§(this.§-"J§[_loc1_],_loc1_,_loc2_,null);
         return true;
      }
      
      private function §##V§(param1:Event) : void
      {
         this.§<+§ = false;
         this.§9"T§.removeEventListener(Event.COMPLETE,this.§##V§);
         if(this.§?w§)
         {
            this.§'!t§(this.§?w§,this.§<"A§);
            this.§?w§ = null;
            this.§<"A§ = null;
            return;
         }
         if(this.§+"w§())
         {
            return;
         }
         var _loc2_:int = this.§9"T§.§!"$§.§^"A§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6V§.§5j§(this.§9"T§.§!"$§.§"#B§(_loc3_),0);
            _loc3_++;
         }
         this.initializeTextures();
      }
      
      public function initializeTextures() : void
      {
         if(this.isLoading() || this.§9"T§ == null)
         {
            return;
         }
         this.§6V§.removeEventListener(Event.INIT,this.§>!8§);
         if(this.§6V§.initializeTextures())
         {
            this.§%""§();
         }
         else
         {
            this.§6V§.addEventListener(Event.INIT,this.§>!8§);
         }
      }
      
      private function §%""§() : void
      {
         this.§9"T§.dispose();
         this.§9"T§ = null;
         this.§-"E§ = this.§5!p§;
         this.§5!p§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §>!8§(param1:Event) : void
      {
         this.§%""§();
      }
   }
}
