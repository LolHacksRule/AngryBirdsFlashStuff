package §%8§
{
   import §=!!§.b2Shape;
   
   public class §[_§
   {
       
      
      protected var §!a§:Number;
      
      protected var §2!y§:Number;
      
      protected var §?0§:String;
      
      public function §[_§(param1:Number, param2:Number, param3:String = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(Object(this).constructor != §[_§)
            {
               loop1:
               while(true)
               {
                  §§push(Boolean(isNaN(param1)));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(isNaN(param2)));
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop18:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr126:
                                                      addr149:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         addr127:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr141:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(0);
                                                         if(_loc5_)
                                                         {
                                                            addr75:
                                                            §§push(§§pop() <= §§pop());
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(!(_loc5_ || param3))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr127);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        this.§!a§ = param1;
                                                                        while(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§2!y§ = param2;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!(_loc5_ || param1))
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                     }
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     throw new Error("Shape size invalid, width and height must be valid numbers.");
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr107:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr126);
                                                         §§goto(addr127);
                                                      }
                                                      while(!(_loc4_ && param1))
                                                      {
                                                         §§pop();
                                                         §§goto(addr149);
                                                         §§goto(addr75);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             addr160:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop18;
                                          }
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop3;
                                          }
                                          if(!§§pop())
                                          {
                                             §§goto(addr141);
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                    addr157:
                                 }
                                 §§goto(addr160);
                              }
                           }
                        }
                        §§goto(addr157);
                     }
                  }
               }
            }
            throw new Error("Can\'t instantiate abstract class.");
         }
         §§goto(addr67);
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function §=!q§() : Number
      {
         return this.§!a§;
      }
      
      public function §%!r§() : Number
      {
         return this.§2!y§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
