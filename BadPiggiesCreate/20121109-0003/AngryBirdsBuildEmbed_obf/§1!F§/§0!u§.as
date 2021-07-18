package §1!F§
{
   import §#!4§.§+!S§;
   
   public class §0!u§ extends §2!i§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = §2!i§.STATE_NAME;
         }
      }
      
      public function §0!u§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("REPLAY");
            if(_loc6_ || this)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        addr82:
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr94:
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr93);
            }
            addr93:
            if("MENU" === _loc4_)
            {
               §§goto(addr94);
            }
            else
            {
               §§push(2);
            }
            addr102:
            switch(§§pop())
            {
               case 0:
                  §26§.§!=§();
                  if(_loc6_)
                  {
                     mNextState = §26§.STATE_NAME;
                     if(_loc6_ || param2)
                     {
                     }
                     break;
                  }
                  break;
               case 1:
            }
            return;
         }
         §§goto(addr82);
      }
   }
}
