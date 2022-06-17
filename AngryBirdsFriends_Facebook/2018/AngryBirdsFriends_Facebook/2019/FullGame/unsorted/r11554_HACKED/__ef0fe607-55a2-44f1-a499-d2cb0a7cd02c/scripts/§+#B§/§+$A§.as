package §+#B§
{
   import §+"u§.§^"C§;
   import §-!"§.§ "e§;
   import §-!"§.§8?§;
   import §3=§.§%"#§;
   import §=!2§.§%"T§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
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
   
   public class §+$A§
   {
      
      public static const §'_§:String = "https://smoke.rovio.com";
      
      public static const §"@§:String = "https://mist.rovio.com";
      
      public static const §4$>§:String = "https://cloud.rovio.com";
      
      private static const §1!I§:String = "/identity/2.0/facebook/weblogin";
      
      private static var §8R§:§+$A§;
      
      public static const §%"[§:String = "LEVEL_STARTED";
      
      public static const §9"k§:String = "LEVEL_COMPLETE";
      
      public static const §0"F§:String = "LEVEL_FAILED";
      
      public static const §6!Z§:String = "NOTIFICATION_SENT";
      
      public static const §10§:String = "NOTIFICATION_CLICKED";
      
      public static const §]#d§:String = "GIFT_SENT";
      
      public static const §&#c§:String = "GIFT_CLAIMED";
      
      public static const §%#g§:String = "SHOP_CATEGORY_ENTERED";
      
      public static const §0#&§:String = "BIRD_SHOT";
      
      public static const §2"5§:String = "TOURNAMENT_ALL_CONTENT_PLAYED";
      
      public static const §1#Y§:String = "TOURNAMENT_STATISTICS";
      
      public static const §,#I§:String = "CHALLENGE_TOURNAMENT";
      
      public static const §]$'§:String = "INVITATION_SENT";
      
      public static const §%!m§:String = "REQUEST_FRIEND_PERMISSION";
      
      public static const §2x§:String = "INVENTORY_USED";
      
      public static const §1"o§:String = "INVENTORY_GAINED";
      
      public static const §#"j§:String = "FACEBOOK_SHARING";
      
      public static const §""G§:String = "BRAG";
      
      public static const §=!P§:String = "GOLD_CROWN";
      
      public static const §+" §:String = "SILVER_CROWN";
      
      public static const §@">§:String = "BRONZE_CROWN";
      
      public static const §+"g§:String = "3STAR";
      
      public static const §2#>§:String = "LEAGUE_WIN";
      
      public static const §]#Q§:String = "PROMOTION";
      
      public static const §[@§:String = "GOLD_TROPHY";
      
      public static const §-3§:String = "SILVER_TROPHY";
      
      public static const §5"u§:String = "BRONZE_TROPHY";
      
      public static const §>1§:String = "SHARE";
      
      public static const §#!]§:String = "SKIP";
      
      private static const §1#a§:String = "DAILY_SPIN_UI";
      
      public static const §-!8§:String = "SPIN_ICON_CLICKED";
      
      public static const §=",§:String = "SPIN_WINDOW_CLOSED";
      
      private static const §&#5§:String = "DAILY_SPIN";
      
      private static const §[!u§:String = "DAILY_SPIN_REMOVE";
      
      public static const §3#p§:String = "DYNAMIC_POPUP_CLICK";
      
      public static const §%"]§:String = "BRAND_BUTTON_CLICK";
      
      private static var §!!Y§:String = "";
      
      private static const §@!8§:Number = 60 * 1000 * 10;
      
      private static const §9Q§:String = "/setsessionid/";
      
      public static var §'m§:String = "TOURNAMENT_REWARD";
      
      public static var §%$4§:String = "LEAGUE_REWARD";
      
      public static var §]!q§:String = "LEVEL_REWARD";
      
      public static var §=a§:String = "DAILY_REWARD";
      
      public static var §?j§:String = "PURCHASE";
      
      public static var §9#,§:String = "GIFT";
      
      public static var §5i§:String = "GIFT_BIRTHDAY";
      
      public static var §"#t§:String = "QUALIFIER_REWARD";
      
      public static var §9!u§:String = "REDEEM_CODE";
      
      public static var §`w§:String = "FB_GIFT_CARD";
      
      public static var §!"a§:String = "FB_OFFER_WALL";
      
      public static var §3#B§:String = "INCENTIVIZED_FRIEND_INVITE";
      
      public static var §0"i§:String = "MAIN_MENU_SCREEN";
      
      public static var § A§:String = "TOURNAMENT_LEVEL_SELECTION_SCREEN";
      
      public static var §<"m§:String = "STORY_MODE_SCREEN";
      
      public static const §+# §:String = "BIG_YES";
      
      public static const §#!o§:String = "SMALL_YES";
      
      public static const §^Q§:String = "TIMER";
      
      public static const §,!!§:String = "LEVEL_SELECTION_EVENT_BUTTON_CLICKED";
      
      public static const §2C§:String = "RESULT_SCREEN_EVENT_CHEST_CLICKED";
      
      public static const §4"Q§:String = "EVENT_REWARD_CLAIMED";
       
      
      private var §7!p§:String = "https://cloud.rovio.com";
      
      private var §&![§:URLLoader;
      
      private var §&#a§:String;
      
      private var §0$3§:String;
      
      private var §7!2§:String = "application/json";
      
      private var §1#-§:String = "application/x-www-form-urlencoded";
      
      private var §+j§:Vector.<§8?§>;
      
      private var §^"§:Number = 60000;
      
      private var §?"U§:Number = 100;
      
      private var §"%§:Boolean = false;
      
      private var §>#D§:Timer;
      
      private var §^%§:Boolean = false;
      
      private var §8G§:String = "";
      
      private var §1"D§:Number = 0;
      
      private var §##f§:§'!n§;
      
      private var §>f§:int = 1;
      
      private var §<#1§:String = null;
      
      public function §+$A§()
      {
         super();
      }
      
      public static function §@"i§() : §+$A§
      {
         if(§8R§ == null)
         {
            §8R§ = new §+$A§();
         }
         return §8R§;
      }
      
      public static function get §<"?§() : String
      {
         return §!!Y§;
      }
      
      public static function set §<"?§(param1:String) : void
      {
         §!!Y§ = param1;
      }
      
      public function init(param1:String, param2:String, param3:Boolean = true) : void
      {
         this.§0$3§ = param1;
         this.§&#a§ = param2;
         if(param3)
         {
            this.§<"h§();
         }
      }
      
      private function §<#&§() : String
      {
         return this.§&#a§;
      }
      
      protected function §""P§(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         if(this.§+j§ && this.§+j§.length > 0 && !this.§^%§ && this.§"%§)
         {
            this.§^%§ = true;
            _loc2_ = [new URLRequestHeader("Content-Type","application/json"),new URLRequestHeader("ROVIO-ACCESS-TOKEN",this.§!#B§())];
            this.§4#N§(this.§3"F§,this.§7!2§,_loc2_,true);
         }
      }
      
      private function §3"F§(param1:Event) : void
      {
         if(param1 is ErrorEvent)
         {
         }
         this.§+j§.splice(0,this.§+j§.length);
         this.§^%§ = false;
      }
      
      private function §<"h§() : void
      {
         this.§>#D§ = new Timer(this.§^"§);
         this.§>#D§.addEventListener(TimerEvent.TIMER,this.§""P§);
         this.§>#D§.start();
         Security.loadPolicyFile(this.§7!p§ + "/crossdomain.xml");
         Security.allowDomain(this.§7!p§);
      }
      
      private function §>#H§() : String
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
      
      private function §4#N§(param1:Function, param2:String = null, param3:Array = null, param4:Boolean = false) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc5_:* = "/hoarder/2/apps/" + §'"a§.§;#M§ + "/events/player";
         if(param4)
         {
            _loc5_ += "?accessToken=" + this.§!#B§();
         }
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest(this.§7!p§ + _loc5_)).method = URLRequestMethod.POST;
         if(param3)
         {
            _loc6_.requestHeaders = param3;
         }
         if(param2)
         {
            _loc6_.contentType = param2;
         }
         var _loc7_:URLVariables = new URLVariables();
         if(param2 == this.§7!2§)
         {
            (_loc8_ = new Array()).push({
               "accessToken":this.§!#B§(),
               "events":this.§3#S§()
            });
            (_loc9_ = new Object())["batches"] = _loc8_;
            _loc6_.data = JSON.stringify(_loc9_);
            _loc6_.data = (_loc6_.data as String).replace("[!l","tz");
         }
         else
         {
            _loc6_.data = _loc7_;
         }
         this.§&![§ = new URLLoader();
         this.§&![§.addEventListener(Event.COMPLETE,param1);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,param1);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,param1);
         this.§&![§.load(_loc6_);
      }
      
      public function §&"@§(param1:String, param2:int, param3:String, param4:int, param5:Number) : void
      {
         var _loc6_:Vector.<§ "e§>;
         (_loc6_ = new Vector.<§ "e§>()).push(new § "e§("LEVEL",param1));
         _loc6_.push(new § "e§("LEVEL_SORT_CODE",this.§6n§(param1)));
         _loc6_.push(new § "e§("TOURNAMENT_ID",param2));
         _loc6_.push(new § "e§("SCREEN",this.§,#0§()));
         _loc6_.push(new § "e§("RESTART",param5 > 0));
         _loc6_.push(new § "e§("STARS",param4));
         _loc6_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§%"[§,_loc6_);
      }
      
      public function §="H§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         this.§ #=§(param1,_loc2_);
      }
      
      public function §>e§(param1:Boolean, param2:String, param3:int, param4:String, param5:Number, param6:Number, param7:Number, param8:Array, param9:Number, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false, param13:Boolean = false, param14:int = 0) : void
      {
         var parameters:Vector.<§ "e§> = null;
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
         parameters = new Vector.<§ "e§>();
         parameters.push(new § "e§("LEVEL",levelId));
         parameters.push(new § "e§("TOURNAMENT_ID",tournamentId));
         parameters.push(new § "e§("LEVEL_SORT_CODE",this.§6n§(levelId)));
         parameters.push(new § "e§("SCORE",score));
         parameters.push(new § "e§("BIRDS_SLUNG",noOfBirdsUsed));
         parameters.push(new § "e§("BIRDS_AVAILABLE",noOfBirdsAvailable));
         parameters.push(new § "e§("ROVIO_ANALYTICS",true));
         if(usedPowerups)
         {
            i = 0;
            while(i < usedPowerups.length)
            {
               parameters.push(new § "e§("POWERUP_USED_" + (i + 1),usedPowerups[i]));
               i++;
            }
         }
         if(mightyEagleUsed)
         {
            parameters.push(new § "e§("EAGLE_SCORE",feathersPercentage));
         }
         try
         {
            mySO = SharedObject.getLocal(§'"a§.§6"`§(),§'"a§.§"h§);
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
            parameters.push(new § "e§("ATTEMPTS",levelAttemptsObject[levelId]));
         }
         catch(e:Error)
         {
            parameters.push(new § "e§("ATTEMPTS",1));
         }
         if(passed)
         {
            parameters.push(new § "e§("STARS",noOfStars));
            parameters.push(new § "e§("FIRST_TIME",firstTimeCompleted));
            if(this.§<#1§)
            {
               parameters.push(new § "e§("LEVEL_END_BUTTON",this.§<#1§));
            }
            this.§ #=§(§9"k§,parameters);
         }
         else
         {
            parameters.push(new § "e§("SCREEN",this.§,#0§()));
            if(this.§<#1§)
            {
               parameters.push(new § "e§("LEVEL_END_BUTTON",this.§<#1§));
            }
            this.§ #=§(§0"F§,parameters);
         }
         this.§<#1§ = null;
      }
      
      public function §>"]§(param1:String, param2:Number, param3:Boolean, param4:Boolean, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Vector.<§ "e§>;
         (_loc9_ = new Vector.<§ "e§>()).push(new § "e§("TOURNAMENT_ID",param1));
         _loc9_.push(new § "e§("LEVELS_COMPLETED",param2));
         _loc9_.push(new § "e§("RED_BEATEN",param3));
         _loc9_.push(new § "e§("YELLOW_BEATEN",param4));
         _loc9_.push(new § "e§("PARTICIPANTS",param5));
         _loc9_.push(new § "e§("RANK",param6));
         _loc9_.push(new § "e§("TOTAL_SCORE",param7));
         _loc9_.push(new § "e§("STARS",param8));
         _loc9_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§1#Y§,_loc9_);
      }
      
      public function §2K§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         var _loc4_:* = this.§,#0§();
         if(param2)
         {
            _loc4_ += "_WALLET";
         }
         _loc3_.push(new § "e§("SCREEN",_loc4_));
         _loc3_.push(new § "e§("CATEGORY",param1));
         _loc3_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§%#g§,_loc3_);
      }
      
      public function §4$B§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("TYPE",param1));
         _loc3_.push(new § "e§("TEXT",param2));
         _loc3_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§10§,_loc3_);
      }
      
      public function §[!E§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("COUNT",param1));
         _loc3_.push(new § "e§("GIFT_PLACE",param2));
         _loc3_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§]#d§,_loc3_);
      }
      
      public function §]$#§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("USER_ACTION",param1));
         this.§ #=§(§1#a§,_loc2_);
      }
      
      public function §;;§(param1:String, param2:uint, param3:uint) : void
      {
         var _loc4_:Vector.<§ "e§>;
         (_loc4_ = new Vector.<§ "e§>()).push(new § "e§("REWARD",param1));
         _loc4_.push(new § "e§("REWARD_COUNT",param2));
         _loc4_.push(new § "e§("WHEEL_SEGMENTS",param3));
         this.§ #=§(§&#5§,_loc4_);
      }
      
      public function §&t§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("RESULT",param1));
         this.§ #=§(§[!u§,_loc2_);
      }
      
      public function §7"p§(param1:String, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:Vector.<§ "e§>;
         (_loc5_ = new Vector.<§ "e§>()).push(new § "e§("SENDER_ID",param1));
         _loc5_.push(new § "e§("RECEIVER_ID",param2));
         _loc5_.push(new § "e§("TOURNAMENT_ID",param3));
         _loc5_.push(new § "e§("PARTICIPANTS",param4));
         this.§ #=§(§,#I§,_loc5_);
      }
      
      public function §=!I§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("COUNT",param1));
         _loc3_.push(new § "e§("CLAIM_ONLY",param2));
         _loc3_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§&#c§,_loc3_);
      }
      
      public function §5!-§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         if(param1 == §,!!§)
         {
            _loc3_.push(new § "e§("ANIMATED",param2));
         }
         else
         {
            _loc3_.push(new § "e§("CLAIMABLE",param2));
         }
         this.§ #=§(param1,_loc3_);
      }
      
      public function §^#1§(param1:int) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("CHEST",param1));
         this.§ #=§(§4"Q§,_loc2_);
      }
      
      public function §%!+§(param1:Boolean = false, param2:String = "", param3:Number = 0, param4:String = "", param5:String = "", param6:String = "", param7:String = "", param8:String = "", param9:Number = 0, param10:String = "", param11:String = "", param12:Boolean = true) : void
      {
         var _loc13_:Vector.<§ "e§>;
         (_loc13_ = new Vector.<§ "e§>()).push(new § "e§("FIRST_TIME",param1));
         _loc13_.push(new § "e§("ITEM_TYPE",param2));
         _loc13_.push(new § "e§("AMOUNT",param3));
         _loc13_.push(new § "e§("GAIN_TYPE",param4));
         _loc13_.push(new § "e§("SCREEN",param5));
         _loc13_.push(new § "e§("LEVEL",param6));
         _loc13_.push(new § "e§("ITEM_NAME",param7));
         _loc13_.push(new § "e§("IAP_TYPE",param8));
         _loc13_.push(new § "e§("PAID_AMOUNT",param9));
         _loc13_.push(new § "e§("CURRENCY",param10));
         _loc13_.push(new § "e§("RECEIPT_ID",param11));
         _loc13_.push(new § "e§("ROVIO_ANALYTICS",param12));
         this.§ #=§(§1"o§,_loc13_);
      }
      
      public function §8!F§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("SHARE_EVENT",param1));
         _loc3_.push(new § "e§("RESULT",param2));
         this.§ #=§(§#"j§,_loc3_);
      }
      
      private function § #=§(param1:String, param2:Vector.<§ "e§>, param3:Boolean = false, param4:String = "", param5:String = "") : void
      {
         var _loc6_:§ "e§ = null;
         var _loc8_:§ "e§ = null;
         if(this.§"%§ && new Date().time - this.§1"D§ >= §@!8§)
         {
            this.§8G§ = this.§<V§();
            this.§<!F§();
            this.§!#6§();
         }
         for each(_loc6_ in this.§&!q§())
         {
            param2.push(_loc6_);
         }
         if(this.§3#S§().length >= this.§?"U§)
         {
            if(!this.§>#D§)
            {
               this.§<"h§();
            }
            this.§>#D§.reset();
            this.§""P§(null);
            this.§>#D§.start();
         }
         var _loc7_:Object = new Object();
         for each(_loc8_ in param2)
         {
            _loc7_[_loc8_.key] = _loc8_.value;
         }
         if(this.§"%§)
         {
            this.§3#S§().push(new §8?§(param1,_loc7_));
         }
      }
      
      private function §&!q§(param1:Boolean = false, param2:String = "", param3:String = "") : Vector.<§ "e§>
      {
         var _loc4_:Vector.<§ "e§>;
         (_loc4_ = new Vector.<§ "e§>()).push(new § "e§("SESSION_ID",this.§'$§()));
         _loc4_.push(new § "e§("FB_CONNECT","YES"));
         _loc4_.push(new § "e§("SESSION_COUNTER",this.§`#3§()));
         return _loc4_;
      }
      
      public function §3#S§() : Vector.<§8?§>
      {
         if(this.§+j§ == null)
         {
            this.§+j§ = new Vector.<§8?§>();
         }
         return this.§+j§;
      }
      
      private function §!I§(param1:String, param2:String) : § "e§
      {
         return new § "e§(param1,param2);
      }
      
      public function §!#B§() : String
      {
         return §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken;
      }
      
      protected function §!"F§(param1:IOErrorEvent) : void
      {
      }
      
      private function §'"!§() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function §[#y§(param1:Date) : String
      {
         var _loc2_:DateTimeFormatter = new DateTimeFormatter("en-US");
         _loc2_.setDateTimePattern("yyyy-MM-dd\'T\'HH:mm:ss");
         var _loc4_:String;
         var _loc5_:Array = (_loc4_ = this.§0$@§(param1.timezoneOffset / 60,2)).split(".");
         var _loc6_:String = _loc4_;
         var _loc7_:String = "00";
         if(_loc5_.length > 1)
         {
            _loc6_ = this.§0$@§(_loc5_[0],2);
            _loc7_ = (parseFloat("0." + _loc5_[1].toString()) * 60).toString();
         }
         return _loc2_.format(param1) + StringUtil.substitute(".{0}{1}:{2}",param1.milliseconds.toString().slice(0,2),_loc6_,_loc7_);
      }
      
      private function §0$@§(param1:Number, param2:int) : String
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
            this.§^"§ = (param1.c.analytics.ti as Number) * 1000;
            this.§?"U§ = param1.c.analytics.qs as Number;
            this.§"%§ = true;
            this.§<"h§();
         }
         else
         {
            this.§"%§ = false;
         }
      }
      
      public function §'$§() : String
      {
         if(!this.§8G§ || this.§8G§ == "")
         {
            this.§8G§ = this.§<V§();
         }
         return this.§8G§;
      }
      
      private function §<V§() : String
      {
         this.§1"D§ = new Date().time;
         return this.§1"D§.toString();
      }
      
      protected function §<!F§() : void
      {
         this.§##f§ = new §'!n§();
         this.§##f§.addEventListener(Event.COMPLETE,this.§&1§);
         this.§##f§.addEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§##f§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
         this.§##f§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§##f§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §9Q§ + this.§8G§ + "?=" + this.§>f§));
      }
      
      protected function §#O§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §&1§(param1:Event) : void
      {
         this.§##f§.removeEventListener(Event.COMPLETE,this.§&1§);
         this.§##f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#O§);
         this.§##f§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#O§);
         this.§##f§ = null;
      }
      
      public function set analyticsUrl(param1:String) : void
      {
         if(param1)
         {
            this.§7!p§ = param1;
         }
      }
      
      public function §9!c§(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Vector.<§ "e§>;
         (_loc7_ = new Vector.<§ "e§>()).push(new § "e§("LEVEL",param1));
         _loc7_.push(new § "e§("SLINGSHOT",param2));
         _loc7_.push(new § "e§("KINGSLING_ACTIVE",param3));
         _loc7_.push(new § "e§("SLINGSCOPE_ACTIVE",param4));
         _loc7_.push(new § "e§("SUPERSEED_ACTIVE",param5));
         _loc7_.push(new § "e§("WINGMAN_ACTIVE",param6));
         _loc7_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§0#&§,_loc7_);
      }
      
      public function §"c§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("CONTENT_TYPE",param1));
         _loc2_.push(new § "e§("ROVIO_ANALYTICS",true));
         this.§ #=§(§2"5§,_loc2_);
      }
      
      public function §,"?§(param1:int, param2:String) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("COUNT",param1));
         _loc3_.push(new § "e§("ORIGIN",param2));
         this.§ #=§(§]$'§,_loc3_);
      }
      
      public function §##<§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("ORIGIN",param1));
         this.§ #=§(§%!m§,_loc2_);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§"%§ = param1;
      }
      
      private function §6n§(param1:String) : String
      {
         if(!param1)
         {
            return "0-0";
         }
         var _loc2_:Number = param1.indexOf("-");
         var _loc3_:String = param1.substr(0,_loc2_);
         var _loc4_:String = param1.substr(_loc2_ + 1);
         if(_loc3_ == §%"#§.§4l§)
         {
            _loc3_ = "T";
            _loc4_ = (§^"C§.§?q§.levelIDs.indexOf(param1) + 1).toString();
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
      
      private function §,#0§() : String
      {
         var _loc1_:Object = null;
         if(§%"T§.§>$<§ as §'"a§)
         {
            _loc1_ = (§%"T§.§>$<§ as §'"a§).§^"J§();
            return _loc1_.screenName;
         }
         return §'"a§.§="9§[0][1];
      }
      
      private function §!#6§() : void
      {
         if(this.§>f§ >= int.MAX_VALUE)
         {
            this.§>f§ = 0;
         }
         ++this.§>f§;
      }
      
      public function §`#3§() : int
      {
         return this.§>f§;
      }
      
      public function §'O§(param1:String, param2:String) : void
      {
         var _loc3_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc3_.push(new § "e§("NOTIFICATION_NAME",param1));
         _loc3_.push(new § "e§("RESULT",param2));
         _loc3_.push(new § "e§("USER_ID",this.§0$3§));
         this.§ #=§(§3#p§,_loc3_);
      }
      
      public function §"r§(param1:String) : void
      {
         var _loc2_:Vector.<§ "e§> = new Vector.<§ "e§>();
         _loc2_.push(new § "e§("TOURNAMENT_ID",param1));
         this.§ #=§(§%"]§,_loc2_);
      }
      
      public function §9!?§(param1:String, param2:int, param3:String, param4:String = "", param5:int = 0, param6:String = "", param7:String = "", param8:Boolean = true) : void
      {
         var _loc9_:Vector.<§ "e§>;
         (_loc9_ = new Vector.<§ "e§>()).push(new § "e§("ITEM_TYPE",param1));
         _loc9_.push(new § "e§("AMOUNT",param2));
         _loc9_.push(new § "e§("USE_TYPE",param3));
         _loc9_.push(new § "e§("IAP_TYPE",param4));
         _loc9_.push(new § "e§("ITEM_AMOUNT",param5));
         _loc9_.push(new § "e§("SCREEN",param6));
         _loc9_.push(new § "e§("LEVEL",param7));
         _loc9_.push(new § "e§("ROVIO_ANALYTICS",param8));
         this.§ #=§(§2x§,_loc9_);
      }
      
      public function get §<#;§() : String
      {
         return this.§<#1§;
      }
      
      public function set §<#;§(param1:String) : void
      {
         this.§<#1§ = param1;
      }
   }
}
