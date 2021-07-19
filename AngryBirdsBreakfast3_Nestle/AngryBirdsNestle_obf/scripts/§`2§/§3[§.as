package §`2§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §3!J§.Sprite;
   import §@!"§.§#!v§;
   
   public class §3[§ extends §#!v§
   {
       
      
      public function §3[§(param1:Sprite, param2:b2World, param3:§@-§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      protected function §!!U§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(isNaN(param1))
            {
               if(_loc4_)
               {
                  §§push(0);
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr122:
                     while(true)
                     {
                        param1 = §§pop();
                        addr123:
                        while(true)
                        {
                        }
                     }
                     while(true)
                     {
                        if(_loc3_ && this)
                        {
                           continue loop0;
                        }
                        param2 = §§pop();
                        while(true)
                        {
                           §§goto(addr20);
                        }
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr123);
            }
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!(_loc3_ && param2))
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr94);
                     §§push(0);
                  }
                  §§goto(addr103);
               }
               addr20:
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop4;
                     }
                     addr31:
                     if(_loc4_ || _loc3_)
                     {
                        §§push(param2);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() - param1);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() * Math.random());
                           }
                        }
                        §§push(§§pop() + §§pop());
                        break;
                     }
                     while(true)
                     {
                        continue loop4;
                        §§goto(addr31);
                     }
                  }
                  break;
               }
               §§goto(addr76);
            }
            addr76:
            if(!(_loc4_ || _loc3_))
            {
               break loop4;
            }
            return §§pop();
         }
         §§goto(addr123);
      }
   }
}
