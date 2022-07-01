package §^!k§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;b§.StateLevelEditor;
   import §=!7§.§6W§;
   import §=!7§.§8q§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §return§ extends §>!V§
   {
       
      
      private const §?"%§:Number = 1.5;
      
      private var §,!7§:Inventory;
      
      public function §return§(param1:StateLevelEditor)
      {
         var _loc2_:§9"8§ = null;
         super(param1);
         init(§]!M§.§"!V§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §6W§).§[z§)
         {
            _loc2_.setComponentState(§>!D§.§;!M§);
         }
         this.§,!7§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:String = null;
         if(param3 is §9"8§)
         {
            _loc4_ = (param3 as §9"8§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               §0"#§.§9"2§("Sound_Button_Click");
               this.§ !c§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               §0"#§.§9"2§("Sound_Button_Back");
               this.§?x§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §9"8§).§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§'!k§(_loc4_);
                  §0"#§.§9"2§("Sound_Button_Back");
                  break;
               }
               §0"#§.§9"2§("Sound_Button_Click");
               this.§ !c§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §?x§() : void
      {
         this.§,!7§.§ !c§(null);
      }
      
      public function §0"9§() : Boolean
      {
         return this.§,!7§.isOpen();
      }
      
      public function § !c§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§,!7§.§ !c§(null);
         }
         else
         {
            this.§,!7§.§ !c§(getItemByName(param1) as §9"8§);
         }
         if(param1 == "Birds")
         {
            (§4"8§ as StateLevelEditor).§17§(true);
         }
         else
         {
            this.§'!&§(param1);
            (§4"8§ as StateLevelEditor).§17§(false);
         }
      }
      
      private function §'!&§(param1:String) : void
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
      
      public function §'!k§(param1:String) : void
      {
         this.§,!7§.§'!k§(getItemByName(param1) as §9"8§);
      }
      
      public function §+!R§(param1:Boolean = true) : void
      {
         this.§,!7§.§+!R§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackgroundBase").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§,!7§.§'![§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§8q§;
         (_loc6_ = getItemByName("Slider") as §8q§).§8!a§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §9!z§(param1:Number) : void
      {
         this.§,!7§.update(param1);
      }
      
      public function §5!Q§() : void
      {
         this.§?x§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §<!k§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §+!m§() : Inventory
      {
         return this.§,!7§;
      }
      
      public function §8!9§() : String
      {
         return this.§,!7§.§4!X§();
      }
   }
}
