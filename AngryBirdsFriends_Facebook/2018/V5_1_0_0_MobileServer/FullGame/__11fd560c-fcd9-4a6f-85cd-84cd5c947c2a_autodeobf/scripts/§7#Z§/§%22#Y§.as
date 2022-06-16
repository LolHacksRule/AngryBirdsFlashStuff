package §7#Z§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §3#T§.§@"!§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   
   public class §"#Y§ implements §<"T§
   {
      
      public static const §^^§:String = "EXTRA_POWER_UP";
       
      
      private var § !V§:§@"!§;
      
      private var §-!i§:int;
      
      private var §+g§:Object;
      
      private var §!#;§:Object;
      
      public function §"#Y§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         this.§-!i§ = param1.ic;
         this.§+g§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§!#;§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §=#"§() : void
      {
      }
      
      public function §4b§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§]"$§.INFO,§^"U§.DEFAULT));
         return true;
      }
      
      public function §%O§() : Boolean
      {
         return this.§4b§();
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_ItemsCollection");
         this.§ !V§.setVisibility(false);
      }
      
      public function §]"A§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
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
      
      public function §0!-§() : int
      {
         return this.§-!i§;
      }
      
      public function §"#"§() : Object
      {
         return this.§+g§;
      }
      
      public function §"#>§() : Object
      {
         return this.§!#;§;
      }
   }
}
