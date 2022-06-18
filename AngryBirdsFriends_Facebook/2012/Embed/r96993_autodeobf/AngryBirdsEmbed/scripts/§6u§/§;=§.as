package §6u§
{
   import §5V§.§=5§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;=§ extends EventDispatcher
   {
       
      
      private var §>q§:String = "";
      
      private var §4!4§:String;
      
      private var §-L§:URLLoader;
      
      private var §]!E§:Dictionary;
      
      private var §'E§:String = null;
      
      private var §+!-§:String = null;
      
      private var §;T§:String = null;
      
      private var §'d§:Boolean;
      
      private var §=!6§:§=5§;
      
      private var §[!C§:§3W§;
      
      private var §]!F§:Vector.<§3W§>;
      
      private var §3]§:String = "pak";
      
      private var §#Y§:Boolean = true;
      
      private var §9b§:int = 1;
      
      public function §;=§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§]!E§ = new Dictionary();
         this.§]!F§ = new Vector.<§3W§>();
         super();
         this.§>q§ = param2;
         this.§4!4§ = param1;
         this.§#Y§ = param3;
         this.§9b§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §3W§
      {
         return this.§[!C§;
      }
      
      public function §[d§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§]!E§[param1] != null;
      }
      
      private function §!G§(param1:String) : Boolean
      {
         var _loc3_:§3W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!F§.length)
         {
            _loc3_ = this.§]!F§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§[!C§ = _loc3_;
               this.§'E§ = param1;
               this.§]!F§.splice(_loc2_,1);
               this.§]!F§.unshift(this.§[!C§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,!3§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§9f§())
         {
            if(!this.§?!H§())
            {
               this.§;T§ = param1;
               return;
            }
         }
         if(this.§[d§(param1))
         {
            this.§!G§(param1);
            if(param1 == this.§'E§ || !this.§#Y§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&;§(param1,false);
            }
         }
         else
         {
            this.§3h§(param1);
         }
      }
      
      private function §3h§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§>q§ != null && this.§>q§.length > 0)
         {
            _loc2_ = "?version=" + this.§>q§;
         }
         this.§+!-§ = param1;
         this.§-L§ = new URLLoader();
         this.§-L§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§-L§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§-L§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§-L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§-L§.load(new URLRequest(this.§4!4§ + "packages/" + param1 + "." + this.§3]§ + _loc2_));
      }
      
      private function §9f§() : Boolean
      {
         return this.§-L§ || this.§'d§;
      }
      
      private function §?!H§() : Boolean
      {
         if(this.§-L§)
         {
            this.§-L§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§-L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§-L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§-L§.close();
            this.§-L§ = null;
         }
         if(this.§'d§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§-L§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§-L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§-L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]!E§[this.§+!-§] = this.§-L§.data;
         this.§-L§ = null;
         this.§&;§(this.§+!-§,true);
      }
      
      private function §&;§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§3W§ = null;
         this.§'d§ = true;
         this.§+!-§ = param1;
         while(this.§]!F§.length >= this.§9b§)
         {
            _loc3_ = this.§]!F§.pop();
            _loc3_.dispose();
         }
         if(this.§=!6§)
         {
            this.§=!6§.dispose();
         }
         this.§[!C§ = new §3W§(param1);
         this.§]!F§.unshift(this.§[!C§);
         this.§=!6§ = new §=5§();
         this.§=!6§.addEventListener(Event.COMPLETE,this.§1x§);
         this.§=!6§.§9!"§(this.§]!E§[this.§+!-§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§-L§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§-L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§-L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§-L§.close();
         this.§-L§ = null;
         this.§+!-§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §1x§(param1:Event) : void
      {
         this.§'d§ = false;
         this.§=!6§.removeEventListener(Event.COMPLETE,this.§1x§);
         if(this.§;T§)
         {
            this.§,!3§(this.§;T§);
            this.§;T§ = null;
            return;
         }
         var _loc2_:int = this.§=!6§.§+§.§7[§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[!C§.§<V§(this.§=!6§.§+§.§5l§(_loc3_));
            _loc3_++;
         }
         this.§-^§();
      }
      
      public function §-^§() : void
      {
         if(this.§9f§() || this.§=!6§ == null)
         {
            return;
         }
         if(this.§[!C§.§-^§())
         {
            this.§=!6§.dispose();
            this.§=!6§ = null;
            this.§'E§ = this.§+!-§;
            this.§+!-§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
