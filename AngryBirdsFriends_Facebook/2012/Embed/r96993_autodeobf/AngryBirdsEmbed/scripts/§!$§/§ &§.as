package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!'§.§in §;
   import §4!'§.§'!3§;
   import §>%§.§]3§;
   import §>A§.§`!!§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class § &§ extends §3!'§
   {
      
      public static const §9"§:String = "LevelStartState";
      
      private static var §%!!§:BitmapData = null;
       
      
      private var §%!<§:Boolean = false;
      
      private var §&!D§:Boolean = false;
      
      private var §;r§:§`!!§ = null;
      
      private var §'!%§:Boolean = false;
      
      private var §?#§:Boolean = false;
      
      private var §8!4§:Number = 0;
      
      private var §;u§:Number = 0;
      
      private var §+!#§:Number = 0;
      
      private var §3f§:Number = 0;
      
      private var §%!>§:Number;
      
      private var §<r§:Number;
      
      private var §#`§:Number;
      
      private var §]W§:Number;
      
      private var § 0§:§'!3§;
      
      public function § &§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §<X§() : BitmapData
      {
         return §%!!§;
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelStart[0]);
         this.§;r§ = new §`!!§(§]3§.§;v§);
         this.§%!>§ = (§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).height;
         this.§<r§ = (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).height;
         this.§#`§ = §+!2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§]W§ = §+!2§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]3§.§;v§.§@!A§(true);
         §]3§.§1_§(this.§;r§);
         this.§;r§.init();
         AngryBirdsFP11.§[! §();
         §+!2§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§1!9§());
         §+!2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§]3§.§[L§());
         §+!2§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§2!=§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#`§ = §+!2§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§]W§ = §+!2§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§9F§(param1);
         if(!this.§&!D§)
         {
            §]3§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      private function §9F§(param1:Number) : void
      {
         (§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).mClip.scrollRect = new Rectangle(0,0,(§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).width,this.§%!>§ + 20 - (this.§%!>§ - this.§+!#§));
         (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).mClip.scrollRect = new Rectangle(0,0,(§+!2§.getItemByName("Container_MenuRightButtons") as §in §).width,this.§<r§ + 20 - (this.§<r§ - this.§3f§));
         if(this.§'!%§)
         {
            (§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).setVisibility(true);
            if(this.§8!4§ < 90)
            {
               this.§8!4§ += 0.3 * param1;
            }
            if(this.§8!4§ > 90)
            {
               this.§8!4§ = 90;
            }
            if(this.§+!#§ < this.§%!>§)
            {
               this.§+!#§ += 0.5 * param1;
            }
            if(this.§+!#§ > this.§%!>§)
            {
               this.§+!#§ = this.§%!>§;
            }
         }
         else
         {
            if(this.§8!4§ > 0)
            {
               this.§8!4§ -= 0.3 * param1;
            }
            if(this.§8!4§ < 0)
            {
               this.§8!4§ = 0;
            }
            if(this.§+!#§ > 0)
            {
               this.§+!#§ -= 0.5 * param1;
            }
            if(this.§+!#§ < 0)
            {
               (§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).setVisibility(false);
               this.§+!#§ = 0;
            }
         }
         if(this.§?#§)
         {
            (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).setVisibility(true);
            if(this.§;u§ < 180)
            {
               this.§;u§ += 0.5 * param1;
               (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).y = (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).y - 0.5 * param1;
            }
            if(this.§;u§ > 180)
            {
               this.§;u§ = 180;
            }
            if(this.§3f§ < this.§<r§)
            {
               this.§3f§ += 0.5 * param1;
            }
            if(this.§3f§ > this.§<r§)
            {
               this.§3f§ = this.§<r§;
            }
         }
         else
         {
            if(this.§;u§ > 0)
            {
               this.§;u§ -= 0.5 * param1;
               (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).y = (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).y + 0.5 * param1;
            }
            if(this.§;u§ < 0)
            {
               this.§;u§ = 0;
            }
            if(this.§3f§ > 0)
            {
               this.§3f§ -= 0.5 * param1;
            }
            if(this.§3f§ < 0)
            {
               (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).setVisibility(false);
               this.§3f§ = 0;
            }
         }
         (§+!2§.getItemByName("Button_LeftMenuOpen") as §;f§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§+!2§.getItemByName("Button_RightMenuOpen") as §;f§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§+!2§.getItemByName("Button_LeftMenuOpen") as §;f§).mClip.MovieClip_LeftMenuImage.rotation = this.§8!4§;
         (§+!2§.getItemByName("Button_RightMenuOpen") as §;f§).mClip.MovieClip_RightMenuImage.rotation = this.§;u§;
         (§+!2§.getItemByName("Container_MenuLeftButtons") as §in §).y = this.§#`§ - this.§+!#§;
         (§+!2§.getItemByName("Container_MenuRightButtons") as §in §).y = this.§]W§ - this.§3f§;
      }
      
      override public function deActivate() : void
      {
         (§+!2§.getItemByName("Button_Play") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%!<§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§'!%§)
               {
                  this.§'!%§ = false;
                  break;
               }
               this.§'!%§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§?#§)
               {
                  this.§?#§ = false;
                  break;
               }
               this.§?#§ = true;
               break;
            case "PLAY_LEVEL":
               §^]§.§1g§("Menu_Confirm");
               mNextState = §5!?§.§9"§;
               break;
            case "OPEN_MENU":
               §+!2§.setItemVisibility("Container_MenuButtons",!§+!2§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§]3§.§[L§();
               §]3§.§@S§(_loc4_);
               §+!2§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §^]§.§1g§("Menu_Confirm");
               AngryBirdsFP11.§"h§.§>B§();
               break;
            case "OPEN_CREDITS":
               §^]§.§1g§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §^]§.§1g§("Menu_Confirm");
               mNextState = § X§.§9"§;
               this.§'!%§ = false;
               break;
            case "SOUNDS_BUTTON":
               §^]§.§1g§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§1!9§();
               AngryBirdsFP11.§[7§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§[! §();
               }
               §+!2§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§ 0§ == null)
               {
                  this.§ 0§ = new §'!3§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§+!2§.getItemByName("MovieClip_YouTubeArea") as §@D§).changeMovieClip(this.§ 0§);
                  (§+!2§.getItemByName("MovieClip_YouTubeArea") as §@D§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
