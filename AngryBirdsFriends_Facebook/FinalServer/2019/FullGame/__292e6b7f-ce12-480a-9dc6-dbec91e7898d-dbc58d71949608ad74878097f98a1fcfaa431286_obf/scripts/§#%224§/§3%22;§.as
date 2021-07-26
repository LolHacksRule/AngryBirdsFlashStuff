package §#"4§
{
   import §&=§.§0D§;
   import §&=§.§4"+§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?#z§.§]$?§;
   import §]§.§!=§;
   import §`,§.§7!$§;
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
   
   public class §3";§
   {
      
      public static const §'$3§:String = "https://smoke.rovio.com";
      
      public static const §<!l§:String = "https://mist.rovio.com";
      
      public static const §4q§:String = "https://cloud.rovio.com";
      
      private static const §=#%§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §`"D§:§3";§;
      
      public static const §@#M§:String = "LEVEL_STARTED";
      
      public static const §4!b§:String = "LEVEL_COMPLETE";
      
      public static const §4#_§:String = "LEVEL_FAILED";
      
      public static const §]"$§:String = "NOTIFICATION_SENT";
      
      public static const §>%§:String = "NOTIFICATION_CLICKED";
      
      public static const §5"p§:String = "GIFT_SENT";
      
      public static const §[!@§:String = "GIFT_CLAIMED";
      
      public static const §[J§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §@,§:String = "BIRD_SHOT";
      
      public static const §,"j§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §5$0§:String = "TOURNAMENT_STATISTICS";
      
      public static const §%$!§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §0!z§:String = "INVITATION_SENT";
      
      public static const §4!m§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §`e§:String = "INVENTORY_USED";
      
      public static const §5!X§:String = "INVENTORY_GAINED";
      
      public static const §;J§:String = "FACEBOOK_SHARING";
      
      public static const §'$=§:String = "BRAG";
      
      public static const §#"W§:String = "GOLD_CROWN";
      
      public static const §+!2§:String = "SILVER_CROWN";
      
      public static const §[#y§:String = "BRONZE_CROWN";
      
      public static const §0!T§:String = "3STAR";
      
      public static const §-#K§:String = "LEAGUE_WIN";
      
      public static const §0O§:String = "PROMOTION";
      
      public static const §&"A§:String = "GOLD_TROPHY";
      
      public static const §,!6§:String = "SILVER_TROPHY";
      
      public static const §1"S§:String = "BRONZE_TROPHY";
      
      public static const §-";§:String = "SHARE";
      
      public static const §8"=§:String = "SKIP";
      
      private static const §<!6§:String = "DAILY_SPIN_UI";
      
      public static const §6K§:String = "SPIN_ICON_CLICKED";
      
      public static const §`o§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §21§:String = "DAILY_SPIN";
      
      private static const §=$,§:String = "DAILY_SPIN_REMOVE";
      
      public static const §#1§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §0"J§:String = "BRAND_BUTTON_CLICK";
      
      private static var §[! §:String = "";
      
      private static const §>I§:Number = 60 * 1000 * 10;
      
      private static const §?"6§:String = "/setsessionid/";
      
      public static var §2#Y§:String = "TOURNAMENT_REWARD";
      
      public static var §!$D§:String = "LEAGUE_REWARD";
      
      public static var §5#E§:String = "LEVEL_REWARD";
      
      public static var §+!V§:String = "DAILY_REWARD";
      
      public static var §;K§:String = "PURCHASE";
      
      public static var §]4§:String = "GIFT";
      
      public static var §=$0§:String = "GIFT_BIRTHDAY";
      
      public static var §]!o§:String = "QUALIFIER_REWARD";
      
      public static var §8-§:String = "REDEEM_CODE";
      
      public static var §[$4§:String = "FB_GIFT_CARD";
      
      public static var §3#"§:String = "FB_OFFER_WALL";
      
      public static var §?O§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §0J§:String = "MAIN_MENU_SCREEN";
      
      public static var §8m§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §[#D§:String = "STORY_MODE_SCREEN";
      
      public static const §@#=§:String = "BIG_YES";
      
      public static const §`=§:String = "SMALL_YES";
      
      public static const §7$,§:String = "TIMER";
      
      public static const §9!+§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const §4#N§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §`1§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §,!O§:String = "https://cloud.rovio.com";
      
      private var §@$2§:URLLoader;
      
      private var §@"h§:String;
      
      private var §5"U§:String;
      
      private var §>"1§:String = "application/json";
      
      private var §@#Y§:String = "application/x-www-form-urlencoded";
      
      private var §&$A§:Vector.<§4"+§>;
      
      private var §9I§:Number = 60000;
      
      private var §@"q§:Number = 100;
      
      private var §>#L§:Boolean = false;
      
      private var §;!1§:Timer;
      
      private var §-#a§:Boolean = false;
      
      private var §=!U§:String = "";
      
      private var §7#,§:Number = 0;
      
      private var §,#j§:§-$C§;
      
      private var §^!!§:int = 1;
      
      private var §?j§:String = null;
      
      public function §3";§()
      {
         super();
      }
      
      public static function §#"'§() : §3";§
      {
         if(§`"D§ == null)
         {
            §`"D§ = new §3";§();
         }
         return §`"D§;
      }
      
      public static function get §,##§() : String
      {
         return §[! §;
      }
      
      public static function set §,##§(param1:String) : void
      {
         §[! § = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§5"U§ = param1;
         this.§@"h§ = param2;
         if(param3)
         {
            this.§]"=§();
         }
      }
      
      private function §@#l§() : String
      {
         return this.§@"h§;
      }
      
      protected function §5M§(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         if(this.§&$A§ && this.§&$A§.length > 0 && !this.§-#a§ && this.§>#L§)
         {
            this.§-#a§ = true;
            _loc2_ = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.§]$<§())];
            this.§;#L§(this.§%"d§,this.§>"1§,_loc2_,true);
         }
      }
      
      private function §%"d§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§&$A§.splice(0,this.§&$A§.length);
         this.§-#a§ = false;
      }
      
      private function §]"=§() : void
      {
         this.§;!1§ = new Timer(this.§9I§);
         this.§;!1§.addEventListener(TimerEvent.TIMER,this.§5M§);
         this.§;!1§.start();
         Security.loadPolicyFile(this.§,!O§ + "/crossdomain.xml");
         Security.allowDomain(this.§,!O§);
      }
      
      private function §>"M§() : String
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
      
      private function §;#L§(param1:Function, param2:String = null, param3:Array = null, param4:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc5_:* = "/hoarder/2/apps/" + §@z§.§0"W§ + "/events/player";
         if(param4)
         {
            _loc5_ += "?accessToken=" + this.§]$<§();
         }
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest(this.§,!O§ + _loc5_)).method = URLRequestMethod.POST;
         if(param3)
         {
            _loc6_.requestHeaders = param3;
         }
         if(param2)
         {
            _loc6_.contentType = param2;
         }
         var _loc7_:URLVariables = new URLVariables();
         if(param2 == this.§>"1§)
         {
            (_loc8_ = new Array()).push({
               "accessToken":this.§]$<§(),
               "events":this.§-$0§()
            });
            (_loc9_ = new Object())["batches"] = _loc8_;
            _loc6_.data = JSON.stringify(_loc9_);
            _loc6_.data = (_loc6_.data as String).replace("[!l","tz");
         }
         else
         {
            _loc6_.data = _loc7_;
         }
         this.§@$2§ = new URLLoader();
         this.§@$2§.addEventListener(Event.COMPLETE,param1);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,param1);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param1);
         this.§@$2§.load(_loc6_);
      }
      
      public function §[!M§(param1:String, param2:int, param3:String, param4:int, param5:Number) : void
      {
         var _loc6_:Vector.<§0D§>;
         (_loc6_ = new Vector.<§0D§>()).push(new §0D§("LEVEL",param1));
         _loc6_.push(new §0D§("LEVEL_SORT_CODE",this.§+<§(param1)));
         _loc6_.push(new §0D§("TOURNAMENT_ID",param2));
         _loc6_.push(new §0D§("SCREEN",this.§,!Q§()));
         _loc6_.push(new §0D§("RESTART",param5 > 0));
         _loc6_.push(new §0D§("STARS",param4));
         _loc6_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§@#M§,_loc6_);
      }
      
      public function §@"l§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         this.§,#N§(param1,_loc2_);
      }
      
      public function §7g§(param1:Boolean, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Array, param9:Number, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false, param14:int = 0) : void
      {
         var parameters:Vector.<§0D§> = null;
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
         parameters = new Vector.<§0D§>();
         parameters.push(new §0D§("LEVEL",levelId));
         parameters.push(new §0D§("TOURNAMENT_ID",tournamentId));
         parameters.push(new §0D§("LEVEL_SORT_CODE",this.§+<§(levelId)));
         parameters.push(new §0D§("SCORE",score));
         parameters.push(new §0D§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new §0D§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new §0D§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new §0D§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new §0D§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§@z§.§0"=§(),§@z§.§7!P§);
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
            parameters.push(new §0D§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new §0D§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new §0D§("STARS",noOfStars));
            parameters.push(new §0D§("FIRST_TIME",firstTimeCompleted));
            if(this.§?j§)
            {
               parameters.push(new §0D§("LEVEL_END_BUTTON",this.§?j§));
            }
            this.§,#N§(§4!b§,parameters);
         }
         else
         {
            parameters.push(new §0D§("SCREEN",this.§,!Q§()));
            if(this.§?j§)
            {
               parameters.push(new §0D§("LEVEL_END_BUTTON",this.§?j§));
            }
            this.§,#N§(§4#_§,parameters);
         }
         this.§?j§ = null;
      }
      
      public function §+m§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§0D§>;
         (_loc9_ = new Vector.<§0D§>()).push(new §0D§("TOURNAMENT_ID",param1));
         _loc9_.push(new §0D§("LEVELS_COMPLETED",param2));
         _loc9_.push(new §0D§("RED_BEATEN",param3));
         _loc9_.push(new §0D§("YELLOW_BEATEN",param4));
         _loc9_.push(new §0D§("PARTICIPANTS",param5));
         _loc9_.push(new §0D§("RANK",param6));
         _loc9_.push(new §0D§("TOTAL_SCORE",param7));
         _loc9_.push(new §0D§("STARS",param8));
         _loc9_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§5$0§,_loc9_);
      }
      
      public function §0#P§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         var _loc4_:* = this.§,!Q§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new §0D§("SCREEN",_loc4_));
         _loc3_.push(new §0D§("CATEGORY",param1));
         _loc3_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§[J§,_loc3_);
      }
      
      public function §+#n§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("TYPE",param1));
         _loc3_.push(new §0D§("TEXT",param2));
         _loc3_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§>%§,_loc3_);
      }
      
      public function §`2§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("COUNT",param1));
         _loc3_.push(new §0D§("GIFT_PLACE",param2));
         _loc3_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§5"p§,_loc3_);
      }
      
      public function §%!;§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("USER_ACTION",param1));
         this.§,#N§(§<!6§,_loc2_);
      }
      
      public function §1$5§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§0D§>;
         (_loc4_ = new Vector.<§0D§>()).push(new §0D§("REWARD",param1));
         _loc4_.push(new §0D§("REWARD_COUNT",param2));
         _loc4_.push(new §0D§("WHEEL_SEGMENTS",param3));
         this.§,#N§(§21§,_loc4_);
      }
      
      public function §[!G§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("RESULT",param1));
         this.§,#N§(§=$,§,_loc2_);
      }
      
      public function §##?§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§0D§>;
         (_loc5_ = new Vector.<§0D§>()).push(new §0D§("SENDER_ID",param1));
         _loc5_.push(new §0D§("RECEIVER_ID",param2));
         _loc5_.push(new §0D§("TOURNAMENT_ID",param3));
         _loc5_.push(new §0D§("PARTICIPANTS",param4));
         this.§,#N§(§%$!§,_loc5_);
      }
      
      public function §`#N§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("COUNT",param1));
         _loc3_.push(new §0D§("CLAIM_ONLY",param2));
         _loc3_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§[!@§,_loc3_);
      }
      
      public function §4#q§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         if(param1 == §9!+§)
         {
            _loc3_.push(new §0D§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new §0D§("CLAIMABLE",param2));
         }
         this.§,#N§(param1,_loc3_);
      }
      
      public function §?!0§(param1:int) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("CHEST",param1));
         this.§,#N§(§`1§,_loc2_);
      }
      
      public function §7"Q§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§0D§>;
         (_loc13_ = new Vector.<§0D§>()).push(new §0D§("FIRST_TIME",param1));
         _loc13_.push(new §0D§("ITEM_TYPE",param2));
         _loc13_.push(new §0D§("AMOUNT",param3));
         _loc13_.push(new §0D§("GAIN_TYPE",param4));
         _loc13_.push(new §0D§("SCREEN",param5));
         _loc13_.push(new §0D§("LEVEL",param6));
         _loc13_.push(new §0D§("ITEM_NAME",param7));
         _loc13_.push(new §0D§("IAP_TYPE",param8));
         _loc13_.push(new §0D§("PAID_AMOUNT",param9));
         _loc13_.push(new §0D§("CURRENCY",param10));
         _loc13_.push(new §0D§("RECEIPT_ID",param11));
         _loc13_.push(new §0D§("ROVIO_ANALYTICS",param12));
         this.§,#N§(§5!X§,_loc13_);
      }
      
      public function §8#5§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("SHARE_EVENT",param1));
         _loc3_.push(new §0D§("RESULT",param2));
         this.§,#N§(§;J§,_loc3_);
      }
      
      private function §,#N§(param1:String, param2:Vector.<§0D§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§0D§ = null;
         var _loc8_:§0D§ = null;
         if(this.§>#L§ && new Date().time - this.§7#,§ >= §>I§)
         {
            this.§=!U§ = this.§,"[§();
            this.§&"-§();
            this.§##n§();
         }
         for each(_loc6_ in this.§8"v§())
         {
            param2.push(_loc6_);
         }
         if(this.§-$0§().length >= this.§@"q§)
         {
            if(!this.§;!1§)
            {
               this.§]"=§();
            }
            this.§;!1§.reset();
            this.§5M§(null);
            this.§;!1§.start();
         }
         var _loc7_:Object = new Object();
         for each(_loc8_ in param2)
         {
            _loc7_[_loc8_.key] = _loc8_.value;
         }
         if(this.§>#L§)
         {
            this.§-$0§().push(new §4"+§(param1,_loc7_));
         }
      }
      
      private function §8"v§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§0D§>
      {
         var _loc4_:Vector.<§0D§>;
         (_loc4_ = new Vector.<§0D§>()).push(new §0D§("SESSION_ID",this.§ #C§()));
         _loc4_.push(new §0D§("FB_CONNECT","YES"));
         _loc4_.push(new §0D§("SESSION_COUNTER",this.§8!"§()));
         return _loc4_;
      }
      
      public function §-$0§() : Vector.<§4"+§>
      {
         if(this.§&$A§ == null)
         {
            this.§&$A§ = new Vector.<§4"+§>();
         }
         return this.§&$A§;
      }
      
      private function §=!w§(param1:String, param2:String) : §0D§
      {
         return new §0D§(param1,param2);
      }
      
      public function §]$<§() : String
      {
         return §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken;
      }
      
      protected function §^!b§(param1:IOErrorEvent) : void
      {
      }
      
      private function §2#W§() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function §+g§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§ _§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§ _§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function § _§(param1:Number, param2:int) : String
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
            this.§9I§ = (param1.c.analytics.ti as Number) * 1000;
            this.§@"q§ = param1.c.analytics.qs as Number;
            this.§>#L§ = true;
            this.§]"=§();
         }
         else
         {
            this.§>#L§ = false;
         }
      }
      
      public function § #C§() : String
      {
         if(!this.§=!U§ || this.§=!U§ == "")
         {
            this.§=!U§ = this.§,"[§();
         }
         return this.§=!U§;
      }
      
      private function §,"[§() : String
      {
         this.§7#,§ = new Date().time;
         return this.§7#,§.toString();
      }
      
      protected function §&"-§() : void
      {
         this.§,#j§ = new §-$C§();
         this.§,#j§.addEventListener(Event.COMPLETE,this.§%!S§);
         this.§,#j§.addEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§,#j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
         this.§,#j§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§,#j§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §?"6§ + this.§=!U§ + "?=" + this.§^!!§));
      }
      
      protected function §="&§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §%!S§(param1:Event) : void
      {
         this.§,#j§.removeEventListener(Event.COMPLETE,this.§%!S§);
         this.§,#j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="&§);
         this.§,#j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§="&§);
         this.§,#j§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§,!O§ = param1;
         }
      }
      
      public function §5#n§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§0D§>;
         (_loc7_ = new Vector.<§0D§>()).push(new §0D§("LEVEL",param1));
         _loc7_.push(new §0D§("SLINGSHOT",param2));
         _loc7_.push(new §0D§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new §0D§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new §0D§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new §0D§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§@,§,_loc7_);
      }
      
      public function §,h§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("CONTENT_TYPE",param1));
         _loc2_.push(new §0D§("ROVIO_ANALYTICS",true));
         this.§,#N§(§,"j§,_loc2_);
      }
      
      public function § m§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("COUNT",param1));
         _loc3_.push(new §0D§("ORIGIN",param2));
         this.§,#N§(§0!z§,_loc3_);
      }
      
      public function §%!$§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("ORIGIN",param1));
         this.§,#N§(§4!m§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§>#L§ = param1;
      }
      
      private function §+<§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §!=§.§^;§)
         {
            _loc3_ = "T";
            _loc4_ = (§7!$§.§+!,§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §,!Q§() : String
      {
         var _loc1_:Object = null;
         if(§]$?§.§;u§ as §@z§)
         {
            _loc1_ = (§]$?§.§;u§ as §@z§).§<"W§();
            return _loc1_.screenName;
         }
         return §@z§.§?!C§[0][1];
      }
      
      private function §##n§() : void
      {
         if(this.§^!!§ >= int.MAX_VALUE)
         {
            this.§^!!§ = 0;
         }
         ++this.§^!!§;
      }
      
      public function §8!"§() : int
      {
         return this.§^!!§;
      }
      
      public function §^l§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc3_.push(new §0D§("NOTIFICATION_NAME",param1));
         _loc3_.push(new §0D§("RESULT",param2));
         _loc3_.push(new §0D§("USER_ID",this.§5"U§));
         this.§,#N§(§#1§,_loc3_);
      }
      
      public function §7"F§(param1:String) : void
      {
         var _loc2_:Vector.<§0D§> = new Vector.<§0D§>();
         _loc2_.push(new §0D§("TOURNAMENT_ID",param1));
         this.§,#N§(§0"J§,_loc2_);
      }
      
      public function §?T§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§0D§>;
         (_loc9_ = new Vector.<§0D§>()).push(new §0D§("ITEM_TYPE",param1));
         _loc9_.push(new §0D§("AMOUNT",param2));
         _loc9_.push(new §0D§("USE_TYPE",param3));
         _loc9_.push(new §0D§("IAP_TYPE",param4));
         _loc9_.push(new §0D§("ITEM_AMOUNT",param5));
         _loc9_.push(new §0D§("SCREEN",param6));
         _loc9_.push(new §0D§("LEVEL",param7));
         _loc9_.push(new §0D§("ROVIO_ANALYTICS",param8));
         this.§,#N§(§`e§,_loc9_);
      }
      
      public function get §2$B§() : String
      {
         return this.§?j§;
      }
      
      public function set §2$B§(param1:String) : void
      {
         this.§?j§ = param1;
      }
   }
}
