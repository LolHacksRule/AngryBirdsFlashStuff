package §,!=§
{
   import §#v§.§#!?§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §'z§.§<"4§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §>!#§.§=#-§;
   import §?§.§>"$§;
   import flash.geom.Rectangle;
   
   public class §;P§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §<D§:Boolean = false;
      
      private var §9"`§:Boolean = false;
      
      private var §#;§:§<"4§ = null;
      
      private var §7"v§:Boolean = false;
      
      private var §2"i§:Boolean = false;
      
      private var §,#J§:Number = 0;
      
      private var §;#K§:Number = 0;
      
      private var §<"q§:Number = 0;
      
      private var §`# §:Number = 0;
      
      private var §%S§:Number;
      
      private var §`!i§:Number;
      
      private var §`0§:Number;
      
      private var §,U§:Number;
      
      private var video:§=#-§;
      
      public function §;P§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelStart[0]);
         this.§#;§ = new §<"4§(§>"$§.§3#'§,mLevelManager);
         this.§%S§ = (§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).height;
         this.§`!i§ = (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).height;
         this.§`0§ = §!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,U§ = §!$§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.§3#'§.§5'§(true);
         §>"$§.setController(this.§#;§);
         this.§#;§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§-"W§());
         §!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§>"$§.§-$5§());
         §!$§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§^"8§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§`0§ = §!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,U§ = §!$§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§7!%§(param1);
         if(!this.§9"`§)
         {
            §>"$§.§#0§.update(param1);
         }
      }
      
      private function §7!%§(param1:Number) : void
      {
         (§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).mClip.scrollRect = new Rectangle(0,0,(§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).width,this.§%S§ + 20 - (this.§%S§ - this.§<"q§));
         (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).mClip.scrollRect = new Rectangle(0,0,(§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).width,this.§`!i§ + 20 - (this.§`!i§ - this.§`# §));
         if(this.§7"v§)
         {
            (§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).setVisibility(true);
            if(this.§,#J§ < 90)
            {
               this.§,#J§ += 0.3 * param1;
            }
            if(this.§,#J§ > 90)
            {
               this.§,#J§ = 90;
            }
            if(this.§<"q§ < this.§%S§)
            {
               this.§<"q§ += 0.5 * param1;
            }
            if(this.§<"q§ > this.§%S§)
            {
               this.§<"q§ = this.§%S§;
            }
         }
         else
         {
            if(this.§,#J§ > 0)
            {
               this.§,#J§ -= 0.3 * param1;
            }
            if(this.§,#J§ < 0)
            {
               this.§,#J§ = 0;
            }
            if(this.§<"q§ > 0)
            {
               this.§<"q§ -= 0.5 * param1;
            }
            if(this.§<"q§ < 0)
            {
               (§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).setVisibility(false);
               this.§<"q§ = 0;
            }
         }
         if(this.§2"i§)
         {
            (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).setVisibility(true);
            if(this.§;#K§ < 180)
            {
               this.§;#K§ += 0.5 * param1;
               (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).y = (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).y - 0.5 * param1;
            }
            if(this.§;#K§ > 180)
            {
               this.§;#K§ = 180;
            }
            if(this.§`# § < this.§`!i§)
            {
               this.§`# § += 0.5 * param1;
            }
            if(this.§`# § > this.§`!i§)
            {
               this.§`# § = this.§`!i§;
            }
         }
         else
         {
            if(this.§;#K§ > 0)
            {
               this.§;#K§ -= 0.5 * param1;
               (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).y = (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).y + 0.5 * param1;
            }
            if(this.§;#K§ < 0)
            {
               this.§;#K§ = 0;
            }
            if(this.§`# § > 0)
            {
               this.§`# § -= 0.5 * param1;
            }
            if(this.§`# § < 0)
            {
               (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).setVisibility(false);
               this.§`# § = 0;
            }
         }
         (§!$§.getItemByName("Button_LeftMenuOpen") as §=O§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§!$§.getItemByName("Button_RightMenuOpen") as §=O§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§!$§.getItemByName("Button_LeftMenuOpen") as §=O§).mClip.MovieClip_LeftMenuImage.rotation = this.§,#J§;
         (§!$§.getItemByName("Button_RightMenuOpen") as §=O§).mClip.MovieClip_RightMenuImage.rotation = this.§;#K§;
         (§!$§.getItemByName("Container_MenuLeftButtons") as §0"<§).y = this.§`0§ - this.§<"q§;
         (§!$§.getItemByName("Container_MenuRightButtons") as §0"<§).y = this.§,U§ - this.§`# §;
      }
      
      override public function deActivate() : void
      {
         (§!$§.getItemByName("Button_Play") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<D§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§7"v§)
               {
                  this.§7"v§ = false;
               }
               else
               {
                  this.§7"v§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§2"i§)
               {
                  this.§2"i§ = false;
               }
               else
               {
                  this.§2"i§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§]4§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §!$§.setItemVisibility("Container_MenuButtons",!§!$§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§>"$§.§-$5§();
               §>"$§.§,#K§(_loc4_);
               §!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.§&f§();
               break;
            case "OPEN_CREDITS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               break;
            case "CREDITS_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§"$6§.STATE_NAME);
               this.§7"v§ = false;
               break;
            case "SOUNDS_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               _loc5_ = !AngryBirdsBase.§-"W§();
               AngryBirdsBase.§<#K§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §=#-§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§!$§.getItemByName("MovieClip_YouTubeArea") as §="T§).changeMovieClip(this.video);
                  (§!$§.getItemByName("MovieClip_YouTubeArea") as §="T§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
