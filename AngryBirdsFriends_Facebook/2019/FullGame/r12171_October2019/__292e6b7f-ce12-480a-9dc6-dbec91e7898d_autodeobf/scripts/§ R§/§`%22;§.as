package § R§
{
   import § $0§.§5R§;
   import §";§.§%"X§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   
   public class §`";§ implements §-!4§
   {
      
      public static const §in §:String = "EXTRA_POWER_UP";
       
      
      private var §%"7§:§^"C§;
      
      private var §@#W§:int;
      
      private var §,!9§:Object;
      
      private var §;T§:Object;
      
      public function §`";§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         this.§@#W§ = param1.ic;
         this.§,!9§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§;T§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §&!8§() : void
      {
      }
      
      public function §#^§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§@#D§.INFO,§5R§.DEFAULT));
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         return this.§#^§();
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_ItemsCollection");
         this.§%"7§.setVisibility(false);
      }
      
      public function §=1§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
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
      
      public function §&O§() : int
      {
         return this.§@#W§;
      }
      
      public function §]$#§() : Object
      {
         return this.§,!9§;
      }
      
      public function §0<§() : Object
      {
         return this.§;T§;
      }
   }
}
