package §>#G§
{
   import §@!M§.§!"p§;
   import §@V§.§6"§;
   import §`"8§.§34§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §2#S§ extends EventDispatcher
   {
       
      
      private var §2k§:String = "";
      
      private var §'!X§:String;
      
      private var §2#v§:Dictionary;
      
      private var §3§:Vector.<String>;
      
      private var §-]§:String = null;
      
      private var §"#,§:String = null;
      
      private var §`G§:Array;
      
      private var § m§:String = null;
      
      private var §^!^§:Array;
      
      private var §!!"§:Array;
      
      private var §+]§:Boolean;
      
      private var §7#K§:String = null;
      
      private var §5"E§:Array;
      
      private var §0V§:URLLoader;
      
      protected var §5#y§:§%6§;
      
      protected var §4Z§:§34§;
      
      protected var §<"#§:Vector.<§34§>;
      
      private var §"#7§:String = "pak";
      
      private var §04§:Boolean = true;
      
      private var §<e§:int = 1;
      
      public function §2#S§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§2#v§ = new Dictionary();
         this.§3§ = new Vector.<String>();
         this.§`G§ = [];
         this.§^!^§ = [];
         this.§!!"§ = [];
         this.§5"E§ = [];
         this.§<"#§ = new Vector.<§34§>();
         super();
         this.§2k§ = param2;
         this.§'!X§ = param1;
         this.§04§ = param3;
         this.§<e§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §34§
      {
         return this.§4Z§;
      }
      
      private function §9"?§(param1:String) : Boolean
      {
         var _loc3_:§34§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<"#§.length)
         {
            _loc3_ = this.§<"#§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§4Z§ = _loc3_;
               this.§-]§ = param1;
               this.§<"#§.splice(_loc2_,1);
               this.§<"#§.unshift(this.§4Z§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@!c§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§2#v§[param1] != null;
      }
      
      public function §^V§(param1:Array) : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§;#W§(_loc2_);
            if(!this.§@!c§(_loc3_))
            {
               if(§!"p§.§-!w§(_loc3_,false))
               {
                  return true;
               }
               return false;
            }
         }
         return true;
      }
      
      public function §,!j§(param1:String, param2:Array = null) : void
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
         if(this.§8R§())
         {
            if(!this.§0"F§())
            {
               this.§7#K§ = param1;
               this.§5"E§ = param2.concat();
               return;
            }
         }
         this.§"#,§ = param1;
         if(this.§^V§(param2))
         {
            this.§9"?§(param1);
            if(param1 == this.§-]§ || !this.§04§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&-§(param2);
            }
         }
         else
         {
            this.§ ^§(param2);
         }
      }
      
      private function §8N§(param1:Object) : Boolean
      {
         return param1 is XML;
      }
      
      private function §;#W§(param1:Object) : String
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
      
      private function §^"Y§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         this.§!!"§ = [];
         for each(_loc2_ in param1)
         {
            _loc3_ = this.§;#W§(_loc2_);
            if(!this.§@!c§(_loc3_))
            {
               this.§!!"§.push(_loc2_);
            }
         }
      }
      
      private function § ^§(param1:Array) : void
      {
         this.§`G§ = param1.concat();
         this.§^"Y§(param1);
         this.§,!7§();
      }
      
      private function §,!7§() : Boolean
      {
         if(this.§!!"§.length == 0)
         {
            this.§ m§ = null;
            return false;
         }
         var _loc1_:Object = this.§!!"§.pop();
         this.§ m§ = this.§;#W§(_loc1_);
         var _loc2_:String = "";
         if(this.§2k§ != null && this.§2k§.length > 0)
         {
            _loc2_ = "?version=" + this.§2k§;
         }
         this.§0V§ = new §6"§(null,3,50);
         this.§0V§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§0V§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§0V§.addEventListener(IOErrorEvent.IO_ERROR,this.§""k§);
         this.§0V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""k§);
         var _loc3_:String = this.getFullFilename(this.§ m§);
         this.§0V§.load(new URLRequest(_loc3_ + _loc2_));
         return true;
      }
      
      protected function getFullFilename(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§"#7§;
      }
      
      private function §8R§() : Boolean
      {
         return this.§0V§ || this.§+]§;
      }
      
      private function §0"F§() : Boolean
      {
         if(this.§0V§)
         {
            this.§0V§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§0V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§""k§);
            this.§0V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""k§);
            try
            {
               this.§0V§.close();
            }
            catch(e:Error)
            {
            }
            this.§0V§ = null;
         }
         if(this.§+]§)
         {
            return false;
         }
         return true;
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§0V§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§0V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§""k§);
         this.§0V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""k§);
         this.§2#v§[this.§ m§] = this.§0V§.data;
         this.§0V§ = null;
         if(!this.§,!7§())
         {
            this.§&-§(this.§`G§);
         }
      }
      
      private function §""k§(param1:Event) : void
      {
         this.§0V§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§0V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§""k§);
         this.§0V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""k§);
         this.§0V§.close();
         this.§0V§ = null;
         this.§"#,§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      protected function initPackageLoader() : §%6§
      {
         return new §%6§();
      }
      
      protected function §&4§() : void
      {
         if(this.§5#y§)
         {
            this.§5#y§.dispose();
            this.§5#y§ = null;
         }
      }
      
      private function §&-§(param1:Array) : void
      {
         var _loc2_:§34§ = null;
         this.§+]§ = true;
         while(this.§<"#§.length >= this.§<e§)
         {
            _loc2_ = this.§<"#§.pop();
            _loc2_.dispose();
         }
         this.§&4§();
         this.§4Z§ = new §34§(this.§"#,§);
         this.§<"#§.unshift(this.§4Z§);
         this.§5#y§ = this.initPackageLoader();
         this.§^!^§ = param1.concat();
         this.§>#!§();
      }
      
      private function §>#!§() : Boolean
      {
         if(this.§^!^§.length == 0)
         {
            return false;
         }
         var _loc1_:Object = this.§^!^§.pop();
         var _loc2_:String = this.§;#W§(_loc1_);
         this.§5#y§.addEventListener(Event.COMPLETE,this.§0#2§);
         var _loc3_:* = this.§3§.indexOf(_loc2_) < 0;
         if(_loc3_)
         {
            this.§3§.push(_loc2_);
         }
         this.§5#y§.§=!c§(this.§2#v§[_loc1_],_loc2_,_loc3_,!!this.§8N§(_loc1_) ? XML(_loc1_) : null);
         return true;
      }
      
      private function §0#2§(param1:Event) : void
      {
         this.§+]§ = false;
         this.§5#y§.removeEventListener(Event.COMPLETE,this.§0#2§);
         if(this.§7#K§)
         {
            this.§,!j§(this.§7#K§,this.§5"E§);
            this.§7#K§ = null;
            this.§5"E§ = null;
            return;
         }
         if(this.§>#!§())
         {
            return;
         }
         var _loc2_:int = this.§5#y§.§?[§.§ #0§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4Z§.§5#I§(this.§5#y§.§?[§.§+!u§(_loc3_),0);
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            this.§`"Q§();
         }
         else
         {
            this.§6#C§();
         }
      }
      
      public function §`"Q§() : void
      {
         if(this.§8R§() || this.§5#y§ == null)
         {
            return;
         }
         this.§4Z§.removeEventListener(Event.INIT,this.§`@§);
         if(this.§4Z§.§`"Q§())
         {
            this.§6#C§();
         }
         else
         {
            this.§4Z§.addEventListener(Event.INIT,this.§`@§);
         }
      }
      
      private function §6#C§() : void
      {
         this.§&4§();
         this.§-]§ = this.§"#,§;
         this.§"#,§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §`@§(param1:Event) : void
      {
         this.§6#C§();
      }
   }
}
