package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §[!#§ extends §?!z§
   {
       
      
      public function §[!#§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            loop0:
            while(§§pop())
            {
               do
               {
                  §+x§(launchForce);
               }
               while(_loc5_ && param3);
               
               if(_loc4_)
               {
                  while(true)
                  {
                     §§push(true);
                     if(!_loc4_)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
                  addr74:
                  return §§pop();
                  addr56:
               }
               break;
            }
            §§goto(addr74);
            §§push(false);
         }
         §§goto(addr56);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§1!q§);
            if(_loc5_ || param1)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr86:
                     while(true)
                     {
                        §§push(Boolean(specialPowerUsed));
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr85:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §`!f§.setAnimation(§=!4§,false);
                        addr61:
                        while(_loc5_)
                        {
                        }
                        continue loop0;
                     }
                     addr57:
                  }
                  while(true)
                  {
                     super.render(param1,param2,param3);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr44);
               }
            }
            §§goto(addr85);
         }
         addr44:
      }
   }
}
