package §4#@§
{
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   
   public class §5N§ implements §8L§
   {
      
      public static const §0#V§:String = "FREE_POWER_UPS";
      
      private static const §-F§:int = 0;
       
      
      private var §9@§:int;
      
      private var §;,§:Array;
      
      private var §`!H§:§8#=§;
      
      public function §5N§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         this.§;,§ = param1.fp;
         this.§9@§ = §-F§;
      }
      
      public function §7b§() : void
      {
         this.§;,§ = new Array();
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
      }
      
      public function §2!K§() : Boolean
      {
         switch(this.§9@§)
         {
            case §-F§:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         }
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         return this.§2!K§();
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_PotionParty");
         this.§`!H§.setVisibility(false);
      }
      
      public function §&#3§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "POTION_PARTY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§2!K§();
         }
      }
      
      public function §1!1§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§`!H§ != null)
         {
            this.§`!H§.x = param1;
            this.§`!H§.y = param2;
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
   }
}
