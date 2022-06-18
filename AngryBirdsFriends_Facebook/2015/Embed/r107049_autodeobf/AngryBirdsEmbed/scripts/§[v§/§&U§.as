package §[v§
{
   import §0b§.§,!D§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §&U§ extends EventDispatcher
   {
       
      
      private var §`z§:String = "";
      
      protected var §<!,§:String;
      
      private var §&d§:URLLoader;
      
      private var §>!?§:Dictionary;
      
      private var §]!B§:String = null;
      
      private var §<<§:String = null;
      
      private var §[M§:String = null;
      
      private var §%X§:Boolean;
      
      private var §5!'§:§,!D§;
      
      private var §4d§:§0&§;
      
      private var §1P§:Vector.<§0&§>;
      
      protected var §[`§:String = "pak";
      
      private var §[h§:Boolean = true;
      
      private var §<H§:int = 1;
      
      public function §&U§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§>!?§ = new Dictionary();
         this.§1P§ = new Vector.<§0&§>();
         super();
         this.§`z§ = param2;
         this.§<!,§ = param1;
         this.§[h§ = param3;
         this.§<H§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §0&§
      {
         return this.§4d§;
      }
      
      public function §,!0§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§>!?§[param1] != null;
      }
      
      private function §1L§(param1:String) : Boolean
      {
         var _loc3_:§0&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1P§.length)
         {
            _loc3_ = this.§1P§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§4d§ = _loc3_;
               this.§]!B§ = param1;
               this.§1P§.splice(_loc2_,1);
               this.§1P§.unshift(this.§4d§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,l§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§;I§())
         {
            if(!this.§!v§())
            {
               this.§[M§ = param1;
               return;
            }
         }
         if(this.§,!0§(param1))
         {
            this.§1L§(param1);
            if(param1 == this.§]!B§ || !this.§[h§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§?<§(param1,false);
            }
         }
         else
         {
            this.§"!3§(param1);
         }
      }
      
      protected function §"!3§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         if(this.§`z§ != null && this.§`z§.length > 0)
         {
            _loc2_ = "?version=" + this.§`z§;
         }
         this.§<<§ = param1;
         this.§&d§ = new URLLoader();
         this.§&d§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§&d§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&d§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&d§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1.indexOf("crossdomain.xml") == -1)
         {
            _loc3_ = this.§,N§(param1);
         }
         else
         {
            _loc3_ = this.§<!,§ + "/crossdomain.xml";
         }
         this.§&d§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §,N§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§[`§;
      }
      
      private function §;I§() : Boolean
      {
         return this.§&d§ || this.§%X§;
      }
      
      private function §!v§() : Boolean
      {
         if(this.§&d§)
         {
            this.§&d§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&d§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&d§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&d§.close();
            this.§&d§ = null;
         }
         if(this.§%X§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&d§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&d§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&d§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>!?§[this.§<<§] = this.§&d§.data;
         this.§&d§ = null;
         this.§?<§(this.§<<§,true);
      }
      
      private function §?<§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§0&§ = null;
         this.§%X§ = true;
         this.§<<§ = param1;
         while(this.§1P§.length >= this.§<H§)
         {
            _loc3_ = this.§1P§.pop();
            _loc3_.dispose();
         }
         if(this.§5!'§)
         {
            this.§5!'§.dispose();
         }
         this.§4d§ = new §0&§(param1);
         this.§1P§.unshift(this.§4d§);
         this.§5!'§ = new §,!D§();
         this.§5!'§.addEventListener(Event.COMPLETE,this.§!j§);
         this.§5!'§.§0M§(this.§<<§);
         this.§5!'§.§-!'§(this.§>!?§[this.§<<§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§&d§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&d§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&d§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&d§.close();
         this.§&d§ = null;
         this.§<<§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §!j§(param1:Event) : void
      {
         this.§%X§ = false;
         this.§5!'§.removeEventListener(Event.COMPLETE,this.§!j§);
         if(this.§[M§)
         {
            this.§,l§(this.§[M§);
            this.§[M§ = null;
            return;
         }
         var _loc2_:int = this.§5!'§.§4V§.§;!%§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§4d§.§!J§(this.§5!'§.§4V§.§>O§(_loc3_));
            _loc3_++;
         }
         this.§;! §();
      }
      
      public function §;! §() : void
      {
         if(this.§;I§() || this.§5!'§ == null)
         {
            return;
         }
         if(this.§4d§.§;! §())
         {
            this.§5!'§.dispose();
            this.§5!'§ = null;
            this.§]!B§ = this.§<<§;
            this.§<<§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
