package §'k§
{
   import §;z§.§%"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §;[§ extends EventDispatcher
   {
       
      
      private var §4! §:String = "";
      
      private var §@m§:String;
      
      private var §!!A§:URLLoader;
      
      private var §,3§:Dictionary;
      
      private var §1;§:String = null;
      
      private var §8d§:String = null;
      
      private var §9-§:String = null;
      
      private var §4x§:Boolean;
      
      private var §5"§:§%"§;
      
      private var §`!8§:§ >§;
      
      private var §+!6§:Vector.<§ >§>;
      
      private var §1i§:String = "pak";
      
      private var § "§:Boolean = true;
      
      private var § F§:int = 1;
      
      public function §;[§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§,3§ = new Dictionary();
         this.§+!6§ = new Vector.<§ >§>();
         super();
         this.§4! § = param2;
         this.§@m§ = param1;
         this.§ "§ = param3;
         this.§ F§ = Math.max(1,param4);
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function §-!,§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§,3§[param1] != null;
      }
      
      private function §"!2§(param1:String) : Boolean
      {
         var _loc3_:§ >§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!6§.length)
         {
            _loc3_ = this.§+!6§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§`!8§ = _loc3_;
               this.§1;§ = param1;
               this.§+!6§.splice(_loc2_,1);
               this.§+!6§.unshift(this.§`!8§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §5&§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§&J§())
         {
            if(!this.§4n§())
            {
               this.§9-§ = param1;
               return;
            }
         }
         if(this.§-!,§(param1))
         {
            this.§"!2§(param1);
            if(param1 == this.§1;§ || !this.§ "§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§0s§(param1,false);
            }
         }
         else
         {
            this.§1$§(param1);
         }
      }
      
      private function §1$§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§4! § != null && this.§4! §.length > 0)
         {
            _loc2_ = "?version=" + this.§4! §;
         }
         this.§8d§ = param1;
         this.§!!A§ = new URLLoader();
         this.§!!A§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§!!A§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§!!A§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!!A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!!A§.load(new URLRequest(this.§@m§ + "packages/" + param1 + "." + this.§1i§ + _loc2_));
      }
      
      private function §&J§() : Boolean
      {
         return this.§!!A§ || this.§4x§;
      }
      
      private function §4n§() : Boolean
      {
         if(this.§!!A§)
         {
            this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§!!A§.close();
            this.§!!A§ = null;
         }
         if(this.§4x§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,3§[this.§8d§] = this.§!!A§.data;
         this.§!!A§ = null;
         this.§0s§(this.§8d§,true);
      }
      
      private function §0s§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§ >§ = null;
         this.§4x§ = true;
         this.§8d§ = param1;
         while(this.§+!6§.length >= this.§ F§)
         {
            _loc3_ = this.§+!6§.pop();
            _loc3_.dispose();
         }
         if(this.§5"§)
         {
            this.§5"§.dispose();
         }
         this.§`!8§ = new § >§(param1);
         this.§+!6§.unshift(this.§`!8§);
         this.§5"§ = new §%"§();
         this.§5"§.addEventListener(Event.COMPLETE,this.§]n§);
         this.§5"§.§#!6§(this.§,3§[this.§8d§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§!!A§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!!A§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!!A§.close();
         this.§!!A§ = null;
         this.§8d§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §]n§(param1:Event) : void
      {
         this.§4x§ = false;
         this.§5"§.removeEventListener(Event.COMPLETE,this.§]n§);
         if(this.§9-§)
         {
            this.§5&§(this.§9-§);
            this.§9-§ = null;
            return;
         }
         var _loc2_:int = this.§5"§.§%b§.§5<§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§`!8§.§3q§(this.§5"§.§%b§.§@!"§(_loc3_));
            _loc3_++;
         }
         this.§]!A§();
      }
      
      public function §]!A§() : void
      {
         if(this.§&J§() || this.§5"§ == null)
         {
            return;
         }
         if(this.§`!8§.§]!A§())
         {
            this.§5"§.dispose();
            this.§5"§ = null;
            this.§1;§ = this.§8d§;
            this.§8d§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
