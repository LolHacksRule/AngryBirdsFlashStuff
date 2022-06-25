package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   
   public class §,!7§ extends §>8§
   {
       
      
      public function §,!7§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndEmbedFailRio[0];
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
         if(!_loc1_)
         {
            super.activate();
            if(!_loc1_)
            {
               §[k§.§&@§.background.§]I§();
            }
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("FULL_GAME" === _loc4_)
            {
               addr72:
               §§push(0);
               if(_loc6_)
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
                  §#W§.§[G§.§=K§("LevelLose");
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
                  addr63:
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(_loc5_ || this)
                  {
                     §§goto(addr63);
                  }
            }
            return;
         }
         §§goto(addr72);
      }
   }
}
