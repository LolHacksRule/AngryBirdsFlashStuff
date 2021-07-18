package §1!F§
{
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §?!-§.§'!V§;
   
   public class §`h§ extends §0x§
   {
       
      
      public function §`h§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndEmbedFailRio[0];
      }
      
      override protected function showButtons() : void
      {
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            if(!_loc2_)
            {
               addr27:
               §'!V§.§1!2§.background.§8!n§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr67:
               §§push(0);
               if(_loc5_ || param3)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §#!?§.§8;§.§4!`§("LevelLose");
                  if(_loc5_)
                  {
                     break;
                  }
                  addr58:
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!(_loc6_ && param3))
                  {
                     §§goto(addr58);
                  }
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
