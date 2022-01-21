package § !%§
{
   import §7`§.§'M§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`!F§ extends EventDispatcher
   {
       
      
      private var §9`§:String = "";
      
      private var §`!4§:String;
      
      private var §6!_§:URLLoader;
      
      private var §=X§:Dictionary;
      
      private var §<M§:String = null;
      
      private var §"u§:String = null;
      
      private var §6!F§:String = null;
      
      private var § !8§:Boolean;
      
      private var §85§:§'M§;
      
      private var §9M§:§7!>§;
      
      private var §8j§:Vector.<§7!>§>;
      
      private var §,?§:String = "pak";
      
      private var §[!Q§:Boolean = true;
      
      private var §5!9§:int = 1;
      
      public function §`!F§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=X§ = new Dictionary();
         this.§8j§ = new Vector.<§7!>§>();
         super();
         this.§9`§ = param2;
         this.§`!4§ = param1;
         this.§[!Q§ = param3;
         this.§5!9§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §7!>§
      {
         return this.§9M§;
      }
      
      public function §]N§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=X§[param1] != null;
      }
      
      private function §2I§(param1:String) : Boolean
      {
         var _loc3_:§7!>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8j§.length)
         {
            _loc3_ = this.§8j§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§9M§ = _loc3_;
               this.§<M§ = param1;
               this.§8j§.splice(_loc2_,1);
               this.§8j§.unshift(this.§9M§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<t§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§]T§())
         {
            if(!this.§"H§())
            {
               this.§6!F§ = param1;
               return;
            }
         }
         if(this.§]N§(param1))
         {
            this.§2I§(param1);
            if(param1 == this.§<M§ || !this.§[!Q§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§&1§(param1,false);
            }
         }
         else
         {
            this.§[!%§(param1);
         }
      }
      
      private function §[!%§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§9`§ != null && this.§9`§.length > 0)
         {
            _loc2_ = "?version=" + this.§9`§;
         }
         this.§"u§ = param1;
         this.§6!_§ = new URLLoader();
         this.§6!_§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§6!_§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§`F§);
         this.§6!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`F§);
         this.§6!_§.load(new URLRequest(this.§`!4§ + "packages/" + param1 + "." + this.§,?§ + _loc2_));
      }
      
      private function §]T§() : Boolean
      {
         return this.§6!_§ || this.§ !8§;
      }
      
      private function §"H§() : Boolean
      {
         if(this.§6!_§)
         {
            this.§6!_§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`F§);
            this.§6!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`F§);
            this.§6!_§.close();
            this.§6!_§ = null;
         }
         if(this.§ !8§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`F§);
         this.§6!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`F§);
         this.§=X§[this.§"u§] = this.§6!_§.data;
         this.§6!_§ = null;
         this.§&1§(this.§"u§,true);
      }
      
      private function §&1§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§7!>§ = null;
         this.§ !8§ = true;
         this.§"u§ = param1;
         while(this.§8j§.length >= this.§5!9§)
         {
            _loc3_ = this.§8j§.pop();
            _loc3_.dispose();
         }
         if(this.§85§)
         {
            this.§85§.dispose();
         }
         this.§9M§ = new §7!>§(param1);
         this.§8j§.unshift(this.§9M§);
         this.§85§ = new §'M§();
         this.§85§.addEventListener(Event.COMPLETE,this.§?J§);
         this.§85§.§,+§(this.§=X§[this.§"u§],param2);
      }
      
      private function §`F§(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§6!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`F§);
         this.§6!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`F§);
         this.§6!_§.close();
         this.§6!_§ = null;
         this.§"u§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §?J§(param1:Event) : void
      {
         this.§ !8§ = false;
         this.§85§.removeEventListener(Event.COMPLETE,this.§?J§);
         if(this.§6!F§)
         {
            this.§<t§(this.§6!F§);
            this.§6!F§ = null;
            return;
         }
         var _loc2_:int = this.§85§.§9F§.§8!$§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§9M§.§8R§(this.§85§.§9F§.§`Z§(_loc3_));
            _loc3_++;
         }
         this.§0%§();
      }
      
      public function §0%§() : void
      {
         if(this.§]T§() || this.§85§ == null)
         {
            return;
         }
         if(this.§9M§.§0%§())
         {
            this.§85§.dispose();
            this.§85§ = null;
            this.§<M§ = this.§"u§;
            this.§"u§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
