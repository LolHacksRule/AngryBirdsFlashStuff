package § §#4
{
   import §1#v§.§;!Y§;
   import §1L§.§!!o§;
   import §1L§.§0#=§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §[$3§ extends EventDispatcher
   {
      
      public static const §'"N§:String = "SeenItems";
      
      public static const §5M§:String = "CurrentSlingshot";
      
      public static const §]-§:String = "SoundSetting";
      
      public static const §'"=§:String = "TabSelection";
      
      public static const §?$8§:String = "PersonalizedOffer";
      
      public static const §"_§:String = "FBPixelReport";
      
      private static const §=x§:String = "clnDupSnItms";
       
      
      private var §2!N§:§!!o§;
      
      private var §7#e§:Boolean = false;
      
      private var §5$1§:Object;
      
      public function §[$3§()
      {
         super();
         this.§5$1§ = new Object();
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§7#e§;
      }
      
      public function §5#M§() : void
      {
         if(this.§7#e§)
         {
            return;
         }
         this.§7#e§ = true;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/retrieve?st=" + §0#=§.§+#!§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§2!N§ = new §!!o§();
         this.§2!N§.addEventListener(Event.COMPLETE,this.onLoadComplete);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!B§);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!B§);
         this.§2!N§.addEventListener(§>5§.§@!@§,this.§=!B§);
         this.§2!N§.load(_loc1_);
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§7#e§ = false;
         if(param1.target.data is String)
         {
            this.§5$1§ = JSON.parse(param1.target.data);
            this.§"$&§();
         }
         this.§2!N§.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §"$&§() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:Boolean = this.§5$1§[§=x§];
         var _loc2_:Array = this.§5$1§[§'"N§];
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
         this.§5$1§[§=x§] = true;
      }
      
      private function §=!B§(param1:ErrorEvent) : void
      {
         this.§7#e§ = false;
         §;!Y§.log("[Error!] Can\'t get the client storage data: " + param1.type);
         this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!B§);
         this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!B§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §4"h§(param1:String, param2:Object, param3:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:URLRequest = null;
         if(this.§7#e§)
         {
            return;
         }
         if(param3 || !this.§5$1§[param1])
         {
            if(param2 is Array)
            {
               this.§5$1§[param1] = new Array();
            }
            else
            {
               this.§5$1§[param1] = new Object();
            }
         }
         var _loc4_:Boolean = param3;
         var _loc5_:* = this.§5$1§[param1] is Array;
         for(_loc6_ in param2)
         {
            if(_loc5_)
            {
               this.§5$1§[param1].push(param2[_loc6_]);
            }
            else
            {
               this.§5$1§[param1][_loc6_] = param2[_loc6_];
            }
            _loc4_ = true;
         }
         if(_loc4_)
         {
            (_loc7_ = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/clientStorage/save?st=" + §0#=§.§+#!§)).contentType = "application/json";
            _loc7_.data = JSON.stringify(this.§5$1§);
            _loc7_.method = URLRequestMethod.POST;
            this.§2!N§ = new §!!o§();
            this.§2!N§.addEventListener(Event.COMPLETE,this.§"!J§);
            this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§!!@§);
            this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!@§);
            this.§2!N§.load(_loc7_);
         }
      }
      
      private function §"!J§(param1:Event) : void
      {
         this.§7#e§ = false;
         this.§2!N§.removeEventListener(Event.COMPLETE,this.§"!J§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      private function §!!@§(param1:ErrorEvent) : void
      {
         this.§7#e§ = false;
         §;!Y§.log("[Error!] Can\'t save the client storage data: " + param1.type);
         this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!@§);
         this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!@§);
         dispatchEvent(new Event(Event.ADDED));
      }
      
      public function §'k§(param1:String) : Object
      {
         if(!this.§5$1§[param1])
         {
            return null;
         }
         return this.§5$1§[param1];
      }
      
      public function §3$;§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Object = this.§'k§(§[$3§.§'"N§);
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
