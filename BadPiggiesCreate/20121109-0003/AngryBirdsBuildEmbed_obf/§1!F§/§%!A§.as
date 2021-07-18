package §1!F§
{
   import §#!4§.§+!S§;
   
   public class §%!A§ extends §"![§
   {
      
      public static const STATE_NAME:String = "LevelEndStateBS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = §"![§.STATE_NAME;
         }
      }
      
      public function §%!A§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("REPLAY");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param3))
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr83:
                        §§push(1);
                        if(_loc5_ || param3)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     addr81:
                     §§push("MENU");
                     §§push(_loc4_);
                  }
                  §§goto(addr83);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr83);
               }
               else
               {
                  §§push(2);
               }
               addr96:
               switch(§§pop())
               {
                  case 0:
                     §26§.§!=§();
                     if(_loc5_)
                     {
                        mNextState = §26§.STATE_NAME;
                        if(_loc6_)
                        {
                        }
                        break;
                     }
                     break;
                  case 1:
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr83);
      }
   }
}
