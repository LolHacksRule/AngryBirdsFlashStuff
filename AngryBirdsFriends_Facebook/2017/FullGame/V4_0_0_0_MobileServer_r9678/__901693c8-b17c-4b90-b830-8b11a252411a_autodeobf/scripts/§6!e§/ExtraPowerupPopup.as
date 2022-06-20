package §6!e§
{
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §<u§.§ "a§;
   import §];§.§-!t§;
   import §^#]§.§@!g§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §8#Q§:String = "CollectionItemImage";
       
      
      private var §@!y§:§ "a§;
      
      private var §<K§:§"!^§;
      
      private var §>"g§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§@!y§ = § "a§.§ "D§;
         this.§<K§ = this.§@!y§.§^W§() as §"!^§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>"g§ = §1"6§.mClip;
         var _loc1_:Object = this.§<K§.§+!-§();
         var _loc2_:Object = this.§<K§.§["&§();
         (this.§>"g§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§>"g§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§>"g§.Textfield_PowerupAmount as TextField).text = "" + this.§<K§.§6!$§();
         (this.§>"g§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§>"g§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§>"g§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§>"g§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§>"g§.Opponent1Text.visible = _loc1_.id == 1;
         this.§>"g§.Opponent2Text.visible = _loc1_.id == 2;
         §@!g§.§?$5§(§8#Q§ + "_" + §-!t§.§ "D§.tournamentRules.§@!l§,§8#Q§,this.§>"g§);
      }
   }
}
