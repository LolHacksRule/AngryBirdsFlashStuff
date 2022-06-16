package §7#Z§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §8#!§.§5`§;
   import §="h§.§`"O§;
   import §[#[§.§=#Q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §8!8§:String = "CollectionItemImage";
       
      
      private var §-#$§:§`"O§;
      
      private var §+!g§:§"#Y§;
      
      private var §0!Q§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§-#$§ = §`"O§.§6!§;
         this.§+!g§ = this.§-#$§.§!!I§() as §"#Y§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0!Q§ = §,#2§.mClip;
         var _loc1_:Object = this.§+!g§.§"#"§();
         var _loc2_:Object = this.§+!g§.§"#>§();
         (this.§0!Q§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§0!Q§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§0!Q§.Textfield_PowerupAmount as TextField).text = "" + this.§+!g§.§0!-§();
         (this.§0!Q§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§0!Q§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§0!Q§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§0!Q§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§0!Q§.Opponent1Text.visible = _loc1_.id == 1;
         this.§0!Q§.Opponent2Text.visible = _loc1_.id == 2;
         §=#Q§.§7$6§(§8!8§ + "_" + §5`§.§6!§.tournamentRules.§7"4§,§8!8§,this.§0!Q§);
      }
   }
}
