package §_-ad§
{
   import §_-0Dg§.§class§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-6U§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-05N§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelStartState";
      
      private static var §_-02y§:BitmapData = null;
       
      
      private var §_-RV§:Boolean = false;
      
      private var §_-gD§:Boolean = false;
      
      private var §_-kL§:§class§ = null;
      
      private var §_-Ct§:Boolean = false;
      
      private var §_-Q6§:Boolean = false;
      
      private var §_-m-§:Number = 0;
      
      private var §_-0Di§:Number = 0;
      
      private var §_-Pg§:Number = 0;
      
      private var §_-0Ag§:Number = 0;
      
      private var §_-dF§:Number;
      
      private var §_-a1§:Number;
      
      private var §_-xo§:Number;
      
      private var §_-b6§:Number;
      
      private var §_-0Dx§:§_-6U§;
      
      public function §_-05N§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         super(param1,param2);
      }
      
      public static function get §_-Xp§() : BitmapData
      {
         return §_-02y§;
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelStart[0]);
         this.§_-kL§ = new §class§(§ in§.§_-Dc§);
         this.§_-dF§ = (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).height;
         this.§_-a1§ = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).height;
         this.§_-xo§ = §_-s0§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-b6§ = §_-s0§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         super.activate();
         § in§.§_-Dc§.§_-Vf§(true);
         § in§.setController(this.§_-kL§);
         this.§_-kL§.init();
         AngryBirdsFP11.playThemeMusic();
         §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§_-Lz§());
         §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§ in§.§_-0-I§());
         §_-s0§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§_-nn§ ? false : true);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§_-xo§ = §_-s0§.getItemByName("Button_LeftMenuOpen").y - 50;
         this.§_-b6§ = §_-s0§.getItemByName("Button_RightMenuOpen").y - 50;
         this.§_-1x§(param1);
         if(!this.§_-gD§)
         {
            § in§.§_-03s§.update(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function §_-1x§(param1:Number) : void
      {
         (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).mClip.scrollRect = new Rectangle(0,0,(§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).width,this.§_-dF§ + 20 - (this.§_-dF§ - this.§_-Pg§));
         (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).mClip.scrollRect = new Rectangle(0,0,(§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).width,this.§_-a1§ + 20 - (this.§_-a1§ - this.§_-0Ag§));
         if(this.§_-Ct§)
         {
            (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).setVisibility(true);
            if(this.§_-m-§ < 90)
            {
               this.§_-m-§ += 0.3 * param1;
            }
            if(this.§_-m-§ > 90)
            {
               this.§_-m-§ = 90;
            }
            if(this.§_-Pg§ < this.§_-dF§)
            {
               this.§_-Pg§ += 0.5 * param1;
            }
            if(this.§_-Pg§ > this.§_-dF§)
            {
               this.§_-Pg§ = this.§_-dF§;
            }
         }
         else
         {
            if(this.§_-m-§ > 0)
            {
               this.§_-m-§ -= 0.3 * param1;
            }
            if(this.§_-m-§ < 0)
            {
               this.§_-m-§ = 0;
            }
            if(this.§_-Pg§ > 0)
            {
               this.§_-Pg§ -= 0.5 * param1;
            }
            if(this.§_-Pg§ < 0)
            {
               (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).setVisibility(false);
               this.§_-Pg§ = 0;
            }
         }
         if(this.§_-Q6§)
         {
            (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).setVisibility(true);
            if(this.§_-0Di§ < 180)
            {
               this.§_-0Di§ += 0.5 * param1;
               (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y - 0.5 * param1;
            }
            if(this.§_-0Di§ > 180)
            {
               this.§_-0Di§ = 180;
            }
            if(this.§_-0Ag§ < this.§_-a1§)
            {
               this.§_-0Ag§ += 0.5 * param1;
            }
            if(this.§_-0Ag§ > this.§_-a1§)
            {
               this.§_-0Ag§ = this.§_-a1§;
            }
         }
         else
         {
            if(this.§_-0Di§ > 0)
            {
               this.§_-0Di§ -= 0.5 * param1;
               (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y = (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y + 0.5 * param1;
            }
            if(this.§_-0Di§ < 0)
            {
               this.§_-0Di§ = 0;
            }
            if(this.§_-0Ag§ > 0)
            {
               this.§_-0Ag§ -= 0.5 * param1;
            }
            if(this.§_-0Ag§ < 0)
            {
               (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).setVisibility(false);
               this.§_-0Ag§ = 0;
            }
         }
         (§_-s0§.getItemByName("Button_LeftMenuOpen") as §_-Mu§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (§_-s0§.getItemByName("Button_RightMenuOpen") as §_-Mu§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (§_-s0§.getItemByName("Button_LeftMenuOpen") as §_-Mu§).mClip.MovieClip_LeftMenuImage.rotation = this.§_-m-§;
         (§_-s0§.getItemByName("Button_RightMenuOpen") as §_-Mu§).mClip.MovieClip_RightMenuImage.rotation = this.§_-0Di§;
         (§_-s0§.getItemByName("Container_MenuLeftButtons") as §_-gt§).y = this.§_-xo§ - this.§_-Pg§;
         (§_-s0§.getItemByName("Container_MenuRightButtons") as §_-gt§).y = this.§_-b6§ - this.§_-0Ag§;
      }
      
      override public function deActivate() : void
      {
         (§_-s0§.getItemByName("Button_Play") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§_-RV§ = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         switch(param2)
         {
            case "OPEN_LEFT_MENU":
               if(this.§_-Ct§)
               {
                  this.§_-Ct§ = false;
               }
               else
               {
                  this.§_-Ct§ = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.§_-Q6§)
               {
                  this.§_-Q6§ = false;
               }
               else
               {
                  this.§_-Q6§ = true;
               }
               break;
            case "PLAY_LEVEL":
               §_-pX§.playSound("Menu_Confirm");
               mNextState = §_-Rp§.§_-pk§;
               break;
            case "OPEN_MENU":
               §_-s0§.setItemVisibility("Container_MenuButtons",!§_-s0§.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               _loc4_ = !§ in§.§_-0-I§();
               § in§.§_-bN§(_loc4_);
               §_-s0§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
               break;
            case "FULLSCREEN_BUTTON":
               §_-pX§.playSound("Menu_Confirm");
               AngryBirdsFP11.§_-07§.§_-0De§();
               break;
            case "OPEN_CREDITS":
               §_-pX§.playSound("Menu_Confirm");
               break;
            case "CREDITS_BUTTON":
               §_-pX§.playSound("Menu_Confirm");
               mNextState = §_-7A§.§_-pk§;
               this.§_-Ct§ = false;
               break;
            case "SOUNDS_BUTTON":
               §_-pX§.playSound("Menu_Confirm");
               _loc5_ = !AngryBirdsFP11.§_-Lz§();
               AngryBirdsFP11.§_-mv§(_loc5_);
               if(_loc5_)
               {
                  AngryBirdsFP11.playThemeMusic();
               }
               §_-s0§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.§_-0Dx§ == null)
               {
                  this.§_-0Dx§ = new §_-6U§("http://www.youtube.com/v/-eyig_V-_5o");
                  (§_-s0§.getItemByName("MovieClip_YouTubeArea") as §_-k6§).changeMovieClip(this.§_-0Dx§);
                  (§_-s0§.getItemByName("MovieClip_YouTubeArea") as §_-k6§).setVisibility(true);
                  break;
               }
         }
      }
   }
}
