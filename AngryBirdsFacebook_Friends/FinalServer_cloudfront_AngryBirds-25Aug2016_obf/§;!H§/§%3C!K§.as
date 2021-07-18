package §;!H§
{
   import §!x§.§4"d§;
   import §]$9§.§5$!§;
   import §]$9§.§9"+§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<!K§ extends EventDispatcher
   {
      
      public static const §&L§:String = "SeenItems";
      
      public static const §-7§:String = "CurrentSlingshot";
      
      public static const §;#P§:String = "SoundSetting";
      
      public static const §[!3§:String = "TabSelection";
      
      private static const §,#=§:String = "clnDupSnItms";
       
      
      private var § each§:§5$!§;
      
      private var §#!R§:Boolean = false;
      
      private var static:Object;
      
      public function §<!K§()
      {
         super();
         this.static = new Object();
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§#!R§;
      }
      
      public function §]"U§() : void
      {
         if(this.§#!R§)
         {
            return;
         }
         this.§#!R§ = true;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §9"+§.§"C§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§ each§ = new §5$!§();
         this.§ each§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!i§);
         this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!i§);
         this.§ each§.addEventListener(§>#J§.§-$%§,this.§[!i§);
         this.§ each§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§#!R§ = false;
         if(param1.target.data is String)
         {
            this.static = JSON.parse(param1.target.data);
            this.§##§();
         }
         this.§ each§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §##§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.static[§,#=§];
         var _loc2_:Array = this.static[§&L§];
         if(_loc2_ != null && !_loc1_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length - 1)
            {
               _loc4_ = _loc3_ + 1;
               while(_loc4_ < _loc2_.length)
               {
                  if(_loc2_[_loc3_] === _loc2_[_loc4_])
                  {
                     _loc2_.splice(_loc4_,1);
                  }
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         this.static[§,#=§] = true;
      }
      
      private function §[!i§(param1:ErrorEvent) : void
      {
         this.§#!R§ = false;
         §4"d§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!i§);
         this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!i§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §3h§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§#!R§)
         {
            return;
         }
         if(param3 || !this.static[param1])
         {
            if(param2 is Array)
            {
               this.static[param1] = new Array();
            }
            else
            {
               this.static[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.static[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.static[param1].push(param2[_loc6_]);
            }
            else
            {
               this.static[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §9"+§.§"C§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.static);
            _loc7_.method = URLRequestMethod.POST;
            this.§ each§ = new §5$!§();
            this.§ each§.addEventListener(Event.COMPLETE,this.§-!W§);
            this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"y§);
            this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"y§);
            this.§ each§.load(_loc7_);
         }
      }
      
      private function §-!W§(param1:Event) : void
      {
         this.§#!R§ = false;
         this.§ each§.removeEventListener(Event.COMPLETE,this.§-!W§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §4"y§(param1:ErrorEvent) : void
      {
         this.§#!R§ = false;
         §4"d§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"y§);
         this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"y§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §=#3§(param1:String) : Object
      {
         if(!this.static[param1])
         {
            return null;
         }
         return this.static[param1];
      }
      
      public function §0!f§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§=#3§(§<!K§.§&L§);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
