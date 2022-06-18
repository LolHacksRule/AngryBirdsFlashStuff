package §+"_§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import §!!H§.§ $4§;
   import §0"M§.§>$%§;
   import §2$;§.§;!b§;
   import §4#$§.§5"L§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §=!&§.§<$!§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §[#A§.§&n§;
   import §]M§.§=!a§;
   import com.rovio.assets.§=@§;
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
      
      private static const §-M§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §>#a§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §=#w§:String = "BossFeedingSoundChannel";
      
      private static const §4"]§:int = 6000;
      
      private static const §="W§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var §;!X§:§=!a§;
      
      private var §]" §:§>"%§;
      
      private var §3`§:MovieClip;
      
      private var §4#-§:TextField;
      
      private var §+"N§:TextField;
      
      private var §#"s§:TextField;
      
      private var §%!x§:TextField;
      
      private var §]!B§:TextField;
      
      private var mFeedOpponentButton1:§;!b§;
      
      private var mFeedOpponentButton2:§;!b§;
      
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
      
      private var §4"@§:Boolean;
      
      private var §,!K§:Boolean;
      
      private var §6#v§:int;
      
      private var §<#8§:int;
      
      private var §1!n§:int;
      
      private var §0!1§:Boolean;
      
      private var §"#z§:int;
      
      private var §6$1§:Boolean;
      
      private var §;#q§:§>$%§;
      
      private var §2m§:Boolean;
      
      private var §<#G§:§5"f§;
      
      private var §;#D§:Boolean;
      
      private var § $$§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var §?$ §:Point;
      
      private var §@"U§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §&n§.§7a§.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§;!X§ = §=!a§.§3"1§;
         this.§]" § = this.§;!X§.§>"Q§() as §>"%§;
         §4$4§.§<!A§(§=#w§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3`§ = §'o§.mClip;
         this.§4#-§ = this.§3`§.Textfield_ItemsAmount as TextField;
         this.§+"N§ = this.§3`§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§#"s§ = this.§3`§.Textfield_PowerupAmount as TextField;
         this.§%!x§ = this.§3`§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§]!B§ = this.§3`§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§3`§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§3`§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §'o§.getItemByName("btnFeedOpponent1") as §;!b§;
         this.mFeedOpponentButton2 = §'o§.getItemByName("btnFeedOpponent2") as §;!b§;
         this.mOpponent1 = this.§3`§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§3`§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§3`§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§3`§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§3`§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§3`§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§3`§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§3`§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§3`§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§3`§.AnimPumpkinOpponent2 as MovieClip;
         this.§+"M§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§4#-§.text = "";
         this.§%!x§.text = "";
         this.§]!B§.text = "";
         this.§3`§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.§3`§);
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.mFeedOpponentButton1.mClip);
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.mFeedOpponentButton2.mClip);
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.mAnimationFeedOpponent1);
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.mAnimationFeedOpponent2);
         this.§,#`§(false);
         this.§;!X§.addEventListener(§=!a§.§9!e§,this.§ "3§);
         this.§;#D§ = false;
         this.§ $$§ = §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(§>"%§.§-"v§);
         this.§<#8§ = 0;
         this.§1!n§ = 0;
         this.§"#z§ = 0;
         this.§6#v§ = 0;
         this.§6$1§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§@$§();
         this.§^B§(this.mOtherPlayersNameAnimationTimer1,this.§3`§.AnimatedNamesSpawningArea1);
         this.§^B§(this.mOtherPlayersNameAnimationTimer2,this.§3`§.AnimatedNamesSpawningArea2);
      }
      
      private function §@$§() : void
      {
         if(!this.§]" §)
         {
            return;
         }
         if(this.§6#v§ > 0)
         {
            this.§4#-§.text = this.§6#v§ + "";
         }
         else
         {
            this.§4#-§.text = §!",§.§3"1§.§@Q§(§>"%§.§-"v§) + "";
         }
         this.§+"N§.text = this.§]" §.§<"p§ - this.§]" §.§'"D§ + "";
         if(this.§<#8§ == 0)
         {
            this.§#"s§.text = §!",§.§3"1§.§@Q§("ExchangedItem") + "";
         }
         else
         {
            this.§1!n§ = §!",§.§3"1§.§@Q§("ExchangedItem") - this.§<#8§;
            this.§#"s§.text = this.§<#8§ + "";
            this.§<#8§ = 0;
         }
         if(!this.§ $$§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§]" §.§2#?§() == 1;
            this.mWinningOpponent2.visible = this.§]" §.§2#?§() == 2;
         }
         this.§`#&§(this.§9+§());
      }
      
      private function § "3§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§2m§ || this.§;#D§)
         {
            return;
         }
         if(this.§,!K§)
         {
            this.§+"M§(0,0);
         }
         else if(!this.§4"@§ && !this.§0!1§)
         {
            if(this.§1!n§ > 0)
            {
               this.§=b§();
            }
         }
         var _loc2_:Number = this.§;!X§.§"$?§();
         this.§%!x§.text = § $4§.§1"n§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§]" §.§7W§();
            if(_loc3_ > 0)
            {
               this.§]!B§.text = § $4§.§1"n§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§3`§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§ !0§();
            }
         }
         else if(!this.§3`§.Textfield_EndEvent.visible)
         {
            this.§3`§.Textfield_EndEvent.visible = true;
            this.§3`§.EventTimer.visible = false;
            this.§3`§.MoreCandies.visible = false;
            this.§3`§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         if(this.§<#G§ || this.§;#D§ || this.§4"@§ || this.§0!1§)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§-!S§.INFO,§## §.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§@"W§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§@"W§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§;!X§.removeEventListener(§=!a§.§9!e§,this.§ "3§);
         if(this.§;#q§)
         {
            this.§;#q§.removeEventListener(§<$!§.§&#>§,this.§!!A§);
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
      
      private function § !0§() : void
      {
         this.§,#`§(true);
         this.§;#q§ = new §>$%§();
         this.§;#q§.addEventListener(§<$!§.§&#>§,this.§!!A§);
         this.§;#q§.§"$$§();
      }
      
      private function §,#`§(param1:Boolean) : void
      {
         this.§3`§.LoadingImage.visible = param1;
         this.§2m§ = param1;
         if(param1)
         {
            this.§`#&§(false);
         }
      }
      
      private function §!!A§(param1:§<$!§) : void
      {
         this.§@$§();
         this.§,#`§(false);
         this.§;#q§.removeEventListener(§<$!§.§&#>§,this.§!!A§);
      }
      
      private function §@"W§(param1:int) : void
      {
         this.§;#D§ = true;
         this.§`#&§(false);
         this.§<#G§ = new §5"f§();
         this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<#G§.addEventListener(Event.COMPLETE,this.§,"n§);
         this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§=Y§);
         this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=Y§);
         this.§<#G§.addEventListener(§;" §.§`S§,this.§=Y§);
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = §!",§.§3"1§.§@Q§(§>"%§.§-"v§);
         if(param1 == 1)
         {
            this.§+"M§(_loc3_,0);
         }
         else
         {
            this.§+"M§(0,_loc3_);
         }
         this.§<#G§.load(_loc2_);
      }
      
      private function §0!Z§() : void
      {
         if(this.§<#G§)
         {
            this.§<#G§.removeEventListener(Event.COMPLETE,this.§,"n§);
            this.§<#G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=Y§);
            this.§<#G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=Y§);
            this.§<#G§.removeEventListener(§;" §.§`S§,this.§=Y§);
            this.§<#G§ = null;
         }
         this.§;#D§ = false;
         this.§`#&§(this.§9+§());
      }
      
      private function §=Y§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         this.§0!Z§();
         this.§`#&§(false);
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.ERROR,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §,"n§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         §!",§.§3"1§.§"#t§(_loc2_);
         this.§0!Z§();
         this.§@$§();
      }
      
      private function §`#&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §9+§() : Boolean
      {
         return §!",§.§3"1§.§@Q§(§>"%§.§-"v§) > 0 && this.§;!X§.§"$?§() > 0;
      }
      
      private function §+"M§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§4"@§ = false;
         this.§,!K§ = false;
         if(!this.§0!1§)
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
            this.§"#z§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§6#v§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§6#v§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§6#v§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §"#z§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §=@§.§9!x§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §,!K§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §3`§.removeEventListener(MouseEvent.CLICK,§8!h§);
                     }
                  });
                  § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§6#v§;
                  if(§6$1§)
                  {
                     §,!K§ = true;
                     §6#v§ = 0;
                     §<#8§ = 0;
                     tmr.stop();
                  }
                  §4#-§.text = §6#v§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§6#v§;
                  if(§6$1§)
                  {
                     §,!K§ = true;
                     §6#v§ = 0;
                     §<#8§ = 0;
                  }
                  §4#-§.text = §6#v§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §,!K§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§6#v§;
                  §4#-§.text = §6#v§ + "";
                  §3`§.removeEventListener(MouseEvent.CLICK,§8!h§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§4"@§ = true;
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
            this.§<#8§ = §!",§.§3"1§.§@Q§("ExchangedItem");
            this.§3`§.addEventListener(MouseEvent.CLICK,this.§8!h§);
            soundPlayingTime = this.§6#v§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            §4$4§.playSound("boss_feeding",§=#w§,soundPlayingLoops);
         }
      }
      
      private function §=b§() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         §4$4§.§'!?§(§=#w§);
         if(this.§"#z§ == 0)
         {
            return;
         }
         if(this.§6$1§)
         {
            this.§"#z§ = 0;
            this.§1!n§ = 0;
            this.§<#8§ = 0;
            this.§#"s§.text = §!",§.§3"1§.§@Q§("ExchangedItem") + "";
            return;
         }
         this.§3`§.addEventListener(MouseEvent.CLICK,this.§8!h§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§0!1§ = true;
         opponent = this.§"#z§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§"#z§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§"#z§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§1!n§;
               if(§1!n§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §"#z§ = 0;
                  §3`§.removeEventListener(MouseEvent.CLICK,§8!h§);
               }
               if(§6$1§)
               {
                  §"#z§ = 0;
                  §1!n§ = 0;
               }
               §#"s§.text = §!",§.§3"1§.§@Q§("ExchangedItem") - §1!n§ + "";
               §0!1§ = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§6$1§)
            {
               §"#z§ = 0;
               §1!n§ = 0;
               §0!1§ = false;
            }
         });
         burbOpponentAnim.play();
         §4$4§.playSound(§>#a§[int(Math.random() * §>#a§.length)],§4$4§.§1#l§);
      }
      
      private function §8!h§(param1:MouseEvent) : void
      {
         this.§6$1§ = true;
      }
      
      private function §`">§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§@"U§)
         {
            this.§@"U§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §="W§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§@"U§.length < §="W§.length)
            {
               _loc2_ = this.§@"U§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§@"U§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §="W§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§@"U§ = null;
               _loc2_ = true;
            }
         }
         return §="W§[_loc1_];
      }
      
      private function §^B§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §4"]§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§;!X§.§"$?§() > 0)
            {
               cls = §=@§.§9!x§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §`">§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§?$ §)
               {
                  §?$ § = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * §?$ §.x;
               nameAnim.y = Math.random() * §?$ §.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §4"]§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
