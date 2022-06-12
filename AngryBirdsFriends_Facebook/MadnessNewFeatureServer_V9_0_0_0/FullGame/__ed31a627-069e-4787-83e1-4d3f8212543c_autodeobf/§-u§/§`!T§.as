package §-u§
{
   import §'G§.§3$§;
   import §1L§.§9#f§;
   import §8#K§.§3Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`!T§ extends EventDispatcher
   {
       
      
      private var §1#F§:String = "";
      
      private var §6"U§:String;
      
      private var §6X§:Dictionary;
      
      private var §#""§:Vector.<String>;
      
      private var §`"D§:String = null;
      
      private var §=#E§:String = null;
      
      private var §4#$§:Array;
      
      private var §;$3§:String = null;
      
      private var §,#H§:Array;
      
      private var §-$#§:Array;
      
      private var §]!c§:Boolean;
      
      private var §'#O§:String = null;
      
      private var §,Y§:Array;
      
      private var §9#I§:URLLoader;
      
      protected var §9!o§:§0"E§;
      
      protected var §?#r§:§3$§;
      
      protected var §%"^§:Vector.<§3$§>;
      
      private var §@4§:String = "pak";
      
      private var §@$?§:Boolean = true;
      
      private var §9!O§:int = 1;
      
      public function §`!T§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§6X§ = new Dictionary();
         this.§#""§ = new Vector.<String>();
         this.§4#$§ = [];
         this.§,#H§ = [];
         this.§-$#§ = [];
         this.§,Y§ = [];
         this.§%"^§ = new Vector.<§3$§>();
         super();
         this.§1#F§ = param2;
         this.§6"U§ = param1;
         this.§@$?§ = param3;
         this.§9!O§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §3$§
      {
         return this.§?#r§;
      }
      
      private function §!"g§(param1:String) : Boolean
      {
         var _loc3_:§3$§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"^§.length)
         {
            _loc3_ = this.§%"^§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§?#r§ = _loc3_;
               this.§`"D§ = param1;
               this.§%"^§.splice(_loc2_,1);
               this.§%"^§.unshift(this.§?#r§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6!F§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§6X§[param1] != null;
      }
      
      public function §<I§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§ #M§(_loc2_);
            if(!this.§6!F§(_loc3_))
            {
               if(§3Z§.§]3§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §""%§(param1:String, param2:Array = null) : void
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
         if(this.§6#J§())
         {
            if(!this.§7U§())
            {
               this.§'#O§ = param1;
               this.§,Y§ = param2.concat();
               return;
            }
         }
         this.§=#E§ = param1;
         if(this.§<I§(param2))
         {
            this.§!"g§(param1);
            if(param1 == this.§`"D§ || !this.§@$?§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§1#P§(param2);
            }
         }
         else
         {
            this.§2!r§(param2);
         }
      }
      
      private function §!"r§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function § #M§(param1:Object) : String
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
      
      private function §>"z§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§-$#§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§ #M§(_loc2_);
            if(!this.§6!F§(_loc3_))
            {
               this.§-$#§.push(_loc2_);
            }
         }
      }
      
      private function §2!r§(param1:Array) : void
      {
         this.§4#$§ = param1.concat();
         this.§>"z§(param1);
         this.§`"-§();
      }
      
      private function §`"-§() : Boolean
      {
         if(this.§-$#§.length == 0)
         {
            this.§;$3§ = null;
            return false;
         }
         var _loc1_:Object = this.§-$#§.pop();
         this.§;$3§ = this.§ #M§(_loc1_);
         var _loc2_:String = "";
         if(this.§1#F§ != null && this.§1#F§.length > 0)
         {
            _loc2_ = "?version=" + this.§1#F§;
         }
         this.§9#I§ = new §9#f§(null,3,50);
         this.§9#I§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§9#I§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§9#I§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!Z§);
         this.§9#I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Z§);
         var _loc3_:String = this.getFullFilename(this.§;$3§);
         this.§9#I§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§@4§;
      }
      
      private function §6#J§() : Boolean
      {
         return this.§9#I§ || this.§]!c§;
      }
      
      private function §7U§() : Boolean
      {
         if(this.§9#I§)
         {
            this.§9#I§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§9#I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!Z§);
            this.§9#I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Z§);
            try
            {
               this.§9#I§.close();
            }
            catch(e:Error)
            {
            }
            this.§9#I§ = null;
         }
         if(this.§]!c§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§9#I§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§9#I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!Z§);
         this.§9#I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Z§);
         this.§6X§[this.§;$3§] = this.§9#I§.data;
         this.§9#I§ = null;
         if(!this.§`"-§())
         {
            this.§1#P§(this.§4#$§);
         }
      }
      
      private function §&!Z§(param1:Event) : void
      {
         this.§9#I§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§9#I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!Z§);
         this.§9#I§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&!Z§);
         this.§9#I§.close();
         this.§9#I§ = null;
         this.§=#E§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §0"E§
      {
         return new §0"E§();
      }
      
      protected function §=!$§() : void
      {
         if(this.§9!o§)
         {
            this.§9!o§.dispose();
            this.§9!o§ = null;
         }
      }
      
      private function §1#P§(param1:Array) : void
      {
         var _loc2_:§3$§ = null;
         this.§]!c§ = true;
         while(this.§%"^§.length >= this.§9!O§)
         {
            _loc2_ = this.§%"^§.pop();
            _loc2_.dispose();
         }
         this.§=!$§();
         this.§?#r§ = new §3$§(this.§=#E§);
         this.§%"^§.unshift(this.§?#r§);
         this.§9!o§ = this.initPackageLoader();
         this.§,#H§ = param1.concat();
         this.§?#L§();
      }
      
      private function §?#L§() : Boolean
      {
         if(this.§,#H§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§,#H§.pop();
         var _loc2_:String = this.§ #M§(_loc1_);
         this.§9!o§.addEventListener(Event.COMPLETE,this.§=!X§);
         var _loc3_:* = this.§#""§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§#""§.push(_loc2_);
         }
         this.§9!o§.§6"m§(this.§6X§[_loc1_],_loc2_,_loc3_,!!this.§!"r§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §=!X§(param1:Event) : void
      {
         this.§]!c§ = false;
         this.§9!o§.removeEventListener(Event.COMPLETE,this.§=!X§);
         if(this.§'#O§)
         {
            this.§""%§(this.§'#O§,this.§,Y§);
            this.§'#O§ = null;
            this.§,Y§ = null;
            return;
         }
         if(this.§?#L§())
         {
            return;
         }
         var _loc2_:int = this.§9!o§.§35§.§5!H§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§?#r§.§+#y§(this.§9!o§.§35§.§#!U§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§3"A§();
         }
         else
         {
            this.§9!N§();
         }
      }
      
      public function §3"A§() : void
      {
         if(this.§6#J§() || this.§9!o§ == null)
         {
            return;
         }
         this.§?#r§.removeEventListener(Event.INIT,this.§8";§);
         if(this.§?#r§.§3"A§())
         {
            this.§9!N§();
         }
         else
         {
            this.§?#r§.addEventListener(Event.INIT,this.§8";§);
         }
      }
      
      private function §9!N§() : void
      {
         this.§=!$§();
         this.§`"D§ = this.§=#E§;
         this.§=#E§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §8";§(param1:Event) : void
      {
         this.§9!N§();
      }
   }
}
