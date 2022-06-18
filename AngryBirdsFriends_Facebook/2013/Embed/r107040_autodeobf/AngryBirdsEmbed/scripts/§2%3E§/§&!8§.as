package §2>§
{
   import §'0§.§]!2§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§[l§;
   import §3V§.§!!I§;
   import §3u§.§,i§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §&!8§ extends §9Y§
   {
      
      public static const §]! §:String = "LevelStartState";
      
      private static var §#!A§:BitmapData = null;
       
      
      private var §3!H§:Boolean = false;
      
      private var §4n§:Boolean = false;
      
      private var §?[§:§,i§ = null;
      
      private var §1x§:Boolean = false;
      
      private var §1-§:Boolean = false;
      
      private var §[!A§:Number = 0;
      
      private var §^c§:Number = 0;
      
      private var §=!3§:Number = 0;
      
      private var §?A§:Number = 0;
      
      private var §%`§:Number;
      
      private var §1n§:Number;
      
      private var §8!H§:Number;
      
      private var §0d§:Number;
      
      private var §,!>§:§!!I§;
      
      public function §&!8§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §-!7§() : BitmapData
      {
         return §#!A§;
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelStart[0]);
         this.§?[§ = new §,i§(§[!4§.§continue§);
         this.§%`§ = (§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).height;
         this.§1n§ = (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).height;
         this.§8!H§ = §!s§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§0d§ = §!s§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!4§.§continue§.§3!;§(true);
         §[!4§.§>L§(this.§?[§);
         this.§?[§.init();
         this.§,3§();
         §!s§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3§());
         §!s§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[!4§.§-u§());
         §!s§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§]x§ ? false : true);
      }
      
      protected function §,3§() : void
      {
         AngryBirdsFP11.§,3§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!H§ = §!s§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§0d§ = §!s§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§0x§(param1);
         if(!this.§4n§)
         {
            §[!4§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      private function §0x§(param1:Number) : void
      {
         (§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).mClip.scrollRect = new Rectangle(0,0,(§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).width,this.§%`§ + 20 - (this.§%`§ - this.§=!3§));
         (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).mClip.scrollRect = new Rectangle(0,0,(§!s§.getItemByName("Container_MenuRightButtons") as §&M§).width,this.§1n§ + 20 - (this.§1n§ - this.§?A§));
         if(this.§1x§)
         {
            (§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).setVisibility(true);
            if(this.§[!A§ < 90)
            {
               this.§[!A§ += 0.3 * param1;
            }
            if(this.§[!A§ > 90)
            {
               this.§[!A§ = 90;
            }
            if(this.§=!3§ < this.§%`§)
            {
               this.§=!3§ += 0.5 * param1;
            }
            if(this.§=!3§ > this.§%`§)
            {
               this.§=!3§ = this.§%`§;
            }
         }
         else
         {
            if(this.§[!A§ > 0)
            {
               this.§[!A§ -= 0.3 * param1;
            }
            if(this.§[!A§ < 0)
            {
               this.§[!A§ = 0;
            }
            if(this.§=!3§ > 0)
            {
               this.§=!3§ -= 0.5 * param1;
            }
            if(this.§=!3§ < 0)
            {
               (§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).setVisibility(false);
               this.§=!3§ = 0;
            }
         }
         if(this.§1-§)
         {
            (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).setVisibility(true);
            if(this.§^c§ < 180)
            {
               this.§^c§ += 0.5 * param1;
               (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).y = (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).y - 0.5 * param1;
            }
            if(this.§^c§ > 180)
            {
               this.§^c§ = 180;
            }
            if(this.§?A§ < this.§1n§)
            {
               this.§?A§ += 0.5 * param1;
            }
            if(this.§?A§ > this.§1n§)
            {
               this.§?A§ = this.§1n§;
            }
         }
         else
         {
            if(this.§^c§ > 0)
            {
               this.§^c§ -= 0.5 * param1;
               (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).y = (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).y + 0.5 * param1;
            }
            if(this.§^c§ < 0)
            {
               this.§^c§ = 0;
            }
            if(this.§?A§ > 0)
            {
               this.§?A§ -= 0.5 * param1;
            }
            if(this.§?A§ < 0)
            {
               (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).setVisibility(false);
               this.§?A§ = 0;
            }
         }
         (§!s§.getItemByName("Button_LeftMenuOpen") as §2H§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§!s§.getItemByName("Button_RightMenuOpen") as §2H§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§!s§.getItemByName("Button_LeftMenuOpen") as §2H§).mClip.MovieClip_LeftMenuImage.rotation = this.§[!A§;
         (§!s§.getItemByName("Button_RightMenuOpen") as §2H§).mClip.MovieClip_RightMenuImage.rotation = this.§^c§;
         (§!s§.getItemByName("Container_MenuLeftButtons") as §&M§).y = this.§8!H§ - this.§=!3§;
         (§!s§.getItemByName("Container_MenuRightButtons") as §&M§).y = this.§0d§ - this.§?A§;
      }
      
      override public function deActivate() : void
      {
         (§!s§.getItemByName("Button_Play") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3!H§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§1x§)
               {
                  this.§1x§ = false;
               }
               else
               {
                  this.§1x§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§1-§)
               {
                  this.§1-§ = false;
               }
               else
               {
                  this.§1-§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §]!2§.playSound("Menu_Confirm");
               mNextState = §9%§.§]! §;
               break;
            case "OPEN_MENU":
               §!s§.setItemVisibility("Container_MenuButtons",!§!s§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§[!4§.§-u§();
               §[!4§.§=!F§(_loc4_);
               §!s§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §]!2§.playSound("Menu_Confirm");
               AngryBirdsFP11.§6C§.§`d§();
               break;
            case "OPEN_CREDITS":
               §]!2§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §]!2§.playSound("Menu_Confirm");
               mNextState = §,a§.§]! §;
               this.§1x§ = false;
               break;
            case "SOUNDS_BUTTON":
               §]!2§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§3§();
               AngryBirdsFP11.§true §(_loc5_);
               if(_loc5_)
               {
                  this.§,3§();
               }
               §!s§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§,!>§ == null)
               {
                  this.§,!>§ = new §!!I§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§!s§.getItemByName("MovieClip_YouTubeArea") as §[l§).changeMovieClip(this.§,!>§);
                  (§!s§.getItemByName("MovieClip_YouTubeArea") as §[l§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
