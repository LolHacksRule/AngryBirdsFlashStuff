package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import §,!!§.§-"%§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>!?§.§#!d§;
   import §>Z§.§5;§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §'5§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelStartState";
      
      private static var §'!>§:BitmapData = null;
       
      
      private var § G§:Boolean = false;
      
      private var §[J§:Boolean = false;
      
      private var §&"!§:§#!d§ = null;
      
      private var §'!j§:Boolean = false;
      
      private var §8R§:Boolean = false;
      
      private var §="2§:Number = 0;
      
      private var §'!h§:Number = 0;
      
      private var §8!;§:Number = 0;
      
      private var §[!F§:Number = 0;
      
      private var §0!L§:Number;
      
      private var §%!k§:Number;
      
      private var §@!I§:Number;
      
      private var §#!U§:Number;
      
      private var §7y§:§-"%§;
      
      public function §'5§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §!!$§() : BitmapData
      {
         return §'!>§;
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelStart[0]);
         this.§&"!§ = new §#!d§(§5!U§.§,!E§);
         this.§0!L§ = (§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).height;
         this.§%!k§ = (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).height;
         this.§@!I§ = §3?§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#!U§ = §3?§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!U§.§,!E§.§=""§(true);
         §5!U§.§7!t§(this.§&"!§);
         this.§&"!§.init();
         this.§;!X§();
         §3?§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
         §3?§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§5!U§.§7!A§());
         §3?§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§"!c§.§@!d§ ? false : true);
      }
      
      protected function §;!X§() : void
      {
         AngryBirdsFP11.§;!X§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!I§ = §3?§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§#!U§ = §3?§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§=n§(param1);
         if(!this.§[J§)
         {
            §5!U§.§ !t§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      private function §=n§(param1:Number) : void
      {
         (§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).mClip.scrollRect = new Rectangle(0,0,(§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).width,this.§0!L§ + 20 - (this.§0!L§ - this.§8!;§));
         (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).mClip.scrollRect = new Rectangle(0,0,(§3?§.getItemByName("Container_MenuRightButtons") as §1H§).width,this.§%!k§ + 20 - (this.§%!k§ - this.§[!F§));
         if(this.§'!j§)
         {
            (§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).setVisibility(true);
            if(this.§="2§ < 90)
            {
               this.§="2§ += 0.3 * param1;
            }
            if(this.§="2§ > 90)
            {
               this.§="2§ = 90;
            }
            if(this.§8!;§ < this.§0!L§)
            {
               this.§8!;§ += 0.5 * param1;
            }
            if(this.§8!;§ > this.§0!L§)
            {
               this.§8!;§ = this.§0!L§;
            }
         }
         else
         {
            if(this.§="2§ > 0)
            {
               this.§="2§ -= 0.3 * param1;
            }
            if(this.§="2§ < 0)
            {
               this.§="2§ = 0;
            }
            if(this.§8!;§ > 0)
            {
               this.§8!;§ -= 0.5 * param1;
            }
            if(this.§8!;§ < 0)
            {
               (§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).setVisibility(false);
               this.§8!;§ = 0;
            }
         }
         if(this.§8R§)
         {
            (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).setVisibility(true);
            if(this.§'!h§ < 180)
            {
               this.§'!h§ += 0.5 * param1;
               (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).y = (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).y - 0.5 * param1;
            }
            if(this.§'!h§ > 180)
            {
               this.§'!h§ = 180;
            }
            if(this.§[!F§ < this.§%!k§)
            {
               this.§[!F§ += 0.5 * param1;
            }
            if(this.§[!F§ > this.§%!k§)
            {
               this.§[!F§ = this.§%!k§;
            }
         }
         else
         {
            if(this.§'!h§ > 0)
            {
               this.§'!h§ -= 0.5 * param1;
               (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).y = (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).y + 0.5 * param1;
            }
            if(this.§'!h§ < 0)
            {
               this.§'!h§ = 0;
            }
            if(this.§[!F§ > 0)
            {
               this.§[!F§ -= 0.5 * param1;
            }
            if(this.§[!F§ < 0)
            {
               (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).setVisibility(false);
               this.§[!F§ = 0;
            }
         }
         (§3?§.getItemByName("Button_LeftMenuOpen") as §8K§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§3?§.getItemByName("Button_RightMenuOpen") as §8K§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§3?§.getItemByName("Button_LeftMenuOpen") as §8K§).mClip.MovieClip_LeftMenuImage.rotation = this.§="2§;
         (§3?§.getItemByName("Button_RightMenuOpen") as §8K§).mClip.MovieClip_RightMenuImage.rotation = this.§'!h§;
         (§3?§.getItemByName("Container_MenuLeftButtons") as §1H§).y = this.§@!I§ - this.§8!;§;
         (§3?§.getItemByName("Container_MenuRightButtons") as §1H§).y = this.§#!U§ - this.§[!F§;
      }
      
      override public function deActivate() : void
      {
         (§3?§.getItemByName("Button_Play") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ G§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§'!j§)
               {
                  this.§'!j§ = false;
               }
               else
               {
                  this.§'!j§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§8R§)
               {
                  this.§8R§ = false;
               }
               else
               {
                  this.§8R§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §5;§.playSound("Menu_Confirm");
               mNextState = §7!x§.§>H§;
               break;
            case "OPEN_MENU":
               §3?§.setItemVisibility("Container_MenuButtons",!§3?§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§5!U§.§7!A§();
               §5!U§.§ 5§(_loc4_);
               §3?§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §5;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§2p§.§`W§();
               break;
            case "OPEN_CREDITS":
               §5;§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §5;§.playSound("Menu_Confirm");
               mNextState = §^f§.§>H§;
               this.§'!j§ = false;
               break;
            case "SOUNDS_BUTTON":
               §5;§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.getSoundsEnabled();
               AngryBirdsFP11.setSoundsEnabled(_loc5_);
               if(_loc5_)
               {
                  this.§;!X§();
               }
               §3?§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§7y§ == null)
               {
                  this.§7y§ = new §-"%§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§3?§.getItemByName("MovieClip_YouTubeArea") as §%!7§).changeMovieClip(this.§7y§);
                  (§3?§.getItemByName("MovieClip_YouTubeArea") as §%!7§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
