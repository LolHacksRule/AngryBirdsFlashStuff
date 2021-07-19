package §"!&§
{
   import §,Z§.b2Shape;
   
   public class set
   {
       
      
      protected var §<!f§:Number;
      
      protected var §8>§:Number;
      
      public function set(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               if(Object(this).constructor != set)
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
                                    while(!_loc4_)
                                    {
                                       loop12:
                                       while(_loc3_ || _loc3_)
                                       {
                                          §§pop();
                                          loop13:
                                          while(_loc3_)
                                          {
                                             §§push(param2);
                                             if(!(_loc3_ || param2))
                                             {
                                                while(true)
                                                {
                                                }
                                                continue loop12;
                                                addr79:
                                             }
                                             §§push(0);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                if(_loc4_ && this)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_ || param2)
                                                         {
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr70:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§<!f§ = param1;
                                                                     while(_loc3_ || _loc3_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 this.§8>§ = param2;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               throw new Error("Shape size invalid, width and height must be valid numbers.");
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr132:
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop13;
                                                   }
                                                }
                                                addr80:
                                             }
                                             §§goto(addr70);
                                             §§goto(addr80);
                                          }
                                          while(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                throw new Error("Can\'t instantiate abstract class.");
                                             }
                                             addr172:
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr132);
                           }
                        }
                     }
                  }
               }
               §§goto(addr172);
            }
         }
         while(true)
         {
            §§goto(addr79);
         }
      }
      
      public function getWidth() : Number
      {
         return this.§<!f§;
      }
      
      public function getHeight() : Number
      {
         return this.§8>§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
