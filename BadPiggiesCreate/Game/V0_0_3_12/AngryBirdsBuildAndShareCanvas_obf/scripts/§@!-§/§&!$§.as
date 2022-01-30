package §@!-§
{
   import §>!#§.§2w§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&!$§ extends EventDispatcher
   {
       
      
      private var §1!>§:String = "";
      
      private var §8C§:String;
      
      private var § !"§:URLLoader;
      
      private var §0!4§:Dictionary;
      
      private var §&'§:String = null;
      
      private var §>0§:String = null;
      
      private var §`"#§:String = null;
      
      private var §1!K§:Boolean;
      
      private var §@!9§:§2w§;
      
      private var §9!r§:§3"1§;
      
      private var §-"#§:Vector.<§3"1§>;
      
      private var §`"=§:String = "pak";
      
      private var §7!7§:Boolean = true;
      
      private var § f§:int = 1;
      
      public function §&!$§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§0!4§ = new Dictionary();
         this.§-"#§ = new Vector.<§3"1§>();
         super();
         this.§1!>§ = param2;
         this.§8C§ = param1;
         this.§7!7§ = param3;
         this.§ f§ = Math.max(1,param4);
      }
      
      public function get §="!§() : §3"1§
      {
         return this.§9!r§;
      }
      
      public function §+!]§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§0!4§[param1] != null;
      }
      
      private function §8!U§(param1:String) : Boolean
      {
         var _loc3_:§3"1§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-"#§.length)
         {
            _loc3_ = this.§-"#§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9!r§ = _loc3_;
               this.§&'§ = param1;
               this.§-"#§.splice(_loc2_,1);
               this.§-"#§.unshift(this.§9!r§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&X§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9'§())
         {
            if(!this.§=!'§())
            {
               this.§`"#§ = param1;
               return;
            }
         }
         if(this.§+!]§(param1))
         {
            this.§8!U§(param1);
            if(param1 == this.§&'§ || !this.§7!7§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§2H§(param1,false);
            }
         }
         else
         {
            this.§]"9§(param1);
         }
      }
      
      private function §]"9§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§1!>§ != null && this.§1!>§.length > 0)
         {
            _loc2_ = "?version=" + this.§1!>§;
         }
         this.§>0§ = param1;
         this.§ !"§ = new URLLoader();
         this.§ !"§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§ !"§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !"§.load(new URLRequest(this.§8C§ + "packages/" + param1 + "." + this.§`"=§ + _loc2_));
      }
      
      private function §9'§() : Boolean
      {
         return this.§ !"§ || this.§1!K§;
      }
      
      private function §=!'§() : Boolean
      {
         if(this.§ !"§)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ !"§.close();
            this.§ !"§ = null;
         }
         if(this.§1!K§)
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
         this.§0!4§[this.§>0§] = this.§ !"§.data;
         this.§ !"§ = null;
         this.§2H§(this.§>0§,true);
      }
      
      private function §2H§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§3"1§ = null;
         this.§1!K§ = true;
         this.§>0§ = param1;
         while(this.§-"#§.length >= this.§ f§)
         {
            _loc3_ = this.§-"#§.pop();
            _loc3_.dispose();
         }
         if(this.§@!9§)
         {
            this.§@!9§.dispose();
         }
         this.§9!r§ = new §3"1§(param1);
         this.§-"#§.unshift(this.§9!r§);
         this.§@!9§ = new §2w§();
         this.§@!9§.addEventListener(Event.COMPLETE,this.§8!f§);
         this.§@!9§.§0z§(this.§0!4§[this.§>0§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§ !"§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !"§.close();
         this.§ !"§ = null;
         this.§>0§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §8!f§(param1:Event) : void
      {
         this.§1!K§ = false;
         this.§@!9§.removeEventListener(Event.COMPLETE,this.§8!f§);
         if(this.§`"#§)
         {
            this.§&X§(this.§`"#§);
            this.§`"#§ = null;
            return;
         }
         var _loc2_:int = this.§@!9§.§7!@§.§0h§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9!r§.§9M§(this.§@!9§.§7!@§.§[v§(_loc3_));
            _loc3_++;
         }
         this.§ ,§();
      }
      
      public function § ,§() : void
      {
         if(this.§9'§() || this.§@!9§ == null)
         {
            return;
         }
         if(this.§9!r§.§ ,§())
         {
            this.§@!9§.dispose();
            this.§@!9§ = null;
            this.§&'§ = this.§>0§;
            this.§>0§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
