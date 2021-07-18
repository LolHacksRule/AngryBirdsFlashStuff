package §-#z§
{
   import §@"§.*;
   import §]$9§.§5$5§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §'"&§ extends EventDispatcher
   {
       
      
      private var §%"&§:String = "";
      
      private var §@#z§:String;
      
      private var §!!U§:Dictionary;
      
      private var §^!#§:Vector.<String>;
      
      private var §3"]§:String = null;
      
      private var §="&§:String = null;
      
      private var §2A§:Array;
      
      private var §?@§:String = null;
      
      private var §1Y§:Array;
      
      private var §^4§:Array;
      
      private var §!"C§:Boolean;
      
      private var §2!M§:String = null;
      
      private var §4#v§:Array;
      
      private var §;!G§:URLLoader;
      
      protected var §?s§:§0#p§;
      
      protected var §5!H§:§&!=§;
      
      protected var §9!I§:Vector.<§&!=§>;
      
      private var §+#w§:String = "pak";
      
      private var §4A§:Boolean = true;
      
      private var §+#Q§:int = 1;
      
      public function §'"&§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§!!U§ = new Dictionary();
         this.§^!#§ = new Vector.<String>();
         this.§2A§ = [];
         this.§1Y§ = [];
         this.§^4§ = [];
         this.§4#v§ = [];
         this.§9!I§ = new Vector.<§&!=§>();
         super();
         this.§%"&§ = param2;
         this.§@#z§ = param1;
         this.§4A§ = param3;
         this.§+#Q§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §&!=§
      {
         return this.§5!H§;
      }
      
      private function §%#;§(param1:String) : Boolean
      {
         var _loc3_:§&!=§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!I§.length)
         {
            _loc3_ = this.§9!I§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§5!H§ = _loc3_;
               this.§3"]§ = param1;
               this.§9!I§.splice(_loc2_,1);
               this.§9!I§.unshift(this.§5!H§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,#m§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§!!U§[param1] != null;
      }
      
      public function §"#G§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§+#C§(_loc2_);
            if(!this.§,#m§(_loc3_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §[!z§(param1:String, param2:Array = null) : void
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
         if(this.§-#!§())
         {
            if(!this.§!Q§())
            {
               this.§2!M§ = param1;
               this.§4#v§ = param2.concat();
               return;
            }
         }
         this.§="&§ = param1;
         if(this.§"#G§(param2))
         {
            this.§%#;§(param1);
            if(param1 == this.§3"]§ || !this.§4A§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§?<§(param2);
            }
         }
         else
         {
            this.§[#<§(param2);
         }
      }
      
      private function §'!b§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §+#C§(param1:Object) : String
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
      
      private function §1#<§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§^4§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§+#C§(_loc2_);
            if(!this.§,#m§(_loc3_))
            {
               this.§^4§.push(_loc2_);
            }
         }
      }
      
      private function §[#<§(param1:Array) : void
      {
         this.§2A§ = param1.concat();
         this.§1#<§(param1);
         this.§1#L§();
      }
      
      private function §1#L§() : Boolean
      {
         if(this.§^4§.length == 0)
         {
            this.§?@§ = null;
            return false;
         }
         var _loc1_:Object = this.§^4§.pop();
         this.§?@§ = this.§+#C§(_loc1_);
         var _loc2_:String = "";
         if(this.§%"&§ != null && this.§%"&§.length > 0)
         {
            _loc2_ = "?version=" + this.§%"&§;
         }
         this.§;!G§ = new §5$5§(null,3,50);
         this.§;!G§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§;!G§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§;!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§2#q§);
         this.§;!G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2#q§);
         var _loc3_:String = this.getFullFilename(this.§?@§);
         this.§;!G§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§+#w§;
      }
      
      private function §-#!§() : Boolean
      {
         return this.§;!G§ || this.§!"C§;
      }
      
      private function §!Q§() : Boolean
      {
         if(this.§;!G§)
         {
            this.§;!G§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§;!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2#q§);
            this.§;!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2#q§);
            try
            {
               this.§;!G§.close();
            }
            catch(e:Error)
            {
            }
            this.§;!G§ = null;
         }
         if(this.§!"C§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§;!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2#q§);
         this.§;!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2#q§);
         this.§!!U§[this.§?@§] = this.§;!G§.data;
         this.§;!G§ = null;
         if(!this.§1#L§())
         {
            this.§?<§(this.§2A§);
         }
      }
      
      private function §2#q§(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§;!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2#q§);
         this.§;!G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2#q§);
         this.§;!G§.close();
         this.§;!G§ = null;
         this.§="&§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §0#p§
      {
         return new §0#p§();
      }
      
      protected function §<#X§() : void
      {
         if(this.§?s§)
         {
            this.§?s§.dispose();
            this.§?s§ = null;
         }
      }
      
      private function §?<§(param1:Array) : void
      {
         var _loc2_:§&!=§ = null;
         this.§!"C§ = true;
         while(this.§9!I§.length >= this.§+#Q§)
         {
            _loc2_ = this.§9!I§.pop();
            _loc2_.dispose();
         }
         this.§<#X§();
         this.§5!H§ = new §&!=§(this.§="&§);
         this.§9!I§.unshift(this.§5!H§);
         this.§?s§ = this.initPackageLoader();
         this.§1Y§ = param1.concat();
         this.§%"7§();
      }
      
      private function §%"7§() : Boolean
      {
         if(this.§1Y§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§1Y§.pop();
         var _loc2_:String = this.§+#C§(_loc1_);
         this.§?s§.addEventListener(Event.COMPLETE,this.§-"x§);
         var _loc3_:* = this.§^!#§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§^!#§.push(_loc2_);
         }
         this.§?s§.§""=§(this.§!!U§[_loc1_],_loc2_,_loc3_,!!this.§'!b§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §-"x§(param1:Event) : void
      {
         this.§!"C§ = false;
         this.§?s§.removeEventListener(Event.COMPLETE,this.§-"x§);
         if(this.§2!M§)
         {
            this.§[!z§(this.§2!M§,this.§4#v§);
            this.§2!M§ = null;
            this.§4#v§ = null;
            return;
         }
         if(this.§%"7§())
         {
            return;
         }
         var _loc2_:int = this.§?s§.§]!!§.§#!e§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§5!H§.§-#]§(this.§?s§.§]!!§.§^#q§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§8o§();
         }
         else
         {
            this.§0!`§();
         }
      }
      
      public function §8o§() : void
      {
         if(this.§-#!§() || this.§?s§ == null)
         {
            return;
         }
         this.§5!H§.removeEventListener(Event.INIT,this.§=h§);
         if(this.§5!H§.§8o§())
         {
            this.§0!`§();
         }
         else
         {
            this.§5!H§.addEventListener(Event.INIT,this.§=h§);
         }
      }
      
      private function §0!`§() : void
      {
         this.§<#X§();
         this.§3"]§ = this.§="&§;
         this.§="&§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §=h§(param1:Event) : void
      {
         this.§0!`§();
      }
   }
}
