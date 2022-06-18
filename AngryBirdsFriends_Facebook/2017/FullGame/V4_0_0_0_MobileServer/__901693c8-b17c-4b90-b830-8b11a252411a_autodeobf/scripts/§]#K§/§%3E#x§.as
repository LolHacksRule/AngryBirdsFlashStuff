package §]#K§
{
   import § o§.§%"!§;
   import §&"J§.§4"W§;
   import §1#W§.§!#&§;
   import §8"X§.§^!E§;
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   
   public class §>#x§ implements §2"?§
   {
      
      public static const §9!E§:String = "ITEMS_COLLECTION";
      
      public static const §8!D§:String = "CollectedItem";
       
      
      private var §%"D§:int;
      
      private var §+"U§:int;
      
      private var §>!Z§:String;
      
      private var §@"T§:Number;
      
      private var §"!,§:int;
      
      private var §^!o§:Vector.<§&p§>;
      
      private var §[#T§:§[!K§;
      
      public function §>#x§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §9!E§;
      }
      
      public function §5a§(param1:Object) : void
      {
         this.§[L§();
         if(!param1)
         {
            return;
         }
         this.§%"D§ = param1.ips;
         this.§+"U§ = param1.ic;
         this.§>!Z§ = param1.ci;
         this.§@"T§ = param1["set"];
         this.§"!,§ = param1.wo;
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(true);
         }
         if(§4"W§.§ "D§.§5!@§(§>#x§.§8!D§) >= 20)
         {
            §^!E§.§2z§();
         }
      }
      
      public function §[L§() : void
      {
         this.§%"D§ = 0;
         this.§+"U§ = 0;
         this.§"!,§ = 0;
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
      }
      
      public function §;=§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§%"!§.NORMAL,§^#o§.DEFAULT));
         return true;
      }
      
      public function §4$2§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§%"!§.INFO,§^#o§.DEFAULT));
         return true;
      }
      
      public function §="y§(param1:§#E§) : void
      {
         this.§[#T§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§[#T§)
         {
            this.§[#T§.setVisibility(false);
         }
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
      
      public function §%c§(param1:§&p§) : void
      {
         if(!this.§^!o§)
         {
            this.§^!o§ = new Vector.<§&p§>();
         }
         this.§^!o§.push(param1);
      }
      
      public function §4!b§() : int
      {
         if(this.§^!o§)
         {
            return this.§^!o§.length;
         }
         return 0;
      }
      
      public function §3$%§() : void
      {
         this.§^!o§ = null;
      }
      
      public function §4v§() : Boolean
      {
         return this.§+"U§ < this.§%"D§;
      }
      
      public function get § get§() : int
      {
         return this.§+"U§;
      }
      
      public function get §>"M§() : int
      {
         return this.§%"D§;
      }
      
      public function §,"1§() : Number
      {
         return § "a§.§ "D§.§7#K§(this.§@"T§);
      }
      
      public function §@#h§() : String
      {
         return this.§>!Z§;
      }
      
      public function §5u§() : int
      {
         return this.§"!,§;
      }
   }
}
