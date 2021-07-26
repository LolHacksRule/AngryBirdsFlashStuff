package §&n§
{
   import §!#C§.§ $?§;
   import §%!-§.§5!z§;
   import §,!Q§.§8#=§;
   import §0!s§.§]"Y§;
   import §3+§.§;!H§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §>z§.§#"l§;
   
   public class §]"%§ implements §8L§
   {
      
      public static const §0#V§:String = "ITEMS_COLLECTION";
      
      public static const §1"9§:String = "CollectedItem";
       
      
      private var §9!n§:int;
      
      private var §4#w§:int;
      
      private var §?"B§:String;
      
      private var §""<§:Number;
      
      private var §6n§:int;
      
      private var §&"%§:Vector.<§6"r§>;
      
      private var §`!H§:§8#=§;
      
      public function §]"%§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §0#V§;
      }
      
      public function §`#[§(param1:Object) : void
      {
         this.§7b§();
         if(!param1)
         {
            return;
         }
         this.§9!n§ = param1.ips;
         this.§4#w§ = param1.ic;
         this.§?"B§ = param1.ci;
         this.§""<§ = param1["set"];
         this.§6n§ = param1.wo;
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(true);
         }
         if(§ $?§.§`"H§.§9!f§(§]"%§.§1"9§) >= 20)
         {
            §;!H§.§`$§();
         }
      }
      
      public function §7b§() : void
      {
         this.§9!n§ = 0;
         this.§4#w§ = 0;
         this.§6n§ = 0;
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
      }
      
      public function §2!K§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §?#Q§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§#"l§.INFO,§]"Y§.DEFAULT));
         return true;
      }
      
      public function §]"s§(param1:§5!z§) : void
      {
         this.§`!H§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§`!H§)
         {
            this.§`!H§.setVisibility(false);
         }
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
      
      public function §""O§(param1:§6"r§) : void
      {
         if(!this.§&"%§)
         {
            this.§&"%§ = new Vector.<§6"r§>();
         }
         this.§&"%§.push(param1);
      }
      
      public function §;$,§() : int
      {
         if(this.§&"%§)
         {
            return this.§&"%§.length;
         }
         return 0;
      }
      
      public function §@"$§() : void
      {
         this.§&"%§ = null;
      }
      
      public function §;#d§() : Boolean
      {
         return this.§4#w§ < this.§9!n§;
      }
      
      public function get §#$C§() : int
      {
         return this.§4#w§;
      }
      
      public function get §6"Y§() : int
      {
         return this.§9!n§;
      }
      
      public function §[#'§() : Number
      {
         return §7"L§.§`"H§.§3-§(this.§""<§);
      }
      
      public function §8!Y§() : String
      {
         return this.§?"B§;
      }
      
      public function §^!l§() : int
      {
         return this.§6n§;
      }
   }
}
