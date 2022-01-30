package §9!z§
{
   import §!!+§.StateLevelEditor;
   import §0!d§.§'!_§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §'Y§ extends §=p§
   {
       
      
      private const §4!H§:Number = 1.5;
      
      private var §9!g§:Inventory;
      
      public function §'Y§(param1:StateLevelEditor)
      {
         var _loc2_:§8!r§ = null;
         super(param1);
         init(§1!=§.§8X§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §7!a§).§`F§)
         {
            _loc2_.setComponentState(§"h§.§"!a§);
         }
         this.§9!g§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:String = null;
         if(param3 is §8!r§)
         {
            _loc4_ = (param3 as §8!r§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               this.§7!%§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               this.§&D§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §8!r§).§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§@t§(_loc4_);
                  break;
               }
               this.§7!%§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §&D§() : void
      {
         this.§9!g§.§7!%§(null);
      }
      
      public function §else §() : Boolean
      {
         return this.§9!g§.isOpen();
      }
      
      public function §7!%§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§9!g§.§7!%§(null);
         }
         else
         {
            this.§9!g§.§7!%§(getItemByName(param1) as §8!r§);
         }
         if(param1 == "Birds")
         {
            (§,$§ as StateLevelEditor).§+!f§(true);
         }
         else
         {
            this.§8!K§(param1);
            (§,$§ as StateLevelEditor).§+!f§(false);
         }
      }
      
      private function §8!K§(param1:String) : void
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
      
      public function §@t§(param1:String) : void
      {
         this.§9!g§.§@t§(getItemByName(param1) as §8!r§);
      }
      
      public function §]!2§(param1:Boolean = true) : void
      {
         this.§9!g§.§]!2§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§9!g§.§+"!§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§'!_§;
         (_loc6_ = getItemByName("Slider") as §'!_§).§=>§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §,!!§(param1:Number) : void
      {
         this.§9!g§.update(param1);
      }
      
      public function §&_§() : void
      {
         this.§&D§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §%!e§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §6!w§() : Inventory
      {
         return this.§9!g§;
      }
      
      public function §^K§() : String
      {
         return this.§9!g§.§0"'§();
      }
   }
}
