package §4"E§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   
   public class §^!B§ implements §<#'§
   {
      
      public static const §1"2§:String = "LEAGUE_RATING";
       
      
      private var §%!p§:§#$>§;
      
      public function §^!B§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
      }
      
      public function §-!c§() : void
      {
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §,"&§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new DoubleLeagueRatingInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
         return true;
      }
      
      public function §!t§() : Boolean
      {
         return this.§,"&§();
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_DoubleLeagueRatings");
         this.§%!p§.setVisibility(false);
      }
      
      public function §8"4§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "DOUBLE_LEAGUE_RATINGS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,"&§();
         }
      }
      
      public function §%$#§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§%!p§ != null)
         {
            this.§%!p§.x = param1;
            this.§%!p§.y = param2;
            if(this.§%!p§.visible)
            {
               if(!§1"9§.§?q§.§-"?§())
               {
                  this.§%!p§.setVisibility(false);
               }
            }
            else if(§1"9§.§?q§.§-"?§())
            {
               this.§%!p§.setVisibility(true);
            }
         }
      }
   }
}
