package §-!0§
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
   
   public class §2h§ extends EventDispatcher
   {
       
      
      private var §?M§:String = "";
      
      private var §3#§:String;
      
      private var §+z§:URLLoader;
      
      private var §,d§:Dictionary;
      
      private var §0D§:String = null;
      
      private var §<!>§:String = null;
      
      private var §=L§:String = null;
      
      private var §+!$§:Boolean;
      
      private var §6!&§:§+u§;
      
      private var § 7§:§'!3§;
      
      private var §,J§:Vector.<§'!3§>;
      
      private var §,!5§:String = "pak";
      
      private var §6p§:Boolean = true;
      
      private var §[y§:int = 1;
      
      public function §2h§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§,d§ = new Dictionary();
         this.§,J§ = new Vector.<§'!3§>();
         super();
         this.§?M§ = param2;
         this.§3#§ = param1;
         this.§6p§ = param3;
         this.§[y§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function §[W§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§,d§[param1] != null;
      }
      
      private function § !2§(param1:String) : Boolean
      {
         var _loc3_:§'!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,J§.length)
         {
            _loc3_ = this.§,J§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§ 7§ = _loc3_;
               this.§0D§ = param1;
               this.§,J§.splice(_loc2_,1);
               this.§,J§.unshift(this.§ 7§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § null§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§<w§())
         {
            if(!this.§<u§())
            {
               this.§=L§ = param1;
               return;
            }
         }
         if(this.§[W§(param1))
         {
            this.§ !2§(param1);
            if(param1 == this.§0D§ || !this.§6p§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§7!$§(param1,false);
            }
         }
         else
         {
            this.§"k§(param1);
         }
      }
      
      private function §"k§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§?M§ != null && this.§?M§.length > 0)
         {
            _loc2_ = "?version=" + this.§?M§;
         }
         this.§<!>§ = param1;
         this.§+z§ = new URLLoader();
         this.§+z§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§+z§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+z§.load(new URLRequest(this.§3#§ + "packages/" + param1 + "." + this.§,!5§ + _loc2_));
      }
      
      private function §<w§() : Boolean
      {
         return this.§+z§ || this.§+!$§;
      }
      
      private function §<u§() : Boolean
      {
         if(this.§+z§)
         {
            this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+z§.close();
            this.§+z§ = null;
         }
         if(this.§+!$§)
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
         this.§,d§[this.§<!>§] = this.§+z§.data;
         this.§+z§ = null;
         this.§7!$§(this.§<!>§,true);
      }
      
      private function §7!$§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§'!3§ = null;
         this.§+!$§ = true;
         this.§<!>§ = param1;
         while(this.§,J§.length >= this.§[y§)
         {
            _loc3_ = this.§,J§.pop();
            _loc3_.dispose();
         }
         if(this.§6!&§)
         {
            this.§6!&§.dispose();
         }
         this.§ 7§ = new §'!3§(param1);
         this.§,J§.unshift(this.§ 7§);
         this.§6!&§ = new §+u§();
         this.§6!&§.addEventListener(Event.COMPLETE,this.§%]§);
         this.§6!&§.§?s§(this.§,d§[this.§<!>§],param2);
      }
      
      private function onError(param1:Event) : void
      {
         this.§+z§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+z§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+z§.close();
         this.§+z§ = null;
         this.§<!>§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §%]§(param1:Event) : void
      {
         this.§+!$§ = false;
         this.§6!&§.removeEventListener(Event.COMPLETE,this.§%]§);
         if(this.§=L§)
         {
            this.§ null§(this.§=L§);
            this.§=L§ = null;
            return;
         }
         var _loc2_:int = this.§6!&§.§'a§.§8h§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§ 7§.§4!2§(this.§6!&§.§'a§.§!4§(_loc3_));
            _loc3_++;
         }
         this.§,_§();
      }
      
      public function §,_§() : void
      {
         if(this.§<w§() || this.§6!&§ == null)
         {
            return;
         }
         if(this.§ 7§.§,_§())
         {
            this.§6!&§.dispose();
            this.§6!&§ = null;
            this.§0D§ = this.§<!>§;
            this.§<!>§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
