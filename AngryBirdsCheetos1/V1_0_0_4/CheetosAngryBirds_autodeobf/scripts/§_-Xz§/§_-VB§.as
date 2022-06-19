package §_-Xz§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-VR§;
   import §_-5b§.§_-Mm§;
   import §_-Aq§.§_-TN§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-MT§;
   import §_-Eg§.§_-hf§;
   import §_-G§.§_-Ug§;
   import §_-Is§.§_-3Q§;
   import §_-KM§.§_-0A§;
   import §_-Q2§.§_-Zr§;
   import §_-TX§.§_-0X§;
   import §_-Y7§.§_-Y-§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.display.MovieClip;
   
   public class §_-VB§ extends §_-SW§
   {
      
      public static const §_-3o§:String = "LevelEndFailState3";
       
      
      private var §_-I1§:§_-Ug§;
      
      public function §_-VB§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelEndFail3[0]);
         var _loc1_:§_-MT§ = §_-nq§.getItemByName("TextField_LevelFailed") as §_-MT§;
         _loc1_.setText(§_-Y-§.getText("Text_Level_Failed"));
         this.§_-I1§ = new §_-Ug§(0,0,0,0);
         §_-nq§.mMovieClip.addChildAt(this.§_-I1§,§_-nq§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §_-3Q§.§_-st§("levelComplete",§_-Mm§.§_-Kw§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         this.§_-I1§.§_-EU§(0.7);
         this.§_-00Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-I1§.§_-Hi§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         var _loc4_:§_-8n§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-SA§.§_-7t§();
               mNextState = §_-SA§.§_-3o§;
               break;
            case "REPLAY":
               if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
               {
                  if(!§_-SW§.sCheetosPopups.showPopup(§_-Zr§.RESTART_LEVEL))
                  {
                     this.§_-s1§();
                     break;
                  }
                  break;
               }
               this.§_-s1§();
               break;
            case "MENU":
               this.§_-qU§();
               break;
            case "BUTTON_NO":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
                  break;
               }
               break;
            case "BUTTON_YES":
               if(§_-SW§.sCheetosPopups.getCurrentPopupName() == §_-Zr§.RESTART_LEVEL)
               {
                  this.§_-s1§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §_-8n§;
               §_-WX§.§_-nw§.§_-gf§ = !§_-WX§.§_-nw§.§_-gf§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  _loc4_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§_-8n§.§_-qC§);
               break;
         }
      }
      
      private function §_-00Q§() : void
      {
         var _loc1_:§_-hf§ = §_-nq§.getItemByName("Button_Replay") as §_-hf§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§_-0X§.§_-O2§ as §_-TN§).§_-dx§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §_-s1§() : void
      {
         §_-SA§.§_-FK§();
         mNextState = §_-SA§.§_-3o§;
      }
      
      private function §_-qU§() : void
      {
         mNextState = §_-0N§.§_-3o§;
      }
   }
}
