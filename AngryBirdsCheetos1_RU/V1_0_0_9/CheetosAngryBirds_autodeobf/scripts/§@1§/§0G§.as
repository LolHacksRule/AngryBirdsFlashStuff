package §@1§
{
   import § !X§.§+2§;
   import §"!@§.§3!+§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §+!7§.§'u§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§`g§;
   import §<!P§.§>l§;
   import §=X§.§-y§;
   import §>!1§.§9A§;
   import §>!6§.§0L§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   
   public class §0G§ extends §]R§
   {
      
      public static const §]U§:String = "LevelEndFailState3";
       
      
      private var §@f§:§-y§;
      
      public function §0G§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelEndFail3[0]);
         var _loc1_:§`g§ = §[B§.getItemByName("TextField_LevelFailed") as §`g§;
         _loc1_.setText(§9A§.getText("Text_Level_Failed"));
         this.§@f§ = new §-y§(0,0,0,0);
         §[B§.movieClip.addChildAt(this.§@f§,§[B§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §0L§.§[!H§("levelComplete",§3!+§.§%2§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         this.§@f§.§%&§(0.7);
         this.§`4§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@f§.§'!^§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         var _loc4_:§%%§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#!5§.§%a§();
               mNextState = §#!5§.§]U§;
               break;
            case "REPLAY":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.RESTART_LEVEL))
                  {
                     this.§<X§();
                  }
               }
               else
               {
                  this.§<X§();
               }
               break;
            case "MENU":
               this.§4q§();
               break;
            case "BUTTON_NO":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  this.§<X§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §%%§;
               §+§.§ each§.§3l§ = !§+§.§ each§.§3l§;
               if(§+§.§ each§.§3l§)
               {
                  _loc4_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§%%§.§'$§);
               break;
         }
      }
      
      private function §`4§() : void
      {
         var _loc1_:§,!>§ = §[B§.getItemByName("Button_Replay") as §,!>§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§2!7§.§5G§ as §'u§).§#!9§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §<X§() : void
      {
         §#!5§.§#!,§();
         mNextState = §#!5§.§]U§;
      }
      
      private function §4q§() : void
      {
         mNextState = §05§.§]U§;
      }
   }
}
