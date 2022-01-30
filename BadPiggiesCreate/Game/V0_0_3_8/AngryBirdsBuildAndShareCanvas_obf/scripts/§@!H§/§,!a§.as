package §@!H§
{
   import §!",§.StateLevelEditor;
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!D§.§@!M§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §,!a§ extends § T§
   {
       
      
      private const §[%§:Number = 1.5;
      
      private var §8![§:Inventory;
      
      public function §,!a§(param1:StateLevelEditor)
      {
         var _loc2_:§3!6§ = null;
         super(param1);
         init(§"a§.§-!g§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as § use§).§%`§)
         {
            _loc2_.setComponentState(§6"0§.§ B§);
         }
         this.§8![§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:String = null;
         if(param3 is §3!6§)
         {
            _loc4_ = (param3 as §3!6§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               this.§'p§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               this.§<z§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §3!6§).§ null§ == §6"0§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§;!r§(_loc4_);
                  break;
               }
               this.§'p§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §<z§() : void
      {
         this.§8![§.§'p§(null);
      }
      
      public function § !R§() : Boolean
      {
         return this.§8![§.isOpen();
      }
      
      public function §'p§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§8![§.§'p§(null);
         }
         else
         {
            this.§8![§.§'p§(getItemByName(param1) as §3!6§);
         }
         if(param1 == "Birds")
         {
            (§ r§ as StateLevelEditor).§&!Y§(true);
         }
         else
         {
            this.§ do§(param1);
            (§ r§ as StateLevelEditor).§&!Y§(false);
         }
      }
      
      private function § do§(param1:String) : void
      {
         getItemByName("Button_Category_Blocks").setVisibility(false);
         getItemByName("Button_Category_Items").setVisibility(false);
         getItemByName("Button_Category_Pigs").setVisibility(false);
         if(param1 == "Blocks")
         {
            getItemByName("Button_Category_Blocks").setVisibility(true);
         }
         else if(param1 == "Objects")
         {
            getItemByName("Button_Category_Items").setVisibility(true);
         }
         else if(param1 == "Pigs")
         {
            getItemByName("Button_Category_Pigs").setVisibility(true);
         }
      }
      
      public function §;!r§(param1:String) : void
      {
         this.§8![§.§;!r§(getItemByName(param1) as §3!6§);
      }
      
      public function §]!n§(param1:Boolean = true) : void
      {
         this.§8![§.§]!n§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc3_:int = 0;
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         _loc3_ = §8!0§.§4!;§() - _loc2_.y - 83;
         _loc2_ = getItemByName("InventoryBackground").mClip;
         _loc2_.height = _loc3_;
         this.§8![§.§'!q§(_loc3_ - 130);
         getItemByName("ScrollLine").mClip.height = _loc3_ - 130 - 5;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc5_:§@!M§;
         (_loc5_ = getItemByName("Slider") as §@!M§).§@!f§(new Rectangle(_loc5_.x,23,0,_loc3_ - 130 - 5 - _loc5_.height));
      }
      
      public function §8!n§(param1:Number) : void
      {
         this.§8![§.update(param1);
      }
      
      public function §7"%§() : void
      {
         this.§<z§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §;!%§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §1!u§() : Inventory
      {
         return this.§8![§;
      }
      
      public function §<!]§() : String
      {
         return this.§8![§.§6!a§();
      }
   }
}
