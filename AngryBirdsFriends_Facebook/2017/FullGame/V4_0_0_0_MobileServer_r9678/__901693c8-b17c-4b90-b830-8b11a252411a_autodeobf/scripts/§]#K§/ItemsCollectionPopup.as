package §]#K§
{
   import § "$§.§'"R§;
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §%#A§.§,#w§;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §1#W§.§!#&§;
   import §3#G§.§,";§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §];§.§-!t§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
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
      
      private static const §8#Q§:String = "CollectionItemImage";
      
      private static const FEED_ANIMATION_NAME_1:String = "ItemsCollectionAnimationsCandyFeed1";
      
      private static const FEED_ANIMATION_NAME_2:String = "ItemsCollectionAnimationsCandyFeed2";
      
      private static const §89§:Array = ["pig_singing","piglette_oink_story","WerepigTransformation"];
      
      private static const §6"Q§:String = "BossFeedingSoundChannel";
      
      private static const §2$9§:int = 6000;
      
      private static const §4!n§:Array = ["Ana","Felipe","Jere","Jijo","Joni","Juha","Mahmud","Maria","Markus","Michael","Peter","Toni","Toober","Rosia","Barbie","Oneida","Floria","Hsiu","Matt","Ruby","Marisela","Troy","Crystal","Marine","Malka","Raelene","Diane","Garrett","Jasmine","Carolyne","Marta","Rona","Cleta","Elwood","Nancy","Johana","Halina","Deloris","Cedrick","Mertie","Evelyne","Herman","Anastacia","Arielle","Lanie","Pearle","Marylou","Brandy","Giuseppe","Dwana","Janelle","Valentina","Song","Reyes","Terrance","Vita","Suzan","Emmitt","Sina","Delma","Clyde","Jenise","Kelsie","Kwiik","Mildred","Genie","Anneliese","Carole","Anika","Manuela","Donny","Belkis","Odelia","Cathy","Trula","Adina","Rene","Bee","Miles","Arden","Cecilia","Shauna","Coleen","Delisa","Kayce","Matti","Maija","Reino","Raija","Laci","Stephan","Britt","Mia","Frederica","Modesto","Quiana","Letisha","Latina","Lavina","Lorrine","Soila","Karyl","Elidia","Mike","Melisa","Ardelia","Lynnette","Shasta","Celesta","Annelle","Mindy","Magali","Bailey","Jung","Arnita","Valda","Eliseo","Kaitlyn","Lee","Raymond","Ivan","Armand","Mariano","Galen","Leroy","Coleman","Sol","Porter","Alonso","Zane","Morgan","Fernando","Clement","Jamison","Salvador","Winston","Alphonse","Rob","Riley","Randal","Vance","Ali","Jessie","Marcos","Odell","Leopoldo","Ward","Gil","Clarence","Clark","Joe","Jordan","Ellis","Stewart","Donovan","Michel","Florencio","Dynamite","Isiah","Carroll","Jed","Miguel","Irwin","Evan","Harrison","Andreas","Toney","Hugh","Craig","Chang","Chao","Bai","Ai","Yijun","Zheng","Jiang","Jie","Jiao-long","Li","Lim","Mei","Qiu","Shan","Shi","Qing","Wen","Xiang","Xiao-ping","Adio","Afija","Adesimbo","Efia","Eshe","Iverem","Izegbe","Tabia","Themba","Titilayo","Waseme","Emilia","Minna","Salla","Päivi","Erika","Kirsi","Sofia","Isabella","Camila","Valentina","Valeria","Mariana","Luciana","Daniela","Gabriela","Victoria","Martina","Lucia","Ximena","Sara","Samantha","Maria José","Emma","Catalina","Julieta","Santiago","Sebastián","Matías","Mateo","Nicolás","Alejandro","Diego","Samuel","Benjamín","Daniel","Joaquín","Lucas","Tomas","Gabriel","Martín","David","Emiliano","Jerónimo","Emmanuel","Agustín","Juan Pablo","Juan José","Andrés","Thiago","Leonardo","Maximiliano","Christopher","Juan Diego","Adrián","Pablo","Miguel Ángel","Rodrigo","Alexander","Ignacio","Emilio","Dylan","Bruno","Carlos","Vicente","Valentino","Santino","Julián","Juan Sebastián","Aarón","Lautaro","Axel","Ian","Christian","Javier","Manuel","Luciano","Francisco","Juan David","Iker","Facundo","Rafael","Alex","Franco","Antonio","Luis","Isaac","Máximo","Pedro","Ricardo","Sergio","Eduardo","Bautista","Miguel","Ana Paula","Mariangel","Amelia","Elizabeth","Aitana","Ariadna","María Camila","Irene","Silvana","Clara","Magdalena","Sophie","Josefa","Aarav","Advik","Chirag","Eshan","Lakshay","Neerav","Ojas","Vivaan","Bhavya","Hrishita","Jivika","Jiya","Nitya","Riya","Saanvi","Samaira","Sana","Zara","Yashvi"];
       
      
      protected var §@!y§:§ "a§;
      
      private var §6"P§:§>#x§;
      
      private var §>"g§:MovieClip;
      
      private var §'V§:TextField;
      
      private var §-#%§:TextField;
      
      private var §="v§:TextField;
      
      private var §4"G§:TextField;
      
      private var §4!`§:TextField;
      
      private var mFeedOpponentButton1:§,#w§;
      
      private var mFeedOpponentButton2:§,#w§;
      
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
      
      private var §4"q§:Boolean;
      
      private var §4$-§:Boolean;
      
      private var §4#]§:int;
      
      private var §^#r§:int;
      
      private var §`"P§:int;
      
      private var §&j§:Boolean;
      
      private var §?#$§:int;
      
      private var §8r§:Boolean;
      
      private var §3f§:§,";§;
      
      private var §["s§:Boolean;
      
      private var §+"§:§4"v§;
      
      private var §>"&§:Boolean;
      
      private var §"#L§:Boolean;
      
      private var mOtherPlayersNameAnimationTimer1:Timer;
      
      private var mOtherPlayersNameAnimationTimer2:Timer;
      
      private var §+!w§:Point;
      
      private var §!#e§:Vector.<int>;
      
      public function ItemsCollectionPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         var _loc5_:XML = §=>§.§%" §.Views.PopupView_ItemsCollector[0];
         super(param1,param2,_loc5_,ID);
         this.§@!y§ = § "a§.§ "D§;
         this.§6"P§ = this.§@!y§.§^W§() as §>#x§;
         §!#&§.§!"k§(§6"Q§,1,0.9);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>"g§ = §1"6§.mClip;
         this.§'V§ = this.§>"g§.Textfield_ItemsAmount as TextField;
         this.§-#%§ = this.§>"g§.LeftForToday.Textfield_ItemsLeft as TextField;
         this.§="v§ = this.§>"g§.Textfield_PowerupAmount as TextField;
         this.§4"G§ = this.§>"g§.EventTimer.Textfield_EventTimeLeft as TextField;
         this.§4!`§ = this.§>"g§.MoreCandies.Textfield_SlotTimeLeft as TextField;
         this.mWinningOpponent1 = this.§>"g§.WinningOpponent1 as MovieClip;
         this.mWinningOpponent2 = this.§>"g§.WinningOpponent2 as MovieClip;
         this.mFeedOpponentButton1 = §1"6§.getItemByName("btnFeedOpponent1") as §,#w§;
         this.mFeedOpponentButton2 = §1"6§.getItemByName("btnFeedOpponent2") as §,#w§;
         this.mOpponent1 = this.§>"g§.ItemsCollectionOpponent1 as MovieClip;
         this.mOpponent2 = this.§>"g§.ItemsCollectionOpponent2 as MovieClip;
         this.mAnimationFeedOpponent1 = this.§>"g§.AnimFeedOpponent1 as MovieClip;
         this.mAnimationFeedOpponent2 = this.§>"g§.AnimFeedOpponent2 as MovieClip;
         this.mAnimationMunchOpponent1 = this.§>"g§.AnimMunchOpponent1 as MovieClip;
         this.mAnimationMunchOpponent2 = this.§>"g§.AnimMunchOpponent2 as MovieClip;
         this.mAnimationBurbOpponent1 = this.§>"g§.AnimBurdOpponent1 as MovieClip;
         this.mAnimationBurbOpponent2 = this.§>"g§.AnimBurdOpponent2 as MovieClip;
         this.mAnimationPumpkinOpponent1 = this.§>"g§.AnimPumpkinOpponent1 as MovieClip;
         this.mAnimationPumpkinOpponent2 = this.§>"g§.AnimPumpkinOpponent2 as MovieClip;
         this.§9!t§(0,0);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.mAnimationPumpkinOpponent1.stop();
         this.mAnimationPumpkinOpponent2.stop();
         this.§'V§.text = "";
         this.§4"G§.text = "";
         this.§4!`§.text = "";
         this.§>"g§.Textfield_EndEvent.visible = false;
         this.mWinningOpponent1.visible = false;
         this.mWinningOpponent2.visible = false;
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.§>"g§);
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.mFeedOpponentButton1.mClip);
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.mFeedOpponentButton2.mClip);
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.mAnimationFeedOpponent1);
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.mAnimationFeedOpponent2);
         this.§<]§(false);
         this.§@!y§.addEventListener(§ "a§.§<$1§,this.§"!;§);
         this.§>"&§ = false;
         this.§"#L§ = §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(§>#x§.§8!D§);
         this.§^#r§ = 0;
         this.§`"P§ = 0;
         this.§?#$§ = 0;
         this.§4#]§ = 0;
         this.§8r§ = false;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§5a§();
         this.§]!Q§(this.mOtherPlayersNameAnimationTimer1,this.§>"g§.AnimatedNamesSpawningArea1);
         this.§]!Q§(this.mOtherPlayersNameAnimationTimer2,this.§>"g§.AnimatedNamesSpawningArea2);
      }
      
      private function §5a§() : void
      {
         if(!this.§6"P§)
         {
            return;
         }
         if(this.§4#]§ > 0)
         {
            this.§'V§.text = this.§4#]§ + "";
         }
         else
         {
            this.§'V§.text = §4"W§.§ "D§.§5!@§(§>#x§.§8!D§) + "";
         }
         this.§-#%§.text = this.§6"P§.§>"M§ - this.§6"P§.§ get§ + "";
         if(this.§^#r§ == 0)
         {
            this.§="v§.text = §4"W§.§ "D§.§5!@§("ExchangedItem") + "";
         }
         else
         {
            this.§`"P§ = §4"W§.§ "D§.§5!@§("ExchangedItem") - this.§^#r§;
            this.§="v§.text = this.§^#r§ + "";
            this.§^#r§ = 0;
         }
         if(!this.§"#L§)
         {
            this.mWinningOpponent1.visible = false;
            this.mWinningOpponent2.visible = false;
         }
         else
         {
            this.mWinningOpponent1.visible = this.§6"P§.§5u§() == 1;
            this.mWinningOpponent2.visible = this.§6"P§.§5u§() == 2;
         }
         this.§^N§(this.§]" §());
      }
      
      private function §"!;§(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         if(this.§["s§ || this.§>"&§)
         {
            return;
         }
         if(this.§4$-§)
         {
            this.§9!t§(0,0);
         }
         else if(!this.§4"q§ && !this.§&j§)
         {
            if(this.§`"P§ > 0)
            {
               this.§0#L§();
            }
         }
         var _loc2_:Number = this.§@!y§.§-#H§();
         this.§4"G§.text = §@!g§.§%#m§(_loc2_)[0];
         if(_loc2_ > 0)
         {
            _loc3_ = this.§6"P§.§,"1§();
            if(_loc3_ > 0)
            {
               this.§4!`§.text = §@!g§.§%#m§(_loc3_)[0];
               if(_loc2_ == _loc3_)
               {
                  this.§>"g§.MoreCandies.visible = false;
               }
            }
            else
            {
               this.§ !c§();
            }
         }
         else if(!this.§>"g§.Textfield_EndEvent.visible)
         {
            this.§>"g§.Textfield_EndEvent.visible = true;
            this.§>"g§.EventTimer.visible = false;
            this.§>"g§.MoreCandies.visible = false;
            this.§>"g§.LeftForToday.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         if(this.§+"§ || this.§>"&§ || this.§4"q§ || this.§&j§)
         {
            return;
         }
         switch(param2)
         {
            case "INFO":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
               break;
            case "FEED_OPPONENT_1":
               this.§!!l§(1);
               break;
            case "FEED_OPPONENT_2":
               this.§!!l§(2);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function dispose() : void
      {
         this.§@!y§.removeEventListener(§ "a§.§<$1§,this.§"!;§);
         if(this.§3f§)
         {
            this.§3f§.removeEventListener(§'"R§.§",§,this.§@!!§);
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
      
      private function § !c§() : void
      {
         this.§<]§(true);
         this.§3f§ = new §,";§();
         this.§3f§.addEventListener(§'"R§.§",§,this.§@!!§);
         this.§3f§.§2$8§();
      }
      
      private function §<]§(param1:Boolean) : void
      {
         this.§>"g§.LoadingImage.visible = param1;
         this.§["s§ = param1;
         if(param1)
         {
            this.§^N§(false);
         }
      }
      
      private function §@!!§(param1:§'"R§) : void
      {
         this.§5a§();
         this.§<]§(false);
         this.§3f§.removeEventListener(§'"R§.§",§,this.§@!!§);
      }
      
      private function §!!l§(param1:int) : void
      {
         this.§>"&§ = true;
         this.§^N§(false);
         this.§+"§ = new §4"v§();
         this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§+"§.addEventListener(Event.COMPLETE,this.§8#K§);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§&"[§);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&"[§);
         this.§+"§.addEventListener(§]e§.§5!;§,this.§&"[§);
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/event/redeemCollectedItems?opponentId=" + param1);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         var _loc3_:int = §4"W§.§ "D§.§5!@§(§>#x§.§8!D§);
         if(param1 == 1)
         {
            this.§9!t§(_loc3_,0);
         }
         else
         {
            this.§9!t§(0,_loc3_);
         }
         this.§+"§.load(_loc2_);
      }
      
      private function §?# §() : void
      {
         if(this.§+"§)
         {
            this.§+"§.removeEventListener(Event.COMPLETE,this.§8#K§);
            this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&"[§);
            this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&"[§);
            this.§+"§.removeEventListener(§]e§.§5!;§,this.§&"[§);
            this.§+"§ = null;
         }
         this.§>"&§ = false;
         this.§^N§(this.§]" §());
      }
      
      private function §&"[§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         this.§?# §();
         this.§^N§(false);
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.ERROR,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §8#K§(param1:Event) : void
      {
         var _loc2_:Object = param1.target.data;
         §4"W§.§ "D§.§+#<§(_loc2_);
         this.§?# §();
         this.§5a§();
      }
      
      private function §^N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.mFeedOpponentButton1.setEnabled(true);
            this.mFeedOpponentButton2.setEnabled(true);
            this.mFeedOpponentButton1.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.mFeedOpponentButton2.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            this.mFeedOpponentButton1.setEnabled(false);
            this.mFeedOpponentButton2.setEnabled(false);
            this.mFeedOpponentButton1.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            this.mFeedOpponentButton2.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §]" §() : Boolean
      {
         return §4"W§.§ "D§.§5!@§(§>#x§.§8!D§) > 0 && this.§@!y§.§-#H§() > 0;
      }
      
      private function §9!t§(param1:int, param2:int) : void
      {
         var originalFeedAnim:MovieClip = null;
         var timeInterval:int = 0;
         var startPlaceVariationAmount:int = 0;
         var soundPlayingTime:int = 0;
         var soundPlayingLoops:int = 0;
         var tmr:Timer = null;
         var feedOpponent1Amount:int = param1;
         var feedOpponent2Amount:int = param2;
         this.§4"q§ = false;
         this.§4$-§ = false;
         if(!this.§&j§)
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
            this.§?#$§ = feedOpponent1Amount > 0 ? 1 : 2;
            originalFeedAnim = feedOpponent1Amount > 0 ? this.mAnimationFeedOpponent1 : this.mAnimationFeedOpponent2;
            this.§4#]§ = feedOpponent1Amount > 0 ? int(feedOpponent1Amount) : int(feedOpponent2Amount);
            timeInterval = 90;
            startPlaceVariationAmount = 20;
            if(this.§4#]§ > 1)
            {
               tmr = new Timer(timeInterval);
               tmr.repeatCount = this.§4#]§ - 1;
               tmr.addEventListener(TimerEvent.TIMER,function tmrFn():void
               {
                  var cloneFeedAnim:MovieClip = null;
                  var feedingAnimationName:String = §?#$§ == 1 ? FEED_ANIMATION_NAME_1 : FEED_ANIMATION_NAME_2;
                  var cls:Class = §+$#§.§["`§(feedingAnimationName);
                  cloneFeedAnim = new cls() as MovieClip;
                  cloneFeedAnim.x = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.y = Math.random() * startPlaceVariationAmount - startPlaceVariationAmount / 2;
                  cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,function fn():void
                  {
                     cloneFeedAnim.stop();
                     §4$-§ = !tmr.running;
                     cloneFeedAnim.visible = false;
                     cloneFeedAnim.addFrameScript(cloneFeedAnim.totalFrames - 1,null);
                     cloneFeedAnim = null;
                     if(!tmr.running && originalFeedAnim)
                     {
                        originalFeedAnim.visible = false;
                        originalFeedAnim = null;
                        §>"g§.removeEventListener(MouseEvent.CLICK,§8#7§);
                     }
                  });
                  §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,cloneFeedAnim);
                  originalFeedAnim.addChild(cloneFeedAnim);
                  §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,originalFeedAnim);
                  cloneFeedAnim.gotoAndPlay(1);
                  --§4#]§;
                  if(§8r§)
                  {
                     §4$-§ = true;
                     §4#]§ = 0;
                     §^#r§ = 0;
                     tmr.stop();
                  }
                  §'V§.text = §4#]§ + "";
               });
               tmr.start();
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  --§4#]§;
                  if(§8r§)
                  {
                     §4$-§ = true;
                     §4#]§ = 0;
                     §^#r§ = 0;
                  }
                  §'V§.text = §4#]§ + "";
               });
            }
            else
            {
               originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,function fn():void
               {
                  originalFeedAnim.stop();
                  §4$-§ = true;
                  originalFeedAnim.addFrameScript(originalFeedAnim.totalFrames - 1,null);
                  originalFeedAnim.visible = false;
                  originalFeedAnim = null;
                  --§4#]§;
                  §'V§.text = §4#]§ + "";
                  §>"g§.removeEventListener(MouseEvent.CLICK,§8#7§);
               });
            }
            originalFeedAnim.gotoAndPlay(1);
            this.§4"q§ = true;
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
            this.§^#r§ = §4"W§.§ "D§.§5!@§("ExchangedItem");
            this.§>"g§.addEventListener(MouseEvent.CLICK,this.§8#7§);
            soundPlayingTime = this.§4#]§ * timeInterval;
            soundPlayingLoops = soundPlayingTime / 1000;
            §!#&§.playSound("boss_feeding",§6"Q§,soundPlayingLoops);
         }
      }
      
      private function §0#L§() : void
      {
         var opponent:MovieClip = null;
         var burbOpponentAnim:MovieClip = null;
         var pumpkinOpponentAnim:MovieClip = null;
         §!#&§.§4#J§(§6"Q§);
         if(this.§?#$§ == 0)
         {
            return;
         }
         if(this.§8r§)
         {
            this.§?#$§ = 0;
            this.§`"P§ = 0;
            this.§^#r§ = 0;
            this.§="v§.text = §4"W§.§ "D§.§5!@§("ExchangedItem") + "";
            return;
         }
         this.§>"g§.addEventListener(MouseEvent.CLICK,this.§8#7§);
         this.mAnimationBurbOpponent1.stop();
         this.mAnimationBurbOpponent1.visible = false;
         this.mAnimationBurbOpponent2.stop();
         this.mAnimationBurbOpponent2.visible = false;
         this.§&j§ = true;
         opponent = this.§?#$§ == 1 ? this.mOpponent1 : this.mOpponent2;
         burbOpponentAnim = this.§?#$§ == 1 ? this.mAnimationBurbOpponent1 : this.mAnimationBurbOpponent2;
         pumpkinOpponentAnim = this.§?#$§ == 1 ? this.mAnimationPumpkinOpponent1 : this.mAnimationPumpkinOpponent2;
         opponent.visible = false;
         burbOpponentAnim.gotoAndStop(1);
         burbOpponentAnim.visible = true;
         burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,function fn1():void
         {
            burbOpponentAnim.gotoAndStop(1);
            pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,function fn2():void
            {
               pumpkinOpponentAnim.gotoAndStop(1);
               --§`"P§;
               if(§`"P§ == 0)
               {
                  burbOpponentAnim.visible = false;
                  opponent.visible = true;
                  §?#$§ = 0;
                  §>"g§.removeEventListener(MouseEvent.CLICK,§8#7§);
               }
               if(§8r§)
               {
                  §?#$§ = 0;
                  §`"P§ = 0;
               }
               §="v§.text = §4"W§.§ "D§.§5!@§("ExchangedItem") - §`"P§ + "";
               §&j§ = false;
               pumpkinOpponentAnim.addFrameScript(pumpkinOpponentAnim.totalFrames - 1,null);
            });
            pumpkinOpponentAnim.gotoAndPlay(1);
            burbOpponentAnim.addFrameScript(burbOpponentAnim.totalFrames - 1,null);
            if(§8r§)
            {
               §?#$§ = 0;
               §`"P§ = 0;
               §&j§ = false;
            }
         });
         burbOpponentAnim.play();
         §!#&§.playSound(§89§[int(Math.random() * §89§.length)],§!#&§.§6#h§);
      }
      
      private function §8#7§(param1:MouseEvent) : void
      {
         this.§8r§ = true;
      }
      
      private function §6#F§() : String
      {
         if(Math.random() * 100 < 20)
         {
            return "Guest" + int(Math.random() * 10000);
         }
         if(!this.§!#e§)
         {
            this.§!#e§ = new Vector.<int>();
         }
         var _loc1_:int = Math.random() * §4!n§.length;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            if(this.§!#e§.length < §4!n§.length)
            {
               _loc2_ = this.§!#e§.indexOf(_loc1_) == -1;
               if(_loc2_)
               {
                  this.§!#e§.push(_loc1_);
               }
               else
               {
                  _loc1_ = _loc1_ + 1 < §4!n§.length ? int(_loc1_ + 1) : 0;
               }
            }
            else
            {
               this.§!#e§ = null;
               _loc2_ = true;
            }
         }
         return §4!n§[_loc1_];
      }
      
      private function §]!Q§(param1:Timer, param2:MovieClip) : void
      {
         var timer:Timer = param1;
         var spawningArea:MovieClip = param2;
         if(timer)
         {
            return;
         }
         timer = new Timer(Math.random() * §2$9§);
         timer.addEventListener(TimerEvent.TIMER,function tmrFn():void
         {
            var cls:Class = null;
            var nameAnim:MovieClip = null;
            timer.stop();
            if(§@!y§.§-#H§() > 0)
            {
               cls = §+$#§.§["`§("ItemsCollectionNameAnimation");
               nameAnim = new cls() as MovieClip;
               §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,nameAnim.NameMovieClip);
               nameAnim.NameMovieClip.nameTF.text = §6#F§();
               nameAnim.NameMovieClip.scoreTF.text = "+" + (int(Math.random() * 10) + 1);
               nameAnim.addFrameScript(nameAnim.totalFrames - 1,function fn2():void
               {
                  nameAnim.stop();
                  nameAnim.addFrameScript(nameAnim.totalFrames - 1,null);
                  nameAnim.parent.removeChild(nameAnim);
                  nameAnim = null;
               });
               if(!§+!w§)
               {
                  §+!w§ = new Point(spawningArea.width,spawningArea.height);
               }
               nameAnim.x = Math.random() * §+!w§.x;
               nameAnim.y = Math.random() * §+!w§.y;
               spawningArea.addChild(nameAnim);
               timer.delay = Math.random() * §2$9§;
               timer.start();
            }
         });
         timer.start();
      }
   }
}
