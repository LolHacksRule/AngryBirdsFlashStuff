package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §=#G§.§]!W§;
   import §@!M§.§!"p§;
   import §`7§.§<!d§;
   import flash.geom.Rectangle;
   
   public class §!w§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var §+"V§:Boolean = false;
      
      private var §#§:Boolean = false;
      
      private var §-@§:§]!W§ = null;
      
      private var §4§:Boolean = false;
      
      private var §<!O§:Boolean = false;
      
      private var §7"H§:Number = 0;
      
      private var §7!Q§:Number = 0;
      
      private var §!",§:Number = 0;
      
      private var §,!D§:Number = 0;
      
      private var §,"H§:Number;
      
      private var §,$,§:Number;
      
      private var final:Number;
      
      private var §,!!§:Number;
      
      private var video:§<!d§;
      
      public function §!w§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelStartState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelStart[0]);
         this.§-@§ = new §]!W§(§3#U§.§#$4§,mLevelManager);
         this.§,"H§ = (§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).height;
         this.§,$,§ = (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).height;
         this.final = §`!H§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,!!§ = §`!H§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.§#$4§.§;"?§(true);
         §3#U§.setController(this.§-@§);
         this.§-@§.init();
         AngryBirdsBase.singleton.playThemeMusic();
         §`!H§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.§5!p§());
         §`!H§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§3#U§.§3#=§());
         §`!H§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.§-!!§ ? false : true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.final = §`!H§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,!!§ = §`!H§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§!$0§(param1);
         if(!this.§#§)
         {
            §3#U§.§8I§.update(param1);
         }
      }
      
      private function §!$0§(param1:Number) : void
      {
         (§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).mClip.scrollRect = new Rectangle(0,0,(§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).width,this.§,"H§ + 20 - (this.§,"H§ - this.§!",§));
         (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).mClip.scrollRect = new Rectangle(0,0,(§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).width,this.§,$,§ + 20 - (this.§,$,§ - this.§,!D§));
         if(this.§4§)
         {
            (§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).setVisibility(true);
            if(this.§7"H§ < 90)
            {
               this.§7"H§ += 0.3 * param1;
            }
            if(this.§7"H§ > 90)
            {
               this.§7"H§ = 90;
            }
            if(this.§!",§ < this.§,"H§)
            {
               this.§!",§ += 0.5 * param1;
            }
            if(this.§!",§ > this.§,"H§)
            {
               this.§!",§ = this.§,"H§;
            }
         }
         else
         {
            if(this.§7"H§ > 0)
            {
               this.§7"H§ -= 0.3 * param1;
            }
            if(this.§7"H§ < 0)
            {
               this.§7"H§ = 0;
            }
            if(this.§!",§ > 0)
            {
               this.§!",§ -= 0.5 * param1;
            }
            if(this.§!",§ < 0)
            {
               (§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).setVisibility(false);
               this.§!",§ = 0;
            }
         }
         if(this.§<!O§)
         {
            (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).setVisibility(true);
            if(this.§7!Q§ < 180)
            {
               this.§7!Q§ += 0.5 * param1;
               (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).y = (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).y - 0.5 * param1;
            }
            if(this.§7!Q§ > 180)
            {
               this.§7!Q§ = 180;
            }
            if(this.§,!D§ < this.§,$,§)
            {
               this.§,!D§ += 0.5 * param1;
            }
            if(this.§,!D§ > this.§,$,§)
            {
               this.§,!D§ = this.§,$,§;
            }
         }
         else
         {
            if(this.§7!Q§ > 0)
            {
               this.§7!Q§ -= 0.5 * param1;
               (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).y = (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).y + 0.5 * param1;
            }
            if(this.§7!Q§ < 0)
            {
               this.§7!Q§ = 0;
            }
            if(this.§,!D§ > 0)
            {
               this.§,!D§ -= 0.5 * param1;
            }
            if(this.§,!D§ < 0)
            {
               (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).setVisibility(false);
               this.§,!D§ = 0;
            }
         }
         (§`!H§.getItemByName("Button_LeftMenuOpen") as §>"0§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§`!H§.getItemByName("Button_RightMenuOpen") as §>"0§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§`!H§.getItemByName("Button_LeftMenuOpen") as §>"0§).mClip.MovieClip_LeftMenuImage.rotation = this.§7"H§;
         (§`!H§.getItemByName("Button_RightMenuOpen") as §>"0§).mClip.MovieClip_RightMenuImage.rotation = this.§7!Q§;
         (§`!H§.getItemByName("Container_MenuLeftButtons") as §[#K§).y = this.final - this.§!",§;
         (§`!H§.getItemByName("Container_MenuRightButtons") as §[#K§).y = this.§,!!§ - this.§,!D§;
      }
      
      override public function deActivate() : void
      {
         (§`!H§.getItemByName("Button_Play") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+"V§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§4§)
               {
                  this.§4§ = false;
               }
               else
               {
                  this.§4§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§<!O§)
               {
                  this.§<!O§ = false;
               }
               else
               {
                  this.§<!O§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§^!§.STATE_NAME);
               break;
            case "OPEN_MENU":
               §`!H§.setItemVisibility("Container_MenuButtons",!§`!H§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§3#U§.§3#=§();
               §3#U§.§-#p§(_loc4_);
               §`!H§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
               break;
            case "OPEN_CREDITS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            case "CREDITS_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§ !K§.STATE_NAME);
               this.§4§ = false;
               break;
            case "SOUNDS_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               _loc5_ = !AngryBirdsBase.§5!p§();
               AngryBirdsBase.§,7§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               §`!H§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new §<!d§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§`!H§.getItemByName("MovieClip_YouTubeArea") as §@N§).changeMovieClip(this.video);
                  (§`!H§.getItemByName("MovieClip_YouTubeArea") as §@N§).setVisibility(true);
               }
         }
      }
   }
}
