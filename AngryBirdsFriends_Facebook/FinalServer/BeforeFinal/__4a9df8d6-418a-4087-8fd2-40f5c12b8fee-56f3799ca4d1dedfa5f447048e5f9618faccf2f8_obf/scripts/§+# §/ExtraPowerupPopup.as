package §+# §
{
   import §"!n§.§;"x§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §@$%§:String = "CollectionItemImage";
       
      
      private var §]"§:§7"L§;
      
      private var §"L§:§="=§;
      
      private var §&r§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§]"§ = §7"L§.§`"H§;
         this.§"L§ = this.§]"§.§9'§() as §="=§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&r§ = §&!M§.mClip;
         var _loc1_:Object = this.§"L§.§5#g§();
         var _loc2_:Object = this.§"L§.§-#q§();
         (this.§&r§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§&r§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§&r§.Textfield_PowerupAmount as TextField).text = "" + this.§"L§.§^#p§();
         (this.§&r§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§&r§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§&r§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§&r§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§&r§.Opponent1Text.visible = _loc1_.id == 1;
         this.§&r§.Opponent2Text.visible = _loc1_.id == 2;
         §;"x§.§<!E§(§@$%§ + "_" + §'##§.§`"H§.tournamentRules.§3V§,§@$%§,this.§&r§);
      }
   }
}
