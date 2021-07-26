package §`!Z§
{
   import § "L§.§1"r§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §'"b§.§ #F§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §-$'§.§4$A§;
   import §1#`§.§&#m§;
   import §3"V§.§ b§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
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
      
      private static const §`"q§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §#"#§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §2$<§:String = "BossFeedingSoundChannel";
      
      private static const §7"K§:int = 6000;
      
      private static const §!r§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var §]"t§:§ #F§;
      
      private var §-W§:§=!7§;
      
      private var §8#M§:MovieClip;
      
      private var §,"8§:TextField;
      
      private var §>"2§:TextField;
      
      private var §@!i§:TextField;
      
      private var §9"A§:TextField;
      
      private var §#"5§:TextField;
      
      private var mFeedOpponentButton1:§1"r§;
      
      private var mFeedOpponentButton2:§1"r§;
      
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
      
      private var §]l§:Boolean;
      
      private var §8#8§:Boolean;
      
      private var §#!`§:int;
      
      private var §^"D§:int;
      
      private var §2"]§:int;
      
      private var §7# §:Boolean;
      
      private var §,O§:int;
      
      private var §]!e§:Boolean;
      
      private var §%!s§:§4$A§;
      
      private var §&#a§:Boolean;
      
      private var §@$2§:§-$C§;
      
      private var §7#C§:Boolean;
      
      private var §3#w§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var §7"V§:Point;
      
      private var §3!;§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §false§.§4#;§.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§]"t§ = § #F§.§+!,§;
         this.§-W§ = this.§]"t§.§4#P§() as §=!7§;
         § b§.§%#C§(§2$<§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8#M§ = §;#'§.mClip;
         this.§,"8§ = this.§8#M§.Textfield_ItemsAmount as TextField;
         this.§>"2§ = this.§8#M§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§@!i§ = this.§8#M§.Textfield_PowerupAmount as TextField;
         this.§9"A§ = this.§8#M§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§#"5§ = this.§8#M§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§8#M§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§8#M§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §;#'§.getItemByName("btnFeedOpponent1") as §1"r§;
         this.mFeedOpponentButton2 = §;#'§.getItemByName("btnFeedOpponent2") as §1"r§;
         this.mOpponent1 = this.§8#M§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§8#M§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§8#M§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§8#M§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§8#M§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§8#M§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§8#M§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§8#M§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§8#M§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§8#M§.AnimPumpkinOpponent2 as MovieClip;
         this.§[#W§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§,"8§.text = "";
         this.§9"A§.text = "";
         this.§#"5§.text = "";
         this.§8#M§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.§8#M§);
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.mFeedOpponentButton1.mClip);
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.mFeedOpponentButton2.mClip);
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.mAnimationFeedOpponent1);
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.mAnimationFeedOpponent2);
         this.§7%§(false);
         this.§]"t§.addEventListener(§ #F§.§3i§,this.§7!3§);
         this.§7#C§ = false;
         this.§3#w§ = §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(§=!7§.§""H§);
         this.§^"D§ = 0;
         this.§2"]§ = 0;
         this.§,O§ = 0;
         this.§#!`§ = 0;
         this.§]!e§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§8#y§();
         this.§2#p§(this.mOtherPlayersNameAnimationTimer1,this.§8#M§.AnimatedNamesSpawningArea1);
         this.§2#p§(this.mOtherPlayersNameAnimationTimer2,this.§8#M§.AnimatedNamesSpawningArea2);
      }
      
      private function §8#y§() : void
      {
         if(!this.§-W§)
         {
            return;
         }
         if(this.§#!`§ > 0)
         {
            this.§,"8§.text = this.§#!`§ + "";
         }
         else
         {
            this.§,"8§.text = §]#0§.§+!,§.§!#r§(§=!7§.§""H§) + "";
         }
         this.§>"2§.text = this.§-W§.§;!n§ - this.§-W§.§0!x§ + "";
         if(this.§^"D§ == 0)
         {
            this.§@!i§.text = §]#0§.§+!,§.§!#r§("ExchangedItem") + "";
         }
         else
         {
            this.§2"]§ = §]#0§.§+!,§.§!#r§("ExchangedItem") - this.§^"D§;
            this.§@!i§.text = this.§^"D§ + "";
            this.§^"D§ = 0;
         }
         if(!this.§3#w§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§-W§.§?#6§() == 1;
            this.mWinningOpponent2.visible = this.§-W§.§?#6§() == 2;
         }
         this.§-$8§(this.§=#Z§());
      }
      
      private function §7!3§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&#a§ || this.§7#C§)
         {
            return;
         }
         if(this.§8#8§)
         {
            this.§[#W§(0,0);
         }
         else if(!this.§]l§ && !this.§7# §)
         {
            if(this.§2"]§ > 0)
            {
               this.§%";§();
            }
         }
         var _loc2_:Number = this.§]"t§.§'7§();
         this.§9"A§.text = §7"U§.§&#M§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§-W§.§%"J§();
            if(_loc3_ > 0)
            {
               this.§#"5§.text = §7"U§.§&#M§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§8#M§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§["S§();
            }
         }
         else if(!this.§8#M§.Textfield_EndEvent.visible)
         {
            this.§8#M§.Textfield_EndEvent.visible = true;
            this.§8#M§.EventTimer.visible = false;
            this.§8#M§.MoreCandies.visible = false;
            this.§8#M§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         if(this.§@$2§ || this.§7#C§ || this.§]l§ || this.§7# §)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§-$1§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§-$1§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§]"t§.removeEventListener(§ #F§.§3i§,this.§7!3§);
         if(this.§%!s§)
         {
            this.§%!s§.removeEventListener(§&#m§.§^#V§,this.§80§);
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
      
      private function §["S§() : void
      {
         this.§7%§(true);
         this.§%!s§ = new §4$A§();
         this.§%!s§.addEventListener(§&#m§.§^#V§,this.§80§);
         this.§%!s§.final();
      }
      
      private function §7%§(param1:Boolean) : void
      {
         this.§8#M§.LoadingImage.visible = param1;
         this.§&#a§ = param1;
         if(param1)
         {
            this.§-$8§(false);
         }
      }
      
      private function §80§(param1:§&#m§) : void
      {
         this.§8#y§();
         this.§7%§(false);
         this.§%!s§.removeEventListener(§&#m§.§^#V§,this.§80§);
      }
      
      private function §-$1§(param1:int) : void
      {
         this.§7#C§ = true;
         this.§-$8§(false);
         this.§@$2§ = new §-$C§();
         this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§@$2§.addEventListener(Event.COMPLETE,this.§>K§);
         this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§%!v§);
         this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!v§);
         this.§@$2§.addEventListener(§+!p§.§2$9§,this.§%!v§);
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = §]#0§.§+!,§.§!#r§(§=!7§.§""H§);
         if(param1 == 1)
         {
            this.§[#W§(_loc3_,0);
         }
         else
         {
            this.§[#W§(0,_loc3_);
         }
         this.§@$2§.load(_loc2_);
      }
      
      private function §!"0§() : void
      {
         if(this.§@$2§)
         {
            this.§@$2§.removeEventListener(Event.COMPLETE,this.§>K§);
            this.§@$2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%!v§);
            this.§@$2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%!v§);
            this.§@$2§.removeEventListener(§+!p§.§2$9§,this.§%!v§);
            this.§@$2§ = null;
         }
         this.§7#C§ = false;
         this.§-$8§(this.§=#Z§());
      }
      
      private function §%!v§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         this.§!"0§();
         this.§-$8§(false);
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.ERROR,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §>K§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         §]#0§.§+!,§.§&$@§(_loc2_);
         this.§!"0§();
         this.§8#y§();
      }
      
      private function §-$8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §=#Z§() : Boolean
      {
         return §]#0§.§+!,§.§!#r§(§=!7§.§""H§) > 0 && this.§]"t§.§'7§() > 0;
      }
      
      private function §[#W§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§]l§ = false;
         this.§8#8§ = false;
         if(!this.§7# §)
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
            this.§,O§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§#!`§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§#!`§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§#!`§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §,O§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §[a§.§8#k§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §8#8§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §8#M§.removeEventListener(MouseEvent.CLICK,§ !7§);
                     }
                  });
                  §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§#!`§;
                  if(§]!e§)
                  {
                     §8#8§ = true;
                     §#!`§ = 0;
                     §^"D§ = 0;
                     tmr.stop();
                  }
                  §,"8§.text = §#!`§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§#!`§;
                  if(§]!e§)
                  {
                     §8#8§ = true;
                     §#!`§ = 0;
                     §^"D§ = 0;
                  }
                  §,"8§.text = §#!`§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §8#8§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§#!`§;
                  §,"8§.text = §#!`§ + "";
                  §8#M§.removeEventListener(MouseEvent.CLICK,§ !7§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§]l§ = true;
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
            this.§^"D§ = §]#0§.§+!,§.§!#r§("ExchangedItem");
            this.§8#M§.addEventListener(MouseEvent.CLICK,this.§ !7§);
            soundPlayingTime = this.§#!`§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            § b§.playSound("boss_feeding",§2$<§,soundPlayingLoops);
         }
      }
      
      private function §%";§() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         § b§.§8!7§(§2$<§);
         if(this.§,O§ == 0)
         {
            return;
         }
         if(this.§]!e§)
         {
            this.§,O§ = 0;
            this.§2"]§ = 0;
            this.§^"D§ = 0;
            this.§@!i§.text = §]#0§.§+!,§.§!#r§("ExchangedItem") + "";
            return;
         }
         this.§8#M§.addEventListener(MouseEvent.CLICK,this.§ !7§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§7# § = true;
         opponent = this.§,O§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§,O§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§,O§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§2"]§;
               if(§2"]§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §,O§ = 0;
                  §8#M§.removeEventListener(MouseEvent.CLICK,§ !7§);
               }
               if(§]!e§)
               {
                  §,O§ = 0;
                  §2"]§ = 0;
               }
               §@!i§.text = §]#0§.§+!,§.§!#r§("ExchangedItem") - §2"]§ + "";
               §7# § = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§]!e§)
            {
               §,O§ = 0;
               §2"]§ = 0;
               §7# § = false;
            }
         });
         burbOpponentAnim.play();
         § b§.playSound(§#"#§[int(Math.random() * §#"#§.length)],§ b§.§;$5§);
      }
      
      private function § !7§(param1:MouseEvent) : void
      {
         this.§]!e§ = true;
      }
      
      private function §%#;§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§3!;§)
         {
            this.§3!;§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §!r§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§3!;§.length < §!r§.length)
            {
               _loc2_ = this.§3!;§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§3!;§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §!r§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§3!;§ = null;
               _loc2_ = true;
            }
         }
         return §!r§[_loc1_];
      }
      
      private function §2#p§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §7"K§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§]"t§.§'7§() > 0)
            {
               cls = §[a§.§8#k§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §%#;§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§7"V§)
               {
                  §7"V§ = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * §7"V§.x;
               nameAnim.y = Math.random() * §7"V§.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §7"K§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
