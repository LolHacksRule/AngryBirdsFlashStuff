package §?'§
{
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§;!5§;
   import §7!4§.§+!2§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import §in§.§%K§;
   import §in§.§9c§;
   import §try§.§7x§;
   
   public class § 1§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelStartState";
      
      private static var §][§:BitmapData = null;
       
      
      private var §=x§:Boolean = false;
      
      private var §7e§:Boolean = false;
      
      private var §&x§:§+!2§ = null;
      
      private var §6R§:Boolean = false;
      
      private var §`m§:Boolean = false;
      
      private var §2!;§:Number = 0;
      
      private var §-A§:Number = 0;
      
      private var §#B§:Number = 0;
      
      private var §[!?§:Number = 0;
      
      private var §';§:Number;
      
      private var §84§:Number;
      
      private var §;>§:Number;
      
      private var §!u§:Number;
      
      private var §0!7§:§7x§;
      
      public function § 1§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §-x§() : BitmapData
      {
         return §][§;
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelStart[0]);
         this.§&x§ = new §+!2§(§8[§.§import§);
         this.§';§ = (§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).height;
         this.§84§ = (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).height;
         this.§;>§ = §<o§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!u§ = §<o§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8[§.§import§.§5q§(true);
         §8[§.§[r§(this.§&x§);
         this.§&x§.init();
         AngryBirdsFP11.§!!9§();
         §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"]§());
         §<o§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§8[§.§ set§());
         §<o§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§[l§.§`l§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;>§ = §<o§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§!u§ = §<o§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§1!$§(param1);
         if(!this.§7e§)
         {
            §8[§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      private function §1!$§(param1:Number) : void
      {
         (§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).mClip.scrollRect = new Rectangle(0,0,(§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).width,this.§';§ + 20 - (this.§';§ - this.§#B§));
         (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).mClip.scrollRect = new Rectangle(0,0,(§<o§.getItemByName("Container_MenuRightButtons") as §,1§).width,this.§84§ + 20 - (this.§84§ - this.§[!?§));
         if(this.§6R§)
         {
            (§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).setVisibility(true);
            if(this.§2!;§ < 90)
            {
               this.§2!;§ += 0.3 * param1;
            }
            if(this.§2!;§ > 90)
            {
               this.§2!;§ = 90;
            }
            if(this.§#B§ < this.§';§)
            {
               this.§#B§ += 0.5 * param1;
            }
            if(this.§#B§ > this.§';§)
            {
               this.§#B§ = this.§';§;
            }
         }
         else
         {
            if(this.§2!;§ > 0)
            {
               this.§2!;§ -= 0.3 * param1;
            }
            if(this.§2!;§ < 0)
            {
               this.§2!;§ = 0;
            }
            if(this.§#B§ > 0)
            {
               this.§#B§ -= 0.5 * param1;
            }
            if(this.§#B§ < 0)
            {
               (§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).setVisibility(false);
               this.§#B§ = 0;
            }
         }
         if(this.§`m§)
         {
            (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).setVisibility(true);
            if(this.§-A§ < 180)
            {
               this.§-A§ += 0.5 * param1;
               (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).y = (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).y - 0.5 * param1;
            }
            if(this.§-A§ > 180)
            {
               this.§-A§ = 180;
            }
            if(this.§[!?§ < this.§84§)
            {
               this.§[!?§ += 0.5 * param1;
            }
            if(this.§[!?§ > this.§84§)
            {
               this.§[!?§ = this.§84§;
            }
         }
         else
         {
            if(this.§-A§ > 0)
            {
               this.§-A§ -= 0.5 * param1;
               (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).y = (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).y + 0.5 * param1;
            }
            if(this.§-A§ < 0)
            {
               this.§-A§ = 0;
            }
            if(this.§[!?§ > 0)
            {
               this.§[!?§ -= 0.5 * param1;
            }
            if(this.§[!?§ < 0)
            {
               (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).setVisibility(false);
               this.§[!?§ = 0;
            }
         }
         (§<o§.getItemByName("Button_LeftMenuOpen") as §%X§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§<o§.getItemByName("Button_RightMenuOpen") as §%X§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§<o§.getItemByName("Button_LeftMenuOpen") as §%X§).mClip.MovieClip_LeftMenuImage.rotation = this.§2!;§;
         (§<o§.getItemByName("Button_RightMenuOpen") as §%X§).mClip.MovieClip_RightMenuImage.rotation = this.§-A§;
         (§<o§.getItemByName("Container_MenuLeftButtons") as §,1§).y = this.§;>§ - this.§#B§;
         (§<o§.getItemByName("Container_MenuRightButtons") as §,1§).y = this.§!u§ - this.§[!?§;
      }
      
      override public function deActivate() : void
      {
         (§<o§.getItemByName("Button_Play") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§=x§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§6R§)
               {
                  this.§6R§ = false;
               }
               else
               {
                  this.§6R§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§`m§)
               {
                  this.§`m§ = false;
               }
               else
               {
                  this.§`m§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §2;§.playSound("Menu_Confirm");
               mNextState = §1w§.§`%§;
               break;
            case "OPEN_MENU":
               §<o§.setItemVisibility("Container_MenuButtons",!§<o§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§8[§.§ set§();
               §8[§.§"3§(_loc4_);
               §<o§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §2;§.playSound("Menu_Confirm");
               AngryBirdsFP11.§`H§.§>&§();
               break;
            case "OPEN_CREDITS":
               §2;§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §2;§.playSound("Menu_Confirm");
               mNextState = §2!!§.§`%§;
               this.§6R§ = false;
               break;
            case "SOUNDS_BUTTON":
               §2;§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§"]§();
               AngryBirdsFP11.§2t§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§!!9§();
               }
               §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§0!7§ == null)
               {
                  this.§0!7§ = new §7x§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§<o§.getItemByName("MovieClip_YouTubeArea") as §;!5§).changeMovieClip(this.§0!7§);
                  (§<o§.getItemByName("MovieClip_YouTubeArea") as §;!5§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
