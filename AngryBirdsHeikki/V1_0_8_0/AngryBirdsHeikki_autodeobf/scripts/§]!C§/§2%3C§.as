package §]!C§
{
   import §<!P§.§1!e§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §2<§ extends EventDispatcher
   {
       
      
      private var §40§:String = "";
      
      private var §>!K§:String;
      
      private var §4!$§:URLLoader;
      
      private var §=0§:Dictionary;
      
      private var §7!G§:String = null;
      
      private var §6=§:String = null;
      
      private var §6q§:String = null;
      
      private var §[g§:Boolean;
      
      private var §'!1§:§1!e§;
      
      private var §>8§:§0!d§;
      
      private var §?Y§:Vector.<§0!d§>;
      
      private var §<!#§:String = "pak";
      
      private var §&f§:Boolean = true;
      
      private var §4!f§:int = 1;
      
      public function §2<§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         this.§=0§ = new Dictionary();
         this.§?Y§ = new Vector.<§0!d§>();
         super();
         this.§40§ = param2;
         this.§>!K§ = param1;
         this.§&f§ = param3;
         this.§4!f§ = Math.max(1,param4);
      }
      
      public function get textureManager() : §0!d§
      {
         return this.§>8§;
      }
      
      public function §-F§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this.§=0§[param1] != null;
      }
      
      private function §7g§(param1:String) : Boolean
      {
         var _loc3_:§0!d§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?Y§.length)
         {
            _loc3_ = this.§?Y§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§>8§ = _loc3_;
               this.§7!G§ = param1;
               this.§?Y§.splice(_loc2_,1);
               this.§?Y§.unshift(this.§>8§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § r§(param1:String) : void
      {
         param1 = param1.toLowerCase();
         if(this.§ !S§())
         {
            if(!this.§]u§())
            {
               this.§6q§ = param1;
               return;
            }
         }
         if(this.§-F§(param1))
         {
            this.§7g§(param1);
            if(param1 == this.§7!G§ || !this.§&f§)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               this.§>F§(param1,false);
            }
         }
         else
         {
            this.§9b§(param1);
         }
      }
      
      private function §9b§(param1:String) : void
      {
         var _loc2_:String = "";
         if(this.§40§ != null && this.§40§.length > 0)
         {
            _loc2_ = "?version=" + this.§40§;
         }
         this.§6=§ = param1;
         this.§4!$§ = new URLLoader();
         this.§4!$§.dataFormat = URLLoaderDataFormat.BINARY;
         this.§4!$§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§+v§);
         this.§4!$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+v§);
         this.§4!$§.load(new URLRequest(this.§>!K§ + "packages/" + param1 + "." + this.§<!#§ + _loc2_));
      }
      
      private function § !S§() : Boolean
      {
         return this.§4!$§ || this.§[g§;
      }
      
      private function §]u§() : Boolean
      {
         if(this.§4!$§)
         {
            this.§4!$§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+v§);
            this.§4!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+v§);
            this.§4!$§.close();
            this.§4!$§ = null;
         }
         if(this.§[g§)
         {
            return false;
         }
         return true;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4!$§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+v§);
         this.§4!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+v§);
         this.§=0§[this.§6=§] = this.§4!$§.data;
         this.§4!$§ = null;
         this.§>F§(this.§6=§,true);
      }
      
      private function §>F§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§0!d§ = null;
         this.§[g§ = true;
         this.§6=§ = param1;
         while(this.§?Y§.length >= this.§4!f§)
         {
            _loc3_ = this.§?Y§.pop();
            _loc3_.dispose();
         }
         if(this.§'!1§)
         {
            this.§'!1§.dispose();
         }
         this.§>8§ = new §0!d§(param1);
         this.§?Y§.unshift(this.§>8§);
         this.§'!1§ = new §1!e§();
         this.§'!1§.addEventListener(Event.COMPLETE,this.§;h§);
         this.§'!1§.§2!=§(this.§=0§[this.§6=§],param2);
      }
      
      private function §+v§(param1:Event) : void
      {
         this.§4!$§.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§4!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+v§);
         this.§4!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+v§);
         this.§4!$§.close();
         this.§4!$§ = null;
         this.§6=§ = null;
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function §;h§(param1:Event) : void
      {
         this.§[g§ = false;
         this.§'!1§.removeEventListener(Event.COMPLETE,this.§;h§);
         if(this.§6q§)
         {
            this.§ r§(this.§6q§);
            this.§6q§ = null;
            return;
         }
         var _loc2_:int = this.§'!1§.§#^§.§4%§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.§>8§.§#!Q§(this.§'!1§.§#^§.§ !P§(_loc3_));
            _loc3_++;
         }
         this.§-!M§();
      }
      
      public function §-!M§() : void
      {
         if(this.§ !S§() || this.§'!1§ == null)
         {
            return;
         }
         if(this.§>8§.§-!M§())
         {
            this.§'!1§.dispose();
            this.§'!1§ = null;
            this.§7!G§ = this.§6=§;
            this.§6=§ = null;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
