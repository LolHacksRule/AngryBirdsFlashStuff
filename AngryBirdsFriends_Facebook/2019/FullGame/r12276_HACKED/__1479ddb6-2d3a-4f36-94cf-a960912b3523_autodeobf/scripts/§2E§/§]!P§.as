package §2E§
{
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §7!3§.§+!7§;
   import §7!3§.§^-§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §^1§.§ "g§;
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
   
   public class §]!P§
   {
      
      public static const §<!y§:String = "https://smoke.rovio.com";
      
      public static const §@""§:String = "https://mist.rovio.com";
      
      public static const §>"P§:String = "https://cloud.rovio.com";
      
      private static const §8#Y§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §'#J§:§]!P§;
      
      public static const §6$'§:String = "LEVEL_STARTED";
      
      public static const § #s§:String = "LEVEL_COMPLETE";
      
      public static const §^!f§:String = "LEVEL_FAILED";
      
      public static const §##!§:String = "NOTIFICATION_SENT";
      
      public static const §8!n§:String = "NOTIFICATION_CLICKED";
      
      public static const §8#u§:String = "GIFT_SENT";
      
      public static const §`$C§:String = "GIFT_CLAIMED";
      
      public static const §8y§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §#"i§:String = "BIRD_SHOT";
      
      public static const §2"T§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §4";§:String = "TOURNAMENT_STATISTICS";
      
      public static const §[!`§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §@#U§:String = "INVITATION_SENT";
      
      public static const §0!_§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §6#K§:String = "INVENTORY_USED";
      
      public static const §8P§:String = "INVENTORY_GAINED";
      
      public static const §@#^§:String = "FACEBOOK_SHARING";
      
      public static const §@t§:String = "BRAG";
      
      public static const §#"7§:String = "GOLD_CROWN";
      
      public static const §2j§:String = "SILVER_CROWN";
      
      public static const §#"I§:String = "BRONZE_CROWN";
      
      public static const §[W§:String = "3STAR";
      
      public static const §;!_§:String = "LEAGUE_WIN";
      
      public static const §!!i§:String = "PROMOTION";
      
      public static const §]#h§:String = "GOLD_TROPHY";
      
      public static const §5$%§:String = "SILVER_TROPHY";
      
      public static const §`!c§:String = "BRONZE_TROPHY";
      
      public static const §6"U§:String = "SHARE";
      
      public static const §]#9§:String = "SKIP";
      
      private static const §"X§:String = "DAILY_SPIN_UI";
      
      public static const §4!V§:String = "SPIN_ICON_CLICKED";
      
      public static const §6#u§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §>#=§:String = "DAILY_SPIN";
      
      private static const §%$6§:String = "DAILY_SPIN_REMOVE";
      
      public static const §[!3§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §="T§:String = "BRAND_BUTTON_CLICK";
      
      private static var § !X§:String = "";
      
      private static const §"!K§:Number = 60 * 1000 * 10;
      
      private static const §4#x§:String = "/setsessionid/";
      
      public static var § !"§:String = "TOURNAMENT_REWARD";
      
      public static var §+#O§:String = "LEAGUE_REWARD";
      
      public static var §0!4§:String = "LEVEL_REWARD";
      
      public static var §-$6§:String = "DAILY_REWARD";
      
      public static var §`_§:String = "PURCHASE";
      
      public static var §&#O§:String = "GIFT";
      
      public static var §7$+§:String = "GIFT_BIRTHDAY";
      
      public static var §##y§:String = "QUALIFIER_REWARD";
      
      public static var §@"c§:String = "REDEEM_CODE";
      
      public static var §;C§:String = "FB_GIFT_CARD";
      
      public static var §<#%§:String = "FB_OFFER_WALL";
      
      public static var §#!X§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §'"l§:String = "MAIN_MENU_SCREEN";
      
      public static var §7#g§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §@c§:String = "STORY_MODE_SCREEN";
      
      public static const §^#a§:String = "BIG_YES";
      
      public static const §3"Z§:String = "SMALL_YES";
      
      public static const §>#l§:String = "TIMER";
      
      public static const §]!t§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const § #p§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §5#x§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §`i§:String = "https://cloud.rovio.com";
      
      private var §<#G§:URLLoader;
      
      private var §,$6§:String;
      
      private var §'H§:String;
      
      private var §^!P§:String = "application/json";
      
      private var §4$@§:String = "application/x-www-form-urlencoded";
      
      private var §<X§:Vector.<§+!7§>;
      
      private var §7$>§:Number = 60000;
      
      private var §>"k§:Number = 100;
      
      private var §?I§:Boolean = false;
      
      private var §=#L§:Timer;
      
      private var §1a§:Boolean = false;
      
      private var §&"B§:String = "";
      
      private var §2!D§:Number = 0;
      
      private var §4"C§:§5"f§;
      
      private var §9k§:int = 1;
      
      private var §4#B§:String = null;
      
      public function §]!P§()
      {
         super();
      }
      
      public static function §1!7§() : §]!P§
      {
         if(§'#J§ == null)
         {
            §'#J§ = new §]!P§();
         }
         return §'#J§;
      }
      
      public static function get §5$5§() : String
      {
         return § !X§;
      }
      
      public static function set §5$5§(param1:String) : void
      {
         § !X§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§'H§ = param1;
         this.§,$6§ = param2;
         if(param3)
         {
            this.§9d§();
         }
      }
      
      private function §^""§() : String
      {
         return this.§,$6§;
      }
      
      protected function §default§(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         if(this.§<X§ && this.§<X§.length > 0 && !this.§1a§ && this.§?I§)
         {
            this.§1a§ = true;
            _loc2_ = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.§&!<§())];
            this.§3x§(this.§4"_§,this.§^!P§,_loc2_,true);
         }
      }
      
      private function §4"_§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§<X§.splice(0,this.§<X§.length);
         this.§1a§ = false;
      }
      
      private function §9d§() : void
      {
         this.§=#L§ = new Timer(this.§7$>§);
         this.§=#L§.addEventListener(TimerEvent.TIMER,this.§default§);
         this.§=#L§.start();
         Security.loadPolicyFile(this.§`i§ + "/crossdomain.xml");
         Security.allowDomain(this.§`i§);
      }
      
      private function §++§() : String
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
      
      private function §3x§(param1:Function, param2:String = null, param3:Array = null, param4:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc5_:* = "/hoarder/2/apps/" + §^"a§.§-!"§ + "/events/player";
         if(param4)
         {
            _loc5_ += "?accessToken=" + this.§&!<§();
         }
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest(this.§`i§ + _loc5_)).method = URLRequestMethod.POST;
         if(param3)
         {
            _loc6_.requestHeaders = param3;
         }
         if(param2)
         {
            _loc6_.contentType = param2;
         }
         var _loc7_:URLVariables = new URLVariables();
         if(param2 == this.§^!P§)
         {
            (_loc8_ = new Array()).push({
               "accessToken":this.§&!<§(),
               "events":this.§9$!§()
            });
            (_loc9_ = new Object())["batches"] = _loc8_;
            _loc6_.data = JSON.stringify(_loc9_);
            _loc6_.data = (_loc6_.data as String).replace("[!l","tz");
         }
         else
         {
            _loc6_.data = _loc7_;
         }
         this.§<#G§ = new URLLoader();
         this.§<#G§.addEventListener(Event.COMPLETE,param1);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,param1);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param1);
         this.§<#G§.load(_loc6_);
      }
      
      public function §'#h§(param1:String, param2:int, param3:String, param4:int, param5:Number) : void
      {
         var _loc6_:Vector.<§^-§>;
         (_loc6_ = new Vector.<§^-§>()).push(new §^-§("LEVEL",param1));
         _loc6_.push(new §^-§("LEVEL_SORT_CODE",this.§3!I§(param1)));
         _loc6_.push(new §^-§("TOURNAMENT_ID",param2));
         _loc6_.push(new §^-§("SCREEN",this.§`3§()));
         _loc6_.push(new §^-§("RESTART",param5 > 0));
         _loc6_.push(new §^-§("STARS",param4));
         _loc6_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§6$'§,_loc6_);
      }
      
      public function §4c§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         this.§<$1§(param1,_loc2_);
      }
      
      public function §+!6§(param1:Boolean, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Array, param9:Number, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false, param14:int = 0) : void
      {
         var parameters:Vector.<§^-§> = null;
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
         parameters = new Vector.<§^-§>();
         parameters.push(new §^-§("LEVEL",levelId));
         parameters.push(new §^-§("TOURNAMENT_ID",tournamentId));
         parameters.push(new §^-§("LEVEL_SORT_CODE",this.§3!I§(levelId)));
         parameters.push(new §^-§("SCORE",score));
         parameters.push(new §^-§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new §^-§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new §^-§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new §^-§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new §^-§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§^"a§.§ $"§(),§^"a§.§7!l§);
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
            parameters.push(new §^-§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new §^-§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new §^-§("STARS",noOfStars));
            parameters.push(new §^-§("FIRST_TIME",firstTimeCompleted));
            if(this.§4#B§)
            {
               parameters.push(new §^-§("LEVEL_END_BUTTON",this.§4#B§));
            }
            this.§<$1§(§ #s§,parameters);
         }
         else
         {
            parameters.push(new §^-§("SCREEN",this.§`3§()));
            if(this.§4#B§)
            {
               parameters.push(new §^-§("LEVEL_END_BUTTON",this.§4#B§));
            }
            this.§<$1§(§^!f§,parameters);
         }
         this.§4#B§ = null;
      }
      
      public function §'"J§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§^-§>;
         (_loc9_ = new Vector.<§^-§>()).push(new §^-§("TOURNAMENT_ID",param1));
         _loc9_.push(new §^-§("LEVELS_COMPLETED",param2));
         _loc9_.push(new §^-§("RED_BEATEN",param3));
         _loc9_.push(new §^-§("YELLOW_BEATEN",param4));
         _loc9_.push(new §^-§("PARTICIPANTS",param5));
         _loc9_.push(new §^-§("RANK",param6));
         _loc9_.push(new §^-§("TOTAL_SCORE",param7));
         _loc9_.push(new §^-§("STARS",param8));
         _loc9_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§4";§,_loc9_);
      }
      
      public function §9a§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         var _loc4_:* = this.§`3§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new §^-§("SCREEN",_loc4_));
         _loc3_.push(new §^-§("CATEGORY",param1));
         _loc3_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§8y§,_loc3_);
      }
      
      public function §2!6§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("TYPE",param1));
         _loc3_.push(new §^-§("TEXT",param2));
         _loc3_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§8!n§,_loc3_);
      }
      
      public function §1o§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("COUNT",param1));
         _loc3_.push(new §^-§("GIFT_PLACE",param2));
         _loc3_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§8#u§,_loc3_);
      }
      
      public function §%#J§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("USER_ACTION",param1));
         this.§<$1§(§"X§,_loc2_);
      }
      
      public function §^"f§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§^-§>;
         (_loc4_ = new Vector.<§^-§>()).push(new §^-§("REWARD",param1));
         _loc4_.push(new §^-§("REWARD_COUNT",param2));
         _loc4_.push(new §^-§("WHEEL_SEGMENTS",param3));
         this.§<$1§(§>#=§,_loc4_);
      }
      
      public function §&g§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("RESULT",param1));
         this.§<$1§(§%$6§,_loc2_);
      }
      
      public function §#!a§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§^-§>;
         (_loc5_ = new Vector.<§^-§>()).push(new §^-§("SENDER_ID",param1));
         _loc5_.push(new §^-§("RECEIVER_ID",param2));
         _loc5_.push(new §^-§("TOURNAMENT_ID",param3));
         _loc5_.push(new §^-§("PARTICIPANTS",param4));
         this.§<$1§(§[!`§,_loc5_);
      }
      
      public function §8!>§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("COUNT",param1));
         _loc3_.push(new §^-§("CLAIM_ONLY",param2));
         _loc3_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§`$C§,_loc3_);
      }
      
      public function §8"p§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         if(param1 == §]!t§)
         {
            _loc3_.push(new §^-§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new §^-§("CLAIMABLE",param2));
         }
         this.§<$1§(param1,_loc3_);
      }
      
      public function §3!5§(param1:int) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("CHEST",param1));
         this.§<$1§(§5#x§,_loc2_);
      }
      
      public function §=#3§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§^-§>;
         (_loc13_ = new Vector.<§^-§>()).push(new §^-§("FIRST_TIME",param1));
         _loc13_.push(new §^-§("ITEM_TYPE",param2));
         _loc13_.push(new §^-§("AMOUNT",param3));
         _loc13_.push(new §^-§("GAIN_TYPE",param4));
         _loc13_.push(new §^-§("SCREEN",param5));
         _loc13_.push(new §^-§("LEVEL",param6));
         _loc13_.push(new §^-§("ITEM_NAME",param7));
         _loc13_.push(new §^-§("IAP_TYPE",param8));
         _loc13_.push(new §^-§("PAID_AMOUNT",param9));
         _loc13_.push(new §^-§("CURRENCY",param10));
         _loc13_.push(new §^-§("RECEIPT_ID",param11));
         _loc13_.push(new §^-§("ROVIO_ANALYTICS",param12));
         this.§<$1§(§8P§,_loc13_);
      }
      
      public function §0#e§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("SHARE_EVENT",param1));
         _loc3_.push(new §^-§("RESULT",param2));
         this.§<$1§(§@#^§,_loc3_);
      }
      
      private function §<$1§(param1:String, param2:Vector.<§^-§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§^-§ = null;
         var _loc8_:§^-§ = null;
         if(this.§?I§ && new Date().time - this.§2!D§ >= §"!K§)
         {
            this.§&"B§ = this.§,t§();
            this.§2$B§();
            this.§,A§();
         }
         for each(_loc6_ in this.§2#F§())
         {
            param2.push(_loc6_);
         }
         if(this.§9$!§().length >= this.§>"k§)
         {
            if(!this.§=#L§)
            {
               this.§9d§();
            }
            this.§=#L§.reset();
            this.§default§(null);
            this.§=#L§.start();
         }
         var _loc7_:Object = new Object();
         for each(_loc8_ in param2)
         {
            _loc7_[_loc8_.key] = _loc8_.value;
         }
         if(this.§?I§)
         {
            this.§9$!§().push(new §+!7§(param1,_loc7_));
         }
      }
      
      private function §2#F§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§^-§>
      {
         var _loc4_:Vector.<§^-§>;
         (_loc4_ = new Vector.<§^-§>()).push(new §^-§("SESSION_ID",this.§;$-§()));
         _loc4_.push(new §^-§("FB_CONNECT","YES"));
         _loc4_.push(new §^-§("SESSION_COUNTER",this.§[!L§()));
         return _loc4_;
      }
      
      public function §9$!§() : Vector.<§+!7§>
      {
         if(this.§<X§ == null)
         {
            this.§<X§ = new Vector.<§+!7§>();
         }
         return this.§<X§;
      }
      
      private function §0"i§(param1:String, param2:String) : §^-§
      {
         return new §^-§(param1,param2);
      }
      
      public function §&!<§() : String
      {
         return §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken;
      }
      
      protected function §5!N§(param1:IOErrorEvent) : void
      {
      }
      
      private function §&p§() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function §>!0§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§-"f§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§-"f§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §-"f§(param1:Number, param2:int) : String
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
            this.§7$>§ = (param1.c.analytics.ti as Number) * 1000;
            this.§>"k§ = param1.c.analytics.qs as Number;
            this.§?I§ = true;
            this.§9d§();
         }
         else
         {
            this.§?I§ = false;
         }
      }
      
      public function §;$-§() : String
      {
         if(!this.§&"B§ || this.§&"B§ == "")
         {
            this.§&"B§ = this.§,t§();
         }
         return this.§&"B§;
      }
      
      private function §,t§() : String
      {
         this.§2!D§ = new Date().time;
         return this.§2!D§.toString();
      }
      
      protected function §2$B§() : void
      {
         this.§4"C§ = new §5"f§();
         this.§4"C§.addEventListener(Event.COMPLETE,this.§,!P§);
         this.§4"C§.addEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§4"C§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
         this.§4"C§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§4"C§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §4#x§ + this.§&"B§ + "?=" + this.§9k§));
      }
      
      protected function §7#C§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §,!P§(param1:Event) : void
      {
         this.§4"C§.removeEventListener(Event.COMPLETE,this.§,!P§);
         this.§4"C§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7#C§);
         this.§4"C§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7#C§);
         this.§4"C§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§`i§ = param1;
         }
      }
      
      public function §;"F§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§^-§>;
         (_loc7_ = new Vector.<§^-§>()).push(new §^-§("LEVEL",param1));
         _loc7_.push(new §^-§("SLINGSHOT",param2));
         _loc7_.push(new §^-§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new §^-§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new §^-§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new §^-§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§#"i§,_loc7_);
      }
      
      public function §2"u§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("CONTENT_TYPE",param1));
         _loc2_.push(new §^-§("ROVIO_ANALYTICS",true));
         this.§<$1§(§2"T§,_loc2_);
      }
      
      public function §]!M§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("COUNT",param1));
         _loc3_.push(new §^-§("ORIGIN",param2));
         this.§<$1§(§@#U§,_loc3_);
      }
      
      public function §;5§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("ORIGIN",param1));
         this.§<$1§(§0!_§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§?I§ = param1;
      }
      
      private function §3!I§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == § "g§.§>#%§)
         {
            _loc3_ = "T";
            _loc4_ = (§5"L§.§3"1§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §`3§() : String
      {
         var _loc1_:Object = null;
         if(§+!p§.§;"-§ as §^"a§)
         {
            _loc1_ = (§+!p§.§;"-§ as §^"a§).§8"x§();
            return _loc1_.screenName;
         }
         return §^"a§.§3A§[0][1];
      }
      
      private function §,A§() : void
      {
         if(this.§9k§ >= int.MAX_VALUE)
         {
            this.§9k§ = 0;
         }
         ++this.§9k§;
      }
      
      public function §[!L§() : int
      {
         return this.§9k§;
      }
      
      public function §6#Q§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc3_.push(new §^-§("NOTIFICATION_NAME",param1));
         _loc3_.push(new §^-§("RESULT",param2));
         _loc3_.push(new §^-§("USER_ID",this.§'H§));
         this.§<$1§(§[!3§,_loc3_);
      }
      
      public function §;"v§(param1:String) : void
      {
         var _loc2_:Vector.<§^-§> = new Vector.<§^-§>();
         _loc2_.push(new §^-§("TOURNAMENT_ID",param1));
         this.§<$1§(§="T§,_loc2_);
      }
      
      public function §[!t§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§^-§>;
         (_loc9_ = new Vector.<§^-§>()).push(new §^-§("ITEM_TYPE",param1));
         _loc9_.push(new §^-§("AMOUNT",param2));
         _loc9_.push(new §^-§("USE_TYPE",param3));
         _loc9_.push(new §^-§("IAP_TYPE",param4));
         _loc9_.push(new §^-§("ITEM_AMOUNT",param5));
         _loc9_.push(new §^-§("SCREEN",param6));
         _loc9_.push(new §^-§("LEVEL",param7));
         _loc9_.push(new §^-§("ROVIO_ANALYTICS",param8));
         this.§<$1§(§6#K§,_loc9_);
      }
      
      public function get §]"F§() : String
      {
         return this.§4#B§;
      }
      
      public function set §]"F§(param1:String) : void
      {
         this.§4#B§ = param1;
      }
   }
}
