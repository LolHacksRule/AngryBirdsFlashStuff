package §"!+§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §3#T§.§@"!§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   
   public class §4"#§ implements §<"T§
   {
      
      public static const §^^§:String = "LEAGUE_RATING";
       
      
      private var § !V§:§@"!§;
      
      public function §4"#§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
      }
      
      public function §=#"§() : void
      {
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §4b§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new DoubleLeagueRatingInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
         return true;
      }
      
      public function §%O§() : Boolean
      {
         return this.§4b§();
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_DoubleLeagueRatings");
         this.§ !V§.setVisibility(false);
      }
      
      public function §]"A§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "DOUBLE_LEAGUE_RATINGS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§4b§();
         }
      }
      
      public function §3#E§(param1:Number, param2:Number) : void
      {
         if(this.§ !V§ != null)
         {
            this.§ !V§.x = param1;
            this.§ !V§.y = param2;
            if(this.§ !V§.visible)
            {
               if(!§`"O§.§6!§.§8!>§())
               {
                  this.§ !V§.setVisibility(false);
               }
            }
            else if(§`"O§.§6!§.§8!>§())
            {
               this.§ !V§.setVisibility(true);
            }
         }
      }
   }
}
