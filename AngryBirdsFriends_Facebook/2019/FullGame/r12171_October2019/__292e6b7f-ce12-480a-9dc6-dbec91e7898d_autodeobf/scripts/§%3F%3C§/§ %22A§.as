package §?<§
{
   import § $0§.§5R§;
   import §";§.§%"X§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   
   public class § "A§ implements §-!4§
   {
      
      public static const §in §:String = "BIRDCOIN_BONANZA";
       
      
      private var §%"7§:§^"C§;
      
      public function § "A§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         if(param1 == null)
         {
            if(this.§%"7§)
            {
               this.§%"7§.setVisibility(false);
            }
         }
      }
      
      public function §&!8§() : void
      {
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_CoinBonanza");
         this.§%"7§.setVisibility(false);
      }
      
      public function §#^§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new CoinBonanzaPopup(§@#D§.INFO,§5R§.DEFAULT));
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         return this.§#^§();
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "COIN_BONANZA":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§#^§();
         }
      }
      
      public function §="!§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%"7§ != null)
         {
            this.§%"7§.x = param3;
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
      
      public function §=1§() : void
      {
      }
   }
}
