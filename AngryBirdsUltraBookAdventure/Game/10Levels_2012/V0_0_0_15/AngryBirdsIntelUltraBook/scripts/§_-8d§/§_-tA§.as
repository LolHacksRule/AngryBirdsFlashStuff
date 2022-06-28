package §_-8d§
{
   import §_-aC§.§_-ML§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §_-tA§ extends EventDispatcher
   {
       
      
      private var §_-Df§:String = "";
      
      private var §_-Bl§:String;
      
      private var §_-sT§:URLLoader;
      
      private var §_-MW§:Dictionary;
      
      private var §_-8X§:String = null;
      
      private var §_-Di§:String = null;
      
      private var §_-07e§:String = null;
      
      private var §_-0Ep§:Boolean;
      
      private var §_-SF§:§_-ML§;
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-Mi§:Vector.<§_-0FF§>;
      
      private var §_-kV§:String = "pak";
      
      private var §_-07Q§:Boolean = true;
      
      private var §_-HX§:int = 1;
      
      public function §_-tA§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§_-MW§ = new Dictionary();
         this.§_-Mi§ = new Vector.<§_-0FF§>();
         super();
         this.§_-Df§ = param2;
         this.§_-Bl§ = param1;
         this.§_-07Q§ = param3;
         this.§_-HX§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function §_-wY§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§_-MW§[param1] != null;
      }
      
      private function §_-5U§(param1:String) : Boolean
      {
         var _loc3_:§_-0FF§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Mi§.length)
         {
            _loc3_ = this.§_-Mi§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-00g§ = _loc3_;
               this.§_-8X§ = param1;
               this.§_-Mi§.splice(_loc2_,1);
               this.§_-Mi§.unshift(this.§_-00g§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-r7§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§_-Er§())
         {
            if(!this.§_-en§())
            {
               this.§_-07e§ = param1;
               return;
            }
         }
         if(this.§_-wY§(param1))
         {
            this.§_-5U§(param1);
            if(param1 == this.§_-8X§ || !this.§_-07Q§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§_-E2§(param1,false);
            }
         }
         else
         {
            this.§_-Wj§(param1);
         }
      }
      
      private function §_-Wj§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§_-Df§ != null && this.§_-Df§.length > 0)
         {
            _loc2_ = "?version=" + this.§_-Df§;
         }
         this.§_-Di§ = param1;
         this.§_-sT§ = new URLLoader();
         this.§_-sT§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-sT§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-sT§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-sT§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-sT§.load(new URLRequest(this.§_-Bl§ + "packages/" + param1 + "." + this.§_-kV§ + _loc2_));
      }
      
      private function §_-Er§() : Boolean
      {
         return this.§_-sT§ || this.§_-0Ep§;
      }
      
      private function §_-en§() : Boolean
      {
         if(this.§_-sT§)
         {
            this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§_-sT§.close();
            this.§_-sT§ = null;
         }
         if(this.§_-0Ep§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-MW§[this.§_-Di§] = this.§_-sT§.data;
         this.§_-sT§ = null;
         this.§_-E2§(this.§_-Di§,true);
      }
      
      private function §_-E2§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§_-0FF§ = null;
         this.§_-0Ep§ = true;
         this.§_-Di§ = param1;
         while(this.§_-Mi§.length >= this.§_-HX§)
         {
            _loc3_ = this.§_-Mi§.pop();
            _loc3_.dispose();
         }
         if(this.§_-SF§)
         {
            this.§_-SF§.dispose();
         }
         this.§_-00g§ = new §_-0FF§(param1);
         this.§_-Mi§.unshift(this.§_-00g§);
         this.§_-SF§ = new §_-ML§();
         this.§_-SF§.addEventListener(Event.COMPLETE,this.§_-Tq§);
         this.§_-SF§.§_-Vt§(this.§_-MW§[this.§_-Di§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§_-sT§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-sT§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-sT§.close();
         this.§_-sT§ = null;
         this.§_-Di§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §_-Tq§(param1:Event) : void
      {
         this.§_-0Ep§ = false;
         this.§_-SF§.removeEventListener(Event.COMPLETE,this.§_-Tq§);
         if(this.§_-07e§)
         {
            this.§_-r7§(this.§_-07e§);
            this.§_-07e§ = null;
            return;
         }
         var _loc2_:int = this.§_-SF§.§_-07S§.§_-iE§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-00g§.§_-sG§(this.§_-SF§.§_-07S§.§_-0Cv§(_loc3_));
            _loc3_++;
         }
         this.§_-G9§();
      }
      
      public function §_-G9§() : void
      {
         if(this.§_-Er§() || this.§_-SF§ == null)
         {
            return;
         }
         if(this.§_-00g§.§_-G9§())
         {
            this.§_-SF§.dispose();
            this.§_-SF§ = null;
            this.§_-8X§ = this.§_-Di§;
            this.§_-Di§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
