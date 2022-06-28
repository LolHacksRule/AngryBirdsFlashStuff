package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'b§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §6H§.§>3§;
   import §=E§.§;S§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §1!§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelStartState";
      
      private static var §?!6§:BitmapData = null;
       
      
      private var §4=§:Boolean = false;
      
      private var §@H§:Boolean = false;
      
      private var §1w§:§;S§ = null;
      
      private var §[R§:Boolean = false;
      
      private var §=v§:Boolean = false;
      
      private var §0l§:Number = 0;
      
      private var §4z§:Number = 0;
      
      private var §97§:Number = 0;
      
      private var §2<§:Number = 0;
      
      private var §]R§:Number;
      
      private var §if §:Number;
      
      private var §[S§:Number;
      
      private var §,H§:Number;
      
      private var §1m§:§'b§;
      
      public function §1!§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §'a§() : BitmapData
      {
         return §?!6§;
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelStart[0]);
         this.§1w§ = new §;S§(§"h§.§1C§);
         this.§]R§ = (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).height;
         this.§if § = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).height;
         this.§[S§ = §-f§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,H§ = §-f§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"h§.§1C§.§]!!§(true);
         §"h§.§;j§(this.§1w§);
         this.§1w§.init();
         AngryBirdsFP11.§'!!§();
         §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§@6§());
         §-f§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§"h§.§"+§());
         §-f§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§@o§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§[S§ = §-f§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§,H§ = §-f§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§^!6§(param1);
         if(!this.§@H§)
         {
            §"h§.controller.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      private function §^!6§(param1:Number) : void
      {
         (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).mClip.scrollRect = new Rectangle(0,0,(§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).width,this.§]R§ + 20 - (this.§]R§ - this.§97§));
         (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).mClip.scrollRect = new Rectangle(0,0,(§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).width,this.§if § + 20 - (this.§if § - this.§2<§));
         if(this.§[R§)
         {
            (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).setVisibility(true);
            if(this.§0l§ < 90)
            {
               this.§0l§ += 0.3 * param1;
            }
            if(this.§0l§ > 90)
            {
               this.§0l§ = 90;
            }
            if(this.§97§ < this.§]R§)
            {
               this.§97§ += 0.5 * param1;
            }
            if(this.§97§ > this.§]R§)
            {
               this.§97§ = this.§]R§;
            }
         }
         else
         {
            if(this.§0l§ > 0)
            {
               this.§0l§ -= 0.3 * param1;
            }
            if(this.§0l§ < 0)
            {
               this.§0l§ = 0;
            }
            if(this.§97§ > 0)
            {
               this.§97§ -= 0.5 * param1;
            }
            if(this.§97§ < 0)
            {
               (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).setVisibility(false);
               this.§97§ = 0;
            }
         }
         if(this.§=v§)
         {
            (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).setVisibility(true);
            if(this.§4z§ < 180)
            {
               this.§4z§ += 0.5 * param1;
               (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y - 0.5 * param1;
            }
            if(this.§4z§ > 180)
            {
               this.§4z§ = 180;
            }
            if(this.§2<§ < this.§if §)
            {
               this.§2<§ += 0.5 * param1;
            }
            if(this.§2<§ > this.§if §)
            {
               this.§2<§ = this.§if §;
            }
         }
         else
         {
            if(this.§4z§ > 0)
            {
               this.§4z§ -= 0.5 * param1;
               (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y + 0.5 * param1;
            }
            if(this.§4z§ < 0)
            {
               this.§4z§ = 0;
            }
            if(this.§2<§ > 0)
            {
               this.§2<§ -= 0.5 * param1;
            }
            if(this.§2<§ < 0)
            {
               (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).setVisibility(false);
               this.§2<§ = 0;
            }
         }
         (§-f§.getItemByName("Button_LeftMenuOpen") as §6<§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§-f§.getItemByName("Button_RightMenuOpen") as §6<§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§-f§.getItemByName("Button_LeftMenuOpen") as §6<§).mClip.MovieClip_LeftMenuImage.rotation = this.§0l§;
         (§-f§.getItemByName("Button_RightMenuOpen") as §6<§).mClip.MovieClip_RightMenuImage.rotation = this.§4z§;
         (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).y = this.§[S§ - this.§97§;
         (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y = this.§,H§ - this.§2<§;
      }
      
      override public function deActivate() : void
      {
         (§-f§.getItemByName("Button_Play") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§4=§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§[R§)
               {
                  this.§[R§ = false;
                  break;
               }
               this.§[R§ = true;
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§=v§)
               {
                  this.§=v§ = false;
                  break;
               }
               this.§=v§ = true;
               break;
            case "PLAY_LEVEL":
               § !H§.§ !%§("Menu_Confirm");
               mNextState = §8R§.§-!A§;
               break;
            case "OPEN_MENU":
               §-f§.setItemVisibility("Container_MenuButtons",!§-f§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§"h§.§"+§();
               §"h§.§=K§(_loc4_);
               §-f§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               § !H§.§ !%§("Menu_Confirm");
               AngryBirdsFP11.§0P§.§<h§();
               break;
            case "OPEN_CREDITS":
               § !H§.§ !%§("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               § !H§.§ !%§("Menu_Confirm");
               mNextState = §>!G§.§-!A§;
               this.§[R§ = false;
               break;
            case "SOUNDS_BUTTON":
               § !H§.§ !%§("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§@6§();
               AngryBirdsFP11.§0R§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.§'!!§();
               }
               §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§1m§ == null)
               {
                  this.§1m§ = new §'b§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§-f§.getItemByName("MovieClip_YouTubeArea") as §"m§).changeMovieClip(this.§1m§);
                  (§-f§.getItemByName("MovieClip_YouTubeArea") as §"m§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
