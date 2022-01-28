package §_-3b§
{
   import §_-Ah§.§_-uT§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §_-I1§ extends EventDispatcher
   {
       
      
      private var §_-L1§:String = "";
      
      private var §_-l8§:String;
      
      private var §_-8X§:URLLoader;
      
      private var §_-49§:Dictionary;
      
      private var §_-ta§:String = null;
      
      private var §_-G-§:String = null;
      
      private var §_-xj§:String = null;
      
      private var §_-z3§:Boolean;
      
      private var §_-oj§:§_-uT§;
      
      private var §_-wI§:§_-Og§;
      
      private var §_-mW§:String = "pak";
      
      private var §_-nl§:Boolean = true;
      
      public function §_-I1§(param1:String, param2:String, param3:Boolean = true)
      {
         this.§_-49§ = new Dictionary();
         super();
         this.§_-L1§ = param2;
         this.§_-l8§ = param1;
         this.§_-nl§ = param3;
      }
      
      public function get §_-G9§() : §_-Og§
      {
         return this.§_-wI§;
      }
      
      public function §_-BT§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§_-49§[param1] != null;
      }
      
      public function §_-0W§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§_-iC§())
         {
            if(!this.§_-5P§())
            {
               this.§_-xj§ = param1;
               return;
            }
         }
         if(this.§_-BT§(param1))
         {
            if(param1 == this.§_-ta§ || !this.§_-nl§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§_-rG§(param1,false);
            }
         }
         else
         {
            this.§_-F0§(param1);
         }
      }
      
      private function §_-F0§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§_-L1§ != null && this.§_-L1§.length > 0)
         {
            _loc2_ = "?version=" + this.§_-L1§;
         }
         this.§_-G-§ = param1;
         this.§_-8X§ = new URLLoader();
         this.§_-8X§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-8X§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-8X§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-fR§);
         this.§_-8X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-fR§);
         this.§_-8X§.load(new URLRequest(this.§_-l8§ + "packages/" + param1 + "." + this.§_-mW§ + _loc2_));
      }
      
      private function §_-iC§() : Boolean
      {
         return this.§_-8X§ || this.§_-z3§;
      }
      
      private function §_-5P§() : Boolean
      {
         if(this.§_-8X§)
         {
            this.§_-8X§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§_-8X§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-fR§);
            this.§_-8X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-fR§);
            this.§_-8X§.close();
            this.§_-8X§ = null;
         }
         if(this.§_-z3§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§_-8X§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-8X§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-fR§);
         this.§_-8X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-fR§);
         this.§_-49§[this.§_-G-§] = this.§_-8X§.data;
         this.§_-8X§ = null;
         this.§_-rG§(this.§_-G-§,true);
      }
      
      private function §_-rG§(param1:String, param2:Boolean) : void
      {
         this.§_-z3§ = true;
         this.§_-G-§ = param1;
         if(this.§_-wI§)
         {
            this.§_-wI§.dispose();
         }
         if(this.§_-oj§)
         {
            this.§_-oj§.dispose();
         }
         this.§_-wI§ = new §_-Og§();
         this.§_-oj§ = new §_-uT§();
         this.§_-oj§.addEventListener(Event.COMPLETE,this.§_-O3§);
         this.§_-oj§.§_-HE§(this.§_-49§[this.§_-G-§],param2);
      }
      
      private function §_-fR§(param1:Event) : void
      {
         this.§_-8X§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-8X§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-fR§);
         this.§_-8X§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-fR§);
         this.§_-8X§.close();
         this.§_-8X§ = null;
         this.§_-G-§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §_-O3§(param1:Event) : void
      {
         this.§_-z3§ = false;
         this.§_-oj§.removeEventListener(Event.COMPLETE,this.§_-O3§);
         if(this.§_-xj§)
         {
            this.§_-0W§(this.§_-xj§);
            this.§_-xj§ = null;
            return;
         }
         var _loc2_:int = this.§_-oj§.§_-Zo§.§_-lr§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-wI§.§_-Xf§(this.§_-oj§.§_-Zo§.§_-QD§(_loc3_));
            _loc3_++;
         }
         this.§_-42§();
      }
      
      public function §_-42§() : void
      {
         if(this.§_-iC§() || this.§_-oj§ == null)
         {
            return;
         }
         if(this.§_-wI§.§_-42§())
         {
            this.§_-oj§.dispose();
            this.§_-oj§ = null;
            this.§_-ta§ = this.§_-G-§;
            this.§_-G-§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
