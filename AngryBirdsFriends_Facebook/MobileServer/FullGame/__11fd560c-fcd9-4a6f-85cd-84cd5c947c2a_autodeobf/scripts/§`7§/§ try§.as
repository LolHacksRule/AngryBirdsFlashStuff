package §`7§
{
   import §"!@§.§false§;
   import §5"7§.§=e§;
   import §5"7§.§@"#§;
   import §8#!§.§5`§;
   import §;#D§.§3#U§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
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
   
   public class § try§
   {
      
      public static const §0#p§:String = "https://smoke.rovio.com";
      
      public static const §0a§:String = "https://mist.rovio.com";
      
      public static const §^"K§:String = "https://cloud.rovio.com";
      
      private static const §9#[§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §%f§:§ try§;
      
      public static const §9"1§:String = "LEVEL_STARTED";
      
      public static const §?!+§:String = "LEVEL_COMPLETE";
      
      public static const §=",§:String = "LEVEL_FAILED";
      
      public static const §2"2§:String = "NOTIFICATION_SENT";
      
      public static const §`"h§:String = "NOTIFICATION_CLICKED";
      
      public static const §8!,§:String = "GIFT_SENT";
      
      public static const §2!6§:String = "GIFT_CLAIMED";
      
      public static const §`g§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §`"H§:String = "BIRD_SHOT";
      
      public static const §>!8§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §var§:String = "TOURNAMENT_STATISTICS";
      
      public static const §2!C§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §+Q§:String = "INVITATION_SENT";
      
      public static const §^!5§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §3"o§:String = "INVENTORY_USED";
      
      public static const §2!E§:String = "INVENTORY_GAINED";
      
      public static const §"!z§:String = "FACEBOOK_SHARING";
      
      public static const §6"5§:String = "BRAG";
      
      public static const § "4§:String = "GOLD_CROWN";
      
      public static const §["%§:String = "SILVER_CROWN";
      
      public static const §!]§:String = "BRONZE_CROWN";
      
      public static const §,"Q§:String = "3STAR";
      
      public static const §+#@§:String = "LEAGUE_WIN";
      
      public static const §=#!§:String = "PROMOTION";
      
      public static const §=6§:String = "GOLD_TROPHY";
      
      public static const §=X§:String = "SILVER_TROPHY";
      
      public static const §7#B§:String = "BRONZE_TROPHY";
      
      public static const §]J§:String = "SHARE";
      
      public static const §<"[§:String = "SKIP";
      
      private static const §6!L§:String = "DAILY_SPIN_UI";
      
      public static const §-V§:String = "SPIN_ICON_CLICKED";
      
      public static const §7#6§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §7$7§:String = "DAILY_SPIN";
      
      private static const §="E§:String = "DAILY_SPIN_REMOVE";
      
      public static const §@"a§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §5!w§:String = "BRAND_BUTTON_CLICK";
      
      private static var §""_§:String = "";
      
      private static const §?#^§:Number = 60 * 1000 * 10;
      
      private static const §?#p§:String = "/setsessionid/";
      
      public static var §5"=§:String = "TOURNAMENT_REWARD";
      
      public static var §^"&§:String = "LEAGUE_REWARD";
      
      public static var §1"8§:String = "LEVEL_REWARD";
      
      public static var §[#r§:String = "DAILY_REWARD";
      
      public static var §`1§:String = "PURCHASE";
      
      public static var §3-§:String = "GIFT";
      
      public static var §""]§:String = "GIFT_BIRTHDAY";
      
      public static var §]!R§:String = "QUALIFIER_REWARD";
      
      public static var §%!M§:String = "REDEEM_CODE";
      
      public static var §#B§:String = "FB_GIFT_CARD";
      
      public static var §]!&§:String = "FB_OFFER_WALL";
      
      public static var §@""§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §2!N§:String = "MAIN_MENU_SCREEN";
      
      public static var §-W§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §,"g§:String = "STORY_MODE_SCREEN";
      
      public static const §%#v§:String = "BIG_YES";
      
      public static const §5!U§:String = "SMALL_YES";
      
      public static const §^#I§:String = "TIMER";
      
      public static const §^!X§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const §<$!§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §@b§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §9!b§:String = "https://cloud.rovio.com";
      
      private var §>v§:URLLoader;
      
      private var §&"Y§:String;
      
      private var §["L§:String;
      
      private var §>!q§:String = "application/json";
      
      private var §;!"§:String = "application/x-www-form-urlencoded";
      
      private var §&$@§:Vector.<§@"#§>;
      
      private var §="n§:Number = 60000;
      
      private var §&S§:Number = 100;
      
      private var §]"&§:Boolean = false;
      
      private var §"!&§:Timer;
      
      private var §8!D§:Boolean = false;
      
      private var §0I§:String = "";
      
      private var §6"E§:Number = 0;
      
      private var §2"b§:§1"V§;
      
      private var §=D§:int = 1;
      
      private var §-+§:String = null;
      
      public function § try§()
      {
         super();
      }
      
      public static function §!!t§() : § try§
      {
         if(§%f§ == null)
         {
            §%f§ = new § try§();
         }
         return §%f§;
      }
      
      public static function get §"!c§() : String
      {
         return §""_§;
      }
      
      public static function set §"!c§(param1:String) : void
      {
         §""_§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§["L§ = param1;
         this.§&"Y§ = param2;
         if(param3)
         {
            this.§2"%§();
         }
      }
      
      private function §,c§() : String
      {
         return this.§&"Y§;
      }
      
      protected function §^d§(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         if(this.§&$@§ && this.§&$@§.length > 0 && !this.§8!D§ && this.§]"&§)
         {
            this.§8!D§ = true;
            _loc2_ = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.§7#^§())];
            this.§<$4§(this.§5#9§,this.§>!q§,_loc2_,true);
         }
      }
      
      private function §5#9§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§&$@§.splice(0,this.§&$@§.length);
         this.§8!D§ = false;
      }
      
      private function §2"%§() : void
      {
         this.§"!&§ = new Timer(this.§="n§);
         this.§"!&§.addEventListener(TimerEvent.TIMER,this.§^d§);
         this.§"!&§.start();
         Security.loadPolicyFile(this.§9!b§ + "/crossdomain.xml");
         Security.allowDomain(this.§9!b§);
      }
      
      private function §`!]§() : String
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
      
      private function §<$4§(param1:Function, param2:String = null, param3:Array = null, param4:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc5_:* = "/hoarder/2/apps/" + §,A§.§ !;§ + "/events/player";
         if(param4)
         {
            _loc5_ += "?accessToken=" + this.§7#^§();
         }
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest(this.§9!b§ + _loc5_)).method = URLRequestMethod.POST;
         if(param3)
         {
            _loc6_.requestHeaders = param3;
         }
         if(param2)
         {
            _loc6_.contentType = param2;
         }
         var _loc7_:URLVariables = new URLVariables();
         if(param2 == this.§>!q§)
         {
            (_loc8_ = new Array()).push({
               "accessToken":this.§7#^§(),
               "events":this.§^#T§()
            });
            (_loc9_ = new Object())["batches"] = _loc8_;
            _loc6_.data = JSON.stringify(_loc9_);
            _loc6_.data = (_loc6_.data as String).replace("[!l","tz");
         }
         else
         {
            _loc6_.data = _loc7_;
         }
         this.§>v§ = new URLLoader();
         this.§>v§.addEventListener(Event.COMPLETE,param1);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,param1);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param1);
         this.§>v§.load(_loc6_);
      }
      
      public function §3!L§(param1:String, param2:int, param3:String, param4:int, param5:Number) : void
      {
         var _loc6_:Vector.<§=e§>;
         (_loc6_ = new Vector.<§=e§>()).push(new §=e§("LEVEL",param1));
         _loc6_.push(new §=e§("LEVEL_SORT_CODE",this.§7#w§(param1)));
         _loc6_.push(new §=e§("TOURNAMENT_ID",param2));
         _loc6_.push(new §=e§("SCREEN",this.§'!E§()));
         _loc6_.push(new §=e§("RESTART",param5 > 0));
         _loc6_.push(new §=e§("STARS",param4));
         _loc6_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§9"1§,_loc6_);
      }
      
      public function §'2§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         this.§1"0§(param1,_loc2_);
      }
      
      public function §+" §(param1:Boolean, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Array, param9:Number, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false, param14:int = 0) : void
      {
         var parameters:Vector.<§=e§> = null;
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
         parameters = new Vector.<§=e§>();
         parameters.push(new §=e§("LEVEL",levelId));
         parameters.push(new §=e§("TOURNAMENT_ID",tournamentId));
         parameters.push(new §=e§("LEVEL_SORT_CODE",this.§7#w§(levelId)));
         parameters.push(new §=e§("SCORE",score));
         parameters.push(new §=e§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new §=e§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new §=e§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new §=e§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new §=e§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§,A§.§3a§(),§,A§.§-d§);
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
            parameters.push(new §=e§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new §=e§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new §=e§("STARS",noOfStars));
            parameters.push(new §=e§("FIRST_TIME",firstTimeCompleted));
            if(this.§-+§)
            {
               parameters.push(new §=e§("LEVEL_END_BUTTON",this.§-+§));
            }
            this.§1"0§(§?!+§,parameters);
         }
         else
         {
            parameters.push(new §=e§("SCREEN",this.§'!E§()));
            if(this.§-+§)
            {
               parameters.push(new §=e§("LEVEL_END_BUTTON",this.§-+§));
            }
            this.§1"0§(§=",§,parameters);
         }
         this.§-+§ = null;
      }
      
      public function §7"$§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§=e§>;
         (_loc9_ = new Vector.<§=e§>()).push(new §=e§("TOURNAMENT_ID",param1));
         _loc9_.push(new §=e§("LEVELS_COMPLETED",param2));
         _loc9_.push(new §=e§("RED_BEATEN",param3));
         _loc9_.push(new §=e§("YELLOW_BEATEN",param4));
         _loc9_.push(new §=e§("PARTICIPANTS",param5));
         _loc9_.push(new §=e§("RANK",param6));
         _loc9_.push(new §=e§("TOTAL_SCORE",param7));
         _loc9_.push(new §=e§("STARS",param8));
         _loc9_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§var§,_loc9_);
      }
      
      public function §%"?§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         var _loc4_:* = this.§'!E§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new §=e§("SCREEN",_loc4_));
         _loc3_.push(new §=e§("CATEGORY",param1));
         _loc3_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§`g§,_loc3_);
      }
      
      public function §@$A§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("TYPE",param1));
         _loc3_.push(new §=e§("TEXT",param2));
         _loc3_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§`"h§,_loc3_);
      }
      
      public function §2m§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("COUNT",param1));
         _loc3_.push(new §=e§("GIFT_PLACE",param2));
         _loc3_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§8!,§,_loc3_);
      }
      
      public function §7!y§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("USER_ACTION",param1));
         this.§1"0§(§6!L§,_loc2_);
      }
      
      public function §!$?§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§=e§>;
         (_loc4_ = new Vector.<§=e§>()).push(new §=e§("REWARD",param1));
         _loc4_.push(new §=e§("REWARD_COUNT",param2));
         _loc4_.push(new §=e§("WHEEL_SEGMENTS",param3));
         this.§1"0§(§7$7§,_loc4_);
      }
      
      public function §3#@§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("RESULT",param1));
         this.§1"0§(§="E§,_loc2_);
      }
      
      public function §#9§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§=e§>;
         (_loc5_ = new Vector.<§=e§>()).push(new §=e§("SENDER_ID",param1));
         _loc5_.push(new §=e§("RECEIVER_ID",param2));
         _loc5_.push(new §=e§("TOURNAMENT_ID",param3));
         _loc5_.push(new §=e§("PARTICIPANTS",param4));
         this.§1"0§(§2!C§,_loc5_);
      }
      
      public function §?!^§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("COUNT",param1));
         _loc3_.push(new §=e§("CLAIM_ONLY",param2));
         _loc3_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§2!6§,_loc3_);
      }
      
      public function §[#]§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         if(param1 == §^!X§)
         {
            _loc3_.push(new §=e§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new §=e§("CLAIMABLE",param2));
         }
         this.§1"0§(param1,_loc3_);
      }
      
      public function §;#-§(param1:int) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("CHEST",param1));
         this.§1"0§(§@b§,_loc2_);
      }
      
      public function § #D§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§=e§>;
         (_loc13_ = new Vector.<§=e§>()).push(new §=e§("FIRST_TIME",param1));
         _loc13_.push(new §=e§("ITEM_TYPE",param2));
         _loc13_.push(new §=e§("AMOUNT",param3));
         _loc13_.push(new §=e§("GAIN_TYPE",param4));
         _loc13_.push(new §=e§("SCREEN",param5));
         _loc13_.push(new §=e§("LEVEL",param6));
         _loc13_.push(new §=e§("ITEM_NAME",param7));
         _loc13_.push(new §=e§("IAP_TYPE",param8));
         _loc13_.push(new §=e§("PAID_AMOUNT",param9));
         _loc13_.push(new §=e§("CURRENCY",param10));
         _loc13_.push(new §=e§("RECEIPT_ID",param11));
         _loc13_.push(new §=e§("ROVIO_ANALYTICS",param12));
         this.§1"0§(§2!E§,_loc13_);
      }
      
      public function §+!R§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("SHARE_EVENT",param1));
         _loc3_.push(new §=e§("RESULT",param2));
         this.§1"0§(§"!z§,_loc3_);
      }
      
      private function §1"0§(param1:String, param2:Vector.<§=e§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§=e§ = null;
         var _loc8_:§=e§ = null;
         if(this.§]"&§ && new Date().time - this.§6"E§ >= §?#^§)
         {
            this.§0I§ = this.§%#F§();
            this.§ "K§();
            this.§-$§();
         }
         for each(_loc6_ in this.§4;§())
         {
            param2.push(_loc6_);
         }
         if(this.§^#T§().length >= this.§&S§)
         {
            if(!this.§"!&§)
            {
               this.§2"%§();
            }
            this.§"!&§.reset();
            this.§^d§(null);
            this.§"!&§.start();
         }
         var _loc7_:Object = new Object();
         for each(_loc8_ in param2)
         {
            _loc7_[_loc8_.key] = _loc8_.value;
         }
         if(this.§]"&§)
         {
            this.§^#T§().push(new §@"#§(param1,_loc7_));
         }
      }
      
      private function §4;§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§=e§>
      {
         var _loc4_:Vector.<§=e§>;
         (_loc4_ = new Vector.<§=e§>()).push(new §=e§("SESSION_ID",this.§65§()));
         _loc4_.push(new §=e§("FB_CONNECT","YES"));
         _loc4_.push(new §=e§("SESSION_COUNTER",this.§<#-§()));
         return _loc4_;
      }
      
      public function §^#T§() : Vector.<§@"#§>
      {
         if(this.§&$@§ == null)
         {
            this.§&$@§ = new Vector.<§@"#§>();
         }
         return this.§&$@§;
      }
      
      private function §4!j§(param1:String, param2:String) : §=e§
      {
         return new §=e§(param1,param2);
      }
      
      public function §7#^§() : String
      {
         return §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken;
      }
      
      protected function §3!Q§(param1:IOErrorEvent) : void
      {
      }
      
      private function §;4§() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function §;"§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§&"o§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§&"o§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §&"o§(param1:Number, param2:int) : String
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
            this.§="n§ = (param1.c.analytics.ti as Number) * 1000;
            this.§&S§ = param1.c.analytics.qs as Number;
            this.§]"&§ = true;
            this.§2"%§();
         }
         else
         {
            this.§]"&§ = false;
         }
      }
      
      public function §65§() : String
      {
         if(!this.§0I§ || this.§0I§ == "")
         {
            this.§0I§ = this.§%#F§();
         }
         return this.§0I§;
      }
      
      private function §%#F§() : String
      {
         this.§6"E§ = new Date().time;
         return this.§6"E§.toString();
      }
      
      protected function § "K§() : void
      {
         this.§2"b§ = new §1"V§();
         this.§2"b§.addEventListener(Event.COMPLETE,this.§!"U§);
         this.§2"b§.addEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§2"b§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
         this.§2"b§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"b§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §?#p§ + this.§0I§ + "?=" + this.§=D§));
      }
      
      protected function §4S§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §!"U§(param1:Event) : void
      {
         this.§2"b§.removeEventListener(Event.COMPLETE,this.§!"U§);
         this.§2"b§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4S§);
         this.§2"b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4S§);
         this.§2"b§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§9!b§ = param1;
         }
      }
      
      public function §8"a§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§=e§>;
         (_loc7_ = new Vector.<§=e§>()).push(new §=e§("LEVEL",param1));
         _loc7_.push(new §=e§("SLINGSHOT",param2));
         _loc7_.push(new §=e§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new §=e§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new §=e§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new §=e§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§`"H§,_loc7_);
      }
      
      public function §5#F§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("CONTENT_TYPE",param1));
         _loc2_.push(new §=e§("ROVIO_ANALYTICS",true));
         this.§1"0§(§>!8§,_loc2_);
      }
      
      public function §%#s§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("COUNT",param1));
         _loc3_.push(new §=e§("ORIGIN",param2));
         this.§1"0§(§+Q§,_loc3_);
      }
      
      public function §-!q§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("ORIGIN",param1));
         this.§1"0§(§^!5§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§]"&§ = param1;
      }
      
      private function §7#w§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §false§.§;#i§)
         {
            _loc3_ = "T";
            _loc4_ = (§5`§.§6!§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §'!E§() : String
      {
         var _loc1_:Object = null;
         if(§3#U§.§9#^§ as §,A§)
         {
            _loc1_ = (§3#U§.§9#^§ as §,A§).§<!s§();
            return _loc1_.screenName;
         }
         return §,A§.§ #B§[0][1];
      }
      
      private function §-$§() : void
      {
         if(this.§=D§ >= int.MAX_VALUE)
         {
            this.§=D§ = 0;
         }
         ++this.§=D§;
      }
      
      public function §<#-§() : int
      {
         return this.§=D§;
      }
      
      public function §^"T§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc3_.push(new §=e§("NOTIFICATION_NAME",param1));
         _loc3_.push(new §=e§("RESULT",param2));
         _loc3_.push(new §=e§("USER_ID",this.§["L§));
         this.§1"0§(§@"a§,_loc3_);
      }
      
      public function §&$>§(param1:String) : void
      {
         var _loc2_:Vector.<§=e§> = new Vector.<§=e§>();
         _loc2_.push(new §=e§("TOURNAMENT_ID",param1));
         this.§1"0§(§5!w§,_loc2_);
      }
      
      public function §2$$§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§=e§>;
         (_loc9_ = new Vector.<§=e§>()).push(new §=e§("ITEM_TYPE",param1));
         _loc9_.push(new §=e§("AMOUNT",param2));
         _loc9_.push(new §=e§("USE_TYPE",param3));
         _loc9_.push(new §=e§("IAP_TYPE",param4));
         _loc9_.push(new §=e§("ITEM_AMOUNT",param5));
         _loc9_.push(new §=e§("SCREEN",param6));
         _loc9_.push(new §=e§("LEVEL",param7));
         _loc9_.push(new §=e§("ROVIO_ANALYTICS",param8));
         this.§1"0§(§3"o§,_loc9_);
      }
      
      public function get §2$#§() : String
      {
         return this.§-+§;
      }
      
      public function set §2$#§(param1:String) : void
      {
         this.§-+§ = param1;
      }
   }
}
