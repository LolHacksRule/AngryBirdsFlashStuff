package §&n§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §#,§.§ !>§;
   import §%!-§.§?l§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §2J§.§]#@§;
   import §7"G§.§8$?§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
   import com.rovio.assets.§6$A§;
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
      
      private static const §@$%§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §="U§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §,#L§:String = "BossFeedingSoundChannel";
      
      private static const §@>§:int = 6000;
      
      private static const §^!M§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var §]"§:§7"L§;
      
      private var §8!k§:§]"%§;
      
      private var §&r§:MovieClip;
      
      private var §!!e§:TextField;
      
      private var §1!`§:TextField;
      
      private var §7"9§:TextField;
      
      private var §+#O§:TextField;
      
      private var §^!$§:TextField;
      
      private var mFeedOpponentButton1:§ !>§;
      
      private var mFeedOpponentButton2:§ !>§;
      
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
      
      private var §"H§:Boolean;
      
      private var §8#'§:Boolean;
      
      private var §>§:int;
      
      private var §#!L§:int;
      
      private var §?"[§:int;
      
      private var §=#]§:Boolean;
      
      private var §4!q§:int;
      
      private var §>"O§:Boolean;
      
      private var §0K§:§8$?§;
      
      private var §7#e§:Boolean;
      
      private var §2!N§:§!!o§;
      
      private var §3"W§:Boolean;
      
      private var §#x§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var §9$A§:Point;
      
      private var §@3§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §?l§.§3m§.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§]"§ = §7"L§.§`"H§;
         this.§8!k§ = this.§]"§.§9'§() as §]"%§;
         §3Z§.§'#E§(§,#L§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&r§ = §&!M§.mClip;
         this.§!!e§ = this.§&r§.Textfield_ItemsAmount as TextField;
         this.§1!`§ = this.§&r§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§7"9§ = this.§&r§.Textfield_PowerupAmount as TextField;
         this.§+#O§ = this.§&r§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§^!$§ = this.§&r§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§&r§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§&r§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §&!M§.getItemByName("btnFeedOpponent1") as § !>§;
         this.mFeedOpponentButton2 = §&!M§.getItemByName("btnFeedOpponent2") as § !>§;
         this.mOpponent1 = this.§&r§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§&r§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§&r§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§&r§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§&r§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§&r§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§&r§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§&r§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§&r§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§&r§.AnimPumpkinOpponent2 as MovieClip;
         this.§9!W§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§!!e§.text = "";
         this.§+#O§.text = "";
         this.§^!$§.text = "";
         this.§&r§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.§&r§);
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.mFeedOpponentButton1.mClip);
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.mFeedOpponentButton2.mClip);
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.mAnimationFeedOpponent1);
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.mAnimationFeedOpponent2);
         this.§!$@§(false);
         this.§]"§.addEventListener(§7"L§.§ "D§,this.§#"#§);
         this.§3"W§ = false;
         this.§#x§ = §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(§]"%§.§1"9§);
         this.§#!L§ = 0;
         this.§?"[§ = 0;
         this.§4!q§ = 0;
         this.§>§ = 0;
         this.§>"O§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§`#[§();
         this.§6!t§(this.mOtherPlayersNameAnimationTimer1,this.§&r§.AnimatedNamesSpawningArea1);
         this.§6!t§(this.mOtherPlayersNameAnimationTimer2,this.§&r§.AnimatedNamesSpawningArea2);
      }
      
      private function §`#[§() : void
      {
         if(!this.§8!k§)
         {
            return;
         }
         if(this.§>§ > 0)
         {
            this.§!!e§.text = this.§>§ + "";
         }
         else
         {
            this.§!!e§.text = § $?§.§`"H§.§9!f§(§]"%§.§1"9§) + "";
         }
         this.§1!`§.text = this.§8!k§.§6"Y§ - this.§8!k§.§#$C§ + "";
         if(this.§#!L§ == 0)
         {
            this.§7"9§.text = § $?§.§`"H§.§9!f§("ExchangedItem") + "";
         }
         else
         {
            this.§?"[§ = § $?§.§`"H§.§9!f§("ExchangedItem") - this.§#!L§;
            this.§7"9§.text = this.§#!L§ + "";
            this.§#!L§ = 0;
         }
         if(!this.§#x§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§8!k§.§^!l§() == 1;
            this.mWinningOpponent2.visible = this.§8!k§.§^!l§() == 2;
         }
         this.§"!i§(this.§+!"§());
      }
      
      private function §#"#§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§7#e§ || this.§3"W§)
         {
            return;
         }
         if(this.§8#'§)
         {
            this.§9!W§(0,0);
         }
         else if(!this.§"H§ && !this.§=#]§)
         {
            if(this.§?"[§ > 0)
            {
               this.§5!G§();
            }
         }
         var _loc2_:Number = this.§]"§.§&$ §();
         this.§+#O§.text = §;"x§.§%#T§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§8!k§.§[#'§();
            if(_loc3_ > 0)
            {
               this.§^!$§.text = §;"x§.§%#T§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§&r§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§2"o§();
            }
         }
         else if(!this.§&r§.Textfield_EndEvent.visible)
         {
            this.§&r§.Textfield_EndEvent.visible = true;
            this.§&r§.EventTimer.visible = false;
            this.§&r§.MoreCandies.visible = false;
            this.§&r§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         if(this.§2!N§ || this.§3"W§ || this.§"H§ || this.§=#]§)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§%$;§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§%$;§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§]"§.removeEventListener(§7"L§.§ "D§,this.§#"#§);
         if(this.§0K§)
         {
            this.§0K§.removeEventListener(§]#@§.§&?§,this.§+#z§);
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
      
      private function §2"o§() : void
      {
         this.§!$@§(true);
         this.§0K§ = new §8$?§();
         this.§0K§.addEventListener(§]#@§.§&?§,this.§+#z§);
         this.§0K§.§<#>§();
      }
      
      private function §!$@§(param1:Boolean) : void
      {
         this.§&r§.LoadingImage.visible = param1;
         this.§7#e§ = param1;
         if(param1)
         {
            this.§"!i§(false);
         }
      }
      
      private function §+#z§(param1:§]#@§) : void
      {
         this.§`#[§();
         this.§!$@§(false);
         this.§0K§.removeEventListener(§]#@§.§&?§,this.§+#z§);
      }
      
      private function §%$;§(param1:int) : void
      {
         this.§3"W§ = true;
         this.§"!i§(false);
         this.§2!N§ = new §!!o§();
         this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2!N§.addEventListener(Event.COMPLETE,this.§=!S§);
         this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§<!_§);
         this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!_§);
         this.§2!N§.addEventListener(§>5§.§@!@§,this.§<!_§);
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = § $?§.§`"H§.§9!f§(§]"%§.§1"9§);
         if(param1 == 1)
         {
            this.§9!W§(_loc3_,0);
         }
         else
         {
            this.§9!W§(0,_loc3_);
         }
         this.§2!N§.load(_loc2_);
      }
      
      private function §="0§() : void
      {
         if(this.§2!N§)
         {
            this.§2!N§.removeEventListener(Event.COMPLETE,this.§=!S§);
            this.§2!N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!_§);
            this.§2!N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<!_§);
            this.§2!N§.removeEventListener(§>5§.§@!@§,this.§<!_§);
            this.§2!N§ = null;
         }
         this.§3"W§ = false;
         this.§"!i§(this.§+!"§());
      }
      
      private function §<!_§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         this.§="0§();
         this.§"!i§(false);
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.ERROR,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §=!S§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         § $?§.§`"H§.§ !t§(_loc2_);
         this.§="0§();
         this.§`#[§();
      }
      
      private function §"!i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §+!"§() : Boolean
      {
         return § $?§.§`"H§.§9!f§(§]"%§.§1"9§) > 0 && this.§]"§.§&$ §() > 0;
      }
      
      private function §9!W§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§"H§ = false;
         this.§8#'§ = false;
         if(!this.§=#]§)
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
            this.§4!q§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§>§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§>§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§>§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §4!q§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §6$A§.§1!m§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §8#'§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §&r§.removeEventListener(MouseEvent.CLICK,§,J§);
                     }
                  });
                  §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§>§;
                  if(§>"O§)
                  {
                     §8#'§ = true;
                     §>§ = 0;
                     §#!L§ = 0;
                     tmr.stop();
                  }
                  §!!e§.text = §>§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§>§;
                  if(§>"O§)
                  {
                     §8#'§ = true;
                     §>§ = 0;
                     §#!L§ = 0;
                  }
                  §!!e§.text = §>§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §8#'§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§>§;
                  §!!e§.text = §>§ + "";
                  §&r§.removeEventListener(MouseEvent.CLICK,§,J§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§"H§ = true;
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
            this.§#!L§ = § $?§.§`"H§.§9!f§("ExchangedItem");
            this.§&r§.addEventListener(MouseEvent.CLICK,this.§,J§);
            soundPlayingTime = this.§>§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            §3Z§.playSound("boss_feeding",§,#L§,soundPlayingLoops);
         }
      }
      
      private function §5!G§() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         §3Z§.§&$?§(§,#L§);
         if(this.§4!q§ == 0)
         {
            return;
         }
         if(this.§>"O§)
         {
            this.§4!q§ = 0;
            this.§?"[§ = 0;
            this.§#!L§ = 0;
            this.§7"9§.text = § $?§.§`"H§.§9!f§("ExchangedItem") + "";
            return;
         }
         this.§&r§.addEventListener(MouseEvent.CLICK,this.§,J§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§=#]§ = true;
         opponent = this.§4!q§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§4!q§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§4!q§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§?"[§;
               if(§?"[§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §4!q§ = 0;
                  §&r§.removeEventListener(MouseEvent.CLICK,§,J§);
               }
               if(§>"O§)
               {
                  §4!q§ = 0;
                  §?"[§ = 0;
               }
               §7"9§.text = § $?§.§`"H§.§9!f§("ExchangedItem") - §?"[§ + "";
               §=#]§ = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§>"O§)
            {
               §4!q§ = 0;
               §?"[§ = 0;
               §=#]§ = false;
            }
         });
         burbOpponentAnim.play();
         §3Z§.playSound(§="U§[int(Math.random() * §="U§.length)],§3Z§.§[!F§);
      }
      
      private function §,J§(param1:MouseEvent) : void
      {
         this.§>"O§ = true;
      }
      
      private function §9!Z§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§@3§)
         {
            this.§@3§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §^!M§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§@3§.length < §^!M§.length)
            {
               _loc2_ = this.§@3§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§@3§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §^!M§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§@3§ = null;
               _loc2_ = true;
            }
         }
         return §^!M§[_loc1_];
      }
      
      private function §6!t§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §@>§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§]"§.§&$ §() > 0)
            {
               cls = §6$A§.§1!m§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §9!Z§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§9$A§)
               {
                  §9$A§ = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * §9$A§.x;
               nameAnim.y = Math.random() * §9$A§.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §@>§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
