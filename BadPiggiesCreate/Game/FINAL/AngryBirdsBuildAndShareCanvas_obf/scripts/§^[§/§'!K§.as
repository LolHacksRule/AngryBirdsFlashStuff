package §^[§
{
   import § "@§.StateLevelEditor;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §'p§.§`!w§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'!K§ extends §'s§
   {
       
      
      private const §6P§:Number = 1.5;
      
      private var §"#§:Inventory;
      
      public function §'!K§(param1:StateLevelEditor)
      {
         var _loc2_:§="#§ = null;
         super(param1);
         init(§`7§.§>"?§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §`!T§).§"!_§)
         {
            _loc2_.setComponentState(§9!!§.§,!0§);
         }
         this.§"#§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:String = null;
         if(param3 is §="#§)
         {
            _loc4_ = (param3 as §="#§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               §5!U§.playSound("Sound_Button_Click");
               this.§%w§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               §5!U§.playSound("Sound_Button_Back");
               this.§`B§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §="#§).§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§+K§(_loc4_);
                  §5!U§.playSound("Sound_Button_Back");
                  break;
               }
               §5!U§.playSound("Sound_Button_Click");
               this.§%w§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §`B§() : void
      {
         this.§"#§.§%w§(null);
      }
      
      public function §]!f§() : Boolean
      {
         return this.§"#§.isOpen();
      }
      
      public function §%w§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§"#§.§%w§(null);
         }
         else
         {
            this.§"#§.§%w§(getItemByName(param1) as §="#§);
         }
         if(param1 == "Birds")
         {
            (§?!T§ as StateLevelEditor).§!!L§(true);
         }
         else
         {
            this.§<i§(param1);
            (§?!T§ as StateLevelEditor).§!!L§(false);
         }
      }
      
      private function §<i§(param1:String) : void
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
      
      public function §+K§(param1:String) : void
      {
         this.§"#§.§+K§(getItemByName(param1) as §="#§);
      }
      
      public function §6!p§(param1:Boolean = true) : void
      {
         this.§"#§.§6!p§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§"#§.§1!J§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§`!w§;
         (_loc6_ = getItemByName("Slider") as §`!w§).§`a§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §=z§(param1:Number) : void
      {
         this.§"#§.update(param1);
      }
      
      public function §=!^§() : void
      {
         this.§`B§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §"!U§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §'!Q§() : Inventory
      {
         return this.§"#§;
      }
      
      public function §[G§() : String
      {
         return this.§"#§.§#!K§();
      }
   }
}
