package §<T§
{
   import §,l§.§0z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §""#§ extends EventDispatcher
   {
       
      
      private var §>"Y§:String = "";
      
      protected var §%Q§:String;
      
      private var § !"§:URLLoader;
      
      private var §7M§:Dictionary;
      
      private var §0!r§:String = null;
      
      private var §3h§:String = null;
      
      private var §2m§:String = null;
      
      private var §;!L§:Boolean;
      
      private var §0?§:§0z§;
      
      private var §=!2§:§`m§;
      
      private var §0"J§:Vector.<§`m§>;
      
      protected var §'!'§:String = "pak";
      
      private var §=!"§:Boolean = true;
      
      private var §2!2§:int = 1;
      
      public function §""#§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§7M§ = new Dictionary();
         this.§0"J§ = new Vector.<§`m§>();
         super();
         this.§>"Y§ = param2;
         this.§%Q§ = param1;
         this.§=!"§ = param3;
         this.§2!2§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function §#`§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§7M§[param1] != null;
      }
      
      private function §01§(param1:String) : Boolean
      {
         var _loc3_:§`m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0"J§.length)
         {
            _loc3_ = this.§0"J§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§=!2§ = _loc3_;
               this.§0!r§ = param1;
               this.§0"J§.splice(_loc2_,1);
               this.§0"J§.unshift(this.§=!2§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §+!K§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§each §())
         {
            if(!this.§?§())
            {
               this.§2m§ = param1;
               return;
            }
         }
         if(this.§#`§(param1))
         {
            this.§01§(param1);
            if(param1 == this.§0!r§ || !this.§=!"§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§ !C§(param1,false);
            }
         }
         else
         {
            this.§^c§(param1);
         }
      }
      
      protected function §^c§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         if(this.§>"Y§ != null && this.§>"Y§.length > 0)
         {
            _loc2_ = "?version=" + this.§>"Y§;
         }
         this.§3h§ = param1;
         this.§ !"§ = new URLLoader();
         this.§ !"§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§ !"§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1.indexOf("crossdomain.xml") == -1)
         {
            _loc3_ = this.getFullFilename(param1);
         }
         else
         {
            _loc3_ = this.§%Q§ + "/crossdomain.xml";
         }
         this.§ !"§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§'!'§;
      }
      
      private function §each §() : Boolean
      {
         return this.§ !"§ || this.§;!L§;
      }
      
      private function §?§() : Boolean
      {
         if(this.§ !"§)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ !"§.close();
            this.§ !"§ = null;
         }
         if(this.§;!L§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§7M§[this.§3h§] = this.§ !"§.data;
         this.§ !"§ = null;
         this.§ !C§(this.§3h§,true);
      }
      
      private function § !C§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§`m§ = null;
         this.§;!L§ = true;
         this.§3h§ = param1;
         while(this.§0"J§.length >= this.§2!2§)
         {
            _loc3_ = this.§0"J§.pop();
            _loc3_.dispose();
         }
         if(this.§0?§)
         {
            this.§0?§.dispose();
         }
         this.§=!2§ = new §`m§(param1);
         this.§0"J§.unshift(this.§=!2§);
         this.§0?§ = new §0z§();
         this.§0?§.addEventListener(Event.COMPLETE,this.§6"Z§);
         this.§0?§.§[T§(this.§3h§);
         this.§0?§.§'S§(this.§7M§[this.§3h§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !"§.close();
         this.§ !"§ = null;
         this.§3h§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §6"Z§(param1:Event) : void
      {
         this.§;!L§ = false;
         this.§0?§.removeEventListener(Event.COMPLETE,this.§6"Z§);
         if(this.§2m§)
         {
            this.§+!K§(this.§2m§);
            this.§2m§ = null;
            return;
         }
         var _loc2_:int = this.§0?§.§#!y§.§=!;§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§=!2§.§0!6§(this.§0?§.§#!y§.§#"W§(_loc3_));
            _loc3_++;
         }
         this.§0"V§();
      }
      
      public function §0"V§() : void
      {
         if(this.§each §() || this.§0?§ == null)
         {
            return;
         }
         if(this.§=!2§.§0"V§())
         {
            this.§0?§.dispose();
            this.§0?§ = null;
            this.§0!r§ = this.§3h§;
            this.§3h§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
