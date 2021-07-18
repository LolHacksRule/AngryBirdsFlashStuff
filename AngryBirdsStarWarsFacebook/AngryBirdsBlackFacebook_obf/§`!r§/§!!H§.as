package §`!r§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7P§.§7B§;
   
   public class §!!H§ extends §7B§
   {
       
      
      public function §!!H§(param1:Sprite, param2:b2World, param3:§"t§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(isNaN(param1))
            {
               while(true)
               {
                  §§push(0);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
                  addr121:
                  while(true)
                  {
                     param1 = §§pop();
                     addr122:
                     while(true)
                     {
                     }
                  }
               }
               addr102:
            }
            loop2:
            while(true)
            {
               if(isNaN(param2))
               {
                  if(_loc3_ || this)
                  {
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param2 = §§pop();
                              addr97:
                              loop5:
                              while(true)
                              {
                                 addr19:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!(_loc4_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(param2);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() - param1);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(§§pop() * Math.random());
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop2;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr97);
               }
               §§goto(addr19);
            }
            return §§pop();
         }
         §§goto(addr122);
      }
   }
}
