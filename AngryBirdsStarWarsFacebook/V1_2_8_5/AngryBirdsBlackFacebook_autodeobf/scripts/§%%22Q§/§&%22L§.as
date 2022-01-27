package §%"Q§
{
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§-V§;
   import §9!a§.§&!q§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"n§.§^!-§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §null §.§5#§;
   
   public class §&"L§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndEagleState";
      
      private static const §2"p§:String = "ScoreLoopCountChannel";
      
      private static const §[!'§:Number = 30;
      
      protected static const §]!%§:String = "highscore";
      
      protected static const §>!>§:String = "score";
      
      protected static const §7!E§:int = 40;
      
      protected static const §##&§:int = 30;
      
      protected static const §2!z§:int = 95;
       
      
      protected var §#$§:Boolean;
      
      protected var §4#-§:§&!q§;
      
      protected var §&#4§:§%b§;
      
      protected var §]!p§:§%b§;
      
      protected var §3"I§:Number;
      
      protected var §!!Y§:Number = 0.0;
      
      protected var §=1§:Number = 0.0;
      
      public var mEagleScoreCounter:Number;
      
      protected var §4"C§:int;
      
      protected var §[#,§:§@!8§;
      
      protected var § 8§:MovieClip;
      
      protected var §="$§:TextField;
      
      protected var §'"s§:MovieClip;
      
      protected var §3"§:§^!-§;
      
      protected var §["V§:MovieClip;
      
      protected var §<!I§:MovieClip;
      
      protected var §%N§:§;g§;
      
      protected var §"f§:§;g§;
      
      protected var § ]§:§;g§;
      
      protected var §1"K§:§;g§;
      
      protected var §0"#§:Boolean;
      
      protected var §<!k§:§@!8§;
      
      public function §&"L§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3"§ = §4"#§.singleton.dataModel.userProgress;
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelEndFalcon[0]);
         this.§[#,§ = §@!8§(§^!b§.getItemByName("Container_Content"));
         this.§ 8§ = MovieClip(§^!b§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§="$§ = TextField(§^!b§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.§'"s§ = §^!b§.getItemByName("MovieClip_EagleBadge").mClip;
         this.§%N§ = §;g§(§^!b§.getItemByName("Button_Menu"));
         this.§"f§ = §;g§(§^!b§.getItemByName("Button_Replay"));
         this.§ ]§ = §;g§(§^!b§.getItemByName("Button_NextLevel"));
         this.§1"K§ = §;g§(§^!b§.getItemByName("Button_CutScene"));
         this.§<!k§ = §@!8§(§^!b§.getItemByName("Container_NextButton"));
         this.§["V§ = this.§[#,§.mClip.falconGlow;
         this.§<!I§ = this.§[#,§.mClip.title;
         this.§<!I§.gotoAndStop(§>!>§);
         §=Q§.§`"u§(§2"p§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'"s§.gotoAndStop(1);
         this.§'"s§.visible = false;
         this.§["V§.gotoAndStop(1);
         this.§["V§.visible = false;
         this.§0"#§ = false;
         if(§'""§.isCutSceneNext())
         {
            this.§3n§();
         }
         else
         {
            this.§-E§();
         }
         this.setScoreData();
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §<!J§.§]!D§.getEagleScore();
         this.§4"C§ = this.§3"§.getEagleScoreForLevel(§'""§.currentLevel);
         this.§#$§ = _loc1_ > this.§4"C§;
         if(this.§#$§)
         {
            this.saveNewHighScore(_loc1_);
            this.§<!I§.gotoAndStop(§]!%§);
         }
         else
         {
            this.§<!I§.gotoAndStop(§>!>§);
         }
         this.§="$§.text = _loc1_ + "%";
         this.§ 8§.scaleX = 0;
         §=Q§.§`!A§("misc_score_1",§2"p§,100);
         this.§&#4§ = §5!%§.§!6§.§4!M§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§&#4§.onComplete = this.onCountComplete;
         this.§&#4§.play();
      }
      
      protected function §3n§() : void
      {
         this.§<!k§.setVisibility(true);
         this.§%N§.setVisibility(true);
         this.§"f§.setVisibility(true);
         this.§ ]§.setVisibility(false);
         this.§1"K§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §-E§() : void
      {
         this.§%N§.setVisibility(true);
         this.§"f§.setVisibility(true);
         this.§1"K§.setVisibility(false);
         if(§'""§.getNextLevelId())
         {
            this.§ ]§.setVisibility(true);
            this.§<!k§.setVisibility(true);
         }
         else
         {
            this.§<!k§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§<!k§.visible;
         var _loc2_:Boolean = this.§%N§.visible;
         var _loc3_:int = §2!z§;
         _loc3_ += !!_loc2_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!_loc1_ ? §##&§ + §2!z§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §7!E§;
         if(_loc2_)
         {
            this.§%N§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
         this.§"f§.x = _loc4_;
         _loc4_ += §##&§ + §2!z§;
         if(_loc1_)
         {
            this.§<!k§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6!q§();
         §=Q§.§&"=§(§2"p§);
         this.mEagleScoreCounter = 0;
         if(this.§&#4§)
         {
            this.§&#4§.stop();
            this.§&#4§ = null;
         }
         if(this.§]!p§)
         {
            this.§]!p§.stop();
            this.§]!p§ = null;
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         this.§3"§.§#!C§(§'""§.currentLevel,param1);
      }
      
      protected function §%#$§() : void
      {
         this.§!!Y§ = 0;
         this.§=1§ = 0;
         this.§3"I§ = §[!'§;
      }
      
      private function §"!a§(param1:Number) : void
      {
         this.§[#,§.x -= this.§!!Y§;
         this.§[#,§.y -= this.§=1§;
         if(this.§3"I§ > 0)
         {
            this.§!!Y§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§=1§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§[#,§.x += this.§!!Y§;
            this.§[#,§.y += this.§=1§;
         }
         else
         {
            this.§!!Y§ = 0;
            this.§=1§ = 0;
         }
         this.§3"I§ -= param1 / 10;
      }
      
      protected function §!"$§(param1:int) : void
      {
         this.§'"s§.visible = true;
         if(param1 == 100)
         {
            this.§'"s§.gotoAndStop(4);
         }
         else if(param1 < 100 && param1 > 50)
         {
            this.§'"s§.gotoAndStop(3);
         }
         else if(param1 <= 50 && param1 > 0)
         {
            this.§'"s§.gotoAndStop(2);
         }
         else
         {
            this.§'"s§.gotoAndStop(1);
         }
         this.§]!p§ = §5!%§.§!6§.§4!M§(this.§'"s§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§]!p§.onComplete = this.onBadgeLanded;
         this.§]!p§.play();
      }
      
      protected function onBadgeLanded() : void
      {
         if(!this.§0"#§)
         {
            §=Q§.§`!A§("highscore");
            this.§0"#§ = true;
         }
         this.§%#$§();
         this.§1@§();
      }
      
      protected function §1@§() : void
      {
         this.§4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,this.§'"s§.x,this.§'"s§.y,§&!q§.§`@§);
         this.§[#,§.mClip.addChild(this.§4#-§);
      }
      
      private function §6!q§() : void
      {
         if(this.§4#-§)
         {
            if(§^!b§.contains(this.§4#-§))
            {
               this.§[#,§.mClip.removeChild(this.§4#-§);
            }
            this.§4#-§.§ "!§();
         }
         this.§4#-§ = null;
      }
      
      protected function onCountComplete() : void
      {
         §=Q§.§&"=§(§2"p§);
         if(this.mEagleScoreCounter == 100)
         {
            this.§["V§.gotoAndPlay(1);
            this.§["V§.visible = true;
            if(!this.§0"#§)
            {
               §=Q§.§`!A§("highscore");
               this.§0"#§ = true;
            }
         }
         if(this.§#$§)
         {
            this.§!"$§(this.mEagleScoreCounter);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§="$§.text = int(this.mEagleScoreCounter) + "%";
         this.§ 8§.scaleX = this.mEagleScoreCounter / 100;
         if(this.§3"I§ >= 0)
         {
            this.§"!a§(param1);
         }
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
         if(this.§4#-§)
         {
            this.§4#-§.update(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`"y§();
               §`0§(StateCutScene.§-!U§);
               break;
            case "REPLAY":
               §`0§(§7"9§.§-!U§);
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(§!K§.§-!U§);
         }
      }
   }
}
