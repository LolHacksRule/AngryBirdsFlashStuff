package §#e§
{
   import §]p§.§%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §1b§ extends EventDispatcher
   {
       
      
      private var §+X§:String = "";
      
      private var §[!J§:String;
      
      private var §5o§:URLLoader;
      
      private var §55§:Dictionary;
      
      private var §^&§:String = null;
      
      private var §9V§:String = null;
      
      private var §9[§:String = null;
      
      private var §5!#§:Boolean;
      
      private var §@+§:§%§;
      
      private var §2"§:§'?§;
      
      private var §`!+§:Vector.<§'?§>;
      
      private var §6!'§:String = "pak";
      
      private var §-Z§:Boolean = true;
      
      private var § n§:int = 1;
      
      public function §1b§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§55§ = new Dictionary();
         this.§`!+§ = new Vector.<§'?§>();
         super();
         this.§+X§ = param2;
         this.§[!J§ = param1;
         this.§-Z§ = param3;
         this.§ n§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function §5l§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§55§[param1] != null;
      }
      
      private function §4!K§(param1:String) : Boolean
      {
         var _loc3_:§'?§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!+§.length)
         {
            _loc3_ = this.§`!+§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§2"§ = _loc3_;
               this.§^&§ = param1;
               this.§`!+§.splice(_loc2_,1);
               this.§`!+§.unshift(this.§2"§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §+W§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§8b§())
         {
            if(!this.§'!4§())
            {
               this.§9[§ = param1;
               return;
            }
         }
         if(this.§5l§(param1))
         {
            this.§4!K§(param1);
            if(param1 == this.§^&§ || !this.§-Z§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§3w§(param1,false);
            }
         }
         else
         {
            this.§=!>§(param1);
         }
      }
      
      private function §=!>§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§+X§ != null && this.§+X§.length > 0)
         {
            _loc2_ = "?version=" + this.§+X§;
         }
         this.§9V§ = param1;
         this.§5o§ = new URLLoader();
         this.§5o§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§5o§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5o§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5o§.load(new URLRequest(this.§[!J§ + "packages/" + param1 + "." + this.§6!'§ + _loc2_));
      }
      
      private function §8b§() : Boolean
      {
         return this.§5o§ || this.§5!#§;
      }
      
      private function §'!4§() : Boolean
      {
         if(this.§5o§)
         {
            this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§5o§.close();
            this.§5o§ = null;
         }
         if(this.§5!#§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§55§[this.§9V§] = this.§5o§.data;
         this.§5o§ = null;
         this.§3w§(this.§9V§,true);
      }
      
      private function §3w§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§'?§ = null;
         this.§5!#§ = true;
         this.§9V§ = param1;
         while(this.§`!+§.length >= this.§ n§)
         {
            _loc3_ = this.§`!+§.pop();
            _loc3_.dispose();
         }
         if(this.§@+§)
         {
            this.§@+§.dispose();
         }
         this.§2"§ = new §'?§(param1);
         this.§`!+§.unshift(this.§2"§);
         this.§@+§ = new §%§();
         this.§@+§.addEventListener(Event.COMPLETE,this.§>L§);
         this.§@+§.§!$§(this.§55§[this.§9V§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5o§.close();
         this.§5o§ = null;
         this.§9V§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §>L§(param1:Event) : void
      {
         this.§5!#§ = false;
         this.§@+§.removeEventListener(Event.COMPLETE,this.§>L§);
         if(this.§9[§)
         {
            this.§+W§(this.§9[§);
            this.§9[§ = null;
            return;
         }
         var _loc2_:int = this.§@+§.§;k§.§!!G§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2"§.§!=§(this.§@+§.§;k§.§`a§(_loc3_));
            _loc3_++;
         }
         this.§7E§();
      }
      
      public function §7E§() : void
      {
         if(this.§8b§() || this.§@+§ == null)
         {
            return;
         }
         if(this.§2"§.§7E§())
         {
            this.§@+§.dispose();
            this.§@+§ = null;
            this.§^&§ = this.§9V§;
            this.§9V§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
