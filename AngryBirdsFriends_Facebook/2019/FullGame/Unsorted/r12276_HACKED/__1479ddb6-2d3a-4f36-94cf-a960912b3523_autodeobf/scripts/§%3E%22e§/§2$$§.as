package §>"e§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   
   public class §2$$§ implements §-"-§
   {
      
      public static const §?"n§:String = "FREE_POWER_UPS";
      
      private static const §;"N§:int = 0;
       
      
      private var §7#d§:int;
      
      private var § $%§:Array;
      
      private var § g§:§6!1§;
      
      public function §2$$§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         this.§ $%§ = param1.fp;
         this.§7#d§ = §;"N§;
      }
      
      public function §&#D§() : void
      {
         this.§ $%§ = new Array();
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
      }
      
      public function §^x§() : Boolean
      {
         switch(this.§7#d§)
         {
            case §;"N§:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(§-!S§.INFO,§## §.DEFAULT));
         }
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         return this.§^x§();
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_PotionParty");
         this.§ g§.setVisibility(false);
      }
      
      public function §]#g§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "POTION_PARTY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§^x§();
         }
      }
      
      public function §@"H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ g§ != null)
         {
            this.§ g§.x = param1;
            this.§ g§.y = param2;
            if(this.§ g§.visible)
            {
               if(!§=!a§.§3"1§.§#"P§())
               {
                  this.§ g§.setVisibility(false);
               }
            }
            else if(§=!a§.§3"1§.§#"P§())
            {
               this.§ g§.setVisibility(true);
            }
         }
      }
   }
}
