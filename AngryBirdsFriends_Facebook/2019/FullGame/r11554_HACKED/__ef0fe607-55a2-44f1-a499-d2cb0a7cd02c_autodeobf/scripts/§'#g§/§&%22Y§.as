package §'#g§
{
   import §9#K§.§=#f§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§]Q§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §&"Y§ extends EventDispatcher
   {
      
      public static const §&#G§:String = "SeenItems";
      
      public static const §0!2§:String = "CurrentSlingshot";
      
      public static const §+!^§:String = "SoundSetting";
      
      public static const § else§:String = "TabSelection";
      
      public static const §[%§:String = "PersonalizedOffer";
      
      public static const §"§:String = "FBPixelReport";
      
      private static const §'#&§:String = "clnDupSnItms";
       
      
      private var §&![§:§'!n§;
      
      private var §;"N§:Boolean = false;
      
      private var §#$6§:Object;
      
      public function §&"Y§()
      {
         super();
         this.§#$6§ = new Object();
      }
      
      public function get §0"§() : Boolean
      {
         return this.§;"N§;
      }
      
      public function §'L§() : void
      {
         if(this.§;"N§)
         {
            return;
         }
         this.§;"N§ = true;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §]Q§.§="3§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§&![§ = new §'!n§();
         this.§&![§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!X§);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8!X§);
         this.§&![§.addEventListener(§"!;§.§ #x§,this.§8!X§);
         this.§&![§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§;"N§ = false;
         if(param1.target.data is String)
         {
            this.§#$6§ = JSON.parse(param1.target.data);
            this.§1#h§();
         }
         this.§&![§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §1#h§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§#$6§[§'#&§];
         var _loc2_:Array = this.§#$6§[§&#G§];
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
         this.§#$6§[§'#&§] = true;
      }
      
      private function §8!X§(param1:ErrorEvent) : void
      {
         this.§;"N§ = false;
         §=#f§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!X§);
         this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8!X§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §6#b§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§;"N§)
         {
            return;
         }
         if(param3 || !this.§#$6§[param1])
         {
            if(param2 is Array)
            {
               this.§#$6§[param1] = new Array();
            }
            else
            {
               this.§#$6§[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§#$6§[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§#$6§[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§#$6§[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §]Q§.§="3§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§#$6§);
            _loc7_.method = URLRequestMethod.POST;
            this.§&![§ = new §'!n§();
            this.§&![§.addEventListener(Event.COMPLETE,this.§]""§);
            this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§>#9§);
            this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>#9§);
            this.§&![§.load(_loc7_);
         }
      }
      
      private function §]""§(param1:Event) : void
      {
         this.§;"N§ = false;
         this.§&![§.removeEventListener(Event.COMPLETE,this.§]""§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §>#9§(param1:ErrorEvent) : void
      {
         this.§;"N§ = false;
         §=#f§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>#9§);
         this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>#9§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §7#Y§(param1:String) : Object
      {
         if(!this.§#$6§[param1])
         {
            return null;
         }
         return this.§#$6§[param1];
      }
      
      public function §,"!§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§7#Y§(§&"Y§.§&#G§);
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
