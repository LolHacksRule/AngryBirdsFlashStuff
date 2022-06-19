package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-N5§;
   import §_-Ul§.§_-FD§;
   import §_-Ye§.§_-cP§;
   import §_-ab§.§_-5q§;
   import §_-ab§.§_-q4§;
   import §_-fp§.§_-W9§;
   import §_-hJ§.§_-5j§;
   import §_-l-§.§_-OO§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-4Z§ extends §_-xw§
   {
      
      public static const §_-jn§:String = "LevelEndFailState3";
       
      
      private var §_-Bm§:§_-OO§;
      
      public function §_-4Z§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelEndFail3[0]);
         var _loc1_:§_-5q§ = §_-x2§.getItemByName("TextField_LevelFailed") as §_-5q§;
         _loc1_.setText(§_-FD§.getText("Text_Level_Failed"));
         this.§_-Bm§ = new §_-OO§(0,0,0,0);
         §_-x2§.mMovieClip.addChildAt(this.§_-Bm§,§_-x2§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §_-Qg§.§_-No§("levelComplete",§_-N5§.§_-sI§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         this.§_-Bm§.§_-pv§(0.7);
         this.§_-BO§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-Bm§.§_-lZ§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         var _loc4_:§_-YT§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-0-n§.§_-1k§();
               mNextState = §_-0-n§.§_-jn§;
               break;
            case "REPLAY":
               if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
               {
                  if(!§_-xw§.sCheetosPopups.showPopup(§_-5j§.RESTART_LEVEL))
                  {
                     this.§_-MH§();
                     break;
                  }
                  break;
               }
               this.§_-MH§();
               break;
            case "MENU":
               this.§_-Tz§();
               break;
            case "BUTTON_NO":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-xw§.sCheetosPopups.getCurrentPopupName() == §_-5j§.RESTART_LEVEL)
               {
                  this.§_-MH§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §_-YT§;
               §_-rs§.§_-hd§.§_-2D§ = !§_-rs§.§_-hd§.§_-2D§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  _loc4_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§_-YT§.§_-c7§);
               break;
         }
      }
      
      private function §_-BO§() : void
      {
         var _loc1_:§_-q4§ = §_-x2§.getItemByName("Button_Replay") as §_-q4§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-si§.§_-HI§ as §_-W9§).§_-k4§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §_-MH§() : void
      {
         §_-0-n§.§_-5P§();
         mNextState = §_-0-n§.§_-jn§;
      }
      
      private function §_-Tz§() : void
      {
         mNextState = §_-qP§.§_-jn§;
      }
   }
}
