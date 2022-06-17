package §]§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§'! §;
   import §+`§.§%"q§;
   import §3"V§.§ b§;
   import §6#h§.§0!n§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import flash.geom.Rectangle;
   
   public class §;#D§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §2#6§:Boolean = false;
      
      private var §""l§:Boolean = false;
      
      private var § 1§:§0!n§ = null;
      
      private var §&$B§:Boolean = false;
      
      private var §+^§:Boolean = false;
      
      private var §5!K§:Number = 0;
      
      private var §>,§:Number = 0;
      
      private var §&#Q§:Number = 0;
      
      private var §9#q§:Number = 0;
      
      private var §2"%§:Number;
      
      private var §0" §:Number;
      
      private var §[#f§:Number;
      
      private var §!!N§:Number;
      
      private var video:§'! §;
      
      public function §;#D§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelStart[0]);
         this.§ 1§ = new §0!n§(§]$?§.§2#§,mLevelManager);
         this.§2"%§ = (§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).height;
         this.§0" § = (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).height;
         this.§[#f§ = §;!w§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!!N§ = §;!w§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.§2#§.setVisible(true);
         §]$?§.setController(this.§ 1§);
         this.§ 1§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §;!w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§;!Q§());
         §;!w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§]$?§.§4!q§());
         §;!w§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§2]§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§[#f§ = §;!w§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!!N§ = §;!w§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§+d§(param1);
         if(!this.§""l§)
         {
            §]$?§.§;r§.update(param1);
         }
      }
      
      private function §+d§(param1:Number) : void
      {
         (§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).mClip.scrollRect = new Rectangle(0,0,(§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).width,this.§2"%§ + 20 - (this.§2"%§ - this.§&#Q§));
         (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).mClip.scrollRect = new Rectangle(0,0,(§;!w§.getItemByName("Container_MenuRightButtons") as §23§).width,this.§0" § + 20 - (this.§0" § - this.§9#q§));
         if(this.§&$B§)
         {
            (§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).setVisibility(true);
            if(this.§5!K§ < 90)
            {
               this.§5!K§ += 0.3 * param1;
            }
            if(this.§5!K§ > 90)
            {
               this.§5!K§ = 90;
            }
            if(this.§&#Q§ < this.§2"%§)
            {
               this.§&#Q§ += 0.5 * param1;
            }
            if(this.§&#Q§ > this.§2"%§)
            {
               this.§&#Q§ = this.§2"%§;
            }
         }
         else
         {
            if(this.§5!K§ > 0)
            {
               this.§5!K§ -= 0.3 * param1;
            }
            if(this.§5!K§ < 0)
            {
               this.§5!K§ = 0;
            }
            if(this.§&#Q§ > 0)
            {
               this.§&#Q§ -= 0.5 * param1;
            }
            if(this.§&#Q§ < 0)
            {
               (§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).setVisibility(false);
               this.§&#Q§ = 0;
            }
         }
         if(this.§+^§)
         {
            (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).setVisibility(true);
            if(this.§>,§ < 180)
            {
               this.§>,§ += 0.5 * param1;
               (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).y = (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).y - 0.5 * param1;
            }
            if(this.§>,§ > 180)
            {
               this.§>,§ = 180;
            }
            if(this.§9#q§ < this.§0" §)
            {
               this.§9#q§ += 0.5 * param1;
            }
            if(this.§9#q§ > this.§0" §)
            {
               this.§9#q§ = this.§0" §;
            }
         }
         else
         {
            if(this.§>,§ > 0)
            {
               this.§>,§ -= 0.5 * param1;
               (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).y = (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).y + 0.5 * param1;
            }
            if(this.§>,§ < 0)
            {
               this.§>,§ = 0;
            }
            if(this.§9#q§ > 0)
            {
               this.§9#q§ -= 0.5 * param1;
            }
            if(this.§9#q§ < 0)
            {
               (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).setVisibility(false);
               this.§9#q§ = 0;
            }
         }
         (§;!w§.getItemByName("Button_LeftMenuOpen") as §1"r§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§;!w§.getItemByName("Button_RightMenuOpen") as §1"r§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§;!w§.getItemByName("Button_LeftMenuOpen") as §1"r§).mClip.MovieClip_LeftMenuImage.rotation = this.§5!K§;
         (§;!w§.getItemByName("Button_RightMenuOpen") as §1"r§).mClip.MovieClip_RightMenuImage.rotation = this.§>,§;
         (§;!w§.getItemByName("Container_MenuLeftButtons") as §23§).y = this.§[#f§ - this.§&#Q§;
         (§;!w§.getItemByName("Container_MenuRightButtons") as §23§).y = this.§!!N§ - this.§9#q§;
      }
      
      override public function deActivate() : void
      {
         (§;!w§.getItemByName("Button_Play") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2#6§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§&$B§)
               {
                  this.§&$B§ = false;
               }
               else
               {
                  this.§&$B§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§+^§)
               {
                  this.§+^§ = false;
               }
               else
               {
                  this.§+^§ = true;
               }
               break;
            case "PLAY_LEVEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§9#Q§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §;!w§.setItemVisibility("Container_MenuButtons",!§;!w§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§]$?§.§4!q§();
               §]$?§.§-!$§(_loc4_);
               §;!w§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
               break;
            case "OPEN_CREDITS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               break;
            case "CREDITS_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§[#t§.STATE_NAME);
               this.§&$B§ = false;
               break;
            case "SOUNDS_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               _loc5_ = !AngryBirdsBase.§;!Q§();
               AngryBirdsBase.§"#R§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §;!w§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §'! §("http://www.youtube.com/v/-eyig_V-_5o");
                  (§;!w§.getItemByName("MovieClip_YouTubeArea") as §"!A§).changeMovieClip(this.video);
                  (§;!w§.getItemByName("MovieClip_YouTubeArea") as §"!A§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
