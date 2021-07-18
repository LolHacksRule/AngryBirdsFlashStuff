package §@!i§
{
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§>P§;
   
   public class §[!_§ extends §>P§
   {
      
      public static const STATE_NAME:String = "PauseStateEditor";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "PauseStateEditor";
         }
      }
      
      public function §[!_§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            if(!_loc1_)
            {
               addr38:
               §+!$§.init(§=!Z§.§;K§.Views.View_LevelPauseEditor[0]);
            }
            return;
         }
         §§goto(addr38);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.STATE_NAME;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("MENU" === _loc4_)
            {
               addr78:
               §§push(0);
               if(_loc6_ || param3)
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
                  §@!n§.§!=§(StateLevelEditor.STATE_NAME);
                  if(_loc6_)
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc5_)
                     {
                     }
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(_loc6_ || param3)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr78);
      }
   }
}
