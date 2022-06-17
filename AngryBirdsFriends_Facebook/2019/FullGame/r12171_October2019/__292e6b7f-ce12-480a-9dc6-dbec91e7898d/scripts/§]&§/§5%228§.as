package §]&§
{
   import § $0§.§5R§;
   import §";§.§%"X§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   
   public class §5"8§ implements §-!4§
   {
      
      public static const §in §:String = "FREE_POWER_UPS";
      
      private static const §1"9§:int = 0;
       
      
      private var §3t§:int;
      
      private var §5"Q§:Array;
      
      private var §%"7§:§^"C§;
      
      public function §5"8§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         this.§5"Q§ = param1.fp;
         this.§3t§ = §1"9§;
      }
      
      public function §&!8§() : void
      {
         this.§5"Q§ = new Array();
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
      }
      
      public function §#^§() : Boolean
      {
         switch(this.§3t§)
         {
            case §1"9§:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
         }
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         return this.§#^§();
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_PotionParty");
         this.§%"7§.setVisibility(false);
      }
      
      public function §=1§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "POTION_PARTY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§#^§();
         }
      }
      
      public function §="!§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%"7§ != null)
         {
            this.§%"7§.x = param1;
            this.§%"7§.y = param2;
            if(this.§%"7§.visible)
            {
               if(!§ #F§.§+!,§.§1#@§())
               {
                  this.§%"7§.setVisibility(false);
               }
            }
            else if(§ #F§.§+!,§.§1#@§())
            {
               this.§%"7§.setVisibility(true);
            }
         }
      }
   }
}
