package §#?§
{
   import §%! §.§>!<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §%!5§ extends EventDispatcher
   {
       
      
      private var §8-§:String = "";
      
      protected var §06§:String;
      
      private var §>V§:URLLoader;
      
      private var §-;§:Dictionary;
      
      private var §?t§:String = null;
      
      private var §8$§:String = null;
      
      private var §0&§:String = null;
      
      private var §4e§:Boolean;
      
      private var §<t§:§>!<§;
      
      private var §[E§:§6!4§;
      
      private var §^!4§:Vector.<§6!4§>;
      
      protected var §"q§:String = "pak";
      
      private var §6f§:Boolean = true;
      
      private var §'V§:int = 1;
      
      public function §%!5§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§-;§ = new Dictionary();
         this.§^!4§ = new Vector.<§6!4§>();
         super();
         this.§8-§ = param2;
         this.§06§ = param1;
         this.§6f§ = param3;
         this.§'V§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §6!4§
      {
         return this.§[E§;
      }
      
      public function §#6§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§-;§[param1] != null;
      }
      
      private function §%U§(param1:String) : Boolean
      {
         var _loc3_:§6!4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!4§.length)
         {
            _loc3_ = this.§^!4§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§[E§ = _loc3_;
               this.§?t§ = param1;
               this.§^!4§.splice(_loc2_,1);
               this.§^!4§.unshift(this.§[E§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §=!4§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§+d§())
         {
            if(!this.§^!A§())
            {
               this.§0&§ = param1;
               return;
            }
         }
         if(this.§#6§(param1))
         {
            this.§%U§(param1);
            if(param1 == this.§?t§ || !this.§6f§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§0! §(param1,false);
            }
         }
         else
         {
            this.§-2§(param1);
         }
      }
      
      protected function §-2§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         if(this.§8-§ != null && this.§8-§.length > 0)
         {
            _loc2_ = "?version=" + this.§8-§;
         }
         this.§8$§ = param1;
         this.§>V§ = new URLLoader();
         this.§>V§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§>V§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>V§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1.indexOf("crossdomain.xml") == -1)
         {
            _loc3_ = this.§,!6§(param1);
         }
         else
         {
            _loc3_ = this.§06§ + "/crossdomain.xml";
         }
         this.§>V§.load(new URLRequest(_loc3_ + _loc2_));
      }
      
      protected function §,!6§(param1:String) : String
      {
         return "" + "packages/" + param1 + "." + this.§"q§;
      }
      
      private function §+d§() : Boolean
      {
         return this.§>V§ || this.§4e§;
      }
      
      private function §^!A§() : Boolean
      {
         if(this.§>V§)
         {
            this.§>V§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>V§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>V§.close();
            this.§>V§ = null;
         }
         if(this.§4e§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>V§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>V§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§-;§[this.§8$§] = this.§>V§.data;
         this.§>V§ = null;
         this.§0! §(this.§8$§,true);
      }
      
      private function §0! §(param1:String, param2:Boolean) : void
      {
         var _loc3_:§6!4§ = null;
         this.§4e§ = true;
         this.§8$§ = param1;
         while(this.§^!4§.length >= this.§'V§)
         {
            _loc3_ = this.§^!4§.pop();
            _loc3_.dispose();
         }
         if(this.§<t§)
         {
            this.§<t§.dispose();
         }
         this.§[E§ = new §6!4§(param1);
         this.§^!4§.unshift(this.§[E§);
         this.§<t§ = new §>!<§();
         this.§<t§.addEventListener(Event.COMPLETE,this.§&e§);
         this.§<t§.§'!+§(this.§8$§);
         this.§<t§.§null §(this.§-;§[this.§8$§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§>V§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>V§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>V§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>V§.close();
         this.§>V§ = null;
         this.§8$§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §&e§(param1:Event) : void
      {
         this.§4e§ = false;
         this.§<t§.removeEventListener(Event.COMPLETE,this.§&e§);
         if(this.§0&§)
         {
            this.§=!4§(this.§0&§);
            this.§0&§ = null;
            return;
         }
         var _loc2_:int = this.§<t§.§5!K§.§-!4§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[E§.§<+§(this.§<t§.§5!K§.§6U§(_loc3_));
            _loc3_++;
         }
         this.§use§();
      }
      
      public function §use§() : void
      {
         if(this.§+d§() || this.§<t§ == null)
         {
            return;
         }
         if(this.§[E§.§use§())
         {
            this.§<t§.dispose();
            this.§<t§ = null;
            this.§?t§ = this.§8$§;
            this.§8$§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
