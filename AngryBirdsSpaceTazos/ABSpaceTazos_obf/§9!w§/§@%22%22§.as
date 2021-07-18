package §9!w§
{
   import §'4§.§^g§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   
   public class §@""§ extends §9!,§
   {
       
      
      public function §@""§(param1:§^g§, param2:§#b§, param3:Number = 1.0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function calculateCameraScale(param1:§1U§) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(super.calculateCameraScale(param1));
         if(!(_loc2_ && param1))
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr54:
                  return §§pop() / 3;
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§2!`§ - §=!%§ / 2);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr174:
                           while(true)
                           {
                              §§push(param1);
                              addr139:
                              while(true)
                              {
                                 §§push(§§pop() > §2!`§ + §=!%§ / 2);
                                 addr145:
                                 while(_loc3_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr173:
                     }
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              addr151:
                              §§push(true);
                              break;
                           }
                           while(true)
                           {
                              addr120:
                              if(!(_loc3_ || param2))
                              {
                                 continue;
                              }
                              addr127:
                              if(_loc3_ || this)
                              {
                                 §§goto(addr135);
                              }
                              §§goto(addr174);
                           }
                           addr153:
                        }
                        while(true)
                        {
                           §§push(param2);
                           loop10:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                              addr38:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!(_loc4_ && param2))
                                 {
                                    if(_loc3_)
                                    {
                                       if(§§pop() > §0!F§ + §=!%§ / 2 * 3 / 4)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             §§push(true);
                                          }
                                          else
                                          {
                                             if(!(_loc3_ || param2))
                                             {
                                                break loop10;
                                             }
                                             addr24:
                                             §§push(false);
                                             if(_loc3_ || param2)
                                             {
                                                if(!_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr173);
                                             }
                                          }
                                          if(_loc4_ && _loc3_)
                                          {
                                             addr135:
                                             return true;
                                          }
                                          if(!_loc3_)
                                          {
                                             break loop7;
                                          }
                                          if(!(_loc4_ && this))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr24);
                                    }
                                    break;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr120);
                           §§goto(addr153);
                        }
                        §§goto(addr127);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr151);
      }
   }
}
