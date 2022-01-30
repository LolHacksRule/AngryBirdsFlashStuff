package §;W§
{
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§[!h§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §>Z§.§5;§;
   import §^^§.StateLevelEditor;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §"w§ extends §=!]§
   {
       
      
      private const §@c§:Number = 1.5;
      
      private var §2!h§:Inventory;
      
      public function §"w§(param1:StateLevelEditor)
      {
         var _loc2_:§8K§ = null;
         super(param1);
         init(§,!h§.§`C§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §1H§).§[!P§)
         {
            _loc2_.setComponentState(§""3§.§!`§);
         }
         this.§2!h§ = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:String = null;
         if(param3 is §8K§)
         {
            _loc4_ = (param3 as §8K§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               §5;§.playSound("Sound_Button_Click");
               this.§^J§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               §5;§.playSound("Sound_Button_Back");
               this.§5!4§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §8K§).§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§'"8§(_loc4_);
                  §5;§.playSound("Sound_Button_Back");
                  break;
               }
               §5;§.playSound("Sound_Button_Click");
               this.§^J§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §5!4§() : void
      {
         this.§2!h§.§^J§(null);
      }
      
      public function §^![§() : Boolean
      {
         return this.§2!h§.isOpen();
      }
      
      public function §^J§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§2!h§.§^J§(null);
         }
         else
         {
            this.§2!h§.§^J§(getItemByName(param1) as §8K§);
         }
         if(param1 == "Birds")
         {
            (§=p§ as StateLevelEditor).§<I§(true);
         }
         else
         {
            this.§[!1§(param1);
            (§=p§ as StateLevelEditor).§<I§(false);
         }
      }
      
      private function §[!1§(param1:String) : void
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
      
      public function §'"8§(param1:String) : void
      {
         this.§2!h§.§'"8§(getItemByName(param1) as §8K§);
      }
      
      public function §'S§(param1:Boolean = true) : void
      {
         this.§2!h§.§'S§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§2!h§.§>!y§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§[!h§;
         (_loc6_ = getItemByName("Slider") as §[!h§).§]0§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §4"7§(param1:Number) : void
      {
         this.§2!h§.update(param1);
      }
      
      public function §2r§() : void
      {
         this.§5!4§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §9G§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §[y§() : Inventory
      {
         return this.§2!h§;
      }
      
      public function §@!T§() : String
      {
         return this.§2!h§.§;!!§();
      }
   }
}
