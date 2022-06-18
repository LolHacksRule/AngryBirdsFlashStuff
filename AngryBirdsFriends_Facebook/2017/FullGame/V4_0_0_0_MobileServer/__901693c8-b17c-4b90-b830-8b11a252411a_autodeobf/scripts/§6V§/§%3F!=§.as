package §6V§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §6"r§.§!#A§;
   import §94§.§'!!§;
   import §;#r§.§ #§;
   import §;#r§.§4!Z§;
   import §];§.§-!t§;
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
   
   public class §?!=§
   {
      
      private static const §=!0§:String = "https://smoke.rovio.com";
      
      private static const §3!]§:String = "https://mist.rovio.com";
      
      private static const §!#O§:String = "https://cloud.rovio.com";
      
      private static const §4##§:String = "/collector/1.0/events";
      
      private static const § !Z§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §`!#§:§?!=§;
      
      public static const §4#<§:String = "LEVEL_STARTED";
      
      public static const §@"Z§:String = "LEVEL_COMPLETE";
      
      public static const §#!m§:String = "LEVEL_FAILED";
      
      public static const §&!+§:String = "NOTIFICATION_SENT";
      
      public static const §]"T§:String = "NOTIFICATION_CLICKED";
      
      public static const §-#"§:String = "GIFT_SENT";
      
      public static const §-"^§:String = "GIFT_CLAIMED";
      
      public static const §1!N§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §""Y§:String = "BIRD_SHOT";
      
      public static const §0§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §-'§:String = "TOURNAMENT_STATISTICS";
      
      public static const §9!u§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §"$0§:String = "INVITATION_SENT";
      
      public static const §9!§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §8"<§:String = "INVENTORY_USED";
      
      public static const §?"$§:String = "INVENTORY_GAINED";
      
      public static const §!"d§:String = "FACEBOOK_SHARING";
      
      public static const §&$7§:String = "BRAG";
      
      public static const §5#Z§:String = "GOLD_CROWN";
      
      public static const §,#!§:String = "SILVER_CROWN";
      
      public static const §"!h§:String = "BRONZE_CROWN";
      
      public static const §53§:String = "3STAR";
      
      public static const §?!c§:String = "LEAGUE_WIN";
      
      public static const §@";§:String = "PROMOTION";
      
      public static const §9!9§:String = "GOLD_TROPHY";
      
      public static const §'!_§:String = "SILVER_TROPHY";
      
      public static const §0"O§:String = "BRONZE_TROPHY";
      
      public static const §2R§:String = "SHARE";
      
      public static const §7<§:String = "SKIP";
      
      private static const §[!p§:String = "DAILY_SPIN_UI";
      
      public static const §8$2§:String = "SPIN_ICON_CLICKED";
      
      public static const §3"M§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §8!l§:String = "DAILY_SPIN";
      
      private static const § -§:String = "DAILY_SPIN_REMOVE";
      
      public static const §;h§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §<"Z§:String = "BRAND_BUTTON_CLICK";
      
      private static var §1$;§:String = "";
      
      private static const §<#!§:Number = 60 * 1000 * 10;
      
      private static const §]%§:String = "/setsessionid/";
      
      public static var §+[§:String = "TOURNAMENT_REWARD";
      
      public static var §["n§:String = "LEAGUE_REWARD";
      
      public static var §6"k§:String = "LEVEL_REWARD";
      
      public static var §2!&§:String = "DAILY_REWARD";
      
      public static var §5!e§:String = "PURCHASE";
      
      public static var §<!B§:String = "GIFT";
      
      public static var § §:String = "GIFT_BIRTHDAY";
      
      public static var §'#g§:String = "QUALIFIER_REWARD";
      
      public static var §+"W§:String = "REDEEM_CODE";
      
      public static var §%"w§:String = "FB_GIFT_CARD";
      
      public static var §<#3§:String = "FB_OFFER_WALL";
      
      public static var §%]§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §9#t§:String = "MAIN_MENU_SCREEN";
      
      public static var §+!'§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §2"R§:String = "STORY_MODE_SCREEN";
      
      public static const §6"c§:String = "BIG_YES";
      
      public static const §%!<§:String = "SMALL_YES";
      
      public static const §%!l§:String = "TIMER";
      
      public static const §;$,§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const §5!f§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §9#z§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §%d§:String = "https://cloud.rovio.com";
      
      private var §+"§:URLLoader;
      
      private var § !n§:String;
      
      private var §[#n§:String;
      
      private var §>!m§:String = "application/json";
      
      private var §&!o§:String = "application/x-www-form-urlencoded";
      
      private var §,E§:Vector.<§4!Z§>;
      
      private var §0"9§:Number = 60000;
      
      private var §;$#§:Number = 100;
      
      private var §[#i§:Boolean = false;
      
      private var §=o§:Timer;
      
      private var §4"_§:Boolean = false;
      
      private var §?#>§:String = "";
      
      private var §9$'§:Number = 0;
      
      private var §^! §:§4"v§;
      
      private var §5$>§:int = 1;
      
      private var §1"n§:String = null;
      
      public function §?!=§()
      {
         super();
      }
      
      public static function §3!q§() : §?!=§
      {
         if(§`!#§ == null)
         {
            §`!#§ = new §?!=§();
         }
         return §`!#§;
      }
      
      public static function get §8!I§() : String
      {
         return §1$;§;
      }
      
      public static function set §8!I§(param1:String) : void
      {
         §1$;§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§[#n§ = param1;
         this.§ !n§ = param2;
         if(param3)
         {
            this.§1"W§();
         }
      }
      
      private function §-!3§() : String
      {
         return this.§ !n§;
      }
      
      protected function §+P§(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         if(this.§,E§ && this.§,E§.length > 0 && !this.§4"_§ && this.§[#i§)
         {
            this.§4"_§ = true;
            _loc2_ = new Object();
            _loc2_.token = this.§?#<§();
            _loc2_.events = this.§5#g§();
            _loc3_ = [new URLRequestHeader("Content-Type","application/json")];
            this.§[#I§(§4##§,this.§^!D§,_loc2_,this.§>!m§,_loc3_,true);
         }
      }
      
      private function §^!D§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§,E§.splice(0,this.§,E§.length);
         this.§4"_§ = false;
      }
      
      private function §1"W§() : void
      {
         this.§=o§ = new Timer(this.§0"9§);
         this.§=o§.addEventListener(TimerEvent.TIMER,this.§+P§);
         this.§=o§.start();
      }
      
      private function §[#o§() : String
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
      
      public function §[#I§(param1:String, param2:Function, param3:Object = null, param4:String = null, param5:Array = null, param6:Boolean = false) : void
      {
         var _loc9_:* = null;
         if(param6)
         {
            param1 += "?accessToken=" + this.§?#<§();
         }
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest(this.§%d§ + param1)).method = URLRequestMethod.POST;
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
         if(param4 == this.§>!m§)
         {
            _loc7_.data = JSON.stringify(_loc8_);
         }
         else
         {
            _loc7_.data = _loc8_;
         }
         this.§+"§ = new URLLoader();
         this.§+"§.addEventListener(Event.COMPLETE,param2);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,param2);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param2);
         this.§+"§.load(_loc7_);
      }
      
      public function §@#d§(param1:String, param2:String, param3:int, param4:Number) : void
      {
         var _loc5_:Vector.<§ #§>;
         (_loc5_ = new Vector.<§ #§>()).push(new § #§("LEVEL",param1));
         _loc5_.push(new § #§("LEVEL_SORT_CODE",this.§ "B§(param1)));
         _loc5_.push(new § #§("SCREEN",this.§8@§()));
         _loc5_.push(new § #§("RESTART",param4 > 0));
         _loc5_.push(new § #§("STARS",param3));
         _loc5_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§4#<§,_loc5_);
      }
      
      public function §'"7§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         this.§@"[§(param1,_loc2_);
      }
      
      public function §?l§(param1:Boolean, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:Array, param8:Number, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:int = 0) : void
      {
         var parameters:Vector.<§ #§> = null;
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
         parameters = new Vector.<§ #§>();
         parameters.push(new § #§("LEVEL",levelId));
         parameters.push(new § #§("LEVEL_SORT_CODE",this.§ "B§(levelId)));
         parameters.push(new § #§("SCORE",score));
         parameters.push(new § #§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new § #§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new § #§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new § #§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new § #§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§-#+§.§2"0§(),§-#+§.§1!L§);
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
            parameters.push(new § #§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new § #§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new § #§("STARS",noOfStars));
            parameters.push(new § #§("FIRST_TIME",firstTimeCompleted));
            if(this.§1"n§)
            {
               parameters.push(new § #§("LEVEL_END_BUTTON",this.§1"n§));
            }
            this.§@"[§(§@"Z§,parameters);
         }
         else
         {
            parameters.push(new § #§("SCREEN",this.§8@§()));
            if(this.§1"n§)
            {
               parameters.push(new § #§("LEVEL_END_BUTTON",this.§1"n§));
            }
            this.§@"[§(§#!m§,parameters);
         }
         this.§1"n§ = null;
      }
      
      public function §6"A§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§ #§>;
         (_loc9_ = new Vector.<§ #§>()).push(new § #§("TOURNAMENT_ID",param1));
         _loc9_.push(new § #§("LEVELS_COMPLETED",param2));
         _loc9_.push(new § #§("RED_BEATEN",param3));
         _loc9_.push(new § #§("YELLOW_BEATEN",param4));
         _loc9_.push(new § #§("PARTICIPANTS",param5));
         _loc9_.push(new § #§("RANK",param6));
         _loc9_.push(new § #§("TOTAL_SCORE",param7));
         _loc9_.push(new § #§("STARS",param8));
         _loc9_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§-'§,_loc9_);
      }
      
      public function §]f§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         var _loc4_:* = this.§8@§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new § #§("SCREEN",_loc4_));
         _loc3_.push(new § #§("CATEGORY",param1));
         _loc3_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§1!N§,_loc3_);
      }
      
      public function §>"e§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("TYPE",param1));
         _loc3_.push(new § #§("TEXT",param2));
         _loc3_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§]"T§,_loc3_);
      }
      
      public function § ##§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("COUNT",param1));
         _loc3_.push(new § #§("GIFT_PLACE",param2));
         _loc3_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§-#"§,_loc3_);
      }
      
      public function §]!-§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("USER_ACTION",param1));
         this.§@"[§(§[!p§,_loc2_);
      }
      
      public function §8"&§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§ #§>;
         (_loc4_ = new Vector.<§ #§>()).push(new § #§("REWARD",param1));
         _loc4_.push(new § #§("REWARD_COUNT",param2));
         _loc4_.push(new § #§("WHEEL_SEGMENTS",param3));
         this.§@"[§(§8!l§,_loc4_);
      }
      
      public function §,"J§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("RESULT",param1));
         this.§@"[§(§ -§,_loc2_);
      }
      
      public function §!#K§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§ #§>;
         (_loc5_ = new Vector.<§ #§>()).push(new § #§("SENDER_ID",param1));
         _loc5_.push(new § #§("RECEIVER_ID",param2));
         _loc5_.push(new § #§("TOURNAMENT_ID",param3));
         _loc5_.push(new § #§("PARTICIPANTS",param4));
         this.§@"[§(§9!u§,_loc5_);
      }
      
      public function §,$ §(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("COUNT",param1));
         _loc3_.push(new § #§("CLAIM_ONLY",param2));
         _loc3_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§-"^§,_loc3_);
      }
      
      public function §?"8§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         if(param1 == §;$,§)
         {
            _loc3_.push(new § #§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new § #§("CLAIMABLE",param2));
         }
         this.§@"[§(param1,_loc3_);
      }
      
      public function §[#6§(param1:int) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("CHEST",param1));
         this.§@"[§(§9#z§,_loc2_);
      }
      
      public function §%"X§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§ #§>;
         (_loc13_ = new Vector.<§ #§>()).push(new § #§("FIRST_TIME",param1));
         _loc13_.push(new § #§("ITEM_TYPE",param2));
         _loc13_.push(new § #§("AMOUNT",param3));
         _loc13_.push(new § #§("GAIN_TYPE",param4));
         _loc13_.push(new § #§("SCREEN",param5));
         _loc13_.push(new § #§("LEVEL",param6));
         _loc13_.push(new § #§("ITEM_NAME",param7));
         _loc13_.push(new § #§("IAP_TYPE",param8));
         _loc13_.push(new § #§("PAID_AMOUNT",param9));
         _loc13_.push(new § #§("CURRENCY",param10));
         _loc13_.push(new § #§("RECEIPT_ID",param11));
         _loc13_.push(new § #§("ROVIO_ANALYTICS",param12));
         this.§@"[§(§?"$§,_loc13_);
      }
      
      public function §9#G§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("SHARE_EVENT",param1));
         _loc3_.push(new § #§("RESULT",param2));
         this.§@"[§(§!"d§,_loc3_);
      }
      
      private function §@"[§(param1:String, param2:Vector.<§ #§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§ #§ = null;
         if(this.§[#i§ && new Date().time - this.§9$'§ >= §<#!§)
         {
            this.§?#>§ = this.§0"<§();
            this.§"# §();
            this.§ "T§();
         }
         for each(_loc6_ in this.§ D§())
         {
            param2.push(_loc6_);
         }
         if(this.§5#g§().length >= this.§;$#§)
         {
            if(!this.§=o§)
            {
               this.§1"W§();
            }
            this.§=o§.reset();
            this.§+P§(null);
            this.§=o§.start();
         }
         if(this.§[#i§)
         {
            this.§5#g§().push(new §4!Z§(param1,this.§'O§(),param2));
         }
      }
      
      private function § D§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§ #§>
      {
         var _loc4_:Vector.<§ #§>;
         (_loc4_ = new Vector.<§ #§>()).push(new § #§("SESSION_ID",this.§'"X§()));
         _loc4_.push(new § #§("FB_CONNECT","YES"));
         _loc4_.push(new § #§("SESSION_COUNTER",this.§?#2§()));
         return _loc4_;
      }
      
      public function §5#g§() : Vector.<§4!Z§>
      {
         if(this.§,E§ == null)
         {
            this.§,E§ = new Vector.<§4!Z§>();
         }
         return this.§,E§;
      }
      
      private function §1#j§(param1:String, param2:String) : § #§
      {
         return new § #§(param1,param2);
      }
      
      public function §?#<§() : String
      {
         return §-#+§(§-#+§.§;!$§).§1x§.§7B§.accessToken;
      }
      
      protected function §]!i§(param1:IOErrorEvent) : void
      {
      }
      
      private function §'O§() : String
      {
         var _loc1_:Date = new Date();
         return this.§&!g§(_loc1_);
      }
      
      public function §&!g§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§[#Y§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§[#Y§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §[#Y§(param1:Number, param2:int) : String
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
            this.§0"9§ = (param1.c.analytics.ti as Number) * 1000;
            this.§;$#§ = param1.c.analytics.qs as Number;
            this.§[#i§ = true;
            this.§1"W§();
         }
         else
         {
            this.§[#i§ = false;
         }
      }
      
      public function §'"X§() : String
      {
         if(!this.§?#>§ || this.§?#>§ == "")
         {
            this.§?#>§ = this.§0"<§();
         }
         return this.§?#>§;
      }
      
      private function §0"<§() : String
      {
         this.§9$'§ = new Date().time;
         return this.§9$'§.toString();
      }
      
      protected function §"# §() : void
      {
         this.§^! § = new §4"v§();
         this.§^! §.addEventListener(Event.COMPLETE,this.§?"i§);
         this.§^! §.addEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§^! §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
         this.§^! §.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^! §.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §]%§ + this.§?#>§ + "?=" + this.§5$>§));
      }
      
      protected function §5!9§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §?"i§(param1:Event) : void
      {
         this.§^! §.removeEventListener(Event.COMPLETE,this.§?"i§);
         this.§^! §.removeEventListener(IOErrorEvent.IO_ERROR,this.§5!9§);
         this.§^! §.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5!9§);
         this.§^! § = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§%d§ = param1;
         }
      }
      
      public function §8!F§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§ #§>;
         (_loc7_ = new Vector.<§ #§>()).push(new § #§("LEVEL",param1));
         _loc7_.push(new § #§("SLINGSHOT",param2));
         _loc7_.push(new § #§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new § #§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new § #§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new § #§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§""Y§,_loc7_);
      }
      
      public function §4#[§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("CONTENT_TYPE",param1));
         _loc2_.push(new § #§("ROVIO_ANALYTICS",true));
         this.§@"[§(§0§,_loc2_);
      }
      
      public function §0!;§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("COUNT",param1));
         _loc3_.push(new § #§("ORIGIN",param2));
         this.§@"[§(§"$0§,_loc3_);
      }
      
      public function §5#_§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("ORIGIN",param1));
         this.§@"[§(§9!§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§[#i§ = param1;
      }
      
      private function § "B§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §'!!§.§1!E§)
         {
            _loc3_ = "T";
            _loc4_ = (§-!t§.§ "D§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §8@§() : String
      {
         var _loc1_:Object = null;
         if(§!#A§.§>q§ as §-#+§)
         {
            _loc1_ = (§!#A§.§>q§ as §-#+§).§[#C§();
            return _loc1_.screenName;
         }
         return §-#+§.§2G§[0][1];
      }
      
      private function § "T§() : void
      {
         if(this.§5$>§ >= int.MAX_VALUE)
         {
            this.§5$>§ = 0;
         }
         ++this.§5$>§;
      }
      
      public function §?#2§() : int
      {
         return this.§5$>§;
      }
      
      public function §2#"§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc3_.push(new § #§("NOTIFICATION_NAME",param1));
         _loc3_.push(new § #§("RESULT",param2));
         _loc3_.push(new § #§("USER_ID",this.§[#n§));
         this.§@"[§(§;h§,_loc3_);
      }
      
      public function §]"N§(param1:String) : void
      {
         var _loc2_:Vector.<§ #§> = new Vector.<§ #§>();
         _loc2_.push(new § #§("TOURNAMENT_ID",param1));
         this.§@"[§(§<"Z§,_loc2_);
      }
      
      public function §,#§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§ #§>;
         (_loc9_ = new Vector.<§ #§>()).push(new § #§("ITEM_TYPE",param1));
         _loc9_.push(new § #§("AMOUNT",param2));
         _loc9_.push(new § #§("USE_TYPE",param3));
         _loc9_.push(new § #§("IAP_TYPE",param4));
         _loc9_.push(new § #§("ITEM_AMOUNT",param5));
         _loc9_.push(new § #§("SCREEN",param6));
         _loc9_.push(new § #§("LEVEL",param7));
         _loc9_.push(new § #§("ROVIO_ANALYTICS",param8));
         this.§@"[§(§8"<§,_loc9_);
      }
      
      public function get §1!@§() : String
      {
         return this.§1"n§;
      }
      
      public function set §1!@§(param1:String) : void
      {
         this.§1"n§ = param1;
      }
   }
}
