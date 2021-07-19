package §&v§
{
   import §"y§.b2Shape;
   
   public class §each §
   {
       
      
      protected var §<`§:Number;
      
      protected var §#!A§:Number;
      
      public function §each §(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               if(Object(this).constructor != §each §)
               {
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
                              while(true)
                              {
                                 §§pop();
                                 addr168:
                                 while(!_loc3_)
                                 {
                                    §§push(Boolean(isNaN(param2)));
                                 }
                                 continue loop0;
                              }
                              addr167:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               addr147:
                                                               §§push(param2);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr109:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     §§goto(addr147);
                                                                  }
                                                                  addr109:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  continue loop7;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr168);
                                                            }
                                                         }
                                                         continue;
                                                         addr140:
                                                      }
                                                      else
                                                      {
                                                         addr156:
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         §§pop();
                                                         break loop15;
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                   addr159:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr43);
                                                }
                                                throw new Error("Shape size invalid, width and height must be valid numbers.");
                                             }
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       continue loop3;
                                       addr125:
                                    }
                                    §§goto(addr156);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               addr188:
               loop18:
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§<`§ = param1;
                           loop20:
                           while(_loc4_ || param1)
                           {
                              while(true)
                              {
                                 this.§#!A§ = param2;
                                 if(_loc4_)
                                 {
                                    continue loop18;
                                 }
                                 continue loop20;
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        §§goto(addr159);
                     }
                  }
                  else
                  {
                     §§goto(addr140);
                  }
                  §§goto(addr109);
               }
               throw new Error("Can\'t instantiate abstract class.");
            }
         }
         §§goto(addr54);
      }
      
      public function §"!j§() : Number
      {
         return this.§<`§;
      }
      
      public function §?!L§() : Number
      {
         return this.§#!A§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
