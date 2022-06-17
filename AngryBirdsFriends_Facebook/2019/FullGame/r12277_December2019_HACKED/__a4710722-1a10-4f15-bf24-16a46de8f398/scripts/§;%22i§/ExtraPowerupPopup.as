package §;"i§
{
   import §!!H§.§ $4§;
   import §4#$§.§5"L§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import §]M§.§=!a§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §-M§:String = "CollectionItemImage";
       
      
      private var §;!X§:§=!a§;
      
      private var §]!1§:§;#0§;
      
      private var §3`§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§;!X§ = §=!a§.§3"1§;
         this.§]!1§ = this.§;!X§.§>"Q§() as §;#0§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3`§ = §'o§.mClip;
         var _loc1_:Object = this.§]!1§.§9",§();
         var _loc2_:Object = this.§]!1§.§#!0§();
         (this.§3`§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§3`§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§3`§.Textfield_PowerupAmount as TextField).text = "" + this.§]!1§.§&!3§();
         (this.§3`§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§3`§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§3`§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§3`§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§3`§.Opponent1Text.visible = _loc1_.id == 1;
         this.§3`§.Opponent2Text.visible = _loc1_.id == 2;
         § $4§.§#L§(§-M§ + "_" + §5"L§.§3"1§.tournamentRules.§,d§,§-M§,this.§3`§);
      }
   }
}
