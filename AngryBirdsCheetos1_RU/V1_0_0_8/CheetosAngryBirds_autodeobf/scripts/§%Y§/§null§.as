package §%Y§
{
   import §%!5§.§;D§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §,B§.§4!0§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §3!^§.§ null§;
   import §6<§.§9H§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§'z§;
   import §;[§.§7!F§;
   import §=@§.§4k§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   
   public class §null§ extends §,5§
   {
      
      public static const §7!Q§:String = "LevelEndFailState3";
       
      
      private var §0!1§:§ null§;
      
      public function §null§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelEndFail3[0]);
         var _loc1_:§'z§ = §>#§.getItemByName("TextField_LevelFailed") as §'z§;
         _loc1_.setText(§4k§.getText("Text_Level_Failed"));
         this.§0!1§ = new § null§(0,0,0,0);
         §>#§.movieClip.addChildAt(this.§0!1§,§>#§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §;D§.§;!6§("levelComplete",§7M§.§9-§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         this.§0!1§.§,l§(0.7);
         this.§0!I§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!1§.§6!B§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         var _loc4_:§71§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2O§.§11§();
               mNextState = §2O§.§7!Q§;
               break;
            case "REPLAY":
               if((§@!Q§.§7l§ as §9H§).§8u§())
               {
                  if(!§,5§.sCheetosPopups.showPopup(§4!0§.RESTART_LEVEL))
                  {
                     this.§=o§();
                  }
               }
               else
               {
                  this.§=o§();
               }
               break;
            case "MENU":
               this.§-!!§();
               break;
            case "BUTTON_NO":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§,5§.sCheetosPopups.getCurrentPopupName() == §4!0§.RESTART_LEVEL)
               {
                  this.§=o§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §71§;
               §1R§.§]c§.§0]§ = !§1R§.§]c§.§0]§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc4_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§71§.§69§);
               break;
         }
      }
      
      private function §0!I§() : void
      {
         var _loc1_:§7!F§ = §>#§.getItemByName("Button_Replay") as §7!F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§@!Q§.§7l§ as §9H§).§8u§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §=o§() : void
      {
         §2O§.§]! §();
         mNextState = §2O§.§7!Q§;
      }
      
      private function §-!!§() : void
      {
         mNextState = §@4§.§7!Q§;
      }
   }
}
