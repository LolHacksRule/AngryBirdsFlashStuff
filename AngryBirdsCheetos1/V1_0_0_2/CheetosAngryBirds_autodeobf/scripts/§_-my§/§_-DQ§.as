package §_-my§
{
   import §_-dd§.§_-k2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §_-DQ§ extends EventDispatcher
   {
       
      
      private var §_-RV§:String = "";
      
      private var §_-2G§:String;
      
      private var §_-TL§:URLLoader;
      
      private var §_-Z-§:Dictionary;
      
      private var §_-I3§:String = null;
      
      private var §_-bP§:String = null;
      
      private var §_-hS§:String = null;
      
      private var §_-SC§:Boolean;
      
      private var §_-mc§:§_-k2§;
      
      private var §_-B1§:§_-V0§;
      
      private var §_-XG§:String = "pak";
      
      private var §_-VS§:Boolean = true;
      
      public function §_-DQ§(param1:String, param2:String, param3:Boolean = true)
      {
         this.§_-Z-§ = new Dictionary();
         super();
         this.§_-RV§ = param2;
         this.§_-2G§ = param1;
         this.§_-VS§ = param3;
      }
      
      public function get §_-3q§() : §_-V0§
      {
         return this.§_-B1§;
      }
      
      public function §_-zT§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§_-Z-§[param1] != null;
      }
      
      public function §_-c-§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§_-lt§())
         {
            if(!this.§_-7U§())
            {
               this.§_-hS§ = param1;
               return;
            }
         }
         if(this.§_-zT§(param1))
         {
            if(param1 == this.§_-I3§ || !this.§_-VS§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§_-3O§(param1,false);
            }
         }
         else
         {
            this.§_-GE§(param1);
         }
      }
      
      private function §_-GE§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§_-RV§ != null && this.§_-RV§.length > 0)
         {
            _loc2_ = "?version=" + this.§_-RV§;
         }
         this.§_-bP§ = param1;
         this.§_-TL§ = new URLLoader();
         this.§_-TL§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§_-TL§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-TL§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ui§);
         this.§_-TL§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-ui§);
         this.§_-TL§.load(new URLRequest(this.§_-2G§ + "packages/" + param1 + "." + this.§_-XG§ + _loc2_));
      }
      
      private function §_-lt§() : Boolean
      {
         return this.§_-TL§ || this.§_-SC§;
      }
      
      private function §_-7U§() : Boolean
      {
         if(this.§_-TL§)
         {
            this.§_-TL§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§_-TL§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ui§);
            this.§_-TL§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-ui§);
            this.§_-TL§.close();
            this.§_-TL§ = null;
         }
         if(this.§_-SC§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§_-TL§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-TL§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ui§);
         this.§_-TL§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-ui§);
         this.§_-Z-§[this.§_-bP§] = this.§_-TL§.data;
         this.§_-TL§ = null;
         this.§_-3O§(this.§_-bP§,true);
      }
      
      private function §_-3O§(param1:String, param2:Boolean) : void
      {
         this.§_-SC§ = true;
         this.§_-bP§ = param1;
         if(this.§_-B1§)
         {
            this.§_-B1§.dispose();
         }
         if(this.§_-mc§)
         {
            this.§_-mc§.dispose();
         }
         this.§_-B1§ = new §_-V0§();
         this.§_-mc§ = new §_-k2§();
         this.§_-mc§.addEventListener(Event.COMPLETE,this.§_-2L§);
         this.§_-mc§.§_-kT§(this.§_-Z-§[this.§_-bP§],param2);
      }
      
      private function §_-ui§(param1:Event) : void
      {
         this.§_-TL§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-TL§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ui§);
         this.§_-TL§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-ui§);
         this.§_-TL§.close();
         this.§_-TL§ = null;
         this.§_-bP§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §_-2L§(param1:Event) : void
      {
         this.§_-SC§ = false;
         this.§_-mc§.removeEventListener(Event.COMPLETE,this.§_-2L§);
         if(this.§_-hS§)
         {
            this.§_-c-§(this.§_-hS§);
            this.§_-hS§ = null;
            return;
         }
         var _loc2_:int = this.§_-mc§.§_-nx§.§_-mL§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-B1§.§_-Uj§(this.§_-mc§.§_-nx§.§_-4n§(_loc3_));
            _loc3_++;
         }
         this.§_-Q5§();
      }
      
      public function §_-Q5§() : void
      {
         if(this.§_-lt§() || this.§_-mc§ == null)
         {
            return;
         }
         if(this.§_-B1§.§_-Q5§())
         {
            this.§_-mc§.dispose();
            this.§_-mc§ = null;
            this.§_-I3§ = this.§_-bP§;
            this.§_-bP§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
