package §;H§
{
   import §+0§.§,!E§;
   import §-%§.§]!K§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§?,§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §%!R§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelStartState";
      
      private static var §>!"§:BitmapData = null;
       
      
      private var §%T§:Boolean = false;
      
      private var §3u§:Boolean = false;
      
      private var §+!h§:§]!K§ = null;
      
      private var §9B§:Boolean = false;
      
      private var §%l§:Boolean = false;
      
      private var §"`§:Number = 0;
      
      private var §3[§:Number = 0;
      
      private var §%!o§:Number = 0;
      
      private var §6!#§:Number = 0;
      
      private var §;!D§:Number;
      
      private var §-T§:Number;
      
      private var §+=§:Number;
      
      private var §9!=§:Number;
      
      private var §-O§:§?,§;
      
      public function §%!R§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §>!B§() : BitmapData
      {
         return §>!"§;
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelStart[0]);
         this.§+!h§ = new §]!K§(§^!c§.§5!Y§);
         this.§;!D§ = (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).height;
         this.§-T§ = (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).height;
         this.§+=§ = §&!m§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!=§ = §&!m§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^!c§.§5!Y§.§@!v§(true);
         §^!c§.setController(this.§+!h§);
         this.§+!h§.init();
         AngryBirdsFP11.playThemeMusic();
         §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!b§());
         §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§^!c§.§ !?§());
         §&!m§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§'!>§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+=§ = §&!m§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§9!=§ = §&!m§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§]!t§(param1);
         if(!this.§3u§)
         {
            §^!c§.§-U§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function §]!t§(param1:Number) : void
      {
         (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).mClip.scrollRect = new Rectangle(0,0,(§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).width,this.§;!D§ + 20 - (this.§;!D§ - this.§%!o§));
         (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).mClip.scrollRect = new Rectangle(0,0,(§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).width,this.§-T§ + 20 - (this.§-T§ - this.§6!#§));
         if(this.§9B§)
         {
            (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).setVisibility(true);
            if(this.§"`§ < 90)
            {
               this.§"`§ += 0.3 * param1;
            }
            if(this.§"`§ > 90)
            {
               this.§"`§ = 90;
            }
            if(this.§%!o§ < this.§;!D§)
            {
               this.§%!o§ += 0.5 * param1;
            }
            if(this.§%!o§ > this.§;!D§)
            {
               this.§%!o§ = this.§;!D§;
            }
         }
         else
         {
            if(this.§"`§ > 0)
            {
               this.§"`§ -= 0.3 * param1;
            }
            if(this.§"`§ < 0)
            {
               this.§"`§ = 0;
            }
            if(this.§%!o§ > 0)
            {
               this.§%!o§ -= 0.5 * param1;
            }
            if(this.§%!o§ < 0)
            {
               (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).setVisibility(false);
               this.§%!o§ = 0;
            }
         }
         if(this.§%l§)
         {
            (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).setVisibility(true);
            if(this.§3[§ < 180)
            {
               this.§3[§ += 0.5 * param1;
               (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y = (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y - 0.5 * param1;
            }
            if(this.§3[§ > 180)
            {
               this.§3[§ = 180;
            }
            if(this.§6!#§ < this.§-T§)
            {
               this.§6!#§ += 0.5 * param1;
            }
            if(this.§6!#§ > this.§-T§)
            {
               this.§6!#§ = this.§-T§;
            }
         }
         else
         {
            if(this.§3[§ > 0)
            {
               this.§3[§ -= 0.5 * param1;
               (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y = (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y + 0.5 * param1;
            }
            if(this.§3[§ < 0)
            {
               this.§3[§ = 0;
            }
            if(this.§6!#§ > 0)
            {
               this.§6!#§ -= 0.5 * param1;
            }
            if(this.§6!#§ < 0)
            {
               (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).setVisibility(false);
               this.§6!#§ = 0;
            }
         }
         (§&!m§.getItemByName("Button_LeftMenuOpen") as §==§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§&!m§.getItemByName("Button_RightMenuOpen") as §==§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§&!m§.getItemByName("Button_LeftMenuOpen") as §==§).mClip.MovieClip_LeftMenuImage.rotation = this.§"`§;
         (§&!m§.getItemByName("Button_RightMenuOpen") as §==§).mClip.MovieClip_RightMenuImage.rotation = this.§3[§;
         (§&!m§.getItemByName("Container_MenuLeftButtons") as §#?§).y = this.§+=§ - this.§%!o§;
         (§&!m§.getItemByName("Container_MenuRightButtons") as §#?§).y = this.§9!=§ - this.§6!#§;
      }
      
      override public function deActivate() : void
      {
         (§&!m§.getItemByName("Button_Play") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%T§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§9B§)
               {
                  this.§9B§ = false;
               }
               else
               {
                  this.§9B§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§%l§)
               {
                  this.§%l§ = false;
               }
               else
               {
                  this.§%l§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §9'§.playSound("Menu_Confirm");
               mNextState = §,!]§.§"!s§;
               break;
            case "OPEN_MENU":
               §&!m§.setItemVisibility("Container_MenuButtons",!§&!m§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§^!c§.§ !?§();
               §^!c§.§9!p§(_loc4_);
               §&!m§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §9'§.playSound("Menu_Confirm");
               AngryBirdsFP11.§3l§.§1T§();
               break;
            case "OPEN_CREDITS":
               §9'§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §9'§.playSound("Menu_Confirm");
               mNextState = §9!3§.§"!s§;
               this.§9B§ = false;
               break;
            case "SOUNDS_BUTTON":
               §9'§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§0!b§();
               AngryBirdsFP11.§5!C§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §&!m§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§-O§ == null)
               {
                  this.§-O§ = new §?,§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§&!m§.getItemByName("MovieClip_YouTubeArea") as §1!=§).changeMovieClip(this.§-O§);
                  (§&!m§.getItemByName("MovieClip_YouTubeArea") as §1!=§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
