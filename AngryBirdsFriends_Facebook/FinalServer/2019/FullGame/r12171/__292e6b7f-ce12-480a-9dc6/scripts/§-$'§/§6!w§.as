package §-$'§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §'n§.§+"g§;
   import §,#,§.§=#o§;
   import §2!Y§.§4!h§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§1!Y§;
   import §4S§.§?#l§;
   import §9#!§.§5^§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §]#'§.§4"s§;
   import §`,§.§7!$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §6!w§ extends EventDispatcher implements §5^§
   {
      
      private static const §?#8§:int = 30000;
      
      public static const §6Q§:String = "/league";
      
      private static const §[S§:String = "/currentStandings";
      
      private static const §^b§:String = "/currentLevelStandings";
      
      private static const §+$#§:String = "/claimLeagueReward";
      
      private static const §;#m§:String = "/getProfile";
      
      public static const §4!;§:String = "/saveProfile";
      
      private static var §#!'§:Number = 0;
      
      private static var §>!'§:int;
       
      
      private var §?!X§:Timer;
      
      private var §1n§:§-$C§;
      
      private var §["'§:§-$C§;
      
      private var §4#E§:§-$C§;
      
      private var §0h§:§-$C§;
      
      private var §=n§:§-$C§;
      
      private var §?#y§:Array;
      
      private const §#$A§:String = "/getAllUnconcludedResults";
      
      private const §@#_§:String = "/claimAllRewards";
      
      private const §`"I§:String = "/getAllPreviousResults";
      
      protected var §&#D§:Object;
      
      private var §]!q§:Boolean;
      
      public function §6!w§(param1:IEventDispatcher = null)
      {
         this.§?#y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§&#D§ = {};
         super(param1);
      }
      
      public function §^!R§(param1:int) : void
      {
         if(this.§]#T§() && §4"s§.§+!,§.§,#p§() && param1 == §>!'§)
         {
            this.§["f§(new §+"g§(§+"g§.§=!?§,§4"s§.§+!,§.§,#p§()));
            return;
         }
         this.§1n§ = new §-$C§();
         this.§1n§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1n§.addEventListener(Event.COMPLETE,this.§["f§);
         this.§1n§.addEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         this.§1n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         this.§1n§.addEventListener(§+!p§.§2$9§,this.§9$4§);
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §6Q§ + §[S§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§1n§.load(_loc2_);
         §>!'§ = param1;
      }
      
      public function §>"u§(param1:int) : void
      {
         this.§["'§ = new §-$C§();
         this.§["'§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§["'§.addEventListener(Event.COMPLETE,this.§1"0§);
         this.§["'§.addEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         this.§["'§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         this.§["'§.addEventListener(§+!p§.§2$9§,this.§9$4§);
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §6Q§ + §;#m§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§["'§.load(_loc2_);
      }
      
      public function §27§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §6Q§ + §+$#§);
         if(§7!$§.§+!,§.§`!X§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §7!$§.§+!,§.§`!X§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§0h§ = new §-$C§();
         this.§0h§.addEventListener(Event.COMPLETE,this.§1#k§);
         this.§0h§.addEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
         this.§0h§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
         this.§0h§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0h§.load(_loc1_);
      }
      
      public function §="1§(param1:int) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§#$A§ + "?st=" + §1!Y§.§?!j§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3! §();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         this.§4#E§ = new §-$C§();
         this.§4#E§.addEventListener(Event.COMPLETE,this.§%"'§);
         this.§4#E§.addEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         this.§4#E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         this.§4#E§.addEventListener(§+!p§.§2$9§,this.§9$4§);
         this.§4#E§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§4#E§.load(_loc2_);
      }
      
      public function §"!^§(param1:int) : void
      {
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§@#_§ + "?st=" + §1!Y§.§?!j§);
         if(param1 <= 0)
         {
            _loc2_.url += "&tournamentId=" + §7!$§.§+!,§.§`!X§();
         }
         else
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§0h§ = new §-$C§();
         this.§0h§.addEventListener(Event.COMPLETE,this.§<!8§);
         this.§0h§.addEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
         this.§0h§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
         this.§0h§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0h§.load(_loc2_);
      }
      
      public function §-!U§() : void
      {
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§`"I§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§=n§ = new §-$C§();
         this.§=n§.addEventListener(Event.COMPLETE,this.§0"s§);
         this.§=n§.addEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         this.§=n§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         this.§=n§.addEventListener(§+!p§.§2$9§,this.§9$4§);
         this.§=n§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§=n§.load(_loc1_);
      }
      
      protected function §%"'§(param1:Event) : void
      {
         this.§4#E§.removeEventListener(Event.COMPLETE,this.§%"'§);
         this.§4#E§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         this.§4#E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         this.§4#E§.removeEventListener(§+!p§.§2$9§,this.§9$4§);
         dispatchEvent(new §+"g§(§+"g§.§-#o§,param1.currentTarget.data));
      }
      
      protected function §<!8§(param1:Event) : void
      {
         if(this.§0h§)
         {
            this.§0h§.removeEventListener(Event.COMPLETE,this.§<!8§);
            this.§0h§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
            this.§0h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
            this.§0h§ = null;
         }
         dispatchEvent(new §+"g§(§+"g§.§0$1§,param1.currentTarget.data));
      }
      
      protected function §0"s§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§=n§)
         {
            this.§=n§.removeEventListener(Event.COMPLETE,this.§0"s§);
            this.§=n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
            this.§=n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
            this.§=n§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §+"g§(§+"g§.§0=§,_loc2_));
         }
      }
      
      private function §["f§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§1n§)
         {
            this.§1n§.removeEventListener(Event.COMPLETE,this.§["f§);
            this.§1n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
            this.§1n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
            this.§1n§.removeEventListener(§+!p§.§2$9§,this.§9$4§);
            this.§1n§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §+"g§(param1) && §+"g§(param1).data)
         {
            _loc2_ = §+"g§(param1).data;
         }
         dispatchEvent(new §+"g§(§+"g§.§=!?§,_loc2_));
      }
      
      private function §;!C§(param1:TimerEvent) : void
      {
         this.§?!X§.stop();
         this.§?!X§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;!C§);
         this.§?!X§ = null;
         this.§^!R§(§7!$§.§+!,§.§`!X§());
      }
      
      private function §1"0§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§["'§)
         {
            this.§["'§.removeEventListener(Event.COMPLETE,this.§1"0§);
            this.§["'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
            this.§["'§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
            this.§["'§.removeEventListener(§+!p§.§2$9§,this.§9$4§);
            this.§["'§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §+"g§(§+"g§.§,^§,_loc2_));
      }
      
      protected function §1#k§(param1:Event) : void
      {
         this.§0h§.removeEventListener(Event.COMPLETE,this.§1#k§);
         this.§0h§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
         this.§0h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
         this.§0h§ = null;
         dispatchEvent(new §+"g§(§+"g§.§+!w§,param1.currentTarget.data));
      }
      
      private function §9$4§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(this.§1n§)
         {
            this.§1n§.removeEventListener(Event.COMPLETE,this.§["f§);
            this.§1n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
            this.§1n§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
            this.§1n§.removeEventListener(§+!p§.§2$9§,this.§9$4§);
            this.§1n§ = null;
         }
         if(this.§?!X§)
         {
            this.§?!X§.stop();
            this.§?!X§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;!C§);
            this.§?!X§ = null;
         }
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §1$A§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(this.§0h§)
         {
            this.§0h§.removeEventListener(Event.COMPLETE,this.§<!8§);
            this.§0h§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1$A§);
            this.§0h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1$A§);
            this.§0h§ = null;
         }
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §&#@§(param1:String, param2:Boolean = true) : §4!h§
      {
         var _loc3_:Object = null;
         if(param2 && this.§&#D§[param1] && §4!h§(this.§&#D§[param1]).§=#R§() && this.§&#D§[param1].data.length > 0)
         {
            if(§4"s§.§+!,§.§@!c§() >= §4"s§.§9#P§)
            {
               this.§0"]§();
               this.§&#D§[param1].data.sortOn("rank",Array.NUMERIC);
            }
            for each(_loc3_ in this.§&#D§[param1].data)
            {
               if(_loc3_.targetOffset)
               {
                  _loc3_.targetOffset = 0;
               }
               if(_loc3_.offset)
               {
                  _loc3_.offset = 0;
               }
            }
            return this.§&#D§[param1];
         }
         return this.§&#D§[param1] = new §4!h§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName,AngryBirdsBase.SERVER_ROOT + §6Q§ + §^b§ + "?level=" + param1 + "&" + §7!$§.§+!,§.§]!>§(),false,null,true,false,true);
      }
      
      private function §0"]§() : void
      {
         var _loc1_:String = null;
         if(!this.§]!q§)
         {
            this.§]!q§ = true;
            for each(_loc1_ in §7!$§.§+!,§.levelIDs)
            {
               if(this.§%#B§(_loc1_))
               {
                  this.§%#B§(_loc1_).§,"_§ = 0;
               }
            }
         }
      }
      
      public function §]"?§() : void
      {
         this.§&#D§ = {};
      }
      
      public function §%#B§(param1:String) : §4!h§
      {
         return this.§&#D§[param1];
      }
      
      public function §##k§(param1:String, param2:String) : Number
      {
         var _loc3_:§4!h§ = this.§&#D§[param1] as §4!h§;
         return _loc3_.§+$ §(param2);
      }
      
      public function §9$$§() : Boolean
      {
         return this.§1n§ != null;
      }
      
      private function §]#T§() : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = §7!$§.§+!,§.§&"%§();
         if(_loc1_ < §7!$§.§1#7§)
         {
            return false;
         }
         _loc2_ = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
         _loc1_ = (_loc2_ - §#!'§) / 1000;
         _loc1_ = Math.max(0,_loc1_);
         if(_loc1_ < §7!$§.§1#7§)
         {
            return true;
         }
         §#!'§ = _loc2_;
         return false;
      }
      
      public function §-#5§() : void
      {
         §>!'§ = -1;
      }
      
      private function §3! §() : String
      {
         return this.§`"L§(this.§?#y§);
      }
      
      private function §`"L§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
   }
}
