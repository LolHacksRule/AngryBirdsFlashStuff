package §8!7§
{
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §<!I§.§5!j§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=;§.StateLevelEditor;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §&%§ extends §7!!§
   {
       
      
      private const §0!%§:Number = 1.5;
      
      private var §=m§:Inventory;
      
      public function §&%§(param1:StateLevelEditor)
      {
         var _loc2_:§="5§ = null;
         super(param1);
         init(§"!f§.§%!1§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §>"-§).§7!z§)
         {
            _loc2_.setComponentState(§+!A§.§5"6§);
         }
         this.§=m§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:String = null;
         if(param3 is §="5§)
         {
            _loc4_ = (param3 as §="5§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               this.§]!e§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               this.§<§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §="5§).§]p§ == §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§'<§(_loc4_);
                  break;
               }
               this.§]!e§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §<§() : void
      {
         this.§=m§.§]!e§(null);
      }
      
      public function §#5§() : Boolean
      {
         return this.§=m§.isOpen();
      }
      
      public function §]!e§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§=m§.§]!e§(null);
         }
         else
         {
            this.§=m§.§]!e§(getItemByName(param1) as §="5§);
         }
         if(param1 == "Birds")
         {
            (§!a§ as StateLevelEditor).§+",§(true);
         }
         else
         {
            this.§=!x§(param1);
            (§!a§ as StateLevelEditor).§+",§(false);
         }
      }
      
      private function §=!x§(param1:String) : void
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
      
      public function §'<§(param1:String) : void
      {
         this.§=m§.§'<§(getItemByName(param1) as §="5§);
      }
      
      public function §5!;§(param1:Boolean = true) : void
      {
         this.§=m§.§5!;§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§=m§.§;!&§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§5!j§;
         (_loc6_ = getItemByName("Slider") as §5!j§).§<!-§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §5d§(param1:Number) : void
      {
         this.§=m§.update(param1);
      }
      
      public function §!9§() : void
      {
         this.§<§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §>!Y§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §[S§() : Inventory
      {
         return this.§=m§;
      }
      
      public function §4"!§() : String
      {
         return this.§=m§.§8!0§();
      }
   }
}
