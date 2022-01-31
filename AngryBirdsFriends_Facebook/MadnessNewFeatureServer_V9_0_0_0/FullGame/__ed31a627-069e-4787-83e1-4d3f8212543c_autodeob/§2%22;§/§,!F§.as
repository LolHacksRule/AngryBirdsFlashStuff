package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§2!E§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §4§.§%"o§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import flash.geom.Rectangle;
   
   public class §,!F§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §!"x§:Boolean = false;
      
      private var §6![§:Boolean = false;
      
      private var §^5§:§%"o§ = null;
      
      private var §9#X§:Boolean = false;
      
      private var §>#=§:Boolean = false;
      
      private var §%,§:Number = 0;
      
      private var §-#d§:Number = 0;
      
      private var §,"M§:Number = 0;
      
      private var §;$9§:Number = 0;
      
      private var §2c§:Number;
      
      private var §;e§:Number;
      
      private var §5"[§:Number;
      
      private var §["^§:Number;
      
      private var video:§2!E§;
      
      public function §,!F§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelStart[0]);
         this.§^5§ = new §%"o§(§7n§.§6#K§,mLevelManager);
         this.§2c§ = (§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).height;
         this.§;e§ = (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).height;
         this.§5"[§ = §[$5§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§["^§ = §[$5§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.§6#K§.setVisible(true);
         §7n§.setController(this.§^5§);
         this.§^5§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §[$5§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§"!v§());
         §[$5§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§7n§.§?$5§());
         §[$5§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§;?§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§5"[§ = §[$5§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§["^§ = §[$5§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§0!2§(param1);
         if(!this.§6![§)
         {
            §7n§.§ "'§.update(param1);
         }
      }
      
      private function §0!2§(param1:Number) : void
      {
         (§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).mClip.scrollRect = new Rectangle(0,0,(§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).width,this.§2c§ + 20 - (this.§2c§ - this.§,"M§));
         (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).mClip.scrollRect = new Rectangle(0,0,(§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).width,this.§;e§ + 20 - (this.§;e§ - this.§;$9§));
         if(this.§9#X§)
         {
            (§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).setVisibility(true);
            if(this.§%,§ < 90)
            {
               this.§%,§ += 0.3 * param1;
            }
            if(this.§%,§ > 90)
            {
               this.§%,§ = 90;
            }
            if(this.§,"M§ < this.§2c§)
            {
               this.§,"M§ += 0.5 * param1;
            }
            if(this.§,"M§ > this.§2c§)
            {
               this.§,"M§ = this.§2c§;
            }
         }
         else
         {
            if(this.§%,§ > 0)
            {
               this.§%,§ -= 0.3 * param1;
            }
            if(this.§%,§ < 0)
            {
               this.§%,§ = 0;
            }
            if(this.§,"M§ > 0)
            {
               this.§,"M§ -= 0.5 * param1;
            }
            if(this.§,"M§ < 0)
            {
               (§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).setVisibility(false);
               this.§,"M§ = 0;
            }
         }
         if(this.§>#=§)
         {
            (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).setVisibility(true);
            if(this.§-#d§ < 180)
            {
               this.§-#d§ += 0.5 * param1;
               (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).y = (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).y - 0.5 * param1;
            }
            if(this.§-#d§ > 180)
            {
               this.§-#d§ = 180;
            }
            if(this.§;$9§ < this.§;e§)
            {
               this.§;$9§ += 0.5 * param1;
            }
            if(this.§;$9§ > this.§;e§)
            {
               this.§;$9§ = this.§;e§;
            }
         }
         else
         {
            if(this.§-#d§ > 0)
            {
               this.§-#d§ -= 0.5 * param1;
               (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).y = (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).y + 0.5 * param1;
            }
            if(this.§-#d§ < 0)
            {
               this.§-#d§ = 0;
            }
            if(this.§;$9§ > 0)
            {
               this.§;$9§ -= 0.5 * param1;
            }
            if(this.§;$9§ < 0)
            {
               (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).setVisibility(false);
               this.§;$9§ = 0;
            }
         }
         (§[$5§.getItemByName("Button_LeftMenuOpen") as § !>§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§[$5§.getItemByName("Button_RightMenuOpen") as § !>§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§[$5§.getItemByName("Button_LeftMenuOpen") as § !>§).mClip.MovieClip_LeftMenuImage.rotation = this.§%,§;
         (§[$5§.getItemByName("Button_RightMenuOpen") as § !>§).mClip.MovieClip_RightMenuImage.rotation = this.§-#d§;
         (§[$5§.getItemByName("Container_MenuLeftButtons") as §]$+§).y = this.§5"[§ - this.§,"M§;
         (§[$5§.getItemByName("Container_MenuRightButtons") as §]$+§).y = this.§["^§ - this.§;$9§;
      }
      
      override public function deActivate() : void
      {
         (§[$5§.getItemByName("Button_Play") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!"x§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§9#X§)
               {
                  this.§9#X§ = false;
               }
               else
               {
                  this.§9#X§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§>#=§)
               {
                  this.§>#=§ = false;
               }
               else
               {
                  this.§>#=§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§8$0§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §[$5§.setItemVisibility("Container_MenuButtons",!§[$5§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§7n§.§?$5§();
               §7n§.§4#P§(_loc4_);
               §[$5§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
               break;
            case "OPEN_CREDITS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            case "CREDITS_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§'#J§.STATE_NAME);
               this.§9#X§ = false;
               break;
            case "SOUNDS_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               _loc5_ = !AngryBirdsBase.§"!v§();
               AngryBirdsBase.§^"?§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §[$5§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §2!E§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§[$5§.getItemByName("MovieClip_YouTubeArea") as §'!`§).changeMovieClip(this.video);
                  (§[$5§.getItemByName("MovieClip_YouTubeArea") as §'!`§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
