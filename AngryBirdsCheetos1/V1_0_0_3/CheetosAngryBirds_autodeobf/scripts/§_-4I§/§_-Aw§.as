package §_-4I§
{
   import §_-6m§.§_-RB§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §_-Aw§ extends EventDispatcher
   {
       
      
      private var §_-rN§:String = "";
      
      private var §_-YT§:String;
      
      private var §_-y7§:URLLoader;
      
      private var §_-YS§:Dictionary;
      
      private var §_-Ot§:String = null;
      
      private var §_-ve§:String = null;
      
      private var §_-ir§:String = null;
      
      private var §_-pn§:Boolean;
      
      private var §_-9b§:§_-RB§;
      
      private var §_-BB§:§_-v8§;
      
      private var §_-IE§:String = "pak";
      
      private var §_-xv§:Boolean = true;
      
      public function §_-Aw§(param1:String, param2:String, param3:Boolean = true)
      {
         this.§_-YS§ = new Dictionary();
         super();
         this.§_-rN§ = param2;
         this.§_-YT§ = param1;
         this.§_-xv§ = param3;
      }
      
      public function get §_-91§() : §_-v8§
      {
         return this.§_-BB§;
      }
      
      public function §_-yf§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§_-YS§[param1] != null;
      }
      
      public function §_-9h§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§_-Uy§())
         {
            if(!this.§_-uT§())
            {
               this.§_-ir§ = param1;
               return;
            }
         }
         if(this.§_-yf§(param1))
         {
            if(param1 == this.§_-Ot§ || !this.§_-xv§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§_-sS§(param1,false);
            }
         }
         else
         {
            this.§_-ZP§(param1);
         }
      }
      
      private function §_-ZP§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§_-rN§ != null && this.§_-rN§.length > 0)
         {
            _loc2_ = "?version=" + this.§_-rN§;
         }
         this.§_-ve§ = param1;
         this.§_-y7§ = new URLLoader();
         this.§_-y7§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-y7§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-y7§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Z8§);
         this.§_-y7§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Z8§);
         this.§_-y7§.load(new URLRequest(this.§_-YT§ + "packages/" + param1 + "." + this.§_-IE§ + _loc2_));
      }
      
      private function §_-Uy§() : Boolean
      {
         return this.§_-y7§ || this.§_-pn§;
      }
      
      private function §_-uT§() : Boolean
      {
         if(this.§_-y7§)
         {
            this.§_-y7§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§_-y7§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Z8§);
            this.§_-y7§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Z8§);
            this.§_-y7§.close();
            this.§_-y7§ = null;
         }
         if(this.§_-pn§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§_-y7§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-y7§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Z8§);
         this.§_-y7§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Z8§);
         this.§_-YS§[this.§_-ve§] = this.§_-y7§.data;
         this.§_-y7§ = null;
         this.§_-sS§(this.§_-ve§,true);
      }
      
      private function §_-sS§(param1:String, param2:Boolean) : void
      {
         this.§_-pn§ = true;
         this.§_-ve§ = param1;
         if(this.§_-BB§)
         {
            this.§_-BB§.dispose();
         }
         if(this.§_-9b§)
         {
            this.§_-9b§.dispose();
         }
         this.§_-BB§ = new §_-v8§();
         this.§_-9b§ = new §_-RB§();
         this.§_-9b§.addEventListener(Event.COMPLETE,this.§_-YL§);
         this.§_-9b§.§_-0-v§(this.§_-YS§[this.§_-ve§],param2);
      }
      
      private function §_-Z8§(param1:Event) : void
      {
         this.§_-y7§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-y7§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Z8§);
         this.§_-y7§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-Z8§);
         this.§_-y7§.close();
         this.§_-y7§ = null;
         this.§_-ve§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §_-YL§(param1:Event) : void
      {
         this.§_-pn§ = false;
         this.§_-9b§.removeEventListener(Event.COMPLETE,this.§_-YL§);
         if(this.§_-ir§)
         {
            this.§_-9h§(this.§_-ir§);
            this.§_-ir§ = null;
            return;
         }
         var _loc2_:int = this.§_-9b§.§_-xw§.§_-6d§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-BB§.§_-kx§(this.§_-9b§.§_-xw§.§_-o4§(_loc3_));
            _loc3_++;
         }
         this.§_-dR§();
      }
      
      public function §_-dR§() : void
      {
         if(this.§_-Uy§() || this.§_-9b§ == null)
         {
            return;
         }
         if(this.§_-BB§.§_-dR§())
         {
            this.§_-9b§.dispose();
            this.§_-9b§ = null;
            this.§_-Ot§ = this.§_-ve§;
            this.§_-ve§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
