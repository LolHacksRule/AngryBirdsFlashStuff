package §<A§
{
   import §-!D§.§>d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §8t§ extends EventDispatcher
   {
       
      
      private var §6a§:String = "";
      
      private var §3@§:String;
      
      private var §^!E§:URLLoader;
      
      private var §'!4§:Dictionary;
      
      private var §2!C§:String = null;
      
      private var §^! §:String = null;
      
      private var §%§:String = null;
      
      private var §8!E§:Boolean;
      
      private var §]b§:§>d§;
      
      private var §@!8§:§'K§;
      
      private var §-!6§:Vector.<§'K§>;
      
      private var §<q§:String = "pak";
      
      private var §&>§:Boolean = true;
      
      private var §`f§:int = 1;
      
      public function §8t§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§'!4§ = new Dictionary();
         this.§-!6§ = new Vector.<§'K§>();
         super();
         this.§6a§ = param2;
         this.§3@§ = param1;
         this.§&>§ = param3;
         this.§`f§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §'K§
      {
         return this.§@!8§;
      }
      
      public function §[A§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§'!4§[param1] != null;
      }
      
      private function §-=§(param1:String) : Boolean
      {
         var _loc3_:§'K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!6§.length)
         {
            _loc3_ = this.§-!6§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§@!8§ = _loc3_;
               this.§2!C§ = param1;
               this.§-!6§.splice(_loc2_,1);
               this.§-!6§.unshift(this.§@!8§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §!!5§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§0!B§())
         {
            if(!this.§>!'§())
            {
               this.§%§ = param1;
               return;
            }
         }
         if(this.§[A§(param1))
         {
            this.§-=§(param1);
            if(param1 == this.§2!C§ || !this.§&>§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§package§(param1,false);
            }
         }
         else
         {
            this.§7!%§(param1);
         }
      }
      
      private function §7!%§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6a§ != null && this.§6a§.length > 0)
         {
            _loc2_ = "?version=" + this.§6a§;
         }
         this.§^! § = param1;
         this.§^!E§ = new URLLoader();
         this.§^!E§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§^!E§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^!E§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!E§.load(new URLRequest(this.§3@§ + "packages/" + param1 + "." + this.§<q§ + _loc2_));
      }
      
      private function §0!B§() : Boolean
      {
         return this.§^!E§ || this.§8!E§;
      }
      
      private function §>!'§() : Boolean
      {
         if(this.§^!E§)
         {
            this.§^!E§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§^!E§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§^!E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§^!E§.close();
            this.§^!E§ = null;
         }
         if(this.§8!E§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!E§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!E§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§'!4§[this.§^! §] = this.§^!E§.data;
         this.§^!E§ = null;
         this.§package§(this.§^! §,true);
      }
      
      private function §package§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§'K§ = null;
         this.§8!E§ = true;
         this.§^! § = param1;
         while(this.§-!6§.length >= this.§`f§)
         {
            _loc3_ = this.§-!6§.pop();
            _loc3_.dispose();
         }
         if(this.§]b§)
         {
            this.§]b§.dispose();
         }
         this.§@!8§ = new §'K§(param1);
         this.§-!6§.unshift(this.§@!8§);
         this.§]b§ = new §>d§();
         this.§]b§.addEventListener(Event.COMPLETE,this.§ b§);
         this.§]b§.§[^§(this.§'!4§[this.§^! §],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§^!E§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^!E§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^!E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^!E§.close();
         this.§^!E§ = null;
         this.§^! § = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function § b§(param1:Event) : void
      {
         this.§8!E§ = false;
         this.§]b§.removeEventListener(Event.COMPLETE,this.§ b§);
         if(this.§%§)
         {
            this.§!!5§(this.§%§);
            this.§%§ = null;
            return;
         }
         var _loc2_:int = this.§]b§.§9-§.§'!;§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§@!8§.§^!?§(this.§]b§.§9-§.§83§(_loc3_));
            _loc3_++;
         }
         this.§7r§();
      }
      
      public function §7r§() : void
      {
         if(this.§0!B§() || this.§]b§ == null)
         {
            return;
         }
         if(this.§@!8§.§7r§())
         {
            this.§]b§.dispose();
            this.§]b§ = null;
            this.§2!C§ = this.§^! §;
            this.§^! § = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
