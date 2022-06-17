package §^!b§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   
   public class §5"c§ implements §-"-§
   {
      
      public static const §?"n§:String = "BIRDCOIN_BONANZA";
       
      
      private var § g§:§6!1§;
      
      public function §5"c§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         if(param1 == null)
         {
            if(this.§ g§)
            {
               this.§ g§.setVisibility(false);
            }
         }
      }
      
      public function §&#D§() : void
      {
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_CoinBonanza");
         this.§ g§.setVisibility(false);
      }
      
      public function §^x§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new CoinBonanzaPopup(§-!S§.INFO,§## §.DEFAULT));
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         return this.§^x§();
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "COIN_BONANZA":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§^x§();
         }
      }
      
      public function §@"H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ g§ != null)
         {
            this.§ g§.x = param3;
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
      
      public function §]#g§() : void
      {
      }
   }
}
