package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §<#0§ extends §?"N§
   {
       
      
      public function §<#0§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc5_ && param3))
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     §§goto(addr84);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           §["t§(launchForce);
                           if(!(_loc5_ && param3))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(_loc4_ || this)
                        {
                           return §§pop();
                        }
                        §§goto(addr84);
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr84);
         }
         addr84:
         return false;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(!§8!_§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(Boolean(specialPowerUsed));
                        if(!(_loc5_ && param2))
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr94:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §2N§.setAnimation(§'%§,false);
                        addr70:
                        while(!(_loc5_ && param1))
                        {
                        }
                        continue loop0;
                     }
                     addr66:
                  }
                  while(true)
                  {
                     super.render(param1,param2,param3);
                     if(!(_loc5_ && param1))
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr94);
         }
         addr53:
      }
   }
}
