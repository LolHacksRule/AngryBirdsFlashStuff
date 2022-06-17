package §+"_§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §>#Y§.§!",§;
   import §[#A§.§+#<§;
   import §[#v§.§4e§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   
   public class §>"%§ implements §-"-§
   {
      
      public static const §?"n§:String = "ITEMS_COLLECTION";
      
      public static const §-"v§:String = "CollectedItem";
       
      
      private var §'2§:int;
      
      private var §`!'§:int;
      
      private var §2"0§:String;
      
      private var §7";§:Number;
      
      private var §%$@§:int;
      
      private var §=!p§:Vector.<§ #X§>;
      
      private var § g§:§6!1§;
      
      public function §>"%§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §?"n§;
      }
      
      public function §@$§(param1:Object) : void
      {
         this.§&#D§();
         if(!param1)
         {
            return;
         }
         this.§'2§ = param1.ips;
         this.§`!'§ = param1.ic;
         this.§2"0§ = param1.ci;
         this.§7";§ = param1["set"];
         this.§%$@§ = param1.wo;
         if(this.§ g§)
         {
            this.§ g§.setVisibility(true);
         }
         if(§!",§.§3"1§.§@Q§(§>"%§.§-"v§) >= 20)
         {
            §4e§.§@g§();
         }
      }
      
      public function §&#D§() : void
      {
         this.§'2§ = 0;
         this.§`!'§ = 0;
         this.§%$@§ = 0;
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
      }
      
      public function §^x§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§-!S§.NORMAL,§## §.DEFAULT));
         return true;
      }
      
      public function §!"?§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§-!S§.INFO,§## §.DEFAULT));
         return true;
      }
      
      public function §4!%§(param1:§+#<§) : void
      {
         this.§ g§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§ g§)
         {
            this.§ g§.setVisibility(false);
         }
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
      
      public function §>#'§(param1:§ #X§) : void
      {
         if(!this.§=!p§)
         {
            this.§=!p§ = new Vector.<§ #X§>();
         }
         this.§=!p§.push(param1);
      }
      
      public function §>#h§() : int
      {
         if(this.§=!p§)
         {
            return this.§=!p§.length;
         }
         return 0;
      }
      
      public function §'"C§() : void
      {
         this.§=!p§ = null;
      }
      
      public function §4!r§() : Boolean
      {
         return this.§`!'§ < this.§'2§;
      }
      
      public function get §'"D§() : int
      {
         return this.§`!'§;
      }
      
      public function get §<"p§() : int
      {
         return this.§'2§;
      }
      
      public function §7W§() : Number
      {
         return §=!a§.§3"1§.§&"U§(this.§7";§);
      }
      
      public function §5"a§() : String
      {
         return this.§2"0§;
      }
      
      public function §2#?§() : int
      {
         return this.§%$@§;
      }
   }
}
