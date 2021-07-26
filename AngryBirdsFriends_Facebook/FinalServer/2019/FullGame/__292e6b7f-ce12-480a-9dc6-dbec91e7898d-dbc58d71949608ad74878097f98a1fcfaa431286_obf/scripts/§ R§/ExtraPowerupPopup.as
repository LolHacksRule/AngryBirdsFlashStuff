package § R§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §'"b§.§ #F§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §`"q§:String = "CollectionItemImage";
       
      
      private var §]"t§:§ #F§;
      
      private var §2x§:§`";§;
      
      private var §8#M§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§]"t§ = § #F§.§+!,§;
         this.§2x§ = this.§]"t§.§4#P§() as §`";§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8#M§ = §;#'§.mClip;
         var _loc1_:Object = this.§2x§.§]$#§();
         var _loc2_:Object = this.§2x§.§0<§();
         (this.§8#M§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§8#M§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§8#M§.Textfield_PowerupAmount as TextField).text = "" + this.§2x§.§&O§();
         (this.§8#M§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§8#M§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§8#M§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§8#M§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§8#M§.Opponent1Text.visible = _loc1_.id == 1;
         this.§8#M§.Opponent2Text.visible = _loc1_.id == 2;
         §7"U§.§7#m§(§`"q§ + "_" + §7!$§.§+!,§.tournamentRules.§"">§,§`"q§,this.§8#M§);
      }
   }
}
