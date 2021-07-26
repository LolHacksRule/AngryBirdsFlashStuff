package §>#q§
{
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§1!Y§;
   import §4S§.§?#l§;
   import §6"p§.§^"t§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^!"§ extends EventDispatcher
   {
      
      public static const §0#+§:String = "SeenItems";
      
      public static const § "P§:String = "CurrentSlingshot";
      
      public static const §2"7§:String = "SoundSetting";
      
      public static const §8#O§:String = "TabSelection";
      
      public static const §<"]§:String = "PersonalizedOffer";
      
      public static const §+"=§:String = "FBPixelReport";
      
      private static const §8#W§:String = "clnDupSnItms";
       
      
      private var §@$2§:§-$C§;
      
      private var §&#a§:Boolean = false;
      
      private var §9H§:Object;
      
      public function §^!"§()
      {
         super();
         this.§9H§ = new Object();
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§&#a§;
      }
      
      public function §@M§() : void
      {
         if(this.§&#a§)
         {
            return;
         }
         this.§&#a§ = true;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §1!Y§.§?!j§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§@$2§ = new §-$C§();
         this.§@$2§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§!#L§);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#L§);
         this.§@$2§.addEventListener(§+!p§.§2$9§,this.§!#L§);
         this.§@$2§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§&#a§ = false;
         if(param1.target.data is String)
         {
            this.§9H§ = JSON.parse(param1.target.data);
            this.§?"-§();
         }
         this.§@$2§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §?"-§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§9H§[§8#W§];
         var _loc2_:Array = this.§9H§[§0#+§];
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
         this.§9H§[§8#W§] = true;
      }
      
      private function §!#L§(param1:ErrorEvent) : void
      {
         this.§&#a§ = false;
         §^"t§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!#L§);
         this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#L§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §-#7§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§&#a§)
         {
            return;
         }
         if(param3 || !this.§9H§[param1])
         {
            if(param2 is Array)
            {
               this.§9H§[param1] = new Array();
            }
            else
            {
               this.§9H§[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§9H§[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§9H§[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§9H§[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §1!Y§.§?!j§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§9H§);
            _loc7_.method = URLRequestMethod.POST;
            this.§@$2§ = new §-$C§();
            this.§@$2§.addEventListener(Event.COMPLETE,this.§0"h§);
            this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§`#K§);
            this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`#K§);
            this.§@$2§.load(_loc7_);
         }
      }
      
      private function §0"h§(param1:Event) : void
      {
         this.§&#a§ = false;
         this.§@$2§.removeEventListener(Event.COMPLETE,this.§0"h§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §`#K§(param1:ErrorEvent) : void
      {
         this.§&#a§ = false;
         §^"t§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`#K§);
         this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`#K§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §<"%§(param1:String) : Object
      {
         if(!this.§9H§[param1])
         {
            return null;
         }
         return this.§9H§[param1];
      }
      
      public function §["v§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§<"%§(§^!"§.§0#+§);
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
