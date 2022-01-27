package §3!§
{
   import §2=§.§>q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §'!?§ extends EventDispatcher
   {
       
      
      private var §42§:String = "";
      
      private var §-!R§:String;
      
      private var §7!K§:URLLoader;
      
      private var §#@§:Dictionary;
      
      private var §+!<§:String = null;
      
      private var §`s§:String = null;
      
      private var §"b§:String = null;
      
      private var §9§:Boolean;
      
      private var §5K§:§>q§;
      
      private var §-!<§:§-e§;
      
      private var §"!O§:Vector.<§-e§>;
      
      private var §!,§:String = "pak";
      
      private var §,i§:Boolean = true;
      
      private var §+n§:int = 1;
      
      public function §'!?§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§#@§ = new Dictionary();
         this.§"!O§ = new Vector.<§-e§>();
         super();
         this.§42§ = param2;
         this.§-!R§ = param1;
         this.§,i§ = param3;
         this.§+n§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §-e§
      {
         return this.§-!<§;
      }
      
      public function §&x§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§#@§[param1] != null;
      }
      
      private function §`a§(param1:String) : Boolean
      {
         var _loc3_:§-e§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!O§.length)
         {
            _loc3_ = this.§"!O§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§-!<§ = _loc3_;
               this.§+!<§ = param1;
               this.§"!O§.splice(_loc2_,1);
               this.§"!O§.unshift(this.§-!<§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,T§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§-!U§())
         {
            if(!this.§?!>§())
            {
               this.§"b§ = param1;
               return;
            }
         }
         if(this.§&x§(param1))
         {
            this.§`a§(param1);
            if(param1 == this.§+!<§ || !this.§,i§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§[!@§(param1,false);
            }
         }
         else
         {
            this.§`U§(param1);
         }
      }
      
      private function §`U§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§42§ != null && this.§42§.length > 0)
         {
            _loc2_ = "?version=" + this.§42§;
         }
         this.§`s§ = param1;
         this.§7!K§ = new URLLoader();
         this.§7!K§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§7!K§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§7!K§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!,§);
         this.§7!K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!,§);
         this.§7!K§.load(new URLRequest(this.§-!R§ + "packages/" + param1 + "." + this.§!,§ + _loc2_));
      }
      
      private function §-!U§() : Boolean
      {
         return this.§7!K§ || this.§9§;
      }
      
      private function §?!>§() : Boolean
      {
         if(this.§7!K§)
         {
            this.§7!K§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§7!K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!,§);
            this.§7!K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!,§);
            this.§7!K§.close();
            this.§7!K§ = null;
         }
         if(this.§9§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§7!K§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§7!K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!,§);
         this.§7!K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!,§);
         this.§#@§[this.§`s§] = this.§7!K§.data;
         this.§7!K§ = null;
         this.§[!@§(this.§`s§,true);
      }
      
      private function §[!@§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§-e§ = null;
         this.§9§ = true;
         this.§`s§ = param1;
         while(this.§"!O§.length >= this.§+n§)
         {
            _loc3_ = this.§"!O§.pop();
            _loc3_.dispose();
         }
         if(this.§5K§)
         {
            this.§5K§.dispose();
         }
         this.§-!<§ = new §-e§(param1);
         this.§"!O§.unshift(this.§-!<§);
         this.§5K§ = new §>q§();
         this.§5K§.addEventListener(Event.COMPLETE,this.§]B§);
         this.§5K§.§+!E§(this.§#@§[this.§`s§],param2);
      }
      
      private function §#!,§(param1:Event) : void
      {
         this.§7!K§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§7!K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!,§);
         this.§7!K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#!,§);
         this.§7!K§.close();
         this.§7!K§ = null;
         this.§`s§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]B§(param1:Event) : void
      {
         this.§9§ = false;
         this.§5K§.removeEventListener(Event.COMPLETE,this.§]B§);
         if(this.§"b§)
         {
            this.§,T§(this.§"b§);
            this.§"b§ = null;
            return;
         }
         var _loc2_:int = this.§5K§.§9!G§.§1n§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§-!<§.§>A§(this.§5K§.§9!G§.§?!0§(_loc3_));
            _loc3_++;
         }
         this.§?P§();
      }
      
      public function §?P§() : void
      {
         if(this.§-!U§() || this.§5K§ == null)
         {
            return;
         }
         if(this.§-!<§.§?P§())
         {
            this.§5K§.dispose();
            this.§5K§ = null;
            this.§+!<§ = this.§`s§;
            this.§`s§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
