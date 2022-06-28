package §<h§
{
   import §,U§.§+u§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §4-§ extends EventDispatcher
   {
       
      
      private var §?M§:String = "";
      
      private var §3#§:String;
      
      private var §+z§:URLLoader;
      
      private var §2h§:Dictionary;
      
      private var §,d§:String = null;
      
      private var §0D§:String = null;
      
      private var §<!>§:String = null;
      
      private var §=L§:Boolean;
      
      private var §6!&§:§+u§;
      
      private var § 7§:§;@§;
      
      private var §+!$§:Vector.<§;@§>;
      
      private var §,!5§:String = "pak";
      
      private var §,J§:Boolean = true;
      
      private var §6p§:int = 1;
      
      public function §4-§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§2h§ = new Dictionary();
         this.§+!$§ = new Vector.<§;@§>();
         super();
         this.§?M§ = param2;
         this.§3#§ = param1;
         this.§,J§ = param3;
         this.§6p§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §;@§
      {
         return this.§ 7§;
      }
      
      public function §[y§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§2h§[param1] != null;
      }
      
      private function §[W§(param1:String) : Boolean
      {
         var _loc3_:§;@§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!$§.length)
         {
            _loc3_ = this.§+!$§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§ 7§ = _loc3_;
               this.§,d§ = param1;
               this.§+!$§.splice(_loc2_,1);
               this.§+!$§.unshift(this.§ 7§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § !2§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§"k§())
         {
            if(!this.§<w§())
            {
               this.§<!>§ = param1;
               return;
            }
         }
         if(this.§[y§(param1))
         {
            this.§[W§(param1);
            if(param1 == this.§,d§ || !this.§,J§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§<u§(param1,false);
            }
         }
         else
         {
            this.§ null§(param1);
         }
      }
      
      private function § null§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§?M§ != null && this.§?M§.length > 0)
         {
            _loc2_ = "?version=" + this.§?M§;
         }
         this.§0D§ = param1;
         this.§+z§ = new URLLoader();
         this.§+z§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+z§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+z§.load(new URLRequest(this.§3#§ + "packages/" + param1 + "." + this.§,!5§ + _loc2_));
      }
      
      private function §"k§() : Boolean
      {
         return this.§+z§ || this.§=L§;
      }
      
      private function §<w§() : Boolean
      {
         if(this.§+z§)
         {
            this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+z§.close();
            this.§+z§ = null;
         }
         if(this.§=L§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2h§[this.§0D§] = this.§+z§.data;
         this.§+z§ = null;
         this.§<u§(this.§0D§,true);
      }
      
      private function §<u§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§;@§ = null;
         this.§=L§ = true;
         this.§0D§ = param1;
         while(this.§+!$§.length >= this.§6p§)
         {
            _loc3_ = this.§+!$§.pop();
            _loc3_.dispose();
         }
         if(this.§6!&§)
         {
            this.§6!&§.dispose();
         }
         this.§ 7§ = new §;@§(param1);
         this.§+!$§.unshift(this.§ 7§);
         this.§6!&§ = new §+u§();
         this.§6!&§.addEventListener(Event.COMPLETE,this.§7!$§);
         this.§6!&§.§?s§(this.§2h§[this.§0D§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+z§.close();
         this.§+z§ = null;
         this.§0D§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §7!$§(param1:Event) : void
      {
         this.§=L§ = false;
         this.§6!&§.removeEventListener(Event.COMPLETE,this.§7!$§);
         if(this.§<!>§)
         {
            this.§ !2§(this.§<!>§);
            this.§<!>§ = null;
            return;
         }
         var _loc2_:int = this.§6!&§.§'a§.§8h§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ 7§.§&i§(this.§6!&§.§'a§.§!4§(_loc3_));
            _loc3_++;
         }
         this.§;>§();
      }
      
      public function §;>§() : void
      {
         if(this.§"k§() || this.§6!&§ == null)
         {
            return;
         }
         if(this.§ 7§.§;>§())
         {
            this.§6!&§.dispose();
            this.§6!&§ = null;
            this.§,d§ = this.§0D§;
            this.§0D§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
