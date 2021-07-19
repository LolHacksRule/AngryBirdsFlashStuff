package §2"Y§
{
   import §4!$§.b2Shape;
   
   public class §?#^§
   {
       
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var §6##§:String;
      
      public function §?#^§(param1:Number, param2:Number, param3:String = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               if(Object(this).constructor != §?#^§)
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
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(isNaN(param2)));
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       if(!(_loc4_ || this))
                                       {
                                          break;
                                       }
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
                                                         addr119:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               if(!(_loc4_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§pop();
                                                                  }
                                                                  addr134:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           this.§6"?§ = param1;
                                                                           loop13:
                                                                           while(_loc4_ || this)
                                                                           {
                                                                              this.§[!4§ = param2;
                                                                              while(!(_loc5_ && this))
                                                                              {
                                                                                 this.§6##§ = param3;
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return;
                                                                                             addr50:
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              if(_loc5_ && param3)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              throw new Error("Can\'t instantiate abstract class.");
                                                                           }
                                                                           addr177:
                                                                           continue loop8;
                                                                           §§goto(addr136);
                                                                        }
                                                                        continue loop8;
                                                                        addr137:
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        throw new Error("Shape size invalid, width and height must be valid numbers.");
                                                                     }
                                                                     continue loop5;
                                                                     addr90:
                                                                  }
                                                               }
                                                               §§goto(addr137);
                                                               addr122:
                                                            }
                                                            §§goto(addr134);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                addr159:
                                             }
                                             §§goto(addr122);
                                          }
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr156);
                        }
                     }
                     addr198:
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr50);
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function getWidth() : Number
      {
         return this.§6"?§;
      }
      
      public function getHeight() : Number
      {
         return this.§[!4§;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
