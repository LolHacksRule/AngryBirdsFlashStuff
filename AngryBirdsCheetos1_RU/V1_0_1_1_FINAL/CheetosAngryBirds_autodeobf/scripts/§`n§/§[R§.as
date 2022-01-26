package §`n§
{
   import §!b§.§8!6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §[R§ extends EventDispatcher
   {
       
      
      private var §0!L§:String = "";
      
      private var §;!a§:String;
      
      private var §=x§:URLLoader;
      
      private var §1+§:Dictionary;
      
      private var § #§:String = null;
      
      private var §]e§:String = null;
      
      private var §0?§:String = null;
      
      private var §!B§:Boolean;
      
      private var §5"§:§8!6§;
      
      private var §4=§:§#H§;
      
      private var §>!$§:Vector.<§#H§>;
      
      private var §9!@§:String = "pak";
      
      private var §#!6§:Boolean = true;
      
      private var §]!M§:int = 1;
      
      public function §[R§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§1+§ = new Dictionary();
         this.§>!$§ = new Vector.<§#H§>();
         super();
         this.§0!L§ = param2;
         this.§;!a§ = param1;
         this.§#!6§ = param3;
         this.§]!M§ = Math.max(1,param4);
      }
      
      public function get §1S§() : §#H§
      {
         return this.§4=§;
      }
      
      public function §-0§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§1+§[param1] != null;
      }
      
      private function §;X§(param1:String) : Boolean
      {
         var _loc3_:§#H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!$§.length)
         {
            _loc3_ = this.§>!$§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§4=§ = _loc3_;
               this.§ #§ = param1;
               this.§>!$§.splice(_loc2_,1);
               this.§>!$§.unshift(this.§4=§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!W§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§65§())
         {
            if(!this.§1u§())
            {
               this.§0?§ = param1;
               return;
            }
         }
         if(this.§-0§(param1))
         {
            this.§;X§(param1);
            if(param1 == this.§ #§ || !this.§#!6§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§,!4§(param1,false);
            }
         }
         else
         {
            this.§2!-§(param1);
         }
      }
      
      private function §2!-§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§0!L§ != null && this.§0!L§.length > 0)
         {
            _loc2_ = "?version=" + this.§0!L§;
         }
         this.§]e§ = param1;
         this.§=x§ = new URLLoader();
         this.§=x§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§=x§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§=x§.addEventListener(IOErrorEvent.IO_ERROR,this.§'!O§);
         this.§=x§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!O§);
         this.§=x§.load(new URLRequest(this.§;!a§ + "packages/" + param1 + "." + this.§9!@§ + _loc2_));
      }
      
      private function §65§() : Boolean
      {
         return this.§=x§ || this.§!B§;
      }
      
      private function §1u§() : Boolean
      {
         if(this.§=x§)
         {
            this.§=x§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§=x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!O§);
            this.§=x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!O§);
            this.§=x§.close();
            this.§=x§ = null;
         }
         if(this.§!B§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§=x§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§=x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!O§);
         this.§=x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!O§);
         this.§1+§[this.§]e§] = this.§=x§.data;
         this.§=x§ = null;
         this.§,!4§(this.§]e§,true);
      }
      
      private function §,!4§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§#H§ = null;
         this.§!B§ = true;
         this.§]e§ = param1;
         while(this.§>!$§.length >= this.§]!M§)
         {
            _loc3_ = this.§>!$§.pop();
            _loc3_.dispose();
         }
         if(this.§5"§)
         {
            this.§5"§.dispose();
         }
         this.§4=§ = new §#H§(param1);
         this.§>!$§.unshift(this.§4=§);
         this.§5"§ = new §8!6§();
         this.§5"§.addEventListener(Event.COMPLETE,this.§-!]§);
         this.§5"§.§8!P§(this.§1+§[this.§]e§],param2);
      }
      
      private function §'!O§(param1:Event) : void
      {
         this.§=x§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§=x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!O§);
         this.§=x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!O§);
         this.§=x§.close();
         this.§=x§ = null;
         this.§]e§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §-!]§(param1:Event) : void
      {
         this.§!B§ = false;
         this.§5"§.removeEventListener(Event.COMPLETE,this.§-!]§);
         if(this.§0?§)
         {
            this.§?!W§(this.§0?§);
            this.§0?§ = null;
            return;
         }
         var _loc2_:int = this.§5"§.static.§?8§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4=§.§3!-§(this.§5"§.static.§&8§(_loc3_));
            _loc3_++;
         }
         this.§44§();
      }
      
      public function §44§() : void
      {
         if(this.§65§() || this.§5"§ == null)
         {
            return;
         }
         if(this.§4=§.§44§())
         {
            this.§5"§.dispose();
            this.§5"§ = null;
            this.§ #§ = this.§]e§;
            this.§]e§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
