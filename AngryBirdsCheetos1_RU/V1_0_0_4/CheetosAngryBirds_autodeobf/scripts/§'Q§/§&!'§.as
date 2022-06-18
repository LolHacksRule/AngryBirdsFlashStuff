package §'Q§
{
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §#!5§.§>!0§;
   import §0&§.§@o§;
   import §3!M§.§&!S§;
   import §3!M§.§`!;§;
   import §6=§.§`!<§;
   import §6W§.§-t§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §[I§.§8!B§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.display.MovieClip;
   
   public class §&!'§ extends §=!R§
   {
      
      public static const §1o§:String = "LevelEndFailState3";
       
      
      private var §@'§:§-t§;
      
      public function §&!'§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelEndFail3[0]);
         var _loc1_:§&!S§ = §2m§.getItemByName("TextField_LevelFailed") as §&!S§;
         _loc1_.setText(§8!B§.getText("Text_Level_Failed"));
         this.§@'§ = new §-t§(0,0,0,0);
         §2m§.movieClip.addChildAt(this.§@'§,§2m§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §>!0§.§7!I§("levelComplete",§<!,§.§1D§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         this.§@'§.§'!N§(0.7);
         this.§=!X§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@'§.§7&§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         var _loc4_:§>a§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8!E§.§!!G§();
               mNextState = §8!E§.§1o§;
               break;
            case "REPLAY":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.RESTART_LEVEL))
                  {
                     this.§+@§();
                  }
               }
               else
               {
                  this.§+@§();
               }
               break;
            case "MENU":
               this.§%!O§();
               break;
            case "BUTTON_NO":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  this.§+@§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §>a§;
               §4+§.§;U§.§^5§ = !§4+§.§;U§.§^5§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc4_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>a§.§%b§);
               break;
         }
      }
      
      private function §=!X§() : void
      {
         var _loc1_:§`!;§ = §2m§.getItemByName("Button_Replay") as §`!;§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§7`§.§2'§ as §@o§).§ null§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §+@§() : void
      {
         §8!E§.§1!5§();
         mNextState = §8!E§.§1o§;
      }
      
      private function §%!O§() : void
      {
         mNextState = §@Q§.§1o§;
      }
   }
}
