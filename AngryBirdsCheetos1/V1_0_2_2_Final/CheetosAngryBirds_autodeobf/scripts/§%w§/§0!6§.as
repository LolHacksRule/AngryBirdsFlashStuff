package §%w§
{
   import §&!7§.§,!A§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §6v§.§"g§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   
   public class §0!6§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelEndFailState3";
       
      
      private var §[2§:§"g§;
      
      public function §0!6§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelEndFail3[0]);
         var _loc1_:§[i§ = §3t§.getItemByName("TextField_LevelFailed") as §[i§;
         _loc1_.setText(§4C§.getText("Text_Level_Failed"));
         this.§[2§ = new §"g§(0,0,0,0);
         §3t§.movieClip.addChildAt(this.§[2§,§3t§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §,!A§.§9!M§("levelComplete",§7e§.§^"§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         this.§[2§.§#R§(0.7);
         this.§?<§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[2§.§6!Y§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var _loc4_:§&!3§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[!X§.§9P§();
               mNextState = §[!X§.§9!P§;
               break;
            case "REPLAY":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                  {
                     this.§ A§();
                  }
               }
               else
               {
                  this.§ A§();
               }
               break;
            case "MENU":
               this.§?!§();
               break;
            case "BUTTON_NO":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  this.§ A§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §&!3§;
               §#x§.§=!!§.§9!E§ = !§#x§.§=!!§.§9!E§;
               if(§#x§.§=!!§.§9!E§)
               {
                  _loc4_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§&!3§.§;2§);
               break;
         }
      }
      
      private function §?<§() : void
      {
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§7?§.§4!H§ as §<e§).§#n§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function § A§() : void
      {
         §[!X§.§]!J§();
         mNextState = §[!X§.§9!P§;
      }
      
      private function §?!§() : void
      {
         mNextState = §`L§.§9!P§;
      }
   }
}
