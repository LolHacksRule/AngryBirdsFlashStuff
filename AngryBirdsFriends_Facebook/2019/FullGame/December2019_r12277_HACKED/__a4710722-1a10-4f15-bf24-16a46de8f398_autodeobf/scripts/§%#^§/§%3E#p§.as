package §%#^§
{
   import § "v§.§4$4§;
   import §7"1§.§"$D§;
   import §9#M§.§%"=§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>#p§ extends EventDispatcher
   {
       
      
      private var §"!2§:String = "";
      
      private var §,$B§:String;
      
      private var §%#§:Dictionary;
      
      private var §9!1§:Vector.<String>;
      
      private var § F§:String = null;
      
      private var §>!9§:String = null;
      
      private var §0%§:Array;
      
      private var §?!$§:String = null;
      
      private var §<!3§:Array;
      
      private var §!!x§:Array;
      
      private var §-'§:Boolean;
      
      private var §-""§:String = null;
      
      private var §@"§:Array;
      
      private var §2"'§:URLLoader;
      
      protected var §-!_§:§""P§;
      
      protected var §]#o§:§%"=§;
      
      protected var §6i§:Vector.<§%"=§>;
      
      private var §4!$§:String = "pak";
      
      private var §>"E§:Boolean = true;
      
      private var §^#y§:int = 1;
      
      public function §>#p§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§%#§ = new Dictionary();
         this.§9!1§ = new Vector.<String>();
         this.§0%§ = [];
         this.§<!3§ = [];
         this.§!!x§ = [];
         this.§@"§ = [];
         this.§6i§ = new Vector.<§%"=§>();
         super();
         this.§"!2§ = param2;
         this.§,$B§ = param1;
         this.§>"E§ = param3;
         this.§^#y§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §%"=§
      {
         return this.§]#o§;
      }
      
      private function §^"J§(param1:String) : Boolean
      {
         var _loc3_:§%"=§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6i§.length)
         {
            _loc3_ = this.§6i§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§]#o§ = _loc3_;
               this.§ F§ = param1;
               this.§6i§.splice(_loc2_,1);
               this.§6i§.unshift(this.§]#o§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §%#>§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§%#§[param1] != null;
      }
      
      public function §6!§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§>#b§(_loc2_);
            if(!this.§%#>§(_loc3_))
            {
               if(§4$4§.§&#w§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §2#z§(param1:String, param2:Array = null) : void
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
         if(this.§#!?§())
         {
            if(!this.§`! §())
            {
               this.§-""§ = param1;
               this.§@"§ = param2.concat();
               return;
            }
         }
         this.§>!9§ = param1;
         if(this.§6!§(param2))
         {
            this.§^"J§(param1);
            if(param1 == this.§ F§ || !this.§>"E§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§2$>§(param2);
            }
         }
         else
         {
            this.§+"R§(param2);
         }
      }
      
      private function §;"W§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §>#b§(param1:Object) : String
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
      
      private function §!C§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§!!x§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§>#b§(_loc2_);
            if(!this.§%#>§(_loc3_))
            {
               this.§!!x§.push(_loc2_);
            }
         }
      }
      
      private function §+"R§(param1:Array) : void
      {
         this.§0%§ = param1.concat();
         this.§!C§(param1);
         this.§?"A§();
      }
      
      private function §?"A§() : Boolean
      {
         if(this.§!!x§.length == 0)
         {
            this.§?!$§ = null;
            return false;
         }
         var _loc1_:Object = this.§!!x§.pop();
         this.§?!$§ = this.§>#b§(_loc1_);
         var _loc2_:String = "";
         if(this.§"!2§ != null && this.§"!2§.length > 0)
         {
            _loc2_ = "?version=" + this.§"!2§;
         }
         this.§2"'§ = new §"$D§(null,3,50);
         this.§2"'§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§2"'§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§2"'§.addEventListener(IOErrorEvent.IO_ERROR,this.§##6§);
         this.§2"'§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##6§);
         var _loc3_:String = this.getFullFilename(this.§?!$§);
         this.§2"'§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§4!$§;
      }
      
      private function §#!?§() : Boolean
      {
         return this.§2"'§ || this.§-'§;
      }
      
      private function §`! §() : Boolean
      {
         if(this.§2"'§)
         {
            this.§2"'§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§2"'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§##6§);
            this.§2"'§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##6§);
            try
            {
               this.§2"'§.close();
            }
            catch(e:Error)
            {
            }
            this.§2"'§ = null;
         }
         if(this.§-'§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§2"'§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§2"'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§##6§);
         this.§2"'§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##6§);
         this.§%#§[this.§?!$§] = this.§2"'§.data;
         this.§2"'§ = null;
         if(!this.§?"A§())
         {
            this.§2$>§(this.§0%§);
         }
      }
      
      private function §##6§(param1:Event) : void
      {
         this.§2"'§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§2"'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§##6§);
         this.§2"'§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##6§);
         this.§2"'§.close();
         this.§2"'§ = null;
         this.§>!9§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §""P§
      {
         return new §""P§();
      }
      
      protected function §7#&§() : void
      {
         if(this.§-!_§)
         {
            this.§-!_§.dispose();
            this.§-!_§ = null;
         }
      }
      
      private function §2$>§(param1:Array) : void
      {
         var _loc2_:§%"=§ = null;
         this.§-'§ = true;
         while(this.§6i§.length >= this.§^#y§)
         {
            _loc2_ = this.§6i§.pop();
            _loc2_.dispose();
         }
         this.§7#&§();
         this.§]#o§ = new §%"=§(this.§>!9§);
         this.§6i§.unshift(this.§]#o§);
         this.§-!_§ = this.initPackageLoader();
         this.§<!3§ = param1.concat();
         this.§["S§();
      }
      
      private function §["S§() : Boolean
      {
         if(this.§<!3§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§<!3§.pop();
         var _loc2_:String = this.§>#b§(_loc1_);
         this.§-!_§.addEventListener(Event.COMPLETE,this.§-q§);
         var _loc3_:* = this.§9!1§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§9!1§.push(_loc2_);
         }
         this.§-!_§.§>#B§(this.§%#§[_loc1_],_loc2_,_loc3_,!!this.§;"W§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §-q§(param1:Event) : void
      {
         this.§-'§ = false;
         this.§-!_§.removeEventListener(Event.COMPLETE,this.§-q§);
         if(this.§-""§)
         {
            this.§2#z§(this.§-""§,this.§@"§);
            this.§-""§ = null;
            this.§@"§ = null;
            return;
         }
         if(this.§["S§())
         {
            return;
         }
         var _loc2_:int = this.§-!_§.§&!H§.§"!=§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§]#o§.§>#4§(this.§-!_§.§&!H§.§;F§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§ $ §();
         }
         else
         {
            this.§<"[§();
         }
      }
      
      public function § $ §() : void
      {
         if(this.§#!?§() || this.§-!_§ == null)
         {
            return;
         }
         this.§]#o§.removeEventListener(Event.INIT,this.§^#-§);
         if(this.§]#o§.§ $ §())
         {
            this.§<"[§();
         }
         else
         {
            this.§]#o§.addEventListener(Event.INIT,this.§^#-§);
         }
      }
      
      private function §<"[§() : void
      {
         this.§7#&§();
         this.§ F§ = this.§>!9§;
         this.§>!9§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §^#-§(param1:Event) : void
      {
         this.§<"[§();
      }
   }
}
