package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§2!i§;
   import §1?§.§+!§;
   
   public class §0!§ extends §2!i§
   {
      
      public static const STATE_NAME:String = "LevelEndEditorFailState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelEndEditorFailState";
         }
      }
      
      public function §0!§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            if(_loc1_)
            {
               §§goto(addr37);
            }
            §§goto(addr44);
         }
         addr37:
         §+!$§ = new §2U§(this);
         if(_loc1_)
         {
            addr44:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailEditor[0]);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param1)
         {
            §§push("REPLAY");
            if(!_loc5_)
            {
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr125:
                        §§push(0);
                        if(_loc6_ || param1)
                        {
                        }
                     }
                     else
                     {
                        addr137:
                        §§push(1);
                        if(_loc6_ || param3)
                        {
                        }
                     }
                     §§goto(addr150);
                  }
                  else
                  {
                     §§goto(addr136);
                  }
               }
               §§goto(addr136);
            }
            addr136:
            if("MENU" === _loc4_)
            {
               §§goto(addr137);
            }
            else
            {
               §§push(2);
            }
            addr150:
            switch(§§pop())
            {
               case 0:
                  §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
                  if(!(_loc5_ && param1))
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc5_ && param3)
                     {
                        addr77:
                        break;
                     }
                  }
                  break;
               case 1:
                  §+!§.§'!Q§();
                  §@!n§.§!=§(StateLevelEditor.STATE_NAME);
                  if(!(_loc5_ && param3))
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc6_ || this)
                     {
                        §§goto(addr77);
                     }
                     break;
                  }
                  break;
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr125);
      }
   }
}
