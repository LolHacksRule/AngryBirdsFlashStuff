package §_-TG§
{
   public class §_-40§
   {
      
      public static const §_-0Av§:String = "damage";
      
      public static const §_-H-§:String = "removed";
      
      public static const §_-Rz§:String = "extraBird";
      
      private static var §_-01d§:Array;
      
      private static var §_-tv§:Array;
      
      private static var §_-4G§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-0Av§ = "damage";
         }
         while(true)
         {
            §_-H-§ = "removed";
            while(_loc1_ || _loc1_)
            {
               §_-Rz§ = "extraBird";
               if(!(_loc2_ && §_-40§))
               {
                  return;
               }
            }
         }
      }
      
      public function §_-40§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            init();
         }
         while(_loc1_ && this);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-01d§ = [];
            while(true)
            {
               §_-tv§ = [];
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §_-4G§ = [];
            if(_loc1_)
            {
               if(!(_loc2_ && §_-40§))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            if(param1 == 0)
            {
               if(_loc4_ || §_-40§)
               {
                  return;
               }
               addr106:
            }
            var _loc3_:* = param2;
            if(_loc4_ || §_-40§)
            {
               §§push(§_-0Av§);
               if(!(_loc5_ && param1))
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(0);
                           if(_loc4_ || §_-40§)
                           {
                           }
                        }
                        else
                        {
                           addr183:
                           §§push(2);
                           if(_loc4_ || _loc3_)
                           {
                              addr191:
                           }
                        }
                        §§goto(addr196);
                     }
                     else
                     {
                        §§push(§_-H-§);
                        if(_loc4_ || §_-40§)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              addr158:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                                 §§goto(addr196);
                              }
                              else
                              {
                                 addr181:
                                 §§push(§_-Rz§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr183);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr183);
                           }
                           else
                           {
                              §§push(3);
                           }
                           addr196:
                           switch(§§pop())
                           {
                              case 0:
                                 addr83:
                                 §_-01d§.push(param1);
                                 break;
                                 addr84:
                                 addr82:
                              case 1:
                                 addr60:
                                 §§push(§_-tv§);
                                 §§push(param1);
                                 if(!(_loc5_ && §_-40§))
                                 {
                                    §§pop().push(§§pop());
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr83);
                                 §§goto(addr84);
                              case 2:
                                 §§push(§_-4G§);
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       §§push(param1);
                                       if(_loc4_ || §_-40§)
                                       {
                                          §§pop().push(§§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr60);
                                       §§goto(addr83);
                                    }
                                    else
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr60);
                                 }
                                 §§goto(addr60);
                           }
                           return;
                        }
                        §§goto(addr181);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr181);
            }
            §§goto(addr183);
         }
         §§goto(addr106);
      }
      
      public static function §_-Cn§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_ || _loc1_)
         {
            §§push(§_-01d§);
            while(true)
            {
               §§push(§§pop().toString());
               addr157:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr158:
                  while(true)
                  {
                     §§push(§_-tv§);
                     while(true)
                     {
                        if(§§pop().length <= 0)
                        {
                           continue;
                        }
                     }
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(§§pop().length > 0)
               {
                  loop5:
                  while(_loc3_)
                  {
                     §§push(_loc1_);
                     loop6:
                     while(true)
                     {
                        §§push(",0,");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_ || _loc1_)
                           {
                              _loc1_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§_-4G§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop8;
                                                            }
                                                            return §§pop();
                                                            addr27:
                                                         }
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr157);
                                             }
                                             while(_loc3_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr60);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr150:
                                                   while(true)
                                                   {
                                                      §§push(",0,");
                                                      break loop6;
                                                   }
                                                }
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(§_-tv§);
                                                }
                                                addr133:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   continue loop14;
                                                }
                                             }
                                             addr134:
                                             addr50:
                                             addr153:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr133);
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr50);
                              }
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              §§goto(addr153);
                           }
                           addr152:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr152);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr27);
            }
         }
         §§goto(addr149);
      }
   }
}
