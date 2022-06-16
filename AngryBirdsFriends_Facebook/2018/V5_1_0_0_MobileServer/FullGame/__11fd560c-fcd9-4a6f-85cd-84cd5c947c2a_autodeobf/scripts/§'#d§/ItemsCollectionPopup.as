package §'#d§
{
   import § %§.§1Q§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §4#a§.§9A§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §<h§.§>"0§;
   import §="h§.§`"O§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §[#[§.§=#Q§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class ItemsCollectionPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionPopup";
      
      private static const §8!8§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §##m§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §`"a§:String = "BossFeedingSoundChannel";
      
      private static const §+$7§:int = 6000;
      
      private static const §4#^§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var §-#$§:§`"O§;
      
      private var §#$B§:§5!Z§;
      
      private var §0!Q§:MovieClip;
      
      private var §^#c§:TextField;
      
      private var §]!]§:TextField;
      
      private var §##5§:TextField;
      
      private var §+>§:TextField;
      
      private var §>"Z§:TextField;
      
      private var mFeedOpponentButton1:§>"0§;
      
      private var mFeedOpponentButton2:§>"0§;
      
      private var mWinningOpponent1:MovieClip;
      
      private var mWinningOpponent2:MovieClip;
      
      private var mOpponent1:MovieClip;
      
      private var mOpponent2:MovieClip;
      
      private var mAnimationFeedOpponent1:MovieClip;
      
      private var mAnimationFeedOpponent2:MovieClip;
      
      private var mAnimationMunchOpponent1:MovieClip;
      
      private var mAnimationMunchOpponent2:MovieClip;
      
      private var mAnimationBurbOpponent1:MovieClip;
      
      private var mAnimationBurbOpponent2:MovieClip;
      
      private var mAnimationPumpkinOpponent1:MovieClip;
      
      private var mAnimationPumpkinOpponent2:MovieClip;
      
      private var §`"<§:Boolean;
      
      private var §#"w§:Boolean;
      
      private var §,$6§:int;
      
      private var §&"7§:int;
      
      private var §;u§:int;
      
      private var §##w§:Boolean;
      
      private var §9"0§:int;
      
      private var §]I§:Boolean;
      
      private var §!"k§:§9A§;
      
      private var §"6§:Boolean;
      
      private var §>v§:§1"V§;
      
      private var §9#2§:Boolean;
      
      private var §]#7§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var § $#§:Point;
      
      private var §,!V§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §1Q§.§5T§.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§-#$§ = §`"O§.§6!§;
         this.§#$B§ = this.§-#$§.§!!I§() as §5!Z§;
         §!"p§.§5#4§(§`"a§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!Q§ = §,#2§.mClip;
         this.§^#c§ = this.§0!Q§.Textfield_ItemsAmount as TextField;
         this.§]!]§ = this.§0!Q§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§##5§ = this.§0!Q§.Textfield_PowerupAmount as TextField;
         this.§+>§ = this.§0!Q§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§>"Z§ = this.§0!Q§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§0!Q§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§0!Q§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §,#2§.getItemByName("btnFeedOpponent1") as §>"0§;
         this.mFeedOpponentButton2 = §,#2§.getItemByName("btnFeedOpponent2") as §>"0§;
         this.mOpponent1 = this.§0!Q§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§0!Q§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§0!Q§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§0!Q§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§0!Q§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§0!Q§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§0!Q§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§0!Q§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§0!Q§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§0!Q§.AnimPumpkinOpponent2 as MovieClip;
         this.§9r§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§^#c§.text = "";
         this.§+>§.text = "";
         this.§>"Z§.text = "";
         this.§0!Q§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.§0!Q§);
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.mFeedOpponentButton1.mClip);
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.mFeedOpponentButton2.mClip);
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.mAnimationFeedOpponent1);
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.mAnimationFeedOpponent2);
         this.§6"1§(false);
         this.§-#$§.addEventListener(§`"O§.§9"v§,this.§<2§);
         this.§9#2§ = false;
         this.§]#7§ = §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(§5!Z§.§!"O§);
         this.§&"7§ = 0;
         this.§;u§ = 0;
         this.§9"0§ = 0;
         this.§,$6§ = 0;
         this.§]I§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§>#<§();
         this.§=!K§(this.mOtherPlayersNameAnimationTimer1,this.§0!Q§.AnimatedNamesSpawningArea1);
         this.§=!K§(this.mOtherPlayersNameAnimationTimer2,this.§0!Q§.AnimatedNamesSpawningArea2);
      }
      
      private function §>#<§() : void
      {
         if(!this.§#$B§)
         {
            return;
         }
         if(this.§,$6§ > 0)
         {
            this.§^#c§.text = this.§,$6§ + "";
         }
         else
         {
            this.§^#c§.text = §-#+§.§6!§.§8#%§(§5!Z§.§!"O§) + "";
         }
         this.§]!]§.text = this.§#$B§.§#$"§ - this.§#$B§.§6"L§ + "";
         if(this.§&"7§ == 0)
         {
            this.§##5§.text = §-#+§.§6!§.§8#%§("ExchangedItem") + "";
         }
         else
         {
            this.§;u§ = §-#+§.§6!§.§8#%§("ExchangedItem") - this.§&"7§;
            this.§##5§.text = this.§&"7§ + "";
            this.§&"7§ = 0;
         }
         if(!this.§]#7§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§#$B§.§>#j§() == 1;
            this.mWinningOpponent2.visible = this.§#$B§.§>#j§() == 2;
         }
         this.§use §(this.§#n§());
      }
      
      private function §<2§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"6§ || this.§9#2§)
         {
            return;
         }
         if(this.§#"w§)
         {
            this.§9r§(0,0);
         }
         else if(!this.§`"<§ && !this.§##w§)
         {
            if(this.§;u§ > 0)
            {
               this.§%W§();
            }
         }
         var _loc2_:Number = this.§-#$§.§[!n§();
         this.§+>§.text = §=#Q§.§5"H§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§#$B§.§'$=§();
            if(_loc3_ > 0)
            {
               this.§>"Z§.text = §=#Q§.§5"H§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§0!Q§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§&F§();
            }
         }
         else if(!this.§0!Q§.Textfield_EndEvent.visible)
         {
            this.§0!Q§.Textfield_EndEvent.visible = true;
            this.§0!Q§.EventTimer.visible = false;
            this.§0!Q§.MoreCandies.visible = false;
            this.§0!Q§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         if(this.§>v§ || this.§9#2§ || this.§`"<§ || this.§##w§)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§0"X§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§0"X§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§-#$§.removeEventListener(§`"O§.§9"v§,this.§<2§);
         if(this.§!"k§)
         {
            this.§!"k§.removeEventListener(§1#e§.§=;§,this.§5$#§);
         }
         if(this.mOtherPlayersNameAnimationTimer1)
         {
            this.mOtherPlayersNameAnimationTimer1.stop();
            this.mOtherPlayersNameAnimationTimer1 = null;
         }
         if(this.mOtherPlayersNameAnimationTimer2)
         {
            this.mOtherPlayersNameAnimationTimer2.stop();
            this.mOtherPlayersNameAnimationTimer2 = null;
         }
         super.dispose();
      }
      
      private function §&F§() : void
      {
         this.§6"1§(true);
         this.§!"k§ = new §9A§();
         this.§!"k§.addEventListener(§1#e§.§=;§,this.§5$#§);
         this.§!"k§.§8>§();
      }
      
      private function §6"1§(param1:Boolean) : void
      {
         this.§0!Q§.LoadingImage.visible = param1;
         this.§"6§ = param1;
         if(param1)
         {
            this.§use §(false);
         }
      }
      
      private function §5$#§(param1:§1#e§) : void
      {
         this.§>#<§();
         this.§6"1§(false);
         this.§!"k§.removeEventListener(§1#e§.§=;§,this.§5$#§);
      }
      
      private function §0"X§(param1:int) : void
      {
         this.§9#2§ = true;
         this.§use §(false);
         this.§>v§ = new §1"V§();
         this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§>v§.addEventListener(Event.COMPLETE,this.§+!m§);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§@"o§);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@"o§);
         this.§>v§.addEventListener(§;m§.§!$5§,this.§@"o§);
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = §-#+§.§6!§.§8#%§(§5!Z§.§!"O§);
         if(param1 == 1)
         {
            this.§9r§(_loc3_,0);
         }
         else
         {
            this.§9r§(0,_loc3_);
         }
         this.§>v§.load(_loc2_);
      }
      
      private function §-!2§() : void
      {
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§+!m§);
            this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@"o§);
            this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@"o§);
            this.§>v§.removeEventListener(§;m§.§!$5§,this.§@"o§);
            this.§>v§ = null;
         }
         this.§9#2§ = false;
         this.§use §(this.§#n§());
      }
      
      private function §@"o§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         this.§-!2§();
         this.§use §(false);
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.ERROR,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §+!m§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         §-#+§.§6!§.§,"0§(_loc2_);
         this.§-!2§();
         this.§>#<§();
      }
      
      private function §use §(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §#n§() : Boolean
      {
         return §-#+§.§6!§.§8#%§(§5!Z§.§!"O§) > 0 && this.§-#$§.§[!n§() > 0;
      }
      
      private function §9r§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§`"<§ = false;
         this.§#"w§ = false;
         if(!this.§##w§)
         {
            this.mOpponent1.visible = true;
            this.mOpponent2.visible = true;
         }
         this.mAnimationFeedOpponent1.gotoAndStop(1);
         this.mAnimationMunchOpponent1.stop();
         this.mAnimationMunchOpponent1.visible = false;
         this.mAnimationFeedOpponent2.gotoAndStop(1);
         this.mAnimationMunchOpponent2.stop();
         this.mAnimationMunchOpponent2.visible = false;
         if(feedOpponent1Amount > 0 || feedOpponent2Amount > 0)
         {
            this.§9"0§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§,$6§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§,$6§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§,$6§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §9"0§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §!"f§.§##?§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §#"w§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §0!Q§.removeEventListener(MouseEvent.CLICK,§-Y§);
                     }
                  });
                  §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§,$6§;
                  if(§]I§)
                  {
                     §#"w§ = true;
                     §,$6§ = 0;
                     §&"7§ = 0;
                     tmr.stop();
                  }
                  §^#c§.text = §,$6§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§,$6§;
                  if(§]I§)
                  {
                     §#"w§ = true;
                     §,$6§ = 0;
                     §&"7§ = 0;
                  }
                  §^#c§.text = §,$6§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §#"w§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§,$6§;
                  §^#c§.text = §,$6§ + "";
                  §0!Q§.removeEventListener(MouseEvent.CLICK,§-Y§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§`"<§ = true;
            if(feedOpponent1Amount > 0)
            {
               this.mOpponent1.visible = false;
               this.mAnimationMunchOpponent1.visible = true;
               this.mAnimationMunchOpponent1.play();
            }
            else
            {
               this.mOpponent2.visible = false;
               this.mAnimationMunchOpponent2.visible = true;
               this.mAnimationMunchOpponent2.play();
            }
            this.§&"7§ = §-#+§.§6!§.§8#%§("ExchangedItem");
            this.§0!Q§.addEventListener(MouseEvent.CLICK,this.§-Y§);
            soundPlayingTime = this.§,$6§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            §!"p§.playSound("boss_feeding",§`"a§,soundPlayingLoops);
         }
      }
      
      private function §%W§() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         §!"p§.§5#u§(§`"a§);
         if(this.§9"0§ == 0)
         {
            return;
         }
         if(this.§]I§)
         {
            this.§9"0§ = 0;
            this.§;u§ = 0;
            this.§&"7§ = 0;
            this.§##5§.text = §-#+§.§6!§.§8#%§("ExchangedItem") + "";
            return;
         }
         this.§0!Q§.addEventListener(MouseEvent.CLICK,this.§-Y§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§##w§ = true;
         opponent = this.§9"0§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§9"0§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§9"0§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§;u§;
               if(§;u§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §9"0§ = 0;
                  §0!Q§.removeEventListener(MouseEvent.CLICK,§-Y§);
               }
               if(§]I§)
               {
                  §9"0§ = 0;
                  §;u§ = 0;
               }
               §##5§.text = §-#+§.§6!§.§8#%§("ExchangedItem") - §;u§ + "";
               §##w§ = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§]I§)
            {
               §9"0§ = 0;
               §;u§ = 0;
               §##w§ = false;
            }
         });
         burbOpponentAnim.play();
         §!"p§.playSound(§##m§[int(Math.random() * §##m§.length)],§!"p§.§+!;§);
      }
      
      private function §-Y§(param1:MouseEvent) : void
      {
         this.§]I§ = true;
      }
      
      private function §`3§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§,!V§)
         {
            this.§,!V§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §4#^§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§,!V§.length < §4#^§.length)
            {
               _loc2_ = this.§,!V§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§,!V§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §4#^§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§,!V§ = null;
               _loc2_ = true;
            }
         }
         return §4#^§[_loc1_];
      }
      
      private function §=!K§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §+$7§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§-#$§.§[!n§() > 0)
            {
               cls = §!"f§.§##?§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §`3§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§ $#§)
               {
                  § $#§ = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * § $#§.x;
               nameAnim.y = Math.random() * § $#§.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §+$7§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
