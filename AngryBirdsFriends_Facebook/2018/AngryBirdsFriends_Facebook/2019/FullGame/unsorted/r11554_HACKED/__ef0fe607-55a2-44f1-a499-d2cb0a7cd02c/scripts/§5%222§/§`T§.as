package §5"2§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   
   public class §`T§ implements §<#'§
   {
      
      public static const §1"2§:String = "FREE_POWER_UPS";
      
      private static const §4#_§:int = 0;
       
      
      private var §'$ §:int;
      
      private var §]!L§:Array;
      
      private var §%!p§:§#$>§;
      
      public function §`T§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
         this.§]!L§ = param1.fp;
         this.§'$ § = §4#_§;
      }
      
      public function §-!c§() : void
      {
         this.§]!L§ = new Array();
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §,"&§() : Boolean
      {
         switch(this.§'$ §)
         {
            case §4#_§:
               AngryBirdsBase.singleton.popupManager.openPopup(new PotionPartyInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
         }
         return true;
      }
      
      public function §!t§() : Boolean
      {
         return this.§,"&§();
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_PotionParty");
         this.§%!p§.setVisibility(false);
      }
      
      public function §8"4§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "POTION_PARTY":
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
