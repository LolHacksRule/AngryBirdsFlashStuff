package §5F§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §3#T§.§@"!§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   
   public class §`N§ implements §<"T§
   {
      
      public static const §^^§:String = "FREE_POWER_UPS";
      
      private static const §#6§:int = 0;
       
      
      private var §5^§:int;
      
      private var §>!O§:Array;
      
      private var § !V§:§@"!§;
      
      public function §`N§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         this.§>!O§ = param1.fp;
         this.§5^§ = §#6§;
      }
      
      public function §=#"§() : void
      {
         this.§>!O§ = new Array();
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §4b§() : Boolean
      {
         switch(this.§5^§)
         {
            case §#6§:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
         }
         return true;
      }
      
      public function §%O§() : Boolean
      {
         return this.§4b§();
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_PotionParty");
         this.§ !V§.setVisibility(false);
      }
      
      public function §]"A§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "POTION_PARTY":
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
