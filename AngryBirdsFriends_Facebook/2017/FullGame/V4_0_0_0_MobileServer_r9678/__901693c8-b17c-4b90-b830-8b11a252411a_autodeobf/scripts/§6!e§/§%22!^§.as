package §6!e§
{
   import § o§.§%"!§;
   import §1#W§.§!#&§;
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   
   public class §"!^§ implements §2"?§
   {
      
      public static const §9!E§:String = "EXTRA_POWER_UP";
       
      
      private var §[#T§:§[!K§;
      
      private var §+"U§:int;
      
      private var §^#`§:Object;
      
      private var §,!t§:Object;
      
      public function §"!^§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §9!E§;
      }
      
      public function §5a§(param1:Object) : void
      {
         this.§+"U§ = param1.ic;
         this.§^#`§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§,!t§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §[L§() : void
      {
      }
      
      public function §;=§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§%"!§.INFO,§^#o§.DEFAULT));
         return true;
      }
      
      public function §4$2§() : Boolean
      {
         return this.§;=§();
      }
      
      public function §="y§(param1:§#E§) : void
      {
         this.§[#T§ = param1.getItemByName("Button_ItemsCollection");
         this.§[#T§.setVisibility(false);
      }
      
      public function §%"Q§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
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
      
      public function §6!$§() : int
      {
         return this.§+"U§;
      }
      
      public function §+!-§() : Object
      {
         return this.§^#`§;
      }
      
      public function §["&§() : Object
      {
         return this.§,!t§;
      }
   }
}
