package §2!U§
{
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §48§.§>6§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§"!=§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §&i§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelStartState";
      
      private static var §?!§:BitmapData = null;
       
      
      private var §9!d§:Boolean = false;
      
      private var §#!j§:Boolean = false;
      
      private var §0! §:§>6§ = null;
      
      private var §6!z§:Boolean = false;
      
      private var §"!y§:Boolean = false;
      
      private var §"`§:Number = 0;
      
      private var § !Y§:Number = 0;
      
      private var §]!c§:Number = 0;
      
      private var §&!?§:Number = 0;
      
      private var §;P§:Number;
      
      private var §?!E§:Number;
      
      private var §;5§:Number;
      
      private var §?!B§:Number;
      
      private var §,Y§:§"!=§;
      
      public function §&i§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §%!S§() : BitmapData
      {
         return §?!§;
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelStart[0]);
         this.§0! § = new §>6§(§,!s§.§=!I§);
         this.§;P§ = (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).height;
         this.§?!E§ = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).height;
         this.§;5§ = §'!Q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§?!B§ = §'!Q§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!s§.§=!I§.§!C§(true);
         §,!s§.setController(this.§0! §);
         this.§0! §.init();
         this.playThemeMusic();
         §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"C§());
         §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§,!s§.§^@§());
         §'!Q§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§&m§ ? false : true);
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;5§ = §'!Q§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§?!B§ = §'!Q§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§-Q§(param1);
         if(!this.§#!j§)
         {
            §,!s§.§ Q§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      private function §-Q§(param1:Number) : void
      {
         (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).mClip.scrollRect = new Rectangle(0,0,(§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).width,this.§;P§ + 20 - (this.§;P§ - this.§]!c§));
         (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).mClip.scrollRect = new Rectangle(0,0,(§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).width,this.§?!E§ + 20 - (this.§?!E§ - this.§&!?§));
         if(this.§6!z§)
         {
            (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).setVisibility(true);
            if(this.§"`§ < 90)
            {
               this.§"`§ += 0.3 * param1;
            }
            if(this.§"`§ > 90)
            {
               this.§"`§ = 90;
            }
            if(this.§]!c§ < this.§;P§)
            {
               this.§]!c§ += 0.5 * param1;
            }
            if(this.§]!c§ > this.§;P§)
            {
               this.§]!c§ = this.§;P§;
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
            if(this.§]!c§ > 0)
            {
               this.§]!c§ -= 0.5 * param1;
            }
            if(this.§]!c§ < 0)
            {
               (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).setVisibility(false);
               this.§]!c§ = 0;
            }
         }
         if(this.§"!y§)
         {
            (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).setVisibility(true);
            if(this.§ !Y§ < 180)
            {
               this.§ !Y§ += 0.5 * param1;
               (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y - 0.5 * param1;
            }
            if(this.§ !Y§ > 180)
            {
               this.§ !Y§ = 180;
            }
            if(this.§&!?§ < this.§?!E§)
            {
               this.§&!?§ += 0.5 * param1;
            }
            if(this.§&!?§ > this.§?!E§)
            {
               this.§&!?§ = this.§?!E§;
            }
         }
         else
         {
            if(this.§ !Y§ > 0)
            {
               this.§ !Y§ -= 0.5 * param1;
               (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y = (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y + 0.5 * param1;
            }
            if(this.§ !Y§ < 0)
            {
               this.§ !Y§ = 0;
            }
            if(this.§&!?§ > 0)
            {
               this.§&!?§ -= 0.5 * param1;
            }
            if(this.§&!?§ < 0)
            {
               (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).setVisibility(false);
               this.§&!?§ = 0;
            }
         }
         (§'!Q§.getItemByName("Button_LeftMenuOpen") as §[!i§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§'!Q§.getItemByName("Button_RightMenuOpen") as §[!i§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§'!Q§.getItemByName("Button_LeftMenuOpen") as §[!i§).mClip.MovieClip_LeftMenuImage.rotation = this.§"`§;
         (§'!Q§.getItemByName("Button_RightMenuOpen") as §[!i§).mClip.MovieClip_RightMenuImage.rotation = this.§ !Y§;
         (§'!Q§.getItemByName("Container_MenuLeftButtons") as §^! §).y = this.§;5§ - this.§]!c§;
         (§'!Q§.getItemByName("Container_MenuRightButtons") as §^! §).y = this.§?!B§ - this.§&!?§;
      }
      
      override public function deActivate() : void
      {
         (§'!Q§.getItemByName("Button_Play") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§9!d§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§6!z§)
               {
                  this.§6!z§ = false;
               }
               else
               {
                  this.§6!z§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§"!y§)
               {
                  this.§"!y§ = false;
               }
               else
               {
                  this.§"!y§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §-!Q§.§#3§("Menu_Confirm");
               mNextState = §8"!§.§'!q§;
               break;
            case "OPEN_MENU":
               §'!Q§.setItemVisibility("Container_MenuButtons",!§'!Q§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§,!s§.§^@§();
               §,!s§.§'6§(_loc4_);
               §'!Q§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §-!Q§.§#3§("Menu_Confirm");
               AngryBirdsFP11.§'!g§.§]8§();
               break;
            case "OPEN_CREDITS":
               §-!Q§.§#3§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §-!Q§.§#3§("Menu_Confirm");
               mNextState = §<&§.§'!q§;
               this.§6!z§ = false;
               break;
            case "SOUNDS_BUTTON":
               §-!Q§.§#3§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§"C§();
               AngryBirdsFP11.§]!G§(_loc5_);
               if(_loc5_)
               {
                  this.playThemeMusic();
               }
               §'!Q§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§,Y§ == null)
               {
                  this.§,Y§ = new §"!=§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§'!Q§.getItemByName("MovieClip_YouTubeArea") as §7!p§).changeMovieClip(this.§,Y§);
                  (§'!Q§.getItemByName("MovieClip_YouTubeArea") as §7!p§).setVisibility(true);
               }
         }
      }
   }
}
