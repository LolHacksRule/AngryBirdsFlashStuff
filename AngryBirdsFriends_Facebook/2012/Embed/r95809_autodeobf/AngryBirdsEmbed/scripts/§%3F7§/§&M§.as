package §?7§
{
   import §"V§.§true§;
   import §'8§.§,,§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import §while§.§ z§;
   
   public class §&M§ extends §true§
   {
      
      public static const §4!&§:String = "LevelStartState";
      
      private static var §`8§:BitmapData = null;
       
      
      private var §%6§:Boolean = false;
      
      private var § var§:Boolean = false;
      
      private var §&S§:§,,§ = null;
      
      private var §&!D§:Boolean = false;
      
      private var §<#§:Boolean = false;
      
      private var §#!H§:Number = 0;
      
      private var §"!?§:Number = 0;
      
      private var §'!#§:Number = 0;
      
      private var §3!6§:Number = 0;
      
      private var §%!?§:Number;
      
      private var §!b§:Number;
      
      private var §<&§:Number;
      
      private var §4!<§:Number;
      
      private var §-]§:§ z§;
      
      public function §&M§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §-^§() : BitmapData
      {
         return §`8§;
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelStart[0]);
         this.§&S§ = new §,,§(§?'§.§5!§);
         this.§%!?§ = (§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).height;
         this.§!b§ = (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).height;
         this.§<&§ = §6!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§4!<§ = §6!$§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?'§.§5!§.§`!?§(true);
         §?'§.§]`§(this.§&S§);
         this.§&S§.init();
         AngryBirdsFP11.§91§();
         §6!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,!+§());
         §6!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§?'§.§]P§());
         §6!$§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§ 9§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<&§ = §6!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§4!<§ = §6!$§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§#j§(param1);
         if(!this.§ var§)
         {
            §?'§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      private function §#j§(param1:Number) : void
      {
         (§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).mClip.scrollRect = new Rectangle(0,0,(§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).width,this.§%!?§ + 20 - (this.§%!?§ - this.§'!#§));
         (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).mClip.scrollRect = new Rectangle(0,0,(§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).width,this.§!b§ + 20 - (this.§!b§ - this.§3!6§));
         if(this.§&!D§)
         {
            (§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).setVisibility(true);
            if(this.§#!H§ < 90)
            {
               this.§#!H§ += 0.3 * param1;
            }
            if(this.§#!H§ > 90)
            {
               this.§#!H§ = 90;
            }
            if(this.§'!#§ < this.§%!?§)
            {
               this.§'!#§ += 0.5 * param1;
            }
            if(this.§'!#§ > this.§%!?§)
            {
               this.§'!#§ = this.§%!?§;
            }
         }
         else
         {
            if(this.§#!H§ > 0)
            {
               this.§#!H§ -= 0.3 * param1;
            }
            if(this.§#!H§ < 0)
            {
               this.§#!H§ = 0;
            }
            if(this.§'!#§ > 0)
            {
               this.§'!#§ -= 0.5 * param1;
            }
            if(this.§'!#§ < 0)
            {
               (§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).setVisibility(false);
               this.§'!#§ = 0;
            }
         }
         if(this.§<#§)
         {
            (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).setVisibility(true);
            if(this.§"!?§ < 180)
            {
               this.§"!?§ += 0.5 * param1;
               (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).y = (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).y - 0.5 * param1;
            }
            if(this.§"!?§ > 180)
            {
               this.§"!?§ = 180;
            }
            if(this.§3!6§ < this.§!b§)
            {
               this.§3!6§ += 0.5 * param1;
            }
            if(this.§3!6§ > this.§!b§)
            {
               this.§3!6§ = this.§!b§;
            }
         }
         else
         {
            if(this.§"!?§ > 0)
            {
               this.§"!?§ -= 0.5 * param1;
               (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).y = (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).y + 0.5 * param1;
            }
            if(this.§"!?§ < 0)
            {
               this.§"!?§ = 0;
            }
            if(this.§3!6§ > 0)
            {
               this.§3!6§ -= 0.5 * param1;
            }
            if(this.§3!6§ < 0)
            {
               (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).setVisibility(false);
               this.§3!6§ = 0;
            }
         }
         (§6!$§.getItemByName("Button_LeftMenuOpen") as §1;§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§6!$§.getItemByName("Button_RightMenuOpen") as §1;§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§6!$§.getItemByName("Button_LeftMenuOpen") as §1;§).mClip.MovieClip_LeftMenuImage.rotation = this.§#!H§;
         (§6!$§.getItemByName("Button_RightMenuOpen") as §1;§).mClip.MovieClip_RightMenuImage.rotation = this.§"!?§;
         (§6!$§.getItemByName("Container_MenuLeftButtons") as §=!'§).y = this.§<&§ - this.§'!#§;
         (§6!$§.getItemByName("Container_MenuRightButtons") as §=!'§).y = this.§4!<§ - this.§3!6§;
      }
      
      override public function deActivate() : void
      {
         (§6!$§.getItemByName("Button_Play") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%6§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§&!D§)
               {
                  this.§&!D§ = false;
                  break;
               }
               this.§&!D§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§<#§)
               {
                  this.§<#§ = false;
                  break;
               }
               this.§<#§ = true;
               break;
            case "PLAY_LEVEL":
               §;!>§.§>t§("Menu_Confirm");
               mNextState = §'!=§.§4!&§;
               break;
            case "OPEN_MENU":
               §6!$§.setItemVisibility("Container_MenuButtons",!§6!$§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§?'§.§]P§();
               §?'§.§]!!§(_loc4_);
               §6!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §;!>§.§>t§("Menu_Confirm");
               AngryBirdsFP11.§ for§.§>§();
               break;
            case "OPEN_CREDITS":
               §;!>§.§>t§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §;!>§.§>t§("Menu_Confirm");
               mNextState = §%o§.§4!&§;
               this.§&!D§ = false;
               break;
            case "SOUNDS_BUTTON":
               §;!>§.§>t§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§,!+§();
               AngryBirdsFP11.§5M§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§91§();
               }
               §6!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§-]§ == null)
               {
                  this.§-]§ = new § z§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§6!$§.getItemByName("MovieClip_YouTubeArea") as §02§).changeMovieClip(this.§-]§);
                  (§6!$§.getItemByName("MovieClip_YouTubeArea") as §02§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
