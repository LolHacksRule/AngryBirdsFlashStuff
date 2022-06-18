package static
{
   import § o§.§%"!§;
   import §1#W§.§!#&§;
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   
   public class §?#p§ implements §2"?§
   {
      
      public static const §9!E§:String = "LEAGUE_RATING";
       
      
      private var §[#T§:§[!K§;
      
      public function §?#p§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §9!E§;
      }
      
      public function §5a§(param1:Object) : void
      {
      }
      
      public function §[L§() : void
      {
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
      }
      
      public function §;=§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new DoubleLeagueRatingInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
         return true;
      }
      
      public function §4$2§() : Boolean
      {
         return this.§;=§();
      }
      
      public function §="y§(param1:§#E§) : void
      {
         this.§[#T§ = param1.getItemByName("Button_DoubleLeagueRatings");
         this.§[#T§.setVisibility(false);
      }
      
      public function §%"Q§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "DOUBLE_LEAGUE_RATINGS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§;=§();
         }
      }
      
      public function §?##§(param1:Number, param2:Number) : void
      {
         if(this.§[#T§ != null)
         {
            this.§[#T§.x = param1;
            this.§[#T§.y = param2;
            if(this.§[#T§.visible)
            {
               if(!§ "a§.§ "D§.§ #b§())
               {
                  this.§[#T§.setVisibility(false);
               }
            }
            else if(§ "a§.§ "D§.§ #b§())
            {
               this.§[#T§.setVisibility(true);
            }
         }
      }
   }
}
