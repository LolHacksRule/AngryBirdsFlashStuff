package §`!H§
{
   import §=+§.§#O§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §+3§ extends EventDispatcher
   {
       
      
      private var §8!E§:String = "";
      
      private var §9!%§:String;
      
      private var §,!H§:URLLoader;
      
      private var §"H§:Dictionary;
      
      private var §[f§:String = null;
      
      private var §<s§:String = null;
      
      private var §+h§:String = null;
      
      private var §^!5§:Boolean;
      
      private var §<-§:§#O§;
      
      private var §6!;§:§@!E§;
      
      private var §'L§:Vector.<§@!E§>;
      
      private var §'a§:String = "pak";
      
      private var §^!2§:Boolean = true;
      
      private var §1k§:int = 1;
      
      public function §+3§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§"H§ = new Dictionary();
         this.§'L§ = new Vector.<§@!E§>();
         super();
         this.§8!E§ = param2;
         this.§9!%§ = param1;
         this.§^!2§ = param3;
         this.§1k§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §@!E§
      {
         return this.§6!;§;
      }
      
      public function §]O§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§"H§[param1] != null;
      }
      
      private function §-d§(param1:String) : Boolean
      {
         var _loc3_:§@!E§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'L§.length)
         {
            _loc3_ = this.§'L§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§6!;§ = _loc3_;
               this.§[f§ = param1;
               this.§'L§.splice(_loc2_,1);
               this.§'L§.unshift(this.§6!;§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=Z§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§8!B§())
         {
            if(!this.§1!;§())
            {
               this.§+h§ = param1;
               return;
            }
         }
         if(this.§]O§(param1))
         {
            this.§-d§(param1);
            if(param1 == this.§[f§ || !this.§^!2§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§%q§(param1,false);
            }
         }
         else
         {
            this.§?!+§(param1);
         }
      }
      
      private function §?!+§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§8!E§ != null && this.§8!E§.length > 0)
         {
            _loc2_ = "?version=" + this.§8!E§;
         }
         this.§<s§ = param1;
         this.§,!H§ = new URLLoader();
         this.§,!H§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§,!H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§,!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!3§);
         this.§,!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!3§);
         this.§,!H§.load(new URLRequest(this.§9!%§ + "packages/" + param1 + "." + this.§'a§ + _loc2_));
      }
      
      private function §8!B§() : Boolean
      {
         return this.§,!H§ || this.§^!5§;
      }
      
      private function §1!;§() : Boolean
      {
         if(this.§,!H§)
         {
            this.§,!H§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§,!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!3§);
            this.§,!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!3§);
            this.§,!H§.close();
            this.§,!H§ = null;
         }
         if(this.§^!5§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§,!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§,!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!3§);
         this.§,!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!3§);
         this.§"H§[this.§<s§] = this.§,!H§.data;
         this.§,!H§ = null;
         this.§%q§(this.§<s§,true);
      }
      
      private function §%q§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§@!E§ = null;
         this.§^!5§ = true;
         this.§<s§ = param1;
         while(this.§'L§.length >= this.§1k§)
         {
            _loc3_ = this.§'L§.pop();
            _loc3_.dispose();
         }
         if(this.§<-§)
         {
            this.§<-§.dispose();
         }
         this.§6!;§ = new §@!E§(param1);
         this.§'L§.unshift(this.§6!;§);
         this.§<-§ = new §#O§();
         this.§<-§.addEventListener(Event.COMPLETE,this.§>!X§);
         this.§<-§.§`!2§(this.§"H§[this.§<s§],param2);
      }
      
      private function §-!3§(param1:Event) : void
      {
         this.§,!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§,!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!3§);
         this.§,!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!3§);
         this.§,!H§.close();
         this.§,!H§ = null;
         this.§<s§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §>!X§(param1:Event) : void
      {
         this.§^!5§ = false;
         this.§<-§.removeEventListener(Event.COMPLETE,this.§>!X§);
         if(this.§+h§)
         {
            this.§=Z§(this.§+h§);
            this.§+h§ = null;
            return;
         }
         var _loc2_:int = this.§<-§.§9F§.§9+§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§6!;§.§,8§(this.§<-§.§9F§.§>y§(_loc3_));
            _loc3_++;
         }
         this.§6D§();
      }
      
      public function §6D§() : void
      {
         if(this.§8!B§() || this.§<-§ == null)
         {
            return;
         }
         if(this.§6!;§.§6D§())
         {
            this.§<-§.dispose();
            this.§<-§ = null;
            this.§[f§ = this.§<s§;
            this.§<s§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
