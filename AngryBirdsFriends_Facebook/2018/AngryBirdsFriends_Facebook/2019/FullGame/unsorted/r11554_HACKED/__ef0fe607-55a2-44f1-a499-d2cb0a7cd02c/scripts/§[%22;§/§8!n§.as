package §[";§
{
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §!!t§.§'8§;
   import §%#v§.§?!F§;
   import §4!n§.§#$>§;
   import §;$5§.§9§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§#$D§;
   
   public class §8!n§ implements §<#'§
   {
      
      public static const §1"2§:String = "ITEMS_COLLECTION";
      
      public static const §6'§:String = "CollectedItem";
       
      
      private var §+#<§:int;
      
      private var §,$%§:int;
      
      private var §7$+§:String;
      
      private var §!#n§:Number;
      
      private var §7"&§:int;
      
      private var §;!E§:Vector.<§0#m§>;
      
      private var §%!p§:§#$>§;
      
      public function §8!n§()
      {
         super();
      }
      
      public function get ID() : String
      {
         return §1"2§;
      }
      
      public function §%6§(param1:Object) : void
      {
         this.§-!c§();
         if(!param1)
         {
            return;
         }
         this.§+#<§ = param1.ips;
         this.§,$%§ = param1.ic;
         this.§7$+§ = param1.ci;
         this.§!#n§ = param1["set"];
         this.§7"&§ = param1.wo;
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(true);
         }
         if(§#$D§.§?q§.§7!N§(§8!n§.§6'§) >= 20)
         {
            §'8§.§2!H§();
         }
      }
      
      public function §-!c§() : void
      {
         this.§+#<§ = 0;
         this.§,$%§ = 0;
         this.§7"&§ = 0;
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
      }
      
      public function §,"&§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionPopup(§%#§.NORMAL,§9#5§.DEFAULT));
         return true;
      }
      
      public function §!t§() : Boolean
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ItemsCollectionInfoPopup(§%#§.INFO,§9#5§.DEFAULT));
         return true;
      }
      
      public function §^!;§(param1:§?!F§) : void
      {
         this.§%!p§ = param1.getItemByName("Button_ItemsCollection");
         if(this.§%!p§)
         {
            this.§%!p§.setVisibility(false);
         }
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
      
      public function §'"l§(param1:§0#m§) : void
      {
         if(!this.§;!E§)
         {
            this.§;!E§ = new Vector.<§0#m§>();
         }
         this.§;!E§.push(param1);
      }
      
      public function §'-§() : int
      {
         if(this.§;!E§)
         {
            return this.§;!E§.length;
         }
         return 0;
      }
      
      public function §[#O§() : void
      {
         this.§;!E§ = null;
      }
      
      public function §>!f§() : Boolean
      {
         return this.§,$%§ < this.§+#<§;
      }
      
      public function get §'"J§() : int
      {
         return this.§,$%§;
      }
      
      public function get §5!k§() : int
      {
         return this.§+#<§;
      }
      
      public function §=#&§() : Number
      {
         return §1"9§.§?q§.§11§(this.§!#n§);
      }
      
      public function §;"K§() : String
      {
         return this.§7$+§;
      }
      
      public function §;!N§() : int
      {
         return this.§7"&§;
      }
   }
}
