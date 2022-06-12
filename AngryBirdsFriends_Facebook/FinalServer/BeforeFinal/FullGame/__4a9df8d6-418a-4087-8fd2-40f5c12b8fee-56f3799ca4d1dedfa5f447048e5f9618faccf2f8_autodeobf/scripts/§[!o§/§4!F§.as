package §[!o§
{
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   
   public class §4!F§ implements §8L§
   {
      
      public static const §0#V§:String = "BIRDCOIN_BONANZA";
       
      
      private var §`!H§:§8#=§;
      
      public function §4!F§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
      }
      
      public function §7b§() : void
      {
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_CoinBonanza");
         this.§`!H§.setVisibility(false);
      }
      
      public function §2!K§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new CoinBonanzaPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         return this.§2!K§();
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "COIN_BONANZA":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§2!K§();
         }
      }
      
      public function §1!1§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§`!H§ != null)
         {
            this.§`!H§.x = param3;
            if(this.§`!H§.visible)
            {
               if(!§7"L§.§`"H§.§58§())
               {
                  this.§`!H§.setVisibility(false);
               }
            }
            else if(§7"L§.§`"H§.§58§())
            {
               this.§`!H§.setVisibility(true);
            }
         }
      }
      
      public function §&#3§() : void
      {
      }
   }
}
