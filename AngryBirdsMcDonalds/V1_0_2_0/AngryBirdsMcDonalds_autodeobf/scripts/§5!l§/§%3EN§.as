package §5!l§
{
   import §;!4§.§4!R§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>N§ extends EventDispatcher
   {
       
      
      private var §8G§:String = "";
      
      private var §,!W§:String;
      
      private var §0f§:URLLoader;
      
      private var §`!§:Dictionary;
      
      private var §!!-§:String = null;
      
      private var §;A§:String = null;
      
      private var §39§:String = null;
      
      private var §=4§:Boolean;
      
      private var §=U§:§4!R§;
      
      private var §8!b§:§ !D§;
      
      private var §4!<§:Vector.<§ !D§>;
      
      private var §91§:String = "pak";
      
      private var §9N§:Boolean = true;
      
      private var §&;§:int = 1;
      
      public function §>N§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§`!§ = new Dictionary();
         this.§4!<§ = new Vector.<§ !D§>();
         super();
         this.§8G§ = param2;
         this.§,!W§ = param1;
         this.§9N§ = param3;
         this.§&;§ = Math.max(1,param4);
      }
      
      public function get textureManager() : § !D§
      {
         return this.§8!b§;
      }
      
      public function §1z§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§`!§[param1] != null;
      }
      
      private function §]!9§(param1:String) : Boolean
      {
         var _loc3_:§ !D§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!<§.length)
         {
            _loc3_ = this.§4!<§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§8!b§ = _loc3_;
               this.§!!-§ = param1;
               this.§4!<§.splice(_loc2_,1);
               this.§4!<§.unshift(this.§8!b§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § _§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§^!g§())
         {
            if(!this.§,Z§())
            {
               this.§39§ = param1;
               return;
            }
         }
         if(this.§1z§(param1))
         {
            this.§]!9§(param1);
            if(param1 == this.§!!-§ || !this.§9N§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§6!F§(param1,false);
            }
         }
         else
         {
            this.§2!&§(param1);
         }
      }
      
      private function §2!&§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§8G§ != null && this.§8G§.length > 0)
         {
            _loc2_ = "?version=" + this.§8G§;
         }
         this.§;A§ = param1;
         this.§0f§ = new URLLoader();
         this.§0f§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§0f§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§0f§.addEventListener(IOErrorEvent.IO_ERROR,this.§set §);
         this.§0f§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§set §);
         this.§0f§.load(new URLRequest(this.§,!W§ + "packages/" + param1 + "." + this.§91§ + _loc2_));
      }
      
      private function §^!g§() : Boolean
      {
         return this.§0f§ || this.§=4§;
      }
      
      private function §,Z§() : Boolean
      {
         if(this.§0f§)
         {
            this.§0f§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§0f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§set §);
            this.§0f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§set §);
            this.§0f§.close();
            this.§0f§ = null;
         }
         if(this.§=4§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0f§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§0f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§set §);
         this.§0f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§set §);
         this.§`!§[this.§;A§] = this.§0f§.data;
         this.§0f§ = null;
         this.§6!F§(this.§;A§,true);
      }
      
      private function §6!F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§ !D§ = null;
         this.§=4§ = true;
         this.§;A§ = param1;
         while(this.§4!<§.length >= this.§&;§)
         {
            _loc3_ = this.§4!<§.pop();
            _loc3_.dispose();
         }
         if(this.§=U§)
         {
            this.§=U§.dispose();
         }
         this.§8!b§ = new § !D§(param1);
         this.§4!<§.unshift(this.§8!b§);
         this.§=U§ = new §4!R§();
         this.§=U§.addEventListener(Event.COMPLETE,this.§1!'§);
         this.§=U§.§,E§(this.§`!§[this.§;A§],param2);
      }
      
      private function §set §(param1:Event) : void
      {
         this.§0f§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§0f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§set §);
         this.§0f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§set §);
         this.§0f§.close();
         this.§0f§ = null;
         this.§;A§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §1!'§(param1:Event) : void
      {
         this.§=4§ = false;
         this.§=U§.removeEventListener(Event.COMPLETE,this.§1!'§);
         if(this.§39§)
         {
            this.§ _§(this.§39§);
            this.§39§ = null;
            return;
         }
         var _loc2_:int = this.§=U§.§@!e§.§]K§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§8!b§.§?!_§(this.§=U§.§@!e§.§9?§(_loc3_));
            _loc3_++;
         }
         this.§%!i§();
      }
      
      public function §%!i§() : void
      {
         if(this.§^!g§() || this.§=U§ == null)
         {
            return;
         }
         if(this.§8!b§.§%!i§())
         {
            this.§=U§.dispose();
            this.§=U§ = null;
            this.§!!-§ = this.§;A§;
            this.§;A§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
