package §'#d§
{
   import § %§.§0"8§;
   import §1!=§.§^"U§;
   import §2G§.§-#+§;
   import §3#T§.§@"!§;
   import §9#B§.§=!L§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   
   public class §5!Z§ implements §<"T§
   {
      
      public static const §^^§:String = "ITEMS_COLLECTION";
      
      public static const §!"O§:String = "CollectedItem";
       
      
      private var §7@§:int;
      
      private var §-!i§:int;
      
      private var §#d§:String;
      
      private var §0$0§:Number;
      
      private var § #u§:int;
      
      private var §7#-§:Vector.<§##8§>;
      
      private var § !V§:§@"!§;
      
      public function §5!Z§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §^^§;
      }
      
      public function §>#<§(param1:Object) : void
      {
         this.§=#"§();
         if(!param1)
         {
            return;
         }
         this.§7@§ = param1.ips;
         this.§-!i§ = param1.ic;
         this.§#d§ = param1.ci;
         this.§0$0§ = param1["set"];
         this.§ #u§ = param1.wo;
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(true);
         }
         if(§-#+§.§6!§.§8#%§(§5!Z§.§!"O§) >= 20)
         {
            §=!L§.§>0§();
         }
      }
      
      public function §=#"§() : void
      {
         this.§7@§ = 0;
         this.§-!i§ = 0;
         this.§ #u§ = 0;
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §4b§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§]"$§.NORMAL,§^"U§.DEFAULT));
         return true;
      }
      
      public function §%O§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§]"$§.INFO,§^"U§.DEFAULT));
         return true;
      }
      
      public function §7$+§(param1:§0"8§) : void
      {
         this.§ !V§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§ !V§)
         {
            this.§ !V§.setVisibility(false);
         }
      }
      
      public function §]"A§() : void
      {
      }
      
      public function onUIInteraction(param1:String) : void
      {
         switch(param1)
         {
            case "ITEMS_COLLECTION":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§4b§();
         }
      }
      
      public function §3#E§(param1:Number, param2:Number) : void
      {
         if(this.§ !V§ != null)
         {
            this.§ !V§.x = param1;
            this.§ !V§.y = param2;
            if(this.§ !V§.visible)
            {
               if(!§`"O§.§6!§.§8!>§())
               {
                  this.§ !V§.setVisibility(false);
               }
            }
            else if(§`"O§.§6!§.§8!>§())
            {
               this.§ !V§.setVisibility(true);
            }
         }
      }
      
      public function §4"W§(param1:§##8§) : void
      {
         if(!this.§7#-§)
         {
            this.§7#-§ = new Vector.<§##8§>();
         }
         this.§7#-§.push(param1);
      }
      
      public function §4#i§() : int
      {
         if(this.§7#-§)
         {
            return this.§7#-§.length;
         }
         return 0;
      }
      
      public function §3#0§() : void
      {
         this.§7#-§ = null;
      }
      
      public function §0!J§() : Boolean
      {
         return this.§-!i§ < this.§7@§;
      }
      
      public function get §6"L§() : int
      {
         return this.§-!i§;
      }
      
      public function get §#$"§() : int
      {
         return this.§7@§;
      }
      
      public function §'$=§() : Number
      {
         return §`"O§.§6!§.§&"P§(this.§0$0§);
      }
      
      public function §;!7§() : String
      {
         return this.§#d§;
      }
      
      public function §>#j§() : int
      {
         return this.§ #u§;
      }
   }
}
