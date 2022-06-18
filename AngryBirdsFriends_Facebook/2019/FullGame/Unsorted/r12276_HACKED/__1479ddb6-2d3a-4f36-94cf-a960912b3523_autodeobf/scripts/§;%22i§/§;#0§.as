package §;"i§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   
   public class §;#0§ implements §-"-§
   {
      
      public static const §?"n§:String = "EXTRA_POWER_UP";
       
      
      private var § g§:§6!1§;
      
      private var §`!'§:int;
      
      private var §5$$§:Object;
      
      private var §@#W§:Object;
      
      public function §;#0§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         this.§`!'§ = param1.ic;
         this.§5$$§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§@#W§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §&#D§() : void
      {
      }
      
      public function §^x§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§-!S§.INFO,§## §.DEFAULT));
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         return this.§^x§();
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_ItemsCollection");
         this.§ g§.setVisibility(false);
      }
      
      public function §]#g§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§^x§();
         }
      }
      
      public function §@"H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§ g§ != null)
         {
            this.§ g§.x = param1;
            this.§ g§.y = param2;
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
      
      public function §&!3§() : int
      {
         return this.§`!'§;
      }
      
      public function §9",§() : Object
      {
         return this.§5$$§;
      }
      
      public function §#!0§() : Object
      {
         return this.§@#W§;
      }
   }
}
