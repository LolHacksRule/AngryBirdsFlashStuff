package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-lq§;
   import §_-F1§.§_-qp§;
   import §_-OJ§.§_-1W§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-dA§.§_-FO§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-y7§.§_-VA§;
   
   public class §_-xb§ extends §_-iL§
   {
      
      private static const §_-r0§:Number = -250;
      
      public static const §_-Az§:String = "PauseState";
       
      
      private var §_-me§:§_-j5§ = null;
      
      public function §_-xb§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelPause[0]);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-1S§)
         {
            _loc1_ = §_-1S§.currentPage;
         }
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         this.§_-IB§();
         if(_loc1_)
         {
            §_-1S§.choosePage(_loc1_);
         }
         §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
         §_-1S§.showHighscores(§_-Sf§.§_-vj§);
         §_-NY§.getItemByName("Button_Help").setEnabled(§_-FO§.§_-Ms§());
         §_-NY§.getItemByName("Button_Help").setVisibility(§_-FO§.§_-Ms§());
      }
      
      private function §_-IB§() : void
      {
         var _loc1_:String = §_-Sf§.§_-vj§;
         if(_loc1_.indexOf("1-") == 0)
         {
            _loc1_ = _loc1_.substring(2);
         }
         (§_-NY§.getItemByName("TextField_LevelName") as §_-V1§).§_-hJ§.text = _loc1_;
         (§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§).x = §_-r0§;
         this.§_-ea§(false);
         §_-Vu§.§_-jT§.§_-ra§ = true;
         §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!§_-Qu§.§_-E§());
         if(this.§_-me§ != null)
         {
            this.§_-me§.stop();
         }
         this.§_-me§ = §_-29§.§_-Y5§(§_-29§.§_-NW§(§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§,{"x":0},null,0.25),§_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_DarkBG") as §_-lq§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§_-me§.addEventListener(§_-In§.COMPLETE,this.§_-10§);
         this.§_-me§.play();
      }
      
      private function §_-10§(param1:§_-In§) : void
      {
         this.§_-me§.removeEventListener(§_-In§.COMPLETE,this.§_-10§);
         this.§_-ea§(true);
      }
      
      private function §_-ea§(param1:Boolean) : void
      {
         (§_-NY§.getItemByName("Button_Resume") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Replay") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Menu") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Help") as §_-qp§).setEnabled(param1);
         (§_-NY§.getItemByName("Button_Sound") as §_-qp§).setEnabled(param1);
         §_-NY§.getItemByName("Button_Help").setEnabled(§_-FO§.§_-Ms§());
      }
      
      private function §_-1G§() : void
      {
         if(this.§_-me§ != null)
         {
            this.§_-me§.stop();
         }
         this.§_-me§ = §_-29§.§_-Y5§(§_-29§.§_-NW§(§_-NY§.getItemByName("Container_PauseMenu") as §_-k4§,{"x":§_-r0§},null,0.25),§_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_DarkBG") as §_-lq§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§_-me§.addEventListener(§_-In§.COMPLETE,this.§_-Hq§);
         this.§_-me§.play();
      }
      
      private function §_-Hq§(param1:§_-In§) : void
      {
         this.§_-me§.removeEventListener(§_-In§.COMPLETE,this.§_-Hq§);
         mNextState = StatePlay.§_-Az§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-Vu§.§_-jT§.§_-ra§ = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:§_-1W§ = null;
         switch(param2)
         {
            case "HELP":
               this.§_-1G§();
               for each(_loc6_ in §_-MB§.§_-A7§.slingshot.§_-zK§)
               {
                  §_-Qu§.§_-di§.§_-Ak§(_loc6_.name,false);
               }
               break;
            case "RESTART_LEVEL":
               mNextState = §_-Jw§.§_-Az§;
               §_-Jw§.§_-h5§();
               break;
            case "RESUME_LEVEL":
               this.§_-1G§();
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               mNextState = §_-pX§.§_-Az§;
               break;
            case "TOGGLE_SOUNDS":
               _loc4_ = !§_-Qu§.§_-E§();
               §_-Qu§.§_-vM§(_loc4_);
               §_-NY§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            case "TOGGLE_PARTICLES":
               _loc5_ = !§_-MB§.§_-G8§();
               §_-MB§.§_-o3§(_loc5_);
               §_-NY§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc5_);
               break;
            case "TOGGLE_FULLSCREEN":
         }
      }
   }
}
