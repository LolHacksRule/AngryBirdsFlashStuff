package §!X§
{
   import §"!P§.§5X§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §5",§.§%"@§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §,!A§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndEagleState";
      
      private static const §;?§:String = "ScoreLoopCountChannel";
      
      private static const §&!N§:Number = 30;
      
      protected static const §5z§:String = "highscore";
      
      protected static const §&"H§:String = "score";
      
      protected static const §["8§:int = 40;
      
      protected static const §!!o§:int = 30;
      
      protected static const §%"X§:int = 95;
       
      
      protected var §4!U§:Boolean;
      
      protected var §-"?§:§%"@§;
      
      protected var §9!8§:§4!Q§;
      
      protected var §@"6§:§4!Q§;
      
      protected var §8!i§:Number;
      
      protected var §%"e§:Number = 0.0;
      
      protected var §,!z§:Number = 0.0;
      
      public var mEagleScoreCounter:Number;
      
      protected var §""b§:int;
      
      protected var §,r§:§,m§;
      
      protected var §77§:MovieClip;
      
      protected var §10§:TextField;
      
      protected var §#!G§:MovieClip;
      
      protected var §+"v§:§5X§;
      
      protected var §4"H§:MovieClip;
      
      protected var §function§:MovieClip;
      
      protected var §"V§:§2"8§;
      
      protected var §7"0§:§2"8§;
      
      protected var §[#4§:§2"8§;
      
      protected var §[u§:§2"8§;
      
      protected var §9"=§:Boolean;
      
      protected var §#"A§:§,m§;
      
      public function §,!A§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+"v§ = §;"@§.singleton.dataModel.userProgress;
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelEndFalcon[0]);
         this.§,r§ = §,m§(§>I§.getItemByName("Container_Content"));
         this.§77§ = MovieClip(§>I§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§10§ = TextField(§>I§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.§#!G§ = §>I§.getItemByName("MovieClip_EagleBadge").mClip;
         this.§"V§ = §2"8§(§>I§.getItemByName("Button_Menu"));
         this.§7"0§ = §2"8§(§>I§.getItemByName("Button_Replay"));
         this.§[#4§ = §2"8§(§>I§.getItemByName("Button_NextLevel"));
         this.§[u§ = §2"8§(§>I§.getItemByName("Button_CutScene"));
         this.§#"A§ = §,m§(§>I§.getItemByName("Container_NextButton"));
         this.§4"H§ = this.§,r§.mClip.falconGlow;
         this.§function§ = this.§,r§.mClip.title;
         this.§function§.gotoAndStop(§&"H§);
         §@§.§"#'§(§;?§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§#!G§.gotoAndStop(1);
         this.§#!G§.visible = false;
         this.§4"H§.gotoAndStop(1);
         this.§4"H§.visible = false;
         this.§9"=§ = false;
         if(§ !p§.isCutSceneNext())
         {
            this.§!"%§();
         }
         else
         {
            this.§%"V§();
         }
         this.setScoreData();
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §;!e§.§%e§.getEagleScore();
         this.§""b§ = this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel);
         this.§4!U§ = _loc1_ > this.§""b§;
         if(this.§4!U§)
         {
            this.saveNewHighScore(_loc1_);
            this.§function§.gotoAndStop(§5z§);
         }
         else
         {
            this.§function§.gotoAndStop(§&"H§);
         }
         this.§10§.text = _loc1_ + "%";
         this.§77§.scaleX = 0;
         §@§.§=Y§("misc_score_1",§;?§,100);
         this.§9!8§ = §41§.§-G§.§&#'§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§9!8§.onComplete = this.onCountComplete;
         this.§9!8§.play();
      }
      
      protected function §!"%§() : void
      {
         this.§#"A§.setVisibility(true);
         this.§"V§.setVisibility(true);
         this.§7"0§.setVisibility(true);
         this.§[#4§.setVisibility(false);
         this.§[u§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §%"V§() : void
      {
         this.§"V§.setVisibility(true);
         this.§7"0§.setVisibility(true);
         this.§[u§.setVisibility(false);
         if(§ !p§.getNextLevelId())
         {
            this.§[#4§.setVisibility(true);
            this.§#"A§.setVisibility(true);
         }
         else
         {
            this.§#"A§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§#"A§.visible;
         var _loc2_:Boolean = this.§"V§.visible;
         var _loc3_:int = §%"X§;
         _loc3_ += !!_loc2_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!_loc1_ ? §!!o§ + §%"X§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §["8§;
         if(_loc2_)
         {
            this.§"V§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
         this.§7"0§.x = _loc4_;
         _loc4_ += §!!o§ + §%"X§;
         if(_loc1_)
         {
            this.§#"A§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§63§();
         §@§.§@!D§(§;?§);
         this.mEagleScoreCounter = 0;
         if(this.§9!8§)
         {
            this.§9!8§.stop();
            this.§9!8§ = null;
         }
         if(this.§@"6§)
         {
            this.§@"6§.stop();
            this.§@"6§ = null;
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         this.§+"v§.§?"I§(§ !p§.currentLevel,param1);
      }
      
      protected function §!!6§() : void
      {
         this.§%"e§ = 0;
         this.§,!z§ = 0;
         this.§8!i§ = §&!N§;
      }
      
      private function §7"5§(param1:Number) : void
      {
         this.§,r§.x -= this.§%"e§;
         this.§,r§.y -= this.§,!z§;
         if(this.§8!i§ > 0)
         {
            this.§%"e§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,!z§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,r§.x += this.§%"e§;
            this.§,r§.y += this.§,!z§;
         }
         else
         {
            this.§%"e§ = 0;
            this.§,!z§ = 0;
         }
         this.§8!i§ -= param1 / 10;
      }
      
      protected function §<m§(param1:int) : void
      {
         this.§#!G§.visible = true;
         if(param1 == 100)
         {
            this.§#!G§.gotoAndStop(4);
         }
         else if(param1 < 100 && param1 > 50)
         {
            this.§#!G§.gotoAndStop(3);
         }
         else if(param1 <= 50 && param1 > 0)
         {
            this.§#!G§.gotoAndStop(2);
         }
         else
         {
            this.§#!G§.gotoAndStop(1);
         }
         this.§@"6§ = §41§.§-G§.§&#'§(this.§#!G§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§@"6§.onComplete = this.onBadgeLanded;
         this.§@"6§.play();
      }
      
      protected function onBadgeLanded() : void
      {
         if(!this.§9"=§)
         {
            §@§.§=Y§("highscore");
            this.§9"=§ = true;
         }
         this.§!!6§();
         this.§,n§();
      }
      
      protected function §,n§() : void
      {
         this.§-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,this.§#!G§.x,this.§#!G§.y,§%"@§.§,g§);
         this.§,r§.mClip.addChild(this.§-"?§);
      }
      
      private function §63§() : void
      {
         if(this.§-"?§)
         {
            if(§>I§.contains(this.§-"?§))
            {
               this.§,r§.mClip.removeChild(this.§-"?§);
            }
            this.§-"?§.§;!k§();
         }
         this.§-"?§ = null;
      }
      
      protected function onCountComplete() : void
      {
         §@§.§@!D§(§;?§);
         if(this.mEagleScoreCounter == 100)
         {
            this.§4"H§.gotoAndPlay(1);
            this.§4"H§.visible = true;
            if(!this.§9"=§)
            {
               §@§.§=Y§("highscore");
               this.§9"=§ = true;
            }
         }
         if(this.§4!U§)
         {
            this.§<m§(this.mEagleScoreCounter);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§10§.text = int(this.mEagleScoreCounter) + "%";
         this.§77§.scaleX = this.mEagleScoreCounter / 100;
         if(this.§8!i§ >= 0)
         {
            this.§7"5§(param1);
         }
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
         if(this.§-"?§)
         {
            this.§-"?§.update(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !Y§();
               §0"B§(StateCutScene.§'#2§);
               break;
            case "REPLAY":
               §0"B§(§>!I§.§'#2§);
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(§,"p§.§'#2§);
         }
      }
   }
}
