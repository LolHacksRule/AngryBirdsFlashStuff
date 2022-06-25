package § !@§
{
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §5!L§.§=w§;
   
   public class §6f§ extends § !"§
   {
       
      
      public function §6f§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndEmbedFailRio[0];
      }
      
      override protected function showButtons() : void
      {
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            if(!_loc1_)
            {
               §=w§.§ o§.background.§ ! §();
            }
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr73:
               §§push(0);
               if(_loc6_ || this)
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
                  §<!7§.§4!"§.§^"§("LevelLose");
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(!(_loc5_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
