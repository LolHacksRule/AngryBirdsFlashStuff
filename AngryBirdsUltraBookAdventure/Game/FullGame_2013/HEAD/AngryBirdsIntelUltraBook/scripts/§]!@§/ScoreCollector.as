package §]!@§
{
   public class ScoreCollector
   {
      
      public static const §"!R§:String = "damage";
      
      public static const § !K§:String = "removed";
      
      public static const §&![§:String = "extraBird";
      
      private static var §^N§:Array;
      
      private static var §,7§:Array;
      
      private static var §<P§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"!R§ = "damage";
            while(true)
            {
               § !K§ = "removed";
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §&![§ = "extraBird";
            if(_loc1_ || _loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function ScoreCollector()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               init();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^N§ = [];
            while(true)
            {
               §,7§ = [];
               loop1:
               while(!(_loc1_ && ScoreCollector))
               {
                  while(true)
                  {
                     §<P§ = [];
                     if(_loc2_ || ScoreCollector)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1 == 0)
            {
               if(_loc5_)
               {
                  return;
               }
               addr98:
            }
            var _loc3_:* = param2;
            if(_loc5_ || ScoreCollector)
            {
               §§push(§"!R§);
               if(_loc5_ || param2)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc4_ && ScoreCollector)
                           {
                              addr168:
                           }
                        }
                        else
                        {
                           addr186:
                           §§push(3);
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr191);
                     }
                     else
                     {
                        §§push(§ !K§);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              addr152:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr165:
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§goto(addr168);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr186);
                                 }
                                 §§goto(addr191);
                              }
                              else
                              {
                                 addr171:
                                 §§push(§&![§);
                                 §§push(_loc3_);
                              }
                              §§goto(addr186);
                           }
                           if(§§pop() !== §§pop())
                           {
                              if(false)
                              {
                                 §§goto(addr186);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr191:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr79:
                                    §^N§.push(param1);
                                    addr62:
                                    break;
                                    addr81:
                                    addr78:
                                 case 1:
                                    addr68:
                                    §,7§.push(param1);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    break;
                                 case 2:
                                    §§push(§<P§);
                                    if(_loc5_ || ScoreCollector)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             if(_loc5_ || ScoreCollector)
                                             {
                                                §§pop().push(§§pop());
                                                if(_loc5_ || param2)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr81);
                                                   }
                                                   §§goto(addr62);
                                                }
                                                break;
                                             }
                                             §§goto(addr79);
                                             §§goto(addr79);
                                          }
                                          else
                                          {
                                             §§goto(addr68);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr78);
                                       }
                                       §§goto(addr79);
                                    }
                                    else
                                    {
                                       §§goto(addr68);
                                    }
                              }
                              return;
                           }
                           if(!(_loc4_ && param2))
                           {
                              §§push(2);
                              if(!_loc5_)
                              {
                              }
                           }
                           else
                           {
                              §§goto(addr186);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr171);
            }
            §§goto(addr165);
         }
         §§goto(addr98);
      }
      
      public static function §>t§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(_loc2_)
         {
            §§push(§^N§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr178:
               while(true)
               {
                  _loc1_ = §§pop();
               }
               loop3:
               while(true)
               {
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop().length > 0)
                     {
                        while(true)
                        {
                           §§push(_loc1_);
                           loop5:
                           while(true)
                           {
                              §§push(",0,");
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§,7§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr152:
                                                   addr61:
                                                   while(true)
                                                   {
                                                   }
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   addr70:
                                                   _loc1_ = §§pop();
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr28:
                                                                  if(!(_loc3_ && ScoreCollector))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ || ScoreCollector))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     _loc1_ = §§pop();
                                                                     while(!_loc3_)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        §§goto(addr70);
                                                                     }
                                                                     §§goto(addr152);
                                                                     §§goto(addr28);
                                                                  }
                                                                  continue loop8;
                                                                  addr123:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§<P§);
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop().toString());
                                                               }
                                                               continue loop11;
                                                            }
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(",0,");
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     §§goto(addr123);
                                                                     §§push(§§pop());
                                                                  }
                                                                  continue loop6;
                                                                  addr111:
                                                               }
                                                               §§goto(addr61);
                                                               §§goto(addr131);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop10;
                                                         addr22:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr131);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                              }
                           }
                           addr103:
                           if(_loc3_ && _loc1_)
                           {
                              continue;
                           }
                           §§goto(addr111);
                           §§push(_loc1_);
                        }
                     }
                     while(true)
                     {
                        §§push(§<P§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(§§pop().length > 0)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr103);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr22);
                        §§goto(addr152);
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr179);
      }
   }
}
