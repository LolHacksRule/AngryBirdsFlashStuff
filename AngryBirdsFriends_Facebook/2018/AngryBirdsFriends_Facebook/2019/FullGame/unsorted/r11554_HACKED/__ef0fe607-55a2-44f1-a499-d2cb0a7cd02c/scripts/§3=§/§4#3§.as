package §3=§
{
   import §!L§.§""2§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+#B§.§4#;§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import flash.geom.Rectangle;
   
   public class §4#3§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §4"x§:Boolean = false;
      
      private var §+!n§:Boolean = false;
      
      private var §6U§:§""2§ = null;
      
      private var §"!-§:Boolean = false;
      
      private var §'"i§:Boolean = false;
      
      private var §"!I§:Number = 0;
      
      private var §'!u§:Number = 0;
      
      private var §7!M§:Number = 0;
      
      private var §-y§:Number = 0;
      
      private var §!$"§:Number;
      
      private var §'!X§:Number;
      
      private var §1!C§:Number;
      
      private var §<"#§:Number;
      
      private var video:§4#;§;
      
      public function §4#3§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelStart[0]);
         this.§6U§ = new §""2§(§%"T§.§;`§,mLevelManager);
         this.§!$"§ = (§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).height;
         this.§'!X§ = (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).height;
         this.§1!C§ = §<"`§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§<"#§ = §<"`§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.§;`§.setVisible(true);
         §%"T§.setController(this.§6U§);
         this.§6U§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §<"`§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§!"4§());
         §<"`§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§%"T§.§=!'§());
         §<"`§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§6x§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§1!C§ = §<"`§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§<"#§ = §<"`§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§>#C§(param1);
         if(!this.§+!n§)
         {
            §%"T§.§+"M§.update(param1);
         }
      }
      
      private function §>#C§(param1:Number) : void
      {
         (§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).mClip.scrollRect = new Rectangle(0,0,(§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).width,this.§!$"§ + 20 - (this.§!$"§ - this.§7!M§));
         (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).mClip.scrollRect = new Rectangle(0,0,(§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).width,this.§'!X§ + 20 - (this.§'!X§ - this.§-y§));
         if(this.§"!-§)
         {
            (§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).setVisibility(true);
            if(this.§"!I§ < 90)
            {
               this.§"!I§ += 0.3 * param1;
            }
            if(this.§"!I§ > 90)
            {
               this.§"!I§ = 90;
            }
            if(this.§7!M§ < this.§!$"§)
            {
               this.§7!M§ += 0.5 * param1;
            }
            if(this.§7!M§ > this.§!$"§)
            {
               this.§7!M§ = this.§!$"§;
            }
         }
         else
         {
            if(this.§"!I§ > 0)
            {
               this.§"!I§ -= 0.3 * param1;
            }
            if(this.§"!I§ < 0)
            {
               this.§"!I§ = 0;
            }
            if(this.§7!M§ > 0)
            {
               this.§7!M§ -= 0.5 * param1;
            }
            if(this.§7!M§ < 0)
            {
               (§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).setVisibility(false);
               this.§7!M§ = 0;
            }
         }
         if(this.§'"i§)
         {
            (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).setVisibility(true);
            if(this.§'!u§ < 180)
            {
               this.§'!u§ += 0.5 * param1;
               (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).y = (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).y - 0.5 * param1;
            }
            if(this.§'!u§ > 180)
            {
               this.§'!u§ = 180;
            }
            if(this.§-y§ < this.§'!X§)
            {
               this.§-y§ += 0.5 * param1;
            }
            if(this.§-y§ > this.§'!X§)
            {
               this.§-y§ = this.§'!X§;
            }
         }
         else
         {
            if(this.§'!u§ > 0)
            {
               this.§'!u§ -= 0.5 * param1;
               (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).y = (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).y + 0.5 * param1;
            }
            if(this.§'!u§ < 0)
            {
               this.§'!u§ = 0;
            }
            if(this.§-y§ > 0)
            {
               this.§-y§ -= 0.5 * param1;
            }
            if(this.§-y§ < 0)
            {
               (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).setVisibility(false);
               this.§-y§ = 0;
            }
         }
         (§<"`§.getItemByName("Button_LeftMenuOpen") as §"S§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§<"`§.getItemByName("Button_RightMenuOpen") as §"S§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§<"`§.getItemByName("Button_LeftMenuOpen") as §"S§).mClip.MovieClip_LeftMenuImage.rotation = this.§"!I§;
         (§<"`§.getItemByName("Button_RightMenuOpen") as §"S§).mClip.MovieClip_RightMenuImage.rotation = this.§'!u§;
         (§<"`§.getItemByName("Container_MenuLeftButtons") as §<c§).y = this.§1!C§ - this.§7!M§;
         (§<"`§.getItemByName("Container_MenuRightButtons") as §<c§).y = this.§<"#§ - this.§-y§;
      }
      
      override public function deActivate() : void
      {
         (§<"`§.getItemByName("Button_Play") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§4"x§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§"!-§)
               {
                  this.§"!-§ = false;
               }
               else
               {
                  this.§"!-§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§'"i§)
               {
                  this.§'"i§ = false;
               }
               else
               {
                  this.§'"i§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§7W§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §<"`§.setItemVisibility("Container_MenuButtons",!§<"`§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§%"T§.§=!'§();
               §%"T§.§0"q§(_loc4_);
               §<"`§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
               break;
            case "OPEN_CREDITS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            case "CREDITS_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§1U§.STATE_NAME);
               this.§"!-§ = false;
               break;
            case "SOUNDS_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               _loc5_ = !AngryBirdsBase.§!"4§();
               AngryBirdsBase.§0!o§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §<"`§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §4#;§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§<"`§.getItemByName("MovieClip_YouTubeArea") as §>#8§).changeMovieClip(this.video);
                  (§<"`§.getItemByName("MovieClip_YouTubeArea") as §>#8§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
