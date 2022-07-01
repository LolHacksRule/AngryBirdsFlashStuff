package §9!l§
{
   import § J§.StateLevelEditor;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §;!A§.§+Y§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §`!d§ extends §`5§
   {
       
      
      private const §4!Y§:Number = 1.5;
      
      private var §#g§:Inventory;
      
      public function §`!d§(param1:StateLevelEditor)
      {
         var _loc2_:§2v§ = null;
         super(param1);
         init(§8!O§.§'!J§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §;!u§).§`6§)
         {
            _loc2_.setComponentState(§"r§.§5!D§);
         }
         this.§#g§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:String = null;
         if(param3 is §2v§)
         {
            _loc4_ = (param3 as §2v§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               this.§<^§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               this.§[!<§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §2v§).§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§+!o§(_loc4_);
                  break;
               }
               this.§<^§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §[!<§() : void
      {
         this.§#g§.§<^§(null);
      }
      
      public function §28§() : Boolean
      {
         return this.§#g§.isOpen();
      }
      
      public function §<^§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§#g§.§<^§(null);
         }
         else
         {
            this.§#g§.§<^§(getItemByName(param1) as §2v§);
         }
         if(param1 == "Birds")
         {
            (§-!H§ as StateLevelEditor).§8"9§(true);
         }
         else
         {
            this.§?!<§(param1);
            (§-!H§ as StateLevelEditor).§8"9§(false);
         }
      }
      
      private function §?!<§(param1:String) : void
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
      
      public function §+!o§(param1:String) : void
      {
         this.§#g§.§+!o§(getItemByName(param1) as §2v§);
      }
      
      public function §`!n§(param1:Boolean = true) : void
      {
         this.§#g§.§`!n§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§#g§.§&^§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§+Y§;
         (_loc6_ = getItemByName("Slider") as §+Y§).§ !T§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §;G§(param1:Number) : void
      {
         this.§#g§.update(param1);
      }
      
      public function §+0§() : void
      {
         this.§[!<§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §-<§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §2!?§() : Inventory
      {
         return this.§#g§;
      }
      
      public function §5",§() : String
      {
         return this.§#g§.§'!t§();
      }
   }
}
