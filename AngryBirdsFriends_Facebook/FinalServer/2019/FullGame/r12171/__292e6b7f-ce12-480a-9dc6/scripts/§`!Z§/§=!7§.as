package §`!Z§
{
   import § $0§.§5R§;
   import §!!L§.§ !8§;
   import §";§.§%"X§;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §^"3§.§^"C§;
   
   public class §=!7§ implements §-!4§
   {
      
      public static const §in §:String = "ITEMS_COLLECTION";
      
      public static const §""H§:String = "CollectedItem";
       
      
      private var §?r§:int;
      
      private var §@#W§:int;
      
      private var § 4§:String;
      
      private var § #,§:Number;
      
      private var §@"u§:int;
      
      private var §9#8§:Vector.<§7J§>;
      
      private var §%"7§:§^"C§;
      
      public function §=!7§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §in §;
      }
      
      public function §8#y§(param1:Object) : void
      {
         this.§&!8§();
         if(!param1)
         {
            return;
         }
         this.§?r§ = param1.ips;
         this.§@#W§ = param1.ic;
         this.§ 4§ = param1.ci;
         this.§ #,§ = param1["set"];
         this.§@"u§ = param1.wo;
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(true);
         }
         if(§]#0§.§+!,§.§!#r§(§=!7§.§""H§) >= 20)
         {
            § !8§.§3#Q§();
         }
      }
      
      public function §&!8§() : void
      {
         this.§?r§ = 0;
         this.§@#W§ = 0;
         this.§@"u§ = 0;
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
      }
      
      public function §#^§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§@#D§.NORMAL,§5R§.DEFAULT));
         return true;
      }
      
      public function §5$%§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§@#D§.INFO,§5R§.DEFAULT));
         return true;
      }
      
      public function §]#F§(param1:§%"X§) : void
      {
         this.§%"7§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§%"7§)
         {
            this.§%"7§.setVisibility(false);
         }
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
      
      public function §9"Z§(param1:§7J§) : void
      {
         if(!this.§9#8§)
         {
            this.§9#8§ = new Vector.<§7J§>();
         }
         this.§9#8§.push(param1);
      }
      
      public function §9#>§() : int
      {
         if(this.§9#8§)
         {
            return this.§9#8§.length;
         }
         return 0;
      }
      
      public function §?!+§() : void
      {
         this.§9#8§ = null;
      }
      
      public function §1"#§() : Boolean
      {
         return this.§@#W§ < this.§?r§;
      }
      
      public function get §0!x§() : int
      {
         return this.§@#W§;
      }
      
      public function get §;!n§() : int
      {
         return this.§?r§;
      }
      
      public function §%"J§() : Number
      {
         return § #F§.§+!,§.§6f§(this.§ #,§);
      }
      
      public function §>">§() : String
      {
         return this.§ 4§;
      }
      
      public function §?#6§() : int
      {
         return this.§@"u§;
      }
   }
}
