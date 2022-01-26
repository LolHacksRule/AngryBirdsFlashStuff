package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §3X§.§#!B§;
   import §9!Z§.§<!W§;
   import §;!<§.§6C§;
   import §>8§.§?2§;
   import §?u§.§+V§;
   import §]!&§.§"!1§;
   import §]!&§.§#?§;
   import §]!5§.§-!3§;
   import §]!5§.§=j§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §`!A§.§0!8§;
   import flash.display.MovieClip;
   
   public class §;>§ extends §-! §
   {
      
      public static const §@B§:String = "LevelEndFailState3";
       
      
      private var §>`§:§0!8§;
      
      public function §;>§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelEndFail3[0]);
         var _loc1_:§"!1§ = §??§.getItemByName("TextField_LevelFailed") as §"!1§;
         _loc1_.setText(§6C§.getText("Text_Level_Failed"));
         this.§>`§ = new §0!8§(0,0,0,0);
         §??§.movieClip.addChildAt(this.§>`§,§??§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §+V§.§3!'§("levelComplete",§?2§.§=$§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         this.§>`§.§?§(0.7);
         this.§!!Z§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>`§.§8H§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         var _loc4_:§=j§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0T§.§]g§();
               mNextState = §0T§.§@B§;
               break;
            case "REPLAY":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.RESTART_LEVEL))
                  {
                     this.§3!X§();
                  }
               }
               else
               {
                  this.§3!X§();
               }
               break;
            case "MENU":
               this.§%r§();
               break;
            case "BUTTON_NO":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  this.§3!X§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §=j§;
               §2!-§.§"7§.§^I§ = !§2!-§.§"7§.§^I§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc4_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§=j§.§@!9§);
               break;
         }
      }
      
      private function §!!Z§() : void
      {
         var _loc1_:§#?§ = §??§.getItemByName("Button_Replay") as §#?§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§"_§.§+!^§ as §#!B§).§=!N§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §3!X§() : void
      {
         §0T§.§6k§();
         mNextState = §0T§.§@B§;
      }
      
      private function §%r§() : void
      {
         mNextState = §&c§.§@B§;
      }
   }
}
