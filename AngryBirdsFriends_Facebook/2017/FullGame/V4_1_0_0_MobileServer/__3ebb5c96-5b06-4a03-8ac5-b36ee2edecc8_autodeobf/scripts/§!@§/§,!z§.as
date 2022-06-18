package §!@§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§5h§;
   import § $%§.§]e§;
   import §<"p§.§?!T§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §,!z§ extends EventDispatcher
   {
      
      public static const §^!?§:String = "SeenItems";
      
      public static const §]#t§:String = "CurrentSlingshot";
      
      public static const §4"A§:String = "SoundSetting";
      
      public static const §9";§:String = "TabSelection";
      
      public static const §!$ §:String = "PersonalizedOffer";
      
      private static const §-?§:String = "clnDupSnItms";
       
      
      private var §+"§:§4"v§;
      
      private var §["s§:Boolean = false;
      
      private var §;#9§:Object;
      
      public function §,!z§()
      {
         super();
         this.§;#9§ = new Object();
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§["s§;
      }
      
      public function §>$§() : void
      {
         if(this.§["s§)
         {
            return;
         }
         this.§["s§ = true;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §5h§.§0#,§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§+"§ = new §4"v§();
         this.§+"§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!R§);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!R§);
         this.§+"§.addEventListener(§]e§.§5!;§,this.§"!R§);
         this.§+"§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§["s§ = false;
         if(param1.target.data is String)
         {
            this.§;#9§ = JSON.parse(param1.target.data);
            this.§+!]§();
         }
         this.§+"§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §+!]§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§;#9§[§-?§];
         var _loc2_:Array = this.§;#9§[§^!?§];
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
         this.§;#9§[§-?§] = true;
      }
      
      private function §"!R§(param1:ErrorEvent) : void
      {
         this.§["s§ = false;
         §?!T§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!R§);
         this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"!R§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §?!;§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§["s§)
         {
            return;
         }
         if(param3 || !this.§;#9§[param1])
         {
            if(param2 is Array)
            {
               this.§;#9§[param1] = new Array();
            }
            else
            {
               this.§;#9§[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§;#9§[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§;#9§[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§;#9§[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §5h§.§0#,§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§;#9§);
            _loc7_.method = URLRequestMethod.POST;
            this.§+"§ = new §4"v§();
            this.§+"§.addEventListener(Event.COMPLETE,this.§43§);
            this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§;!u§);
            this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!u§);
            this.§+"§.load(_loc7_);
         }
      }
      
      private function §43§(param1:Event) : void
      {
         this.§["s§ = false;
         this.§+"§.removeEventListener(Event.COMPLETE,this.§43§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §;!u§(param1:ErrorEvent) : void
      {
         this.§["s§ = false;
         §?!T§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!u§);
         this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!u§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §@;§(param1:String) : Object
      {
         if(!this.§;#9§[param1])
         {
            return null;
         }
         return this.§;#9§[param1];
      }
      
      public function §&!!§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§@;§(§,!z§.§^!?§);
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
