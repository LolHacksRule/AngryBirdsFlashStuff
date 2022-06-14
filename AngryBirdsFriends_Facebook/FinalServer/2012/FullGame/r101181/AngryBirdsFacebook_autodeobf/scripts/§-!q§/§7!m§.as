package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §4!e§.§^!D§;
   import §[!K§.§4#§;
   
   public class §7!m§ extends §4#§
   {
       
      
      protected var §;]§:Boolean = false;
      
      public function §7!m§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_TournamentBrandedLevelEndFail[0]);
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §]4§.push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
         §]4§.push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
         §]4§.push((§6w§.getItemByName("Button_MightyEagle") as §^!D§).x);
         §-!U§();
      }
   }
}
