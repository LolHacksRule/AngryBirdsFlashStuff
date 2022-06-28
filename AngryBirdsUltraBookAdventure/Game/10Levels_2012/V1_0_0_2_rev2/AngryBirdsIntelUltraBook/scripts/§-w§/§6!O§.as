package §-w§
{
   import §%e§.§[P§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §6!O§ extends EventDispatcher
   {
       
      
      private var §6!4§:String = "";
      
      private var §,!o§:String;
      
      private var §'D§:URLLoader;
      
      private var §9![§:Dictionary;
      
      private var §8!&§:String = null;
      
      private var §9!+§:String = null;
      
      private var §0!%§:String = null;
      
      private var §+!x§:Boolean;
      
      private var §2z§:§[P§;
      
      private var §;!t§:§,Q§;
      
      private var §5T§:Vector.<§,Q§>;
      
      private var §,s§:String = "pak";
      
      private var § r§:Boolean = true;
      
      private var §4!o§:int = 1;
      
      public function §6!O§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§9![§ = new Dictionary();
         this.§5T§ = new Vector.<§,Q§>();
         super();
         this.§6!4§ = param2;
         this.§,!o§ = param1;
         this.§ r§ = param3;
         this.§4!o§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function §@!s§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§9![§[param1] != null;
      }
      
      private function §`!s§(param1:String) : Boolean
      {
         var _loc3_:§,Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5T§.length)
         {
            _loc3_ = this.§5T§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§;!t§ = _loc3_;
               this.§8!&§ = param1;
               this.§5T§.splice(_loc2_,1);
               this.§5T§.unshift(this.§;!t§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<!I§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§2Q§())
         {
            if(!this.§ k§())
            {
               this.§0!%§ = param1;
               return;
            }
         }
         if(this.§@!s§(param1))
         {
            this.§`!s§(param1);
            if(param1 == this.§8!&§ || !this.§ r§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§7!j§(param1,false);
            }
         }
         else
         {
            this.§4!p§(param1);
         }
      }
      
      private function §4!p§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§6!4§ != null && this.§6!4§.length > 0)
         {
            _loc2_ = "?version=" + this.§6!4§;
         }
         this.§9!+§ = param1;
         this.§'D§ = new URLLoader();
         this.§'D§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§'D§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§'D§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§'D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§'D§.load(new URLRequest(this.§,!o§ + "packages/" + param1 + "." + this.§,s§ + _loc2_));
      }
      
      private function §2Q§() : Boolean
      {
         return this.§'D§ || this.§+!x§;
      }
      
      private function § k§() : Boolean
      {
         if(this.§'D§)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§'D§.close();
            this.§'D§ = null;
         }
         if(this.§+!x§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9![§[this.§9!+§] = this.§'D§.data;
         this.§'D§ = null;
         this.§7!j§(this.§9!+§,true);
      }
      
      private function §7!j§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§,Q§ = null;
         this.§+!x§ = true;
         this.§9!+§ = param1;
         while(this.§5T§.length >= this.§4!o§)
         {
            _loc3_ = this.§5T§.pop();
            _loc3_.dispose();
         }
         if(this.§2z§)
         {
            this.§2z§.dispose();
         }
         this.§;!t§ = new §,Q§(param1);
         this.§5T§.unshift(this.§;!t§);
         this.§2z§ = new §[P§();
         this.§2z§.addEventListener(Event.COMPLETE,this.§>e§);
         this.§2z§.§get §(this.§9![§[this.§9!+§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§'D§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§'D§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§'D§.close();
         this.§'D§ = null;
         this.§9!+§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §>e§(param1:Event) : void
      {
         this.§+!x§ = false;
         this.§2z§.removeEventListener(Event.COMPLETE,this.§>e§);
         if(this.§0!%§)
         {
            this.§<!I§(this.§0!%§);
            this.§0!%§ = null;
            return;
         }
         var _loc2_:int = this.§2z§.§`Q§.§2P§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;!t§.§9!$§(this.§2z§.§`Q§.§@y§(_loc3_));
            _loc3_++;
         }
         this.§]!b§();
      }
      
      public function §]!b§() : void
      {
         if(this.§2Q§() || this.§2z§ == null)
         {
            return;
         }
         if(this.§;!t§.§]!b§())
         {
            this.§2z§.dispose();
            this.§2z§ = null;
            this.§8!&§ = this.§9!+§;
            this.§9!+§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
