package §&!_§
{
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §2";§.§`"A§;
   import §<!r§.§'##§;
   import §`"3§.§?!`§;
   import §`"3§.§`#Z§;
   import §`#@§.§7n§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.globalization.DateTimeFormatter;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   import flash.utils.Timer;
   import mx.utils.StringUtil;
   
   public class §!!K§
   {
      
      public static const §1!0§:String = "https://smoke.rovio.com";
      
      public static const §6;§:String = "https://mist.rovio.com";
      
      public static const § !4§:String = "https://cloud.rovio.com";
      
      private static const §^N§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §9"_§:§!!K§;
      
      public static const §%",§:String = "LEVEL_STARTED";
      
      public static const §5X§:String = "LEVEL_COMPLETE";
      
      public static const §"!k§:String = "LEVEL_FAILED";
      
      public static const §["W§:String = "NOTIFICATION_SENT";
      
      public static const §>9§:String = "NOTIFICATION_CLICKED";
      
      public static const §]O§:String = "GIFT_SENT";
      
      public static const §`#t§:String = "GIFT_CLAIMED";
      
      public static const §;"e§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §]"[§:String = "BIRD_SHOT";
      
      public static const §1"k§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §3"f§:String = "TOURNAMENT_STATISTICS";
      
      public static const §7$>§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §8#y§:String = "INVITATION_SENT";
      
      public static const §!f§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §-!F§:String = "INVENTORY_USED";
      
      public static const §9,§:String = "INVENTORY_GAINED";
      
      public static const §+#m§:String = "FACEBOOK_SHARING";
      
      public static const § #r§:String = "BRAG";
      
      public static const §`#X§:String = "GOLD_CROWN";
      
      public static const §1#!§:String = "SILVER_CROWN";
      
      public static const § #0§:String = "BRONZE_CROWN";
      
      public static const §<]§:String = "3STAR";
      
      public static const §^,§:String = "LEAGUE_WIN";
      
      public static const §1!w§:String = "PROMOTION";
      
      public static const §,!0§:String = "GOLD_TROPHY";
      
      public static const §%!Q§:String = "SILVER_TROPHY";
      
      public static const §'8§:String = "BRONZE_TROPHY";
      
      public static const §9#c§:String = "SHARE";
      
      public static const §-"S§:String = "SKIP";
      
      private static const §>!k§:String = "DAILY_SPIN_UI";
      
      public static const §=m§:String = "SPIN_ICON_CLICKED";
      
      public static const §0"_§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §?!P§:String = "DAILY_SPIN";
      
      private static const §"!E§:String = "DAILY_SPIN_REMOVE";
      
      public static const §7!C§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §'^§:String = "BRAND_BUTTON_CLICK";
      
      private static var §'$<§:String = "";
      
      private static const §0"3§:Number = 60 * 1000 * 10;
      
      private static const §3"b§:String = "/setsessionid/";
      
      public static var §'q§:String = "TOURNAMENT_REWARD";
      
      public static var §;d§:String = "LEAGUE_REWARD";
      
      public static var §9!t§:String = "LEVEL_REWARD";
      
      public static var §0#+§:String = "DAILY_REWARD";
      
      public static var §9!8§:String = "PURCHASE";
      
      public static var §5#6§:String = "GIFT";
      
      public static var §3!V§:String = "GIFT_BIRTHDAY";
      
      public static var §+"I§:String = "QUALIFIER_REWARD";
      
      public static var §>#F§:String = "REDEEM_CODE";
      
      public static var §;"$§:String = "FB_GIFT_CARD";
      
      public static var §5"_§:String = "FB_OFFER_WALL";
      
      public static var §3#C§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §;#u§:String = "MAIN_MENU_SCREEN";
      
      public static var §8"S§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var § !r§:String = "STORY_MODE_SCREEN";
      
      public static const §#"i§:String = "BIG_YES";
      
      public static const §8"W§:String = "SMALL_YES";
      
      public static const §@k§:String = "TIMER";
      
      public static const §4"[§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const §-$E§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §<##§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §0!v§:String = "https://cloud.rovio.com";
      
      private var §2!N§:URLLoader;
      
      private var §>"g§:String;
      
      private var §1#h§:String;
      
      private var §"##§:String = "application/json";
      
      private var §&#J§:String = "application/x-www-form-urlencoded";
      
      private var §,"+§:Vector.<§?!`§>;
      
      private var §]#d§:Number = 60000;
      
      private var §9"U§:Number = 100;
      
      private var §=#9§:Boolean = false;
      
      private var §7!%§:Timer;
      
      private var §6k§:Boolean = false;
      
      private var §[c§:String = "";
      
      private var §,!m§:Number = 0;
      
      private var §5!r§:§!!o§;
      
      private var §?%§:int = 1;
      
      private var §""q§:String = null;
      
      public function §!!K§()
      {
         super();
      }
      
      public static function §%#S§() : §!!K§
      {
         if(§9"_§ == null)
         {
            §9"_§ = new §!!K§();
         }
         return §9"_§;
      }
      
      public static function get §2$-§() : String
      {
         return §'$<§;
      }
      
      public static function set §2$-§(param1:String) : void
      {
         §'$<§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§1#h§ = param1;
         this.§>"g§ = param2;
         if(param3)
         {
            this.§6"b§();
         }
      }
      
      private function §8"8§() : String
      {
         return this.§>"g§;
      }
      
      protected function §7[§(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         if(this.§,"+§ && this.§,"+§.length > 0 && !this.§6k§ && this.§=#9§)
         {
            this.§6k§ = true;
            _loc2_ = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.§6#2§())];
            this.§!K§(this.§+#o§,this.§"##§,_loc2_,true);
         }
      }
      
      private function §+#o§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§,"+§.splice(0,this.§,"+§.length);
         this.§6k§ = false;
      }
      
      private function §6"b§() : void
      {
         this.§7!%§ = new Timer(this.§]#d§);
         this.§7!%§.addEventListener(TimerEvent.TIMER,this.§7[§);
         this.§7!%§.start();
         Security.loadPolicyFile(this.§0!v§ + "/crossdomain.xml");
         Security.allowDomain(this.§0!v§);
      }
      
      private function §,$%§() : String
      {
         var userAgent:String = "no user agent";
         try
         {
            userAgent = ExternalInterface.call("window.navigator.userAgent.toString");
         }
         catch(e:Error)
         {
         }
         return userAgent;
      }
      
      private function §!K§(param1:Function, param2:String = null, param3:Array = null, param4:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc5_:* = "/hoarder/2/apps/" + § #v§.§>#r§ + "/events/player";
         if(param4)
         {
            _loc5_ += "?accessToken=" + this.§6#2§();
         }
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest(this.§0!v§ + _loc5_)).method = URLRequestMethod.POST;
         if(param3)
         {
            _loc6_.requestHeaders = param3;
         }
         if(param2)
         {
            _loc6_.contentType = param2;
         }
         var _loc7_:URLVariables = new URLVariables();
         if(param2 == this.§"##§)
         {
            (_loc8_ = new Array()).push({
               "accessToken":this.§6#2§(),
               "events":this.§5!"§()
            });
            (_loc9_ = new Object())["batches"] = _loc8_;
            _loc6_.data = JSON.stringify(_loc9_);
            _loc6_.data = (_loc6_.data as String).replace("[!l","tz");
         }
         else
         {
            _loc6_.data = _loc7_;
         }
         this.§2!N§ = new URLLoader();
         this.§2!N§.addEventListener(Event.COMPLETE,param1);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,param1);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param1);
         this.§2!N§.load(_loc6_);
      }
      
      public function §>8§(param1:String, param2:int, param3:String, param4:int, param5:Number) : void
      {
         var _loc6_:Vector.<§`#Z§>;
         (_loc6_ = new Vector.<§`#Z§>()).push(new §`#Z§("LEVEL",param1));
         _loc6_.push(new §`#Z§("LEVEL_SORT_CODE",this.§+#c§(param1)));
         _loc6_.push(new §`#Z§("TOURNAMENT_ID",param2));
         _loc6_.push(new §`#Z§("SCREEN",this.§@g§()));
         _loc6_.push(new §`#Z§("RESTART",param5 > 0));
         _loc6_.push(new §`#Z§("STARS",param4));
         _loc6_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§%",§,_loc6_);
      }
      
      public function §4"8§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         this.§,#Y§(param1,_loc2_);
      }
      
      public function §'D§(param1:Boolean, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Array, param9:Number, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false, param14:int = 0) : void
      {
         var parameters:Vector.<§`#Z§> = null;
         var i:int = 0;
         var mySO:SharedObject = null;
         var levelAttemptsObject:Object = null;
         var passed:Boolean = param1;
         var levelId:String = param2;
         var tournamentId:int = param3;
         var chapterName:String = param4;
         var noOfBirdsUsed:Number = param5;
         var noOfBirdsAvailable:Number = param6;
         var noOfStars:Number = param7;
         var usedPowerups:Array = param8;
         var score:Number = param9;
         var firstTimeCompleted:Boolean = param10;
         var firstTimeThreeStars:Boolean = param11;
         var firstTime100:Boolean = param12;
         var mightyEagleUsed:Boolean = param13;
         var feathersPercentage:int = param14;
         parameters = new Vector.<§`#Z§>();
         parameters.push(new §`#Z§("LEVEL",levelId));
         parameters.push(new §`#Z§("TOURNAMENT_ID",tournamentId));
         parameters.push(new §`#Z§("LEVEL_SORT_CODE",this.§+#c§(levelId)));
         parameters.push(new §`#Z§("SCORE",score));
         parameters.push(new §`#Z§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new §`#Z§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new §`#Z§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new §`#Z§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new §`#Z§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§ #v§.§return§(),§ #v§.§'# §);
            levelAttemptsObject = mySO.data.levelAttempts;
            if(!levelAttemptsObject)
            {
               levelAttemptsObject = new Object();
               levelAttemptsObject[levelId] = 1;
            }
            else if(levelAttemptsObject[levelId])
            {
               levelAttemptsObject[levelId] += 1;
            }
            else
            {
               levelAttemptsObject[levelId] = 1;
            }
            mySO.data.levelAttempts = levelAttemptsObject;
            mySO.flush();
            parameters.push(new §`#Z§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new §`#Z§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new §`#Z§("STARS",noOfStars));
            parameters.push(new §`#Z§("FIRST_TIME",firstTimeCompleted));
            if(this.§""q§)
            {
               parameters.push(new §`#Z§("LEVEL_END_BUTTON",this.§""q§));
            }
            this.§,#Y§(§5X§,parameters);
         }
         else
         {
            parameters.push(new §`#Z§("SCREEN",this.§@g§()));
            if(this.§""q§)
            {
               parameters.push(new §`#Z§("LEVEL_END_BUTTON",this.§""q§));
            }
            this.§,#Y§(§"!k§,parameters);
         }
         this.§""q§ = null;
      }
      
      public function §<#t§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§`#Z§>;
         (_loc9_ = new Vector.<§`#Z§>()).push(new §`#Z§("TOURNAMENT_ID",param1));
         _loc9_.push(new §`#Z§("LEVELS_COMPLETED",param2));
         _loc9_.push(new §`#Z§("RED_BEATEN",param3));
         _loc9_.push(new §`#Z§("YELLOW_BEATEN",param4));
         _loc9_.push(new §`#Z§("PARTICIPANTS",param5));
         _loc9_.push(new §`#Z§("RANK",param6));
         _loc9_.push(new §`#Z§("TOTAL_SCORE",param7));
         _loc9_.push(new §`#Z§("STARS",param8));
         _loc9_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§3"f§,_loc9_);
      }
      
      public function §""o§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         var _loc4_:* = this.§@g§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new §`#Z§("SCREEN",_loc4_));
         _loc3_.push(new §`#Z§("CATEGORY",param1));
         _loc3_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§;"e§,_loc3_);
      }
      
      public function § "w§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("TYPE",param1));
         _loc3_.push(new §`#Z§("TEXT",param2));
         _loc3_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§>9§,_loc3_);
      }
      
      public function §&!r§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("COUNT",param1));
         _loc3_.push(new §`#Z§("GIFT_PLACE",param2));
         _loc3_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§]O§,_loc3_);
      }
      
      public function §3!j§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("USER_ACTION",param1));
         this.§,#Y§(§>!k§,_loc2_);
      }
      
      public function §%#g§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§`#Z§>;
         (_loc4_ = new Vector.<§`#Z§>()).push(new §`#Z§("REWARD",param1));
         _loc4_.push(new §`#Z§("REWARD_COUNT",param2));
         _loc4_.push(new §`#Z§("WHEEL_SEGMENTS",param3));
         this.§,#Y§(§?!P§,_loc4_);
      }
      
      public function §1#B§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("RESULT",param1));
         this.§,#Y§(§"!E§,_loc2_);
      }
      
      public function § "y§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§`#Z§>;
         (_loc5_ = new Vector.<§`#Z§>()).push(new §`#Z§("SENDER_ID",param1));
         _loc5_.push(new §`#Z§("RECEIVER_ID",param2));
         _loc5_.push(new §`#Z§("TOURNAMENT_ID",param3));
         _loc5_.push(new §`#Z§("PARTICIPANTS",param4));
         this.§,#Y§(§7$>§,_loc5_);
      }
      
      public function §9"g§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("COUNT",param1));
         _loc3_.push(new §`#Z§("CLAIM_ONLY",param2));
         _loc3_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§`#t§,_loc3_);
      }
      
      public function §`H§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         if(param1 == §4"[§)
         {
            _loc3_.push(new §`#Z§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new §`#Z§("CLAIMABLE",param2));
         }
         this.§,#Y§(param1,_loc3_);
      }
      
      public function §1$§(param1:int) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("CHEST",param1));
         this.§,#Y§(§<##§,_loc2_);
      }
      
      public function §%!D§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§`#Z§>;
         (_loc13_ = new Vector.<§`#Z§>()).push(new §`#Z§("FIRST_TIME",param1));
         _loc13_.push(new §`#Z§("ITEM_TYPE",param2));
         _loc13_.push(new §`#Z§("AMOUNT",param3));
         _loc13_.push(new §`#Z§("GAIN_TYPE",param4));
         _loc13_.push(new §`#Z§("SCREEN",param5));
         _loc13_.push(new §`#Z§("LEVEL",param6));
         _loc13_.push(new §`#Z§("ITEM_NAME",param7));
         _loc13_.push(new §`#Z§("IAP_TYPE",param8));
         _loc13_.push(new §`#Z§("PAID_AMOUNT",param9));
         _loc13_.push(new §`#Z§("CURRENCY",param10));
         _loc13_.push(new §`#Z§("RECEIPT_ID",param11));
         _loc13_.push(new §`#Z§("ROVIO_ANALYTICS",param12));
         this.§,#Y§(§9,§,_loc13_);
      }
      
      public function §%$1§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("SHARE_EVENT",param1));
         _loc3_.push(new §`#Z§("RESULT",param2));
         this.§,#Y§(§+#m§,_loc3_);
      }
      
      private function §,#Y§(param1:String, param2:Vector.<§`#Z§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§`#Z§ = null;
         var _loc8_:§`#Z§ = null;
         if(this.§=#9§ && new Date().time - this.§,!m§ >= §0"3§)
         {
            this.§[c§ = this.§!!i§();
            this.§1"a§();
            this.§;"k§();
         }
         for each(_loc6_ in this.§6"D§())
         {
            param2.push(_loc6_);
         }
         if(this.§5!"§().length >= this.§9"U§)
         {
            if(!this.§7!%§)
            {
               this.§6"b§();
            }
            this.§7!%§.reset();
            this.§7[§(null);
            this.§7!%§.start();
         }
         var _loc7_:Object = new Object();
         for each(_loc8_ in param2)
         {
            _loc7_[_loc8_.key] = _loc8_.value;
         }
         if(this.§=#9§)
         {
            this.§5!"§().push(new §?!`§(param1,_loc7_));
         }
      }
      
      private function §6"D§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§`#Z§>
      {
         var _loc4_:Vector.<§`#Z§>;
         (_loc4_ = new Vector.<§`#Z§>()).push(new §`#Z§("SESSION_ID",this.§?P§()));
         _loc4_.push(new §`#Z§("FB_CONNECT","YES"));
         _loc4_.push(new §`#Z§("SESSION_COUNTER",this.§2#Z§()));
         return _loc4_;
      }
      
      public function §5!"§() : Vector.<§?!`§>
      {
         if(this.§,"+§ == null)
         {
            this.§,"+§ = new Vector.<§?!`§>();
         }
         return this.§,"+§;
      }
      
      private function § !J§(param1:String, param2:String) : §`#Z§
      {
         return new §`#Z§(param1,param2);
      }
      
      public function §6#2§() : String
      {
         return § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken;
      }
      
      protected function §1"Y§(param1:IOErrorEvent) : void
      {
      }
      
      private function §?",§() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function §=y§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§]"q§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§]"q§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §]"q§(param1:Number, param2:int) : String
      {
         var _loc3_:String = param1 < 0 ? "-" : "+";
         var _loc5_:String = param1.toString().slice(1);
         while(_loc5_.length < param2)
         {
            _loc5_ = "0".concat(_loc5_);
         }
         return _loc3_ + _loc5_;
      }
      
      public function injectData(param1:Object) : void
      {
         if(param1.c && param1.c.analytics)
         {
            this.§]#d§ = (param1.c.analytics.ti as Number) * 1000;
            this.§9"U§ = param1.c.analytics.qs as Number;
            this.§=#9§ = true;
            this.§6"b§();
         }
         else
         {
            this.§=#9§ = false;
         }
      }
      
      public function §?P§() : String
      {
         if(!this.§[c§ || this.§[c§ == "")
         {
            this.§[c§ = this.§!!i§();
         }
         return this.§[c§;
      }
      
      private function §!!i§() : String
      {
         this.§,!m§ = new Date().time;
         return this.§,!m§.toString();
      }
      
      protected function §1"a§() : void
      {
         this.§5!r§ = new §!!o§();
         this.§5!r§.addEventListener(Event.COMPLETE,this.§2;§);
         this.§5!r§.addEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§5!r§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
         this.§5!r§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5!r§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §3"b§ + this.§[c§ + "?=" + this.§?%§));
      }
      
      protected function §=#=§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §2;§(param1:Event) : void
      {
         this.§5!r§.removeEventListener(Event.COMPLETE,this.§2;§);
         this.§5!r§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=#=§);
         this.§5!r§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=#=§);
         this.§5!r§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§0!v§ = param1;
         }
      }
      
      public function §'!^§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§`#Z§>;
         (_loc7_ = new Vector.<§`#Z§>()).push(new §`#Z§("LEVEL",param1));
         _loc7_.push(new §`#Z§("SLINGSHOT",param2));
         _loc7_.push(new §`#Z§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new §`#Z§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new §`#Z§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new §`#Z§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§]"[§,_loc7_);
      }
      
      public function §[s§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("CONTENT_TYPE",param1));
         _loc2_.push(new §`#Z§("ROVIO_ANALYTICS",true));
         this.§,#Y§(§1"k§,_loc2_);
      }
      
      public function §4"S§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("COUNT",param1));
         _loc3_.push(new §`#Z§("ORIGIN",param2));
         this.§,#Y§(§8#y§,_loc3_);
      }
      
      public function §#!c§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("ORIGIN",param1));
         this.§,#Y§(§!f§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§=#9§ = param1;
      }
      
      private function §+#c§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §`"A§.§1!5§)
         {
            _loc3_ = "T";
            _loc4_ = (§'##§.§`"H§.levelIDs.indexOf(param1) + 1).toString();
         }
         else if(_loc3_.length == 1)
         {
            _loc3_ = "0" + _loc3_;
         }
         if(_loc4_.length == 1)
         {
            _loc4_ = "0" + _loc4_;
         }
         return _loc3_ + "-" + _loc4_;
      }
      
      private function §@g§() : String
      {
         var _loc1_:Object = null;
         if(§7n§.§-$<§ as § #v§)
         {
            _loc1_ = (§7n§.§-$<§ as § #v§).§2$;§();
            return _loc1_.screenName;
         }
         return § #v§.§+!L§[0][1];
      }
      
      private function §;"k§() : void
      {
         if(this.§?%§ >= int.MAX_VALUE)
         {
            this.§?%§ = 0;
         }
         ++this.§?%§;
      }
      
      public function §2#Z§() : int
      {
         return this.§?%§;
      }
      
      public function §#"^§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc3_.push(new §`#Z§("NOTIFICATION_NAME",param1));
         _loc3_.push(new §`#Z§("RESULT",param2));
         _loc3_.push(new §`#Z§("USER_ID",this.§1#h§));
         this.§,#Y§(§7!C§,_loc3_);
      }
      
      public function §!!F§(param1:String) : void
      {
         var _loc2_:Vector.<§`#Z§> = new Vector.<§`#Z§>();
         _loc2_.push(new §`#Z§("TOURNAMENT_ID",param1));
         this.§,#Y§(§'^§,_loc2_);
      }
      
      public function § "6§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§`#Z§>;
         (_loc9_ = new Vector.<§`#Z§>()).push(new §`#Z§("ITEM_TYPE",param1));
         _loc9_.push(new §`#Z§("AMOUNT",param2));
         _loc9_.push(new §`#Z§("USE_TYPE",param3));
         _loc9_.push(new §`#Z§("IAP_TYPE",param4));
         _loc9_.push(new §`#Z§("ITEM_AMOUNT",param5));
         _loc9_.push(new §`#Z§("SCREEN",param6));
         _loc9_.push(new §`#Z§("LEVEL",param7));
         _loc9_.push(new §`#Z§("ROVIO_ANALYTICS",param8));
         this.§,#Y§(§-!F§,_loc9_);
      }
      
      public function get §;#,§() : String
      {
         return this.§""q§;
      }
      
      public function set §;#,§(param1:String) : void
      {
         this.§""q§ = param1;
      }
   }
}
