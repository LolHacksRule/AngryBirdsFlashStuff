package §>!#§
{
   import §,!=§.§=!-§;
   import §3!B§.§-"D§;
   import §3!B§.§["?§;
   import §5"$§.§]!m§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
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
   import flash.utils.Timer;
   import mx.utils.StringUtil;
   
   public class §-#A§
   {
      
      private static const §%#§:String = "https://smoke.rovio.com";
      
      private static const §'"a§:String = "https://mist.rovio.com";
      
      private static const §8Y§:String = "https://cloud.rovio.com";
      
      private static const §&"t§:String = "/collector/1.0/events";
      
      private static const §-#&§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §@"O§:§-#A§;
      
      public static const §0"f§:String = "LEVEL_STARTED";
      
      public static const §,!"§:String = "LEVEL_COMPLETE";
      
      public static const §+5§:String = "LEVEL_FAILED";
      
      public static const §`#d§:String = "NOTIFICATION_SENT";
      
      public static const §#"a§:String = "NOTIFICATION_CLICKED";
      
      public static const §;!9§:String = "GIFT_SENT";
      
      public static const §0!j§:String = "GIFT_CLAIMED";
      
      public static const §,$&§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §1!1§:String = "BIRD_SHOT";
      
      public static const §2L§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §;!q§:String = "TOURNAMENT_STATISTICS";
      
      public static const §7!x§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §48§:String = "INVITATION_SENT";
      
      public static const §5#p§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §5a§:String = "VIRTUAL_CURRENCY_USED";
      
      public static const §5$"§:String = "INVENTORY_GAINED";
      
      public static const §+#K§:String = "FACEBOOK_SHARING";
      
      public static const §0$;§:String = "BRAG";
      
      public static const §#"J§:String = "GOLD_CROWN";
      
      public static const §#K§:String = "SILVER_CROWN";
      
      public static const §&#o§:String = "BRONZE_CROWN";
      
      public static const § #R§:String = "3STAR";
      
      public static const §%"E§:String = "LEAGUE_WIN";
      
      public static const §7##§:String = "PROMOTION";
      
      public static const §'#n§:String = "GOLD_TROPHY";
      
      public static const §9"l§:String = "SILVER_TROPHY";
      
      public static const §?"5§:String = "BRONZE_TROPHY";
      
      public static const §1"3§:String = "SHARE";
      
      public static const § !M§:String = "SKIP";
      
      private static const §]$7§:String = "DAILY_SPIN_UI";
      
      public static const §03§:String = "SPIN_ICON_CLICKED";
      
      public static const §9#%§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §2"a§:String = "DAILY_SPIN";
      
      private static const §0!F§:String = "DAILY_SPIN_REMOVE";
      
      public static const § #&§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §;#h§:String = "BRAND_BUTTON_CLICK";
      
      private static var §,$0§:String = "";
      
      private static const §@#T§:Number = 60 * 1000 * 10;
      
      private static const §#"-§:String = "/setsessionid/";
      
      public static var §!"s§:String = "TOURNAMENT_REWARD";
      
      public static var §'!,§:String = "LEAGUE_REWARD";
      
      public static var §]!s§:String = "LEVEL_REWARD";
      
      public static var §'!>§:String = "DAILY_REWARD";
      
      public static var §4H§:String = "PURCHASE";
      
      public static var § 2§:String = "GIFT";
      
      public static var §1#D§:String = "GIFT_BIRTHDAY";
      
      public static var §4u§:String = "QUALIFIER_REWARD";
      
      public static var §2!@§:String = "REDEEM_CODE";
      
      public static var §;#8§:String = "FB_GIFT_CARD";
      
      public static var §6"$§:String = "FB_OFFER_WALL";
      
      public static var §!<§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §2t§:String = "MAIN_MENU_SCREEN";
      
      public static var §#!3§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §6#f§:String = "STORY_MODE_SCREEN";
      
      public static const §0!9§:String = "BIG_YES";
      
      public static const §3s§:String = "SMALL_YES";
      
      public static const §4!"§:String = "TIMER";
       
      
      private var §3$-§:String = "https://cloud.rovio.com";
      
      private var § each§:URLLoader;
      
      private var §7#§:String;
      
      private var §%"6§:String;
      
      private var §=!+§:String = "application/json";
      
      private var §'" §:String = "application/x-www-form-urlencoded";
      
      private var §3!;§:Vector.<§-"D§>;
      
      private var §1#>§:Number = 60000;
      
      private var §?#;§:Number = 100;
      
      private var §9O§:Boolean = false;
      
      private var §-#^§:Timer;
      
      private var §7# §:Boolean = false;
      
      private var §!!x§:String = "";
      
      private var §9u§:Number = 0;
      
      private var §1-§:§5$!§;
      
      private var §,"R§:int = 1;
      
      private var §1#W§:String = null;
      
      public function §-#A§()
      {
         super();
      }
      
      public static function §6$2§() : §-#A§
      {
         if(§@"O§ == null)
         {
            §@"O§ = new §-#A§();
         }
         return §@"O§;
      }
      
      public static function get §["'§() : String
      {
         return §,$0§;
      }
      
      public static function set §["'§(param1:String) : void
      {
         §,$0§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§%"6§ = param1;
         this.§7#§ = param2;
         if(param3)
         {
            this.§[$&§();
         }
      }
      
      private function §,"]§() : String
      {
         return this.§7#§;
      }
      
      protected function §5!Q§(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         if(this.§3!;§ && this.§3!;§.length > 0 && !this.§7# § && this.§9O§)
         {
            this.§7# § = true;
            _loc2_ = new Object();
            _loc2_.token = this.§@Y§();
            _loc2_.events = this.§7!y§();
            _loc3_ = [new URLRequestHeader("Content-Type","application/json")];
            this.§ #[§(§&"t§,this.§ ?§,_loc2_,this.§=!+§,_loc3_,true);
         }
      }
      
      private function § ?§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§3!;§.splice(0,this.§3!;§.length);
         this.§7# § = false;
      }
      
      private function §[$&§() : void
      {
         this.§-#^§ = new Timer(this.§1#>§);
         this.§-#^§.addEventListener(TimerEvent.TIMER,this.§5!Q§);
         this.§-#^§.start();
      }
      
      private function §3"d§() : String
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
      
      public function § #[§(param1:String, param2:Function, param3:Object = null, param4:String = null, param5:Array = null, param6:Boolean = false) : void
      {
         var _loc9_:* = null;
         if(param6)
         {
            param1 += "?accessToken=" + this.§@Y§();
         }
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(this.§3$-§ + param1)).method = URLRequestMethod.POST;
         if(param5)
         {
            _loc7_.requestHeaders = param5;
         }
         if(param4)
         {
            _loc7_.contentType = param4;
         }
         var _loc8_:URLVariables = new URLVariables();
         if(param3)
         {
            for(_loc9_ in param3)
            {
               _loc8_[_loc9_] = param3[_loc9_];
            }
         }
         if(param4 == this.§=!+§)
         {
            _loc7_.data = JSON.stringify(_loc8_);
         }
         else
         {
            _loc7_.data = _loc8_;
         }
         this.§ each§ = new URLLoader();
         this.§ each§.addEventListener(Event.COMPLETE,param2);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,param2);
         this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param2);
         this.§ each§.load(_loc7_);
      }
      
      public function §>!9§(param1:String, param2:String, param3:int, param4:Number) : void
      {
         var _loc5_:Vector.<§["?§>;
         (_loc5_ = new Vector.<§["?§>()).push(new §["?§("LEVEL",param1));
         _loc5_.push(new §["?§("LEVEL_SORT_CODE",this.§@f§(param1)));
         _loc5_.push(new §["?§("SCREEN",this.§^#s§()));
         _loc5_.push(new §["?§("RESTART",param4 > 0));
         _loc5_.push(new §["?§("STARS",param3));
         _loc5_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§0"f§,_loc5_);
      }
      
      public function §,!V§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         this.§?"T§(param1,_loc2_);
      }
      
      public function §?!5§(param1:Boolean, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:Array, param8:Number, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:int = 0) : void
      {
         var parameters:Vector.<§["?§> = null;
         var i:int = 0;
         var mySO:SharedObject = null;
         var levelAttemptsObject:Object = null;
         var passed:Boolean = param1;
         var levelId:String = param2;
         var chapterName:String = param3;
         var noOfBirdsUsed:Number = param4;
         var noOfBirdsAvailable:Number = param5;
         var noOfStars:Number = param6;
         var usedPowerups:Array = param7;
         var score:Number = param8;
         var firstTimeCompleted:Boolean = param9;
         var firstTimeThreeStars:Boolean = param10;
         var firstTime100:Boolean = param11;
         var mightyEagleUsed:Boolean = param12;
         var feathersPercentage:int = param13;
         parameters = new Vector.<§["?§>();
         parameters.push(new §["?§("LEVEL",levelId));
         parameters.push(new §["?§("LEVEL_SORT_CODE",this.§@f§(levelId)));
         parameters.push(new §["?§("SCORE",score));
         parameters.push(new §["?§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new §["?§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new §["?§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new §["?§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new §["?§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§8G§.§6i§(),§8G§.§0#?§);
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
            parameters.push(new §["?§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new §["?§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new §["?§("STARS",noOfStars));
            parameters.push(new §["?§("FIRST_TIME",firstTimeCompleted));
            if(this.§1#W§)
            {
               parameters.push(new §["?§("LEVEL_END_BUTTON",this.§1#W§));
            }
            this.§?"T§(§,!"§,parameters);
         }
         else
         {
            parameters.push(new §["?§("SCREEN",this.§^#s§()));
            if(this.§1#W§)
            {
               parameters.push(new §["?§("LEVEL_END_BUTTON",this.§1#W§));
            }
            this.§?"T§(§+5§,parameters);
         }
         this.§1#W§ = null;
      }
      
      public function §9!A§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§["?§>;
         (_loc9_ = new Vector.<§["?§>()).push(new §["?§("TOURNAMENT_ID",param1));
         _loc9_.push(new §["?§("LEVELS_COMPLETED",param2));
         _loc9_.push(new §["?§("RED_BEATEN",param3));
         _loc9_.push(new §["?§("YELLOW_BEATEN",param4));
         _loc9_.push(new §["?§("PARTICIPANTS",param5));
         _loc9_.push(new §["?§("RANK",param6));
         _loc9_.push(new §["?§("TOTAL_SCORE",param7));
         _loc9_.push(new §["?§("STARS",param8));
         _loc9_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§;!q§,_loc9_);
      }
      
      public function § "V§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("SCREEN",this.§^#s§()));
         _loc2_.push(new §["?§("CATEGORY",param1));
         _loc2_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§,$&§,_loc2_);
      }
      
      public function §;!P§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("TYPE",param1));
         _loc3_.push(new §["?§("TEXT",param2));
         _loc3_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§#"a§,_loc3_);
      }
      
      public function §#!6§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("COUNT",param1));
         _loc3_.push(new §["?§("GIFT_PLACE",param2));
         _loc3_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§;!9§,_loc3_);
      }
      
      public function §5V§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("USER_ACTION",param1));
         this.§?"T§(§]$7§,_loc2_);
      }
      
      public function §["#§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§["?§>;
         (_loc4_ = new Vector.<§["?§>()).push(new §["?§("REWARD",param1));
         _loc4_.push(new §["?§("REWARD_COUNT",param2));
         _loc4_.push(new §["?§("WHEEL_SEGMENTS",param3));
         this.§?"T§(§2"a§,_loc4_);
      }
      
      public function §&e§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("RESULT",param1));
         this.§?"T§(§0!F§,_loc2_);
      }
      
      public function §#!D§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§["?§>;
         (_loc5_ = new Vector.<§["?§>()).push(new §["?§("SENDER_ID",param1));
         _loc5_.push(new §["?§("RECEIVER_ID",param2));
         _loc5_.push(new §["?§("TOURNAMENT_ID",param3));
         _loc5_.push(new §["?§("PARTICIPANTS",param4));
         this.§?"T§(§7!x§,_loc5_);
      }
      
      public function §&!j§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("COUNT",param1));
         _loc3_.push(new §["?§("CLAIM_ONLY",param2));
         _loc3_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§0!j§,_loc3_);
      }
      
      public function §]!H§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§["?§>;
         (_loc13_ = new Vector.<§["?§>()).push(new §["?§("FIRST_TIME",param1));
         _loc13_.push(new §["?§("ITEM_TYPE",param2));
         _loc13_.push(new §["?§("AMOUNT",param3));
         _loc13_.push(new §["?§("GAIN_TYPE",param4));
         _loc13_.push(new §["?§("SCREEN",param5));
         _loc13_.push(new §["?§("LEVEL",param6));
         _loc13_.push(new §["?§("ITEM_NAME",param7));
         _loc13_.push(new §["?§("IAP_TYPE",param8));
         _loc13_.push(new §["?§("PAID_AMOUNT",param9));
         _loc13_.push(new §["?§("CURRENCY",param10));
         _loc13_.push(new §["?§("RECEIPT_ID",param11));
         _loc13_.push(new §["?§("ROVIO_ANALYTICS",param12));
         this.§?"T§(§5$"§,_loc13_);
      }
      
      public function §8$§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("SHARE_EVENT",param1));
         _loc3_.push(new §["?§("RESULT",param2));
         this.§?"T§(§+#K§,_loc3_);
      }
      
      private function §?"T§(param1:String, param2:Vector.<§["?§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§["?§ = null;
         if(this.§9O§ && new Date().time - this.§9u§ >= §@#T§)
         {
            this.§!!x§ = this.§`!§();
            this.§;#m§();
            this.§2#p§();
         }
         for each(_loc6_ in this.§7![§())
         {
            param2.push(_loc6_);
         }
         if(this.§7!y§().length >= this.§?#;§)
         {
            if(!this.§-#^§)
            {
               this.§[$&§();
            }
            this.§-#^§.reset();
            this.§5!Q§(null);
            this.§-#^§.start();
         }
         if(this.§9O§)
         {
            this.§7!y§().push(new §-"D§(param1,this.§9";§(),param2));
         }
      }
      
      private function §7![§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§["?§>
      {
         var _loc4_:Vector.<§["?§>;
         (_loc4_ = new Vector.<§["?§>()).push(new §["?§("SESSION_ID",this.§-!?§()));
         _loc4_.push(new §["?§("FB_CONNECT","YES"));
         _loc4_.push(new §["?§("SESSION_COUNTER",this.§3#E§()));
         return _loc4_;
      }
      
      public function §7!y§() : Vector.<§-"D§>
      {
         if(this.§3!;§ == null)
         {
            this.§3!;§ = new Vector.<§-"D§>();
         }
         return this.§3!;§;
      }
      
      private function §["M§(param1:String, param2:String) : §["?§
      {
         return new §["?§(param1,param2);
      }
      
      public function §@Y§() : String
      {
         return §8G§(§8G§.§%#S§).§,!F§.§=i§.accessToken;
      }
      
      protected function §3@§(param1:IOErrorEvent) : void
      {
      }
      
      private function §9";§() : String
      {
         var _loc1_:Date = new Date();
         return this.§%#b§(_loc1_);
      }
      
      public function §%#b§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§!y§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§!y§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §!y§(param1:Number, param2:int) : String
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
            this.§1#>§ = (param1.c.analytics.ti as Number) * 1000;
            this.§?#;§ = param1.c.analytics.qs as Number;
            this.§9O§ = true;
            this.§[$&§();
         }
         else
         {
            this.§9O§ = false;
         }
      }
      
      public function §-!?§() : String
      {
         if(!this.§!!x§ || this.§!!x§ == "")
         {
            this.§!!x§ = this.§`!§();
         }
         return this.§!!x§;
      }
      
      private function §`!§() : String
      {
         this.§9u§ = new Date().time;
         return this.§9u§.toString();
      }
      
      protected function §;#m§() : void
      {
         this.§1-§ = new §5$!§();
         this.§1-§.addEventListener(Event.COMPLETE,this.§9#L§);
         this.§1-§.addEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§1-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
         this.§1-§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1-§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §#"-§ + this.§!!x§ + "?=" + this.§,"R§));
      }
      
      protected function §[^§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §9#L§(param1:Event) : void
      {
         this.§1-§.removeEventListener(Event.COMPLETE,this.§9#L§);
         this.§1-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§1-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
         this.§1-§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§3$-§ = param1;
         }
      }
      
      public function §^#;§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§["?§>;
         (_loc7_ = new Vector.<§["?§>()).push(new §["?§("LEVEL",param1));
         _loc7_.push(new §["?§("SLINGSHOT",param2));
         _loc7_.push(new §["?§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new §["?§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new §["?§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new §["?§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§1!1§,_loc7_);
      }
      
      public function §>!`§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("CONTENT_TYPE",param1));
         _loc2_.push(new §["?§("ROVIO_ANALYTICS",true));
         this.§?"T§(§2L§,_loc2_);
      }
      
      public function § "!§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("COUNT",param1));
         _loc3_.push(new §["?§("ORIGIN",param2));
         this.§?"T§(§48§,_loc3_);
      }
      
      public function §2#4§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("ORIGIN",param1));
         this.§?"T§(§5#p§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§9O§ = param1;
      }
      
      private function §@f§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §=!-§.§&!>§)
         {
            _loc3_ = "T";
            _loc4_ = (§]!m§.§3!]§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §^#s§() : String
      {
         var _loc1_:Object = null;
         if(§>"$§.§<_§ as §8G§)
         {
            _loc1_ = (§>"$§.§<_§ as §8G§).§="g§();
            return _loc1_.screenName;
         }
         return §8G§.§##6§[0][1];
      }
      
      private function §2#p§() : void
      {
         if(this.§,"R§ >= int.MAX_VALUE)
         {
            this.§,"R§ = 0;
         }
         ++this.§,"R§;
      }
      
      public function §3#E§() : int
      {
         return this.§,"R§;
      }
      
      public function §,!0§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc3_.push(new §["?§("NOTIFICATION_NAME",param1));
         _loc3_.push(new §["?§("RESULT",param2));
         _loc3_.push(new §["?§("USER_ID",this.§%"6§));
         this.§?"T§(§ #&§,_loc3_);
      }
      
      public function §3#5§(param1:String) : void
      {
         var _loc2_:Vector.<§["?§> = new Vector.<§["?§>();
         _loc2_.push(new §["?§("TOURNAMENT_ID",param1));
         this.§?"T§(§;#h§,_loc2_);
      }
      
      public function §-G§(param1:int, param2:String, param3:String, param4:String, param5:int) : void
      {
         var _loc6_:Vector.<§["?§>;
         (_loc6_ = new Vector.<§["?§>()).push(new §["?§("AMOUNT",param1));
         _loc6_.push(new §["?§("USE_TYPE",param2));
         _loc6_.push(new §["?§("IAP_TYPE",param3));
         _loc6_.push(new §["?§("ITEM_TYPE",param4));
         _loc6_.push(new §["?§("ITEM_AMOUNT",param5));
         this.§?"T§(§5a§,_loc6_);
      }
      
      public function get §#"E§() : String
      {
         return this.§1#W§;
      }
      
      public function set §#"E§(param1:String) : void
      {
         this.§1#W§ = param1;
      }
   }
}
