package § !@§
{
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §+!B§.§6P§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §>!7§.§&V§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5!#§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelStartState";
      
      private static var §06§:BitmapData = null;
       
      
      private var §5!5§:Boolean = false;
      
      private var §;c§:Boolean = false;
      
      private var §]!"§:§&V§ = null;
      
      private var §`!9§:Boolean = false;
      
      private var §!-§:Boolean = false;
      
      private var §;m§:Number = 0;
      
      private var §4!E§:Number = 0;
      
      private var §>1§:Number = 0;
      
      private var §,d§:Number = 0;
      
      private var §7E§:Number;
      
      private var §7m§:Number;
      
      private var §00§:Number;
      
      private var §6!6§:Number;
      
      private var §?K§:§6P§;
      
      public function §5!#§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §^k§() : BitmapData
      {
         return §06§;
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelStart[0]);
         this.§]!"§ = new §&V§(§=w§.§ o§);
         this.§7E§ = (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).height;
         this.§7m§ = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).height;
         this.§00§ = §]F§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§6!6§ = §]F§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=w§.§ o§.§7!E§(true);
         §=w§.§>@§(this.§]!"§);
         this.§]!"§.init();
         this.§ x§();
         §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§<!G§());
         §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§=w§.§-!;§());
         §]F§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§^3§ ? false : true);
      }
      
      protected function § x§() : void
      {
         AngryBirdsFP11.§ x§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§00§ = §]F§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§6!6§ = §]F§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§=!#§(param1);
         if(!this.§;c§)
         {
            §=w§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      private function §=!#§(param1:Number) : void
      {
         (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).mClip.scrollRect = new Rectangle(0,0,(§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).width,this.§7E§ + 20 - (this.§7E§ - this.§>1§));
         (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).mClip.scrollRect = new Rectangle(0,0,(§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).width,this.§7m§ + 20 - (this.§7m§ - this.§,d§));
         if(this.§`!9§)
         {
            (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).setVisibility(true);
            if(this.§;m§ < 90)
            {
               this.§;m§ += 0.3 * param1;
            }
            if(this.§;m§ > 90)
            {
               this.§;m§ = 90;
            }
            if(this.§>1§ < this.§7E§)
            {
               this.§>1§ += 0.5 * param1;
            }
            if(this.§>1§ > this.§7E§)
            {
               this.§>1§ = this.§7E§;
            }
         }
         else
         {
            if(this.§;m§ > 0)
            {
               this.§;m§ -= 0.3 * param1;
            }
            if(this.§;m§ < 0)
            {
               this.§;m§ = 0;
            }
            if(this.§>1§ > 0)
            {
               this.§>1§ -= 0.5 * param1;
            }
            if(this.§>1§ < 0)
            {
               (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).setVisibility(false);
               this.§>1§ = 0;
            }
         }
         if(this.§!-§)
         {
            (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).setVisibility(true);
            if(this.§4!E§ < 180)
            {
               this.§4!E§ += 0.5 * param1;
               (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y - 0.5 * param1;
            }
            if(this.§4!E§ > 180)
            {
               this.§4!E§ = 180;
            }
            if(this.§,d§ < this.§7m§)
            {
               this.§,d§ += 0.5 * param1;
            }
            if(this.§,d§ > this.§7m§)
            {
               this.§,d§ = this.§7m§;
            }
         }
         else
         {
            if(this.§4!E§ > 0)
            {
               this.§4!E§ -= 0.5 * param1;
               (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y + 0.5 * param1;
            }
            if(this.§4!E§ < 0)
            {
               this.§4!E§ = 0;
            }
            if(this.§,d§ > 0)
            {
               this.§,d§ -= 0.5 * param1;
            }
            if(this.§,d§ < 0)
            {
               (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).setVisibility(false);
               this.§,d§ = 0;
            }
         }
         (§]F§.getItemByName("Button_LeftMenuOpen") as §7-§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§]F§.getItemByName("Button_RightMenuOpen") as §7-§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§]F§.getItemByName("Button_LeftMenuOpen") as §7-§).mClip.MovieClip_LeftMenuImage.rotation = this.§;m§;
         (§]F§.getItemByName("Button_RightMenuOpen") as §7-§).mClip.MovieClip_RightMenuImage.rotation = this.§4!E§;
         (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).y = this.§00§ - this.§>1§;
         (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y = this.§6!6§ - this.§,d§;
      }
      
      override public function deActivate() : void
      {
         (§]F§.getItemByName("Button_Play") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5!5§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§`!9§)
               {
                  this.§`!9§ = false;
               }
               else
               {
                  this.§`!9§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§!-§)
               {
                  this.§!-§ = false;
               }
               else
               {
                  this.§!-§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §,!F§.§;v§("Menu_Confirm");
               mNextState = §for §.§>9§;
               break;
            case "OPEN_MENU":
               §]F§.setItemVisibility("Container_MenuButtons",!§]F§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§=w§.§-!;§();
               §=w§.§9C§(_loc4_);
               §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §,!F§.§;v§("Menu_Confirm");
               AngryBirdsFP11.§ y§.§-!$§();
               break;
            case "OPEN_CREDITS":
               §,!F§.§;v§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §,!F§.§;v§("Menu_Confirm");
               mNextState = §8!M§.§>9§;
               this.§`!9§ = false;
               break;
            case "SOUNDS_BUTTON":
               §,!F§.§;v§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§<!G§();
               AngryBirdsFP11.§%!H§(_loc5_);
               if(_loc5_)
               {
                  this.§ x§();
               }
               §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§?K§ == null)
               {
                  this.§?K§ = new §6P§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§]F§.getItemByName("MovieClip_YouTubeArea") as §9O§).changeMovieClip(this.§?K§);
                  (§]F§.getItemByName("MovieClip_YouTubeArea") as §9O§).setVisibility(true);
               }
         }
      }
   }
}
