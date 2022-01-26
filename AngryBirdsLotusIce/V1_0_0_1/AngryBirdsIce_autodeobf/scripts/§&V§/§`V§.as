package §&V§
{
   import §,!$§.§[! §;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`V§ extends EventDispatcher
   {
       
      
      private var § $§:String = "";
      
      private var §%1§:String;
      
      private var §<6§:URLLoader;
      
      private var §=!'§:Dictionary;
      
      private var §@c§:String = null;
      
      private var §+!7§:String = null;
      
      private var §0!%§:String = null;
      
      private var § b§:Boolean;
      
      private var §-X§:§[! §;
      
      private var §^!&§:§,w§;
      
      private var §+c§:Vector.<§,w§>;
      
      private var §>F§:String = "pak";
      
      private var §9]§:Boolean = true;
      
      private var §9_§:int = 1;
      
      public function §`V§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=!'§ = new Dictionary();
         this.§+c§ = new Vector.<§,w§>();
         super();
         this.§ $§ = param2;
         this.§%1§ = param1;
         this.§9]§ = param3;
         this.§9_§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §,w§
      {
         return this.§^!&§;
      }
      
      public function §8`§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=!'§[param1] != null;
      }
      
      private function §<h§(param1:String) : Boolean
      {
         var _loc3_:§,w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+c§.length)
         {
            _loc3_ = this.§+c§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^!&§ = _loc3_;
               this.§@c§ = param1;
               this.§+c§.splice(_loc2_,1);
               this.§+c§.unshift(this.§^!&§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §"! §(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§4J§())
         {
            if(!this.§=R§())
            {
               this.§0!%§ = param1;
               return;
            }
         }
         if(this.§8`§(param1))
         {
            this.§<h§(param1);
            if(param1 == this.§@c§ || !this.§9]§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§+v§(param1,false);
            }
         }
         else
         {
            this.§6!2§(param1);
         }
      }
      
      private function §6!2§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§ $§ != null && this.§ $§.length > 0)
         {
            _loc2_ = "?version=" + this.§ $§;
         }
         this.§+!7§ = param1;
         this.§<6§ = new URLLoader();
         this.§<6§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§<6§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<6§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<6§.load(new URLRequest(this.§%1§ + "packages/" + param1 + "." + this.§>F§ + _loc2_));
      }
      
      private function §4J§() : Boolean
      {
         return this.§<6§ || this.§ b§;
      }
      
      private function §=R§() : Boolean
      {
         if(this.§<6§)
         {
            this.§<6§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§<6§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§<6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§<6§.close();
            this.§<6§ = null;
         }
         if(this.§ b§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§<6§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<6§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§=!'§[this.§+!7§] = this.§<6§.data;
         this.§<6§ = null;
         this.§+v§(this.§+!7§,true);
      }
      
      private function §+v§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§,w§ = null;
         this.§ b§ = true;
         this.§+!7§ = param1;
         while(this.§+c§.length >= this.§9_§)
         {
            _loc3_ = this.§+c§.pop();
            _loc3_.dispose();
         }
         if(this.§-X§)
         {
            this.§-X§.dispose();
         }
         this.§^!&§ = new §,w§(param1);
         this.§+c§.unshift(this.§^!&§);
         this.§-X§ = new §[! §();
         this.§-X§.addEventListener(Event.COMPLETE,this.§'!H§);
         this.§-X§.§[D§(this.§=!'§[this.§+!7§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§<6§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<6§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<6§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<6§.close();
         this.§<6§ = null;
         this.§+!7§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §'!H§(param1:Event) : void
      {
         this.§ b§ = false;
         this.§-X§.removeEventListener(Event.COMPLETE,this.§'!H§);
         if(this.§0!%§)
         {
            this.§"! §(this.§0!%§);
            this.§0!%§ = null;
            return;
         }
         var _loc2_:int = this.§-X§.§^!%§.§]0§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^!&§.§[K§(this.§-X§.§^!%§.§'2§(_loc3_));
            _loc3_++;
         }
         this.§const§();
      }
      
      public function §const§() : void
      {
         if(this.§4J§() || this.§-X§ == null)
         {
            return;
         }
         if(this.§^!&§.§const§())
         {
            this.§-X§.dispose();
            this.§-X§ = null;
            this.§@c§ = this.§+!7§;
            this.§+!7§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
