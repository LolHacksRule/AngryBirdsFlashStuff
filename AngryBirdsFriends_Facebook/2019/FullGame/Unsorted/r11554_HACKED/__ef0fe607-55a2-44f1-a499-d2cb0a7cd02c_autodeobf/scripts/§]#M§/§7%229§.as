package §]#M§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   
   public class §7"9§ implements §<#'§
   {
      
      public static const §1"2§:String = "EXTRA_POWER_UP";
       
      
      private var §%!p§:§#$>§;
      
      private var §,$%§:int;
      
      private var §1!>§:Object;
      
      private var §##m§:Object;
      
      public function §7"9§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
         this.§,$%§ = param1.ic;
         this.§1!>§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§##m§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §-!c§() : void
      {
      }
      
      public function §,"&§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§%#§.INFO,§9#5§.DEFAULT));
         return true;
      }
      
      public function §!t§() : Boolean
      {
         return this.§,"&§();
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_ItemsCollection");
         this.§%!p§.setVisibility(false);
      }
      
      public function §8"4§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
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
      
      public function §^`§() : int
      {
         return this.§,$%§;
      }
      
      public function §[##§() : Object
      {
         return this.§1!>§;
      }
      
      public function §5$2§() : Object
      {
         return this.§##m§;
      }
   }
}
