package § !u§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §+]§.§try§;
   import §@!i§.StateLevelEditor;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §&Z§ extends §2U§
   {
       
      
      private const §=<§:Number = 1.5;
      
      private var §@!?§:§9§;
      
      public function §&Z§(param1:StateLevelEditor)
      {
         super(param1);
         init(§=!Z§.§;K§.Views.View_LevelEditor[0]);
         (getItemByName("Button_Gravity") as §#!'§).setComponentState(§<f§.§`O§);
         (getItemByName("Button_ToolSelect") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (getItemByName("Button_ToolPan") as §#!'§).setComponentState(§<f§.§`O§);
         this.§@!?§ = new §9§(this);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "SELECT_CATEGORY":
               this.§@!?§.§?!#§(param3 as §#!'§);
               break;
            case "NEXT_PAGE":
               this.§@!?§.§%8§(1);
               break;
            case "PREVIOUS_PAGE":
               this.§@!?§.§%8§(-1);
               break;
            case "CLOSE_INVENTORY":
               this.§7$§();
               break;
            case "TOGGLE_CATEGORY":
               if((param3 as §#!'§).§-Y§ == §<f§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§@!?§.§-!#§(param3 as §#!'§);
                  break;
               }
               this.§@!?§.§?!#§(param3 as §#!'§);
               break;
         }
         super.listenerEventOccured(param1,param2,param3);
      }
      
      public function §7$§() : void
      {
         this.§@!?§.§?!#§(null);
      }
      
      public function §<!o§() : Boolean
      {
         return this.§@!?§.isOpen();
      }
      
      public function §?!#§(param1:String) : void
      {
         this.§@!?§.§?!#§(getItemByName(param1) as §#!'§);
      }
      
      public function §]B§(param1:Boolean = true) : void
      {
         this.§@!?§.§]B§(param1);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         var _loc2_:MovieClip = getItemByName("Background_Stars").mClip;
         _loc2_.height = 0;
         _loc2_ = getItemByName("Background_Inventory").mClip;
         _loc2_.height = 0;
         var _loc3_:§[!s§ = getItemByName("Container_PageButtons") as §[!s§;
         var _loc4_:int = _loc3_.y + _loc3_.height + 7 - _loc2_.y;
         _loc2_ = getItemByName("Background_Inventory").mClip;
         _loc2_.height = _loc4_;
         _loc2_ = getItemByName("Background_Stars").mClip;
         _loc2_.height = _loc4_;
         this.§@!?§.§#!%§(new Rectangle(3,90,_loc2_.width,_loc2_.height - 100));
         (§+&§ as §try§).§<!1§();
      }
   }
}
