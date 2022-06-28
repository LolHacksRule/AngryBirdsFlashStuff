package §5`§
{
   import §+!%§.§1!E§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §@B§ extends EventDispatcher
   {
       
      
      private var §]X§:String = "";
      
      private var §7H§:String;
      
      private var §4!H§:URLLoader;
      
      private var §^2§:Dictionary;
      
      private var §4J§:String = null;
      
      private var §`z§:String = null;
      
      private var §-d§:String = null;
      
      private var §;!F§:Boolean;
      
      private var §0!E§:§1!E§;
      
      private var §^S§:§?y§;
      
      private var §'K§:Vector.<§?y§>;
      
      private var §[!+§:String = "pak";
      
      private var §!g§:Boolean = true;
      
      private var §2^§:int = 1;
      
      public function §@B§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§^2§ = new Dictionary();
         this.§'K§ = new Vector.<§?y§>();
         super();
         this.§]X§ = param2;
         this.§7H§ = param1;
         this.§!g§ = param3;
         this.§2^§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function § b§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§^2§[param1] != null;
      }
      
      private function §??§(param1:String) : Boolean
      {
         var _loc3_:§?y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'K§.length)
         {
            _loc3_ = this.§'K§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§^S§ = _loc3_;
               this.§4J§ = param1;
               this.§'K§.splice(_loc2_,1);
               this.§'K§.unshift(this.§^S§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[!2§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§]G§())
         {
            if(!this.§=B§())
            {
               this.§-d§ = param1;
               return;
            }
         }
         if(this.§ b§(param1))
         {
            this.§??§(param1);
            if(param1 == this.§4J§ || !this.§!g§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§]Z§(param1,false);
            }
         }
         else
         {
            this.§3=§(param1);
         }
      }
      
      private function §3=§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§]X§ != null && this.§]X§.length > 0)
         {
            _loc2_ = "?version=" + this.§]X§;
         }
         this.§`z§ = param1;
         this.§4!H§ = new URLLoader();
         this.§4!H§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§4!H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4!H§.load(new URLRequest(this.§7H§ + "packages/" + param1 + "." + this.§[!+§ + _loc2_));
      }
      
      private function §]G§() : Boolean
      {
         return this.§4!H§ || this.§;!F§;
      }
      
      private function §=B§() : Boolean
      {
         if(this.§4!H§)
         {
            this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§4!H§.close();
            this.§4!H§ = null;
         }
         if(this.§;!F§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^2§[this.§`z§] = this.§4!H§.data;
         this.§4!H§ = null;
         this.§]Z§(this.§`z§,true);
      }
      
      private function §]Z§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§?y§ = null;
         this.§;!F§ = true;
         this.§`z§ = param1;
         while(this.§'K§.length >= this.§2^§)
         {
            _loc3_ = this.§'K§.pop();
            _loc3_.dispose();
         }
         if(this.§0!E§)
         {
            this.§0!E§.dispose();
         }
         this.§^S§ = new §?y§(param1);
         this.§'K§.unshift(this.§^S§);
         this.§0!E§ = new §1!E§();
         this.§0!E§.addEventListener(Event.COMPLETE,this.§+1§);
         this.§0!E§.§6!'§(this.§^2§[this.§`z§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§4!H§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4!H§.close();
         this.§4!H§ = null;
         this.§`z§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §+1§(param1:Event) : void
      {
         this.§;!F§ = false;
         this.§0!E§.removeEventListener(Event.COMPLETE,this.§+1§);
         if(this.§-d§)
         {
            this.§[!2§(this.§-d§);
            this.§-d§ = null;
            return;
         }
         var _loc2_:int = this.§0!E§.§;Y§.§[F§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^S§.§6v§(this.§0!E§.§;Y§.§"!=§(_loc3_));
            _loc3_++;
         }
         this.§4+§();
      }
      
      public function §4+§() : void
      {
         if(this.§]G§() || this.§0!E§ == null)
         {
            return;
         }
         if(this.§^S§.§4+§())
         {
            this.§0!E§.dispose();
            this.§0!E§ = null;
            this.§4J§ = this.§`z§;
            this.§`z§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
