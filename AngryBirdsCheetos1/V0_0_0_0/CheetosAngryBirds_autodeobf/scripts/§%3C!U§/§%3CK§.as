package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§<U§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   
   public class §<K§ extends §]u§
   {
      
      public static const §`O§:String = "LevelEndFailState3";
       
      
      private var §+W§:§<U§;
      
      public function §<K§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_LevelEndFail3[0]);
         var _loc1_:§1!-§ = §"c§.getItemByName("TextField_LevelFailed") as §1!-§;
         _loc1_.setText(§6!7§.getText("Text_Level_Failed"));
         this.§+W§ = new §<U§(0,0,0,0);
         §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §,Y§.§[[§("levelComplete",§[!!§.§7!F§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.start();
         }
         this.§+W§.§9>§(0.7);
         this.§;z§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+W§.§5!<§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc4_:§<d§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0"§.§>!U§();
               mNextState = §0"§.§`O§;
               break;
            case "REPLAY":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
                  {
                     this.§;!F§();
                  }
               }
               else
               {
                  this.§;!F§();
               }
               break;
            case "MENU":
               this.§5!!§();
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  this.§;!F§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §<d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc4_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§<d§.§^#§);
               break;
         }
      }
      
      private function §;z§() : void
      {
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§[&§.§&!'§ as §!&§).§`!P§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §5!!§() : void
      {
         mNextState = §6l§.§`O§;
      }
   }
}
