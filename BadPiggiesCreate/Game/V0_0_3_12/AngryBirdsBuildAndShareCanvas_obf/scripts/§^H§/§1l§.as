package §^H§
{
   import §%B§.§^k§;
   import §5!8§.§+!?§;
   import §5!8§.§1!Y§;
   import §5!8§.§;!Z§;
   import §7N§.StateLevelEditor;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §1l§ extends §%!u§
   {
       
      
      private const §4f§:Number = 1.5;
      
      private var §!" §:Inventory;
      
      public function §1l§(param1:StateLevelEditor)
      {
         var _loc2_:§;!Z§ = null;
         super(param1);
         init(§#! §.§5!;§.Views.View_LevelEditor[0]);
         for each(_loc2_ in (getItemByName("Categories") as §+!?§).§@"9§)
         {
            _loc2_.setComponentState(§;_§.§ "2§);
         }
         this.§!" § = new Inventory(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:String = null;
         if(param3 is §;!Z§)
         {
            _loc4_ = (param3 as §;!Z§).mName;
         }
         switch(param2)
         {
            case "SELECT_CATEGORY":
               §^k§.playSound("Sound_Button_Click");
               this.§8"=§(_loc4_);
               break;
            case "CLOSE_INVENTORY":
               §^k§.playSound("Sound_Button_Back");
               this.§;"%§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §;!Z§).§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§,M§(_loc4_);
                  §^k§.playSound("Sound_Button_Back");
                  break;
               }
               §^k§.playSound("Sound_Button_Click");
               this.§8"=§(_loc4_);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §;"%§() : void
      {
         this.§!" §.§8"=§(null);
      }
      
      public function §5!T§() : Boolean
      {
         return this.§!" §.isOpen();
      }
      
      public function §8"=§(param1:String) : void
      {
         if(param1 == null)
         {
            this.§!" §.§8"=§(null);
         }
         else
         {
            this.§!" §.§8"=§(getItemByName(param1) as §;!Z§);
         }
         if(param1 == "Birds")
         {
            (§%!c§ as StateLevelEditor).§]U§(true);
         }
         else
         {
            this.§,!T§(param1);
            (§%!c§ as StateLevelEditor).§]U§(false);
         }
      }
      
      private function §,!T§(param1:String) : void
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
      
      public function §,M§(param1:String) : void
      {
         this.§!" §.§,M§(getItemByName(param1) as §;!Z§);
      }
      
      public function §0"8§(param1:Boolean = true) : void
      {
         this.§!" §.§0"8§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("InventoryBackground").mClip;
         _loc2_.height = 0;
         var _loc3_:MovieClip = getItemByName("Container_ShopButtons").mClip;
         var _loc4_:int = _loc3_.y - _loc2_.y - _loc3_.height + 5;
         _loc2_.height = _loc4_;
         this.§!" §.§8"$§(_loc4_ - 50);
         getItemByName("ScrollLine").mClip.height = _loc4_ - 50 - 15;
         getItemByName("ScrollLine").mClip.y = 0;
         var _loc6_:§1!Y§;
         (_loc6_ = getItemByName("Slider") as §1!Y§).§0!C§(new Rectangle(_loc6_.x,23,0,_loc4_ - 50 - 10 - _loc6_.height));
      }
      
      public function §<"1§(param1:Number) : void
      {
         this.§!" §.update(param1);
      }
      
      public function §,!!§() : void
      {
         this.§;"%§();
         getItemByName("Categories").setVisibility(false);
      }
      
      public function §!!y§() : void
      {
         getItemByName("Categories").setVisibility(true);
      }
      
      public function §8!`§() : Inventory
      {
         return this.§!" §;
      }
      
      public function §4!I§() : String
      {
         return this.§!" §.§?" §();
      }
   }
}
