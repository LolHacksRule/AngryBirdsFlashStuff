package §+# §
{
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   
   public class §="=§ implements §8L§
   {
      
      public static const §0#V§:String = "EXTRA_POWER_UP";
       
      
      private var §`!H§:§8#=§;
      
      private var §4#w§:int;
      
      private var §%#c§:Object;
      
      private var §<X§:Object;
      
      public function §="=§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         this.§4#w§ = param1.ic;
         this.§%#c§ = param1.or[!!param1.or[0].winner ? 0 : 1];
         this.§<X§ = param1.or[!!param1.or[0].winner ? 1 : 0];
      }
      
      public function §7b§() : void
      {
      }
      
      public function §2!K§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ExtraPowerupPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         return this.§2!K§();
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_ItemsCollection");
         this.§`!H§.setVisibility(false);
      }
      
      public function §&#3§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
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
      
      public function §^#p§() : int
      {
         return this.§4#w§;
      }
      
      public function §5#g§() : Object
      {
         return this.§%#c§;
      }
      
      public function §-#q§() : Object
      {
         return this.§<X§;
      }
   }
}
