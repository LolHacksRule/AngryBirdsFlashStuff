package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §21§ extends §^"2§
   {
       
      
      public function §21§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!(_loc4_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr80);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr42:
                        addr53:
                        while(true)
                        {
                           §-§(launchForce);
                           if(_loc5_ || param2)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(_loc5_ || this)
                        {
                           return §§pop();
                        }
                        §§goto(addr80);
                     }
                  }
               }
               §§goto(addr42);
            }
            addr80:
            return false;
         }
         §§goto(addr53);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§#!G§);
            if(!(_loc4_ && param3))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr86:
                     while(true)
                     {
                        §§push(Boolean(specialPowerUsed));
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
                  addr85:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §=K§.setAnimation(§&P§,false);
                     }
                     loop1:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           super.render(param1,param2,param3);
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(!_loc4_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
               return;
               addr49:
            }
            §§goto(addr85);
         }
         §§goto(addr49);
      }
   }
}
