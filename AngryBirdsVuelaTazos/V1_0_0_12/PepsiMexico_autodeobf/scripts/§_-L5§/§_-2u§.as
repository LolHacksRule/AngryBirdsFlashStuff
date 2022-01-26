package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-IZ§.§_-t5§;
   import §_-Su§.§_-8v§;
   import §_-TQ§.HighscoreSidebar;
   import §_-UQ§.§_-QZ§;
   import §_-Ys§.§_-o-§;
   import §_-ZI§.§_-Vu§;
   import §_-c7§.§_-m8§;
   import §_-of§.§_-3Q§;
   import §_-of§.§_-H4§;
   import §_-of§.§_-Yk§;
   import §_-of§.§_-rt§;
   import §_-rp§.§_-cl§;
   import §_-v3§.§_-G3§;
   
   public class §_-2u§ extends §_-1Y§
   {
      
      private static const §_-qe§:Number = -250;
      
      public static const §_-Mi§:String = "PauseState";
       
      
      private var §_-19§:§_-Vu§ = null;
      
      public function §_-2u§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-1B§)
         {
            _loc1_ = §_-1B§.currentPage;
         }
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         this.§_-UK§();
         if(_loc1_)
         {
            §_-1B§.choosePage(_loc1_);
         }
         §_-1B§.changeState(HighscoreSidebar.§_-9d§);
         §_-1B§.showHighscores(§_-8v§.§_-rq§);
         §_-Bv§.getItemByName("Button_Help").setEnabled(§_-t5§.§_-74§());
         §_-Bv§.getItemByName("Button_Help").setVisibility(§_-t5§.§_-74§());
      }
      
      private function §_-UK§() : void
      {
         var _loc1_:String = §_-8v§.§_-rq§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-Bv§.getItemByName("TextField_LevelName") as §_-rt§).§_-u7§.text = _loc1_;
         (§_-Bv§.getItemByName("Container_PauseMenu") as §_-H4§).x = §_-qe§;
         this.§_-YT§(false);
         §_-G3§.§_-gw§.§_-be§ = true;
         §_-Bv§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-0Y§.§_-kB§());
         if(this.§_-19§ != null)
         {
            this.§_-19§.stop();
         }
         this.§_-19§ = §_-m8§.§_-eA§(§_-m8§.§_-Y8§(§_-Bv§.getItemByName("Container_PauseMenu") as §_-H4§,{"x":0},null,0.25),§_-m8§.§_-Y8§((§_-Bv§.getItemByName("MovieClip_DarkBG") as §_-3Q§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-19§.addEventListener(§_-QZ§.COMPLETE,this.§_-jz§);
         this.§_-19§.play();
      }
      
      private function §_-jz§(param1:§_-QZ§) : void
      {
         this.§_-19§.removeEventListener(§_-QZ§.COMPLETE,this.§_-jz§);
         this.§_-YT§(true);
      }
      
      private function §_-YT§(param1:Boolean) : void
      {
         (§_-Bv§.getItemByName("Button_Resume") as §_-Yk§).setEnabled(param1);
         (§_-Bv§.getItemByName("Button_Replay") as §_-Yk§).setEnabled(param1);
         (§_-Bv§.getItemByName("Button_Menu") as §_-Yk§).setEnabled(param1);
         (§_-Bv§.getItemByName("Button_Help") as §_-Yk§).setEnabled(param1);
         (§_-Bv§.getItemByName("Button_Sound") as §_-Yk§).setEnabled(param1);
         §_-Bv§.getItemByName("Button_Help").setEnabled(§_-t5§.§_-74§());
      }
      
      private function §_-pB§() : void
      {
         if(this.§_-19§ != null)
         {
            this.§_-19§.stop();
         }
         this.§_-19§ = §_-m8§.§_-eA§(§_-m8§.§_-Y8§(§_-Bv§.getItemByName("Container_PauseMenu") as §_-H4§,{"x":§_-qe§},null,0.25),§_-m8§.§_-Y8§((§_-Bv§.getItemByName("MovieClip_DarkBG") as §_-3Q§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-19§.addEventListener(§_-QZ§.COMPLETE,this.§_-L8§);
         this.§_-19§.play();
      }
      
      private function §_-L8§(param1:§_-QZ§) : void
      {
         this.§_-19§.removeEventListener(§_-QZ§.COMPLETE,this.§_-L8§);
         mNextState = StatePlay.§_-Mi§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-G3§.§_-gw§.§_-be§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-cl§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-pB§();
               for each(_loc6_ in §_-3C§.§_-bz§.mLevelSlingshot.mBirds)
               {
                  §_-0Y§.§_-rb§.§_-BV§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-0v§.§_-Mi§;
               §_-0v§.§_-R3§();
               break;
            case "RESUME_LEVEL":
               this.§_-pB§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-Tm§.§_-Mi§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-0Y§.§_-kB§();
               §_-0Y§.§_-01§(_loc4_);
               §_-Bv§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-3C§.§_-06§();
               §_-3C§.§_-Bj§(_loc5_);
               §_-Bv§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}
