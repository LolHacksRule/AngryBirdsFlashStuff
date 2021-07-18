package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §+x§ extends § 6§
   {
       
      
      public function §+x§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(false);
                     break;
                  }
                  addr75:
                  while(true)
                  {
                  }
               }
               do
               {
                  §var§(launchForce);
               }
               while(_loc5_);
               
               §§push(true);
               if(!(_loc4_ || param1))
               {
                  break;
               }
               if(_loc4_ || param1)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(!§?!d§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     do
                     {
                        §§push(Boolean(specialPowerUsed));
                        if(!(_loc5_ || param3))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc5_);
                     
                     continue loop0;
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §'%§.setAnimation(§,!Y§);
                     }
                     loop4:
                     while(!(_loc4_ && param2))
                     {
                        while(true)
                        {
                           super.render(param1,param2,param3);
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        return;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr47);
      }
   }
}
