package §]#M§
{
   import §!!T§.§1"9§;
   import §%#v§.§0"j§;
   import §+"u§.§^"C§;
   import §8"b§.§&!b§;
   import §;$5§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ExtraPowerupPopup extends AbstractPopup
   {
      
      public static const ID:String = "ExtraPowerupPopup";
      
      private static const §<&§:String = "CollectionItemImage";
       
      
      private var § #5§:§1"9§;
      
      private var §`#s§:§7"9§;
      
      private var §%§:MovieClip;
      
      public function ExtraPowerupPopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_ExtraPowerupPopup[0],ID);
         this.§ #5§ = §1"9§.§?q§;
         this.§`#s§ = this.§ #5§.§[!8§() as §7"9§;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%§ = §8#Y§.mClip;
         var _loc1_:Object = this.§`#s§.§[##§();
         var _loc2_:Object = this.§`#s§.§5$2§();
         (this.§%§.Textfield_WinnerAmount as TextField).text = "" + _loc1_.amount;
         (this.§%§.Textfield_LoserAmount as TextField).text = "" + _loc2_.amount;
         (this.§%§.Textfield_PowerupAmount as TextField).text = "" + this.§`#s§.§^`§();
         (this.§%§.Opponent1Winner as MovieClip).visible = _loc1_.id == 1;
         (this.§%§.Opponent2Winner as MovieClip).visible = _loc1_.id == 2;
         (this.§%§.Opponent1Loser as MovieClip).visible = _loc1_.id == 2;
         (this.§%§.Opponent2Loser as MovieClip).visible = _loc1_.id == 1;
         this.§%§.Opponent1Text.visible = _loc1_.id == 1;
         this.§%§.Opponent2Text.visible = _loc1_.id == 2;
         §&!b§.§<#n§(§<&§ + "_" + §^"C§.§?q§.tournamentRules.§9d§,§<&§,this.§%§);
      }
   }
}
