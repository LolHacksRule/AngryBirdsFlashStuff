package §_-5p§
{
   import §_-j0§.§_-IF§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §set § extends EventDispatcher
   {
       
      
      private var §_-Yv§:String = "";
      
      private var §_-aN§:String;
      
      private var §_-CY§:URLLoader;
      
      private var §_-Ee§:Dictionary;
      
      private var §_-6t§:String = null;
      
      private var §_-pJ§:String = null;
      
      private var §_-0-6§:String = null;
      
      private var §_-sw§:Boolean;
      
      private var §_-L4§:§_-IF§;
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-cR§:String = "pak";
      
      private var §_-0x§:Boolean = true;
      
      public function §set §(param1:String, param2:String, param3:Boolean = true)
      {
         this.§_-Ee§ = new Dictionary();
         super();
         this.§_-Yv§ = param2;
         this.§_-aN§ = param1;
         this.§_-0x§ = param3;
      }
      
      public function get §_-aJ§() : §_-Kf§
      {
         return this.§_-S7§;
      }
      
      public function §function§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§_-Ee§[param1] != null;
      }
      
      public function §_-tf§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§_-fn§())
         {
            if(!this.§_-fk§())
            {
               this.§_-0-6§ = param1;
               return;
            }
         }
         if(this.§function§(param1))
         {
            if(param1 == this.§_-6t§ || !this.§_-0x§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§_-CC§(param1,false);
            }
         }
         else
         {
            this.§_-A6§(param1);
         }
      }
      
      private function §_-A6§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§_-Yv§ != null && this.§_-Yv§.length > 0)
         {
            _loc2_ = "?version=" + this.§_-Yv§;
         }
         this.§_-pJ§ = param1;
         this.§_-CY§ = new URLLoader();
         this.§_-CY§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-CY§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-CY§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-e4§);
         this.§_-CY§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-e4§);
         this.§_-CY§.load(new URLRequest(this.§_-aN§ + "packages/" + param1 + "." + this.§_-cR§ + _loc2_));
      }
      
      private function §_-fn§() : Boolean
      {
         return this.§_-CY§ || this.§_-sw§;
      }
      
      private function §_-fk§() : Boolean
      {
         if(this.§_-CY§)
         {
            this.§_-CY§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§_-CY§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-e4§);
            this.§_-CY§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-e4§);
            this.§_-CY§.close();
            this.§_-CY§ = null;
         }
         if(this.§_-sw§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§_-CY§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-CY§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-e4§);
         this.§_-CY§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-e4§);
         this.§_-Ee§[this.§_-pJ§] = this.§_-CY§.data;
         this.§_-CY§ = null;
         this.§_-CC§(this.§_-pJ§,true);
      }
      
      private function §_-CC§(param1:String, param2:Boolean) : void
      {
         this.§_-sw§ = true;
         this.§_-pJ§ = param1;
         if(this.§_-S7§)
         {
            this.§_-S7§.dispose();
         }
         if(this.§_-L4§)
         {
            this.§_-L4§.dispose();
         }
         this.§_-S7§ = new §_-Kf§();
         this.§_-L4§ = new §_-IF§();
         this.§_-L4§.addEventListener(Event.COMPLETE,this.§_-TA§);
         this.§_-L4§.§_-Q6§(this.§_-Ee§[this.§_-pJ§],param2);
      }
      
      private function §_-e4§(param1:Event) : void
      {
         this.§_-CY§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-CY§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-e4§);
         this.§_-CY§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-e4§);
         this.§_-CY§.close();
         this.§_-CY§ = null;
         this.§_-pJ§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §_-TA§(param1:Event) : void
      {
         this.§_-sw§ = false;
         this.§_-L4§.removeEventListener(Event.COMPLETE,this.§_-TA§);
         if(this.§_-0-6§)
         {
            this.§_-tf§(this.§_-0-6§);
            this.§_-0-6§ = null;
            return;
         }
         var _loc2_:int = this.§_-L4§.§_-xf§.§_-Pt§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-S7§.§_-sp§(this.§_-L4§.§_-xf§.§_-Yu§(_loc3_));
            _loc3_++;
         }
         this.§_-9g§();
      }
      
      public function §_-9g§() : void
      {
         if(this.§_-fn§() || this.§_-L4§ == null)
         {
            return;
         }
         if(this.§_-S7§.§_-9g§())
         {
            this.§_-L4§.dispose();
            this.§_-L4§ = null;
            this.§_-6t§ = this.§_-pJ§;
            this.§_-pJ§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
