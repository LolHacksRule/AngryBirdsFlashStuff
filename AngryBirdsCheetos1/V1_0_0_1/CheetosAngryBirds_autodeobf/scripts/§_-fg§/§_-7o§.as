package §_-fg§
{
   import §_-05§.§_-my§;
   import §_-3N§.§_-Dp§;
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-Ng§;
   import §_-ES§.§_-To§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-Sn§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-uG§.§_-Eu§;
   import §_-vB§.§_-Kk§;
   import §_-zM§.§_-1v§;
   import flash.display.MovieClip;
   
   public class §_-7o§ extends §_-cN§
   {
      
      public static const §_-bg§:String = "LevelEndFailState3";
       
      
      private var § if§:§_-my§;
      
      public function §_-7o§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelEndFail3[0]);
         var _loc1_:§_-To§ = §_-Lb§.getItemByName("TextField_LevelFailed") as §_-To§;
         _loc1_.setText(§_-Sn§.getText("Text_Level_Failed"));
         this.§ if§ = new §_-my§(0,0,0,0);
         §_-Lb§.mMovieClip.addChildAt(this.§ if§,§_-Lb§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §_-Dp§.§_-JB§("levelComplete",§_-Sa§.§_-LZ§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         this.§ if§.§_-Y0§(0.7);
         this.§_-NI§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ if§.§_-vP§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         var _loc4_:§_-DA§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-V0§.§_-xE§();
               mNextState = §_-V0§.§_-bg§;
               break;
            case "REPLAY":
               if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
               {
                  if(!§_-cN§.sCheetosPopups.showPopup(§_-1v§.RESTART_LEVEL))
                  {
                     this.§_-9M§();
                     break;
                  }
                  break;
               }
               this.§_-9M§();
               break;
            case "MENU":
               this.§_-es§();
               break;
            case "BUTTON_NO":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-cN§.sCheetosPopups.getCurrentPopupName() == §_-1v§.RESTART_LEVEL)
               {
                  this.§_-9M§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §_-DA§;
               §_-Vc§.§_-qI§.§_-rL§ = !§_-Vc§.§_-qI§.§_-rL§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  _loc4_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§_-DA§.§_-MR§);
               break;
         }
      }
      
      private function §_-NI§() : void
      {
         var _loc1_:§_-Ng§ = §_-Lb§.getItemByName("Button_Replay") as §_-Ng§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-XR§.§_-Xv§ as §_-Eu§).§_-cj§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §_-9M§() : void
      {
         §_-V0§.§_-70§();
         mNextState = §_-V0§.§_-bg§;
      }
      
      private function §_-es§() : void
      {
         mNextState = §_-Pw§.§_-bg§;
      }
   }
}
