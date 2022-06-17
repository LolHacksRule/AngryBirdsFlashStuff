package §9&§
{
   import § "g§.§5"D§;
   import §#!E§.§2#Q§;
   import §+"u§.§^"C§;
   import §,!L§.§6!`§;
   import §6!'§.§@#c§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§]Q§;
   import §>"h§.§?>§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import §]"'§.§@"%§;
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
   
   public class §[#>§ extends EventDispatcher implements §6!`§
   {
      
      private static const §="n§:int = 30000;
      
      public static const §6#<§:String = "/league";
      
      private static const §7$?§:String = "/currentStandings";
      
      private static const § X§:String = "/currentLevelStandings";
      
      private static const §3$@§:String = "/claimLeagueReward";
      
      private static const §3#E§:String = "/getProfile";
      
      public static const §4L§:String = "/saveProfile";
      
      private static var §[p§:Number = 0;
      
      private static var §7#A§:int;
       
      
      private var §3$<§:Timer;
      
      private var § K§:§'!n§;
      
      private var §<?§:§'!n§;
      
      private var §^#Y§:§'!n§;
      
      private var §2"s§:§'!n§;
      
      private var §%#2§:§'!n§;
      
      private var §,"<§:Array;
      
      private const §"B§:String = "/getAllUnconcludedResults";
      
      private const §@$9§:String = "/claimAllRewards";
      
      private const §]#N§:String = "/getAllPreviousResults";
      
      protected var §7§:Object;
      
      private var §,#1§:Boolean;
      
      public function §[#>§(param1:IEventDispatcher = null)
      {
         this.§,"<§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§7§ = {};
         super(param1);
      }
      
      public function §[n§(param1:int) : void
      {
         if(this.§7!G§() && §@#c§.§?q§.§%$2§() && param1 == §7#A§)
         {
            this.§#!j§(new §?>§(§?>§.§ "M§,§@#c§.§?q§.§%$2§()));
            return;
         }
         this.§ K§ = new §'!n§();
         this.§ K§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ K§.addEventListener(Event.COMPLETE,this.§#!j§);
         this.§ K§.addEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         this.§ K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         this.§ K§.addEventListener(§"!;§.§ #x§,this.§#7§);
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §6#<§ + §7$?§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§ K§.load(_loc2_);
         §7#A§ = param1;
      }
      
      public function §6"K§(param1:int) : void
      {
         this.§<?§ = new §'!n§();
         this.§<?§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<?§.addEventListener(Event.COMPLETE,this.§6!l§);
         this.§<?§.addEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         this.§<?§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         this.§<?§.addEventListener(§"!;§.§ #x§,this.§#7§);
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §6#<§ + §3#E§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§<?§.load(_loc2_);
      }
      
      public function §#!e§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §6#<§ + §3$@§);
         if(§^"C§.§?q§.§5!W§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §^"C§.§?q§.§5!W§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§2"s§ = new §'!n§();
         this.§2"s§.addEventListener(Event.COMPLETE,this.§3$&§);
         this.§2"s§.addEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
         this.§2"s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
         this.§2"s§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"s§.load(_loc1_);
      }
      
      public function §[$,§(param1:int) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§"B§ + "?st=" + §]Q§.§="3§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3#Q§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         this.§^#Y§ = new §'!n§();
         this.§^#Y§.addEventListener(Event.COMPLETE,this.§9!'§);
         this.§^#Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         this.§^#Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         this.§^#Y§.addEventListener(§"!;§.§ #x§,this.§#7§);
         this.§^#Y§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^#Y§.load(_loc2_);
      }
      
      public function §>#%§(param1:int) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§@$9§ + "?st=" + §]Q§.§="3§);
         if(param1 <= 0)
         {
            _loc2_.url += "&tournamentId=" + §^"C§.§?q§.§5!W§();
         }
         else
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§2"s§ = new §'!n§();
         this.§2"s§.addEventListener(Event.COMPLETE,this.§2"S§);
         this.§2"s§.addEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
         this.§2"s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
         this.§2"s§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"s§.load(_loc2_);
      }
      
      public function §[#'§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§]#N§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§%#2§ = new §'!n§();
         this.§%#2§.addEventListener(Event.COMPLETE,this.§;L§);
         this.§%#2§.addEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         this.§%#2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         this.§%#2§.addEventListener(§"!;§.§ #x§,this.§#7§);
         this.§%#2§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%#2§.load(_loc1_);
      }
      
      protected function §9!'§(param1:Event) : void
      {
         this.§^#Y§.removeEventListener(Event.COMPLETE,this.§9!'§);
         this.§^#Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         this.§^#Y§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         this.§^#Y§.removeEventListener(§"!;§.§ #x§,this.§#7§);
         dispatchEvent(new §?>§(§?>§.§"#&§,param1.currentTarget.data));
      }
      
      protected function §2"S§(param1:Event) : void
      {
         if(this.§2"s§)
         {
            this.§2"s§.removeEventListener(Event.COMPLETE,this.§2"S§);
            this.§2"s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
            this.§2"s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
            this.§2"s§ = null;
         }
         dispatchEvent(new §?>§(§?>§.§ ![§,param1.currentTarget.data));
      }
      
      protected function §;L§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§%#2§)
         {
            this.§%#2§.removeEventListener(Event.COMPLETE,this.§;L§);
            this.§%#2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
            this.§%#2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
            this.§%#2§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §?>§(§?>§.§!"P§,_loc2_));
         }
      }
      
      private function §#!j§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§ K§)
         {
            this.§ K§.removeEventListener(Event.COMPLETE,this.§#!j§);
            this.§ K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
            this.§ K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
            this.§ K§.removeEventListener(§"!;§.§ #x§,this.§#7§);
            this.§ K§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §?>§(param1) && §?>§(param1).data)
         {
            _loc2_ = §?>§(param1).data;
         }
         dispatchEvent(new §?>§(§?>§.§ "M§,_loc2_));
      }
      
      private function §1"Q§(param1:TimerEvent) : void
      {
         this.§3$<§.stop();
         this.§3$<§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§1"Q§);
         this.§3$<§ = null;
         this.§[n§(§^"C§.§?q§.§5!W§());
      }
      
      private function §6!l§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§<?§)
         {
            this.§<?§.removeEventListener(Event.COMPLETE,this.§6!l§);
            this.§<?§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
            this.§<?§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
            this.§<?§.removeEventListener(§"!;§.§ #x§,this.§#7§);
            this.§<?§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §?>§(§?>§.§7!D§,_loc2_));
      }
      
      protected function §3$&§(param1:Event) : void
      {
         this.§2"s§.removeEventListener(Event.COMPLETE,this.§3$&§);
         this.§2"s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
         this.§2"s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
         this.§2"s§ = null;
         dispatchEvent(new §?>§(§?>§.§^W§,param1.currentTarget.data));
      }
      
      private function §#7§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(this.§ K§)
         {
            this.§ K§.removeEventListener(Event.COMPLETE,this.§#!j§);
            this.§ K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
            this.§ K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
            this.§ K§.removeEventListener(§"!;§.§ #x§,this.§#7§);
            this.§ K§ = null;
         }
         if(this.§3$<§)
         {
            this.§3$<§.stop();
            this.§3$<§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§1"Q§);
            this.§3$<§ = null;
         }
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §9m§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(this.§2"s§)
         {
            this.§2"s§.removeEventListener(Event.COMPLETE,this.§2"S§);
            this.§2"s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9m§);
            this.§2"s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9m§);
            this.§2"s§ = null;
         }
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §1"'§(param1:String, param2:Boolean = true) : §5"D§
      {
         var _loc3_:Object = null;
         if(param2 && this.§7§[param1] && §5"D§(this.§7§[param1]).§6#f§() && this.§7§[param1].data.length > 0)
         {
            if(§@#c§.§?q§.§3#V§() >= §@#c§.§2!<§)
            {
               this.§;1§();
               this.§7§[param1].data.sortOn("rank",Array.NUMERIC);
            }
            for each(_loc3_ in this.§7§[param1].data)
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
            return this.§7§[param1];
         }
         return this.§7§[param1] = new §5"D§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName,AngryBirdsBase.SERVER_ROOT + §6#<§ + § X§ + "?level=" + param1 + "&" + §^"C§.§?q§.§;$&§(),false,null,true,false,true);
      }
      
      private function §;1§() : void
      {
         var _loc1_:String = null;
         if(!this.§,#1§)
         {
            this.§,#1§ = true;
            for each(_loc1_ in §^"C§.§?q§.levelIDs)
            {
               if(this.§<#Y§(_loc1_))
               {
                  this.§<#Y§(_loc1_).§1#y§ = 0;
               }
            }
         }
      }
      
      public function §0$0§() : void
      {
         this.§7§ = {};
      }
      
      public function §<#Y§(param1:String) : §5"D§
      {
         return this.§7§[param1];
      }
      
      public function §?#W§(param1:String, param2:String) : Number
      {
         var _loc3_:§5"D§ = this.§7§[param1] as §5"D§;
         return _loc3_.§`#A§(param2);
      }
      
      public function §0"§() : Boolean
      {
         return this.§ K§ != null;
      }
      
      private function §7!G§() : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = §^"C§.§?q§.§&"C§();
         if(_loc1_ < §^"C§.§,";§)
         {
            return false;
         }
         _loc2_ = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
         _loc1_ = (_loc2_ - §[p§) / 1000;
         _loc1_ = Math.max(0,_loc1_);
         if(_loc1_ < §^"C§.§,";§)
         {
            return true;
         }
         §[p§ = _loc2_;
         return false;
      }
      
      public function §6#u§() : void
      {
         §7#A§ = -1;
      }
      
      private function §3#Q§() : String
      {
         return this.§0!m§(this.§,"<§);
      }
      
      private function §0!m§(param1:Array) : String
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
