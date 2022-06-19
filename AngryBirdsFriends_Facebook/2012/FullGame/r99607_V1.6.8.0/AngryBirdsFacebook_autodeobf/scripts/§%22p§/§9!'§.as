package §"p§
{
   import §1"2§.§,!]§;
   import §<G§.StateLastWeeksTournamentResults;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §9!'§ extends StateLastWeeksTournamentResults
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      public function §9!'§(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LotusTournamentPrevious[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "LOTUS_LINK":
               navigateToURL(new URLRequest("https://www.facebook.com/LotusRenaultGP"),"_blank");
         }
      }
   }
}
