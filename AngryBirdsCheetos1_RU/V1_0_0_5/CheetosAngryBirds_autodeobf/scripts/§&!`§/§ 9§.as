package §&!`§
{
   import § =§.§ x§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §0C§.§"!T§;
   import §2V§.§!!_§;
   import §4!§.§&J§;
   import §7f§.§@+§;
   import §<s§.§&4§;
   import §<s§.§]@§;
   import §?!N§.§?!"§;
   import §[%§.§6!§;
   import §[%§.§<@§;
   import §]!2§.§8D§;
   import §]_§.§!F§;
   import flash.display.MovieClip;
   
   public class § 9§ extends §&A§
   {
      
      public static const §="§:String = "LevelEndFailState3";
       
      
      private var §%s§:§8D§;
      
      public function § 9§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelEndFail3[0]);
         var _loc1_:§<@§ = §^!]§.getItemByName("TextField_LevelFailed") as §<@§;
         _loc1_.setText(§&J§.getText("Text_Level_Failed"));
         this.§%s§ = new §8D§(0,0,0,0);
         §^!]§.movieClip.addChildAt(this.§%s§,§^!]§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §?!"§.§7`§("levelComplete",§"!T§.§-Q§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         this.§%s§.§"s§(0.7);
         this.§=f§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%s§.§@g§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         var _loc4_:§&4§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8!@§.§>@§();
               mNextState = §8!@§.§="§;
               break;
            case "REPLAY":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.RESTART_LEVEL))
                  {
                     this.§02§();
                  }
               }
               else
               {
                  this.§02§();
               }
               break;
            case "MENU":
               this.§3!D§();
               break;
            case "BUTTON_NO":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  this.§02§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §&4§;
               §3§.§]T§.§];§ = !§3§.§]T§.§];§;
               if(§3§.§]T§.§];§)
               {
                  _loc4_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§&4§.§=!'§);
               break;
         }
      }
      
      private function §=f§() : void
      {
         var _loc1_:§6!§ = §^!]§.getItemByName("Button_Replay") as §6!§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§3>§.§8!$§ as §@+§).§[!7§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §02§() : void
      {
         §8!@§.§-_§();
         mNextState = §8!@§.§="§;
      }
      
      private function §3!D§() : void
      {
         mNextState = §4q§.§="§;
      }
   }
}
