package §[";§
{
   import §!!T§.§1"9§;
   import §%#v§.§0"j§;
   import §+"u§.§^"C§;
   import §3!5§.§0#r§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §8"b§.§&!b§;
   import §9&§.§+"j§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
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
      
      private static const §<&§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §!#U§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §+!D§:String = "BossFeedingSoundChannel";
      
      private static const §="M§:int = 6000;
      
      private static const §#"X§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var § #5§:§1"9§;
      
      private var §5!v§:§8!n§;
      
      private var §%§:MovieClip;
      
      private var §+#5§:TextField;
      
      private var §`!E§:TextField;
      
      private var §,w§:TextField;
      
      private var §catch§:TextField;
      
      private var §<#u§:TextField;
      
      private var mFeedOpponentButton1:§"S§;
      
      private var mFeedOpponentButton2:§"S§;
      
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
      
      private var §0"8§:Boolean;
      
      private var §>"A§:Boolean;
      
      private var §%$C§:int;
      
      private var §8!D§:int;
      
      private var §?#N§:int;
      
      private var §`#1§:Boolean;
      
      private var §2`§:int;
      
      private var §4"§:Boolean;
      
      private var §@]§:§+"j§;
      
      private var §;"N§:Boolean;
      
      private var §&![§:§'!n§;
      
      private var §0#J§:Boolean;
      
      private var §;"]§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var §%$$§:Point;
      
      private var §0$A§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §0"j§.§-i§.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§ #5§ = §1"9§.§?q§;
         this.§5!v§ = this.§ #5§.§[!8§() as §8!n§;
         §[#%§.§8!3§(§+!D§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%§ = §8#Y§.mClip;
         this.§+#5§ = this.§%§.Textfield_ItemsAmount as TextField;
         this.§`!E§ = this.§%§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§,w§ = this.§%§.Textfield_PowerupAmount as TextField;
         this.§catch§ = this.§%§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§<#u§ = this.§%§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§%§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§%§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §8#Y§.getItemByName("btnFeedOpponent1") as §"S§;
         this.mFeedOpponentButton2 = §8#Y§.getItemByName("btnFeedOpponent2") as §"S§;
         this.mOpponent1 = this.§%§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§%§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§%§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§%§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§%§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§%§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§%§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§%§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§%§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§%§.AnimPumpkinOpponent2 as MovieClip;
         this.§>!o§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§+#5§.text = "";
         this.§catch§.text = "";
         this.§<#u§.text = "";
         this.§%§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.§%§);
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.mFeedOpponentButton1.mClip);
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.mFeedOpponentButton2.mClip);
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.mAnimationFeedOpponent1);
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.mAnimationFeedOpponent2);
         this.§3!%§(false);
         this.§ #5§.addEventListener(§1"9§.§2#!§,this.§@Z§);
         this.§0#J§ = false;
         this.§;"]§ = §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(§8!n§.§6'§);
         this.§8!D§ = 0;
         this.§?#N§ = 0;
         this.§2`§ = 0;
         this.§%$C§ = 0;
         this.§4"§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§%6§();
         this.§do§(this.mOtherPlayersNameAnimationTimer1,this.§%§.AnimatedNamesSpawningArea1);
         this.§do§(this.mOtherPlayersNameAnimationTimer2,this.§%§.AnimatedNamesSpawningArea2);
      }
      
      private function §%6§() : void
      {
         if(!this.§5!v§)
         {
            return;
         }
         if(this.§%$C§ > 0)
         {
            this.§+#5§.text = this.§%$C§ + "";
         }
         else
         {
            this.§+#5§.text = §#$D§.§?q§.§7!N§(§8!n§.§6'§) + "";
         }
         this.§`!E§.text = this.§5!v§.§5!k§ - this.§5!v§.§'"J§ + "";
         if(this.§8!D§ == 0)
         {
            this.§,w§.text = §#$D§.§?q§.§7!N§("ExchangedItem") + "";
         }
         else
         {
            this.§?#N§ = §#$D§.§?q§.§7!N§("ExchangedItem") - this.§8!D§;
            this.§,w§.text = this.§8!D§ + "";
            this.§8!D§ = 0;
         }
         if(!this.§;"]§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§5!v§.§;!N§() == 1;
            this.mWinningOpponent2.visible = this.§5!v§.§;!N§() == 2;
         }
         this.§-!M§(this.§@u§());
      }
      
      private function §@Z§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;"N§ || this.§0#J§)
         {
            return;
         }
         if(this.§>"A§)
         {
            this.§>!o§(0,0);
         }
         else if(!this.§0"8§ && !this.§`#1§)
         {
            if(this.§?#N§ > 0)
            {
               this.§2" §();
            }
         }
         var _loc2_:Number = this.§ #5§.§;"m§();
         this.§catch§.text = §&!b§.§0#$§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§5!v§.§=#&§();
            if(_loc3_ > 0)
            {
               this.§<#u§.text = §&!b§.§0#$§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§%§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§7# §();
            }
         }
         else if(!this.§%§.Textfield_EndEvent.visible)
         {
            this.§%§.Textfield_EndEvent.visible = true;
            this.§%§.EventTimer.visible = false;
            this.§%§.MoreCandies.visible = false;
            this.§%§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         if(this.§&![§ || this.§0#J§ || this.§0"8§ || this.§`#1§)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§+#§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§+#§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§ #5§.removeEventListener(§1"9§.§2#!§,this.§@Z§);
         if(this.§@]§)
         {
            this.§@]§.removeEventListener(§0#r§.§,V§,this.§'$B§);
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
      
      private function §7# §() : void
      {
         this.§3!%§(true);
         this.§@]§ = new §+"j§();
         this.§@]§.addEventListener(§0#r§.§,V§,this.§'$B§);
         this.§@]§.§`#;§();
      }
      
      private function §3!%§(param1:Boolean) : void
      {
         this.§%§.LoadingImage.visible = param1;
         this.§;"N§ = param1;
         if(param1)
         {
            this.§-!M§(false);
         }
      }
      
      private function §'$B§(param1:§0#r§) : void
      {
         this.§%6§();
         this.§3!%§(false);
         this.§@]§.removeEventListener(§0#r§.§,V§,this.§'$B§);
      }
      
      private function §+#§(param1:int) : void
      {
         this.§0#J§ = true;
         this.§-!M§(false);
         this.§&![§ = new §'!n§();
         this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&![§.addEventListener(Event.COMPLETE,this.§>g§);
         this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!e§);
         this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!e§);
         this.§&![§.addEventListener(§"!;§.§ #x§,this.§[!e§);
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = §#$D§.§?q§.§7!N§(§8!n§.§6'§);
         if(param1 == 1)
         {
            this.§>!o§(_loc3_,0);
         }
         else
         {
            this.§>!o§(0,_loc3_);
         }
         this.§&![§.load(_loc2_);
      }
      
      private function §[#"§() : void
      {
         if(this.§&![§)
         {
            this.§&![§.removeEventListener(Event.COMPLETE,this.§>g§);
            this.§&![§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!e§);
            this.§&![§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[!e§);
            this.§&![§.removeEventListener(§"!;§.§ #x§,this.§[!e§);
            this.§&![§ = null;
         }
         this.§0#J§ = false;
         this.§-!M§(this.§@u§());
      }
      
      private function §[!e§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         this.§[#"§();
         this.§-!M§(false);
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.ERROR,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §>g§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         §#$D§.§?q§.§["a§(_loc2_);
         this.§[#"§();
         this.§%6§();
      }
      
      private function §-!M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §@u§() : Boolean
      {
         return §#$D§.§?q§.§7!N§(§8!n§.§6'§) > 0 && this.§ #5§.§;"m§() > 0;
      }
      
      private function §>!o§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§0"8§ = false;
         this.§>"A§ = false;
         if(!this.§`#1§)
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
            this.§2`§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§%$C§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§%$C§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§%$C§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §2`§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §2"O§.§`>§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §>"A§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §%§.removeEventListener(MouseEvent.CLICK,§ "<§);
                     }
                  });
                  §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§%$C§;
                  if(§4"§)
                  {
                     §>"A§ = true;
                     §%$C§ = 0;
                     §8!D§ = 0;
                     tmr.stop();
                  }
                  §+#5§.text = §%$C§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§%$C§;
                  if(§4"§)
                  {
                     §>"A§ = true;
                     §%$C§ = 0;
                     §8!D§ = 0;
                  }
                  §+#5§.text = §%$C§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §>"A§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§%$C§;
                  §+#5§.text = §%$C§ + "";
                  §%§.removeEventListener(MouseEvent.CLICK,§ "<§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§0"8§ = true;
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
            this.§8!D§ = §#$D§.§?q§.§7!N§("ExchangedItem");
            this.§%§.addEventListener(MouseEvent.CLICK,this.§ "<§);
            soundPlayingTime = this.§%$C§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            §[#%§.playSound("boss_feeding",§+!D§,soundPlayingLoops);
         }
      }
      
      private function §2" §() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         §[#%§.§3$A§(§+!D§);
         if(this.§2`§ == 0)
         {
            return;
         }
         if(this.§4"§)
         {
            this.§2`§ = 0;
            this.§?#N§ = 0;
            this.§8!D§ = 0;
            this.§,w§.text = §#$D§.§?q§.§7!N§("ExchangedItem") + "";
            return;
         }
         this.§%§.addEventListener(MouseEvent.CLICK,this.§ "<§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§`#1§ = true;
         opponent = this.§2`§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§2`§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§2`§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§?#N§;
               if(§?#N§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §2`§ = 0;
                  §%§.removeEventListener(MouseEvent.CLICK,§ "<§);
               }
               if(§4"§)
               {
                  §2`§ = 0;
                  §?#N§ = 0;
               }
               §,w§.text = §#$D§.§?q§.§7!N§("ExchangedItem") - §?#N§ + "";
               §`#1§ = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§4"§)
            {
               §2`§ = 0;
               §?#N§ = 0;
               §`#1§ = false;
            }
         });
         burbOpponentAnim.play();
         §[#%§.playSound(§!#U§[int(Math.random() * §!#U§.length)],§[#%§.§-"I§);
      }
      
      private function § "<§(param1:MouseEvent) : void
      {
         this.§4"§ = true;
      }
      
      private function §%^§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§0$A§)
         {
            this.§0$A§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §#"X§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§0$A§.length < §#"X§.length)
            {
               _loc2_ = this.§0$A§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§0$A§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §#"X§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§0$A§ = null;
               _loc2_ = true;
            }
         }
         return §#"X§[_loc1_];
      }
      
      private function §do§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §="M§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§ #5§.§;"m§() > 0)
            {
               cls = §2"O§.§`>§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §%^§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§%$$§)
               {
                  §%$$§ = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * §%$$§.x;
               nameAnim.y = Math.random() * §%$$§.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §="M§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
