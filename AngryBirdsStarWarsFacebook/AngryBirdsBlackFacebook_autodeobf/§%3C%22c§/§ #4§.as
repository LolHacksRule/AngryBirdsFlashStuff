package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §3§.§<#A§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class § #4§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndEagleState";
      
      private static const §0,§:String = "ScoreLoopCountChannel";
      
      private static const §`">§:Number = 30;
      
      protected static const §>K§:String = "highscore";
      
      protected static const §-!1§:String = "score";
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 30;
      
      protected static const §,#9§:int = 95;
       
      
      protected var §<!L§:Boolean;
      
      protected var §0!r§:§<#A§;
      
      protected var §%"O§:§[#R§;
      
      protected var §8S§:§[#R§;
      
      protected var §@1§:Number;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      public var mEagleScoreCounter:Number;
      
      protected var §>4§:int;
      
      protected var §^c§:§ #^§;
      
      protected var §?;§:MovieClip;
      
      protected var §=#F§:TextField;
      
      protected var §"!'§:MovieClip;
      
      protected var §">§:§8!R§;
      
      protected var §49§:MovieClip;
      
      protected var §3#+§:MovieClip;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!^§:Boolean;
      
      protected var §9!#§:§ #^§;
      
      public function § #4§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§">§ = §4#;§.singleton.dataModel.userProgress;
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelEndFalcon[0]);
         this.§^c§ = § #^§(§@;§.getItemByName("Container_Content"));
         this.§?;§ = MovieClip(§@;§.getItemByName("MovieClip_FalconFill").mClip.falconMask);
         this.§=#F§ = TextField(§@;§.getItemByName("TextField_EaglePercentage").mClip.text);
         this.§"!'§ = §@;§.getItemByName("MovieClip_EagleBadge").mClip;
         this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
         this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
         this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
         this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
         this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
         this.§49§ = this.§^c§.mClip.falconGlow;
         this.§3#+§ = this.§^c§.mClip.title;
         this.§3#+§.gotoAndStop(§-!1§);
         §?!r§.§,"d§(§0,§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"!'§.gotoAndStop(1);
         this.§"!'§.visible = false;
         this.§49§.gotoAndStop(1);
         this.§49§.visible = false;
         this.§9!^§ = false;
         if(§+!b§.isCutSceneNext())
         {
            this.§[r§();
         }
         else
         {
            this.§#N§();
         }
         this.setScoreData();
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §,!q§.§>k§.getEagleScore();
         this.§>4§ = this.§">§.getEagleScoreForLevel(§+!b§.currentLevel);
         this.§<!L§ = _loc1_ > this.§>4§;
         if(this.§<!L§)
         {
            this.saveNewHighScore(_loc1_);
            this.§3#+§.gotoAndStop(§>K§);
         }
         else
         {
            this.§3#+§.gotoAndStop(§-!1§);
         }
         this.§=#F§.text = _loc1_ + "%";
         this.§?;§.scaleX = 0;
         §?!r§.§"#_§("misc_score_1",§0,§,100);
         this.§%"O§ = §-#C§.§%!E§.§^!H§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§%"O§.onComplete = this.onCountComplete;
         this.§%"O§.play();
      }
      
      protected function §[r§() : void
      {
         this.§9!#§.setVisibility(true);
         this.§^W§.setVisibility(true);
         this.§^"^§.setVisibility(true);
         this.§,>§.setVisibility(false);
         this.§]6§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §#N§() : void
      {
         this.§^W§.setVisibility(true);
         this.§^"^§.setVisibility(true);
         this.§]6§.setVisibility(false);
         if(§+!b§.getNextLevelId())
         {
            this.§,>§.setVisibility(true);
            this.§9!#§.setVisibility(true);
         }
         else
         {
            this.§9!#§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§9!#§.visible;
         var _loc2_:Boolean = this.§^W§.visible;
         var _loc3_:int = §,#9§;
         _loc3_ += !!_loc2_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!_loc1_ ? §5"n§ + §,#9§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §<!K§;
         if(_loc2_)
         {
            this.§^W§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
         this.§^"^§.x = _loc4_;
         _loc4_ += §5"n§ + §,#9§;
         if(_loc1_)
         {
            this.§9!#§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"#V§();
         §?!r§.§9"4§(§0,§);
         this.mEagleScoreCounter = 0;
         if(this.§%"O§)
         {
            this.§%"O§.stop();
            this.§%"O§ = null;
         }
         if(this.§8S§)
         {
            this.§8S§.stop();
            this.§8S§ = null;
         }
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         this.§">§.§]"D§(§+!b§.currentLevel,param1);
      }
      
      protected function §[!?§() : void
      {
         this.§3#S§ = 0;
         this.§"#Q§ = 0;
         this.§@1§ = §`">§;
      }
      
      private function §+#V§(param1:Number) : void
      {
         this.§^c§.x -= this.§3#S§;
         this.§^c§.y -= this.§"#Q§;
         if(this.§@1§ > 0)
         {
            this.§3#S§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§"#Q§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§^c§.x += this.§3#S§;
            this.§^c§.y += this.§"#Q§;
         }
         else
         {
            this.§3#S§ = 0;
            this.§"#Q§ = 0;
         }
         this.§@1§ -= param1 / 10;
      }
      
      protected function §+"N§(param1:int) : void
      {
         this.§"!'§.visible = true;
         if(param1 == 100)
         {
            this.§"!'§.gotoAndStop(4);
         }
         else if(param1 < 100 && param1 > 50)
         {
            this.§"!'§.gotoAndStop(3);
         }
         else if(param1 <= 50 && param1 > 0)
         {
            this.§"!'§.gotoAndStop(2);
         }
         else
         {
            this.§"!'§.gotoAndStop(1);
         }
         this.§8S§ = §-#C§.§%!E§.§^!H§(this.§"!'§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§8S§.onComplete = this.onBadgeLanded;
         this.§8S§.play();
      }
      
      protected function onBadgeLanded() : void
      {
         if(!this.§9!^§)
         {
            §?!r§.§"#_§("highscore");
            this.§9!^§ = true;
         }
         this.§[!?§();
         this.§,"I§();
      }
      
      protected function §,"I§() : void
      {
         this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,this.§"!'§.x,this.§"!'§.y,§<#A§.§=[§);
         this.§^c§.mClip.addChild(this.§0!r§);
      }
      
      private function §"#V§() : void
      {
         if(this.§0!r§)
         {
            if(§@;§.contains(this.§0!r§))
            {
               this.§^c§.mClip.removeChild(this.§0!r§);
            }
            this.§0!r§.§%!G§();
         }
         this.§0!r§ = null;
      }
      
      protected function onCountComplete() : void
      {
         §?!r§.§9"4§(§0,§);
         if(this.mEagleScoreCounter == 100)
         {
            this.§49§.gotoAndPlay(1);
            this.§49§.visible = true;
            if(!this.§9!^§)
            {
               §?!r§.§"#_§("highscore");
               this.§9!^§ = true;
            }
         }
         if(this.§<!L§)
         {
            this.§+"N§(this.mEagleScoreCounter);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§=#F§.text = int(this.mEagleScoreCounter) + "%";
         this.§?;§.scaleX = this.mEagleScoreCounter / 100;
         if(this.§@1§ >= 0)
         {
            this.§+#V§(param1);
         }
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
         if(this.§0!r§)
         {
            this.§0!r§.update(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'$§();
               § g§(StateCutScene.§^!7§);
               break;
            case "REPLAY":
               § g§(§<2§.§^!7§);
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(§+#?§.§^!7§);
         }
      }
   }
}
