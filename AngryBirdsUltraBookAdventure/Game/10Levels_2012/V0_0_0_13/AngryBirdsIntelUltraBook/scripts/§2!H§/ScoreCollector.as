package §2!H§
{
   public class ScoreCollector
   {
      
      public static const §!!T§:String = "damage";
      
      public static const §&o§:String = "removed";
      
      public static const §0C§:String = "extraBird";
      
      private static var §^z§:Array;
      
      private static var §]+§:Array;
      
      private static var §4>§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!T§ = "damage";
         }
         do
         {
            §&o§ = "removed";
            do
            {
               §0C§ = "extraBird";
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function ScoreCollector()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            init();
         }
         while(_loc2_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^z§ = [];
            while(true)
            {
               §]+§ = [];
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            §4>§ = [];
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(param1 == 0)
            {
               if(!(_loc4_ && param1))
               {
                  return;
               }
               addr103:
            }
            var _loc3_:* = param2;
            if(_loc5_)
            {
               §§push(§!!T§);
               if(!(_loc4_ && param1))
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr180:
                           §§push(2);
                           if(_loc4_ && param2)
                           {
                              addr194:
                           }
                        }
                        §§goto(addr196);
                     }
                     else
                     {
                        §§push(§&o§);
                        if(_loc5_ || ScoreCollector)
                        {
                           addr139:
                           §§push(_loc3_);
                           if(_loc5_)
                           {
                              addr142:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr150:
                                    §§push(1);
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr196);
                                    }
                                    else
                                    {
                                       §§goto(addr188);
                                    }
                                 }
                              }
                              else
                              {
                                 addr172:
                                 if(§0C§ === _loc3_)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                                 else if(true)
                                 {
                                    addr196:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr72:
                                          §^z§.push(param1);
                                          addr71:
                                          if(_loc5_ || param1)
                                          {
                                             addr48:
                                             break;
                                          }
                                          break;
                                       case 1:
                                          addr53:
                                          §§push(§]+§);
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr61:
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                                §§pop().push(§§pop());
                                                break;
                                                addr65:
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr71);
                                          }
                                          §§goto(addr72);
                                       case 2:
                                          §§push(§4>§);
                                          if(_loc5_)
                                          {
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                §§pop().push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr65);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr61);
                                             §§goto(addr48);
                                          }
                                          else
                                          {
                                             §§goto(addr53);
                                          }
                                    }
                                    return;
                                    §§push(3);
                                 }
                              }
                              §§goto(addr196);
                              §§goto(addr196);
                           }
                        }
                        §§goto(addr172);
                     }
                  }
                  §§goto(addr142);
               }
               §§goto(addr139);
            }
            §§goto(addr150);
         }
         §§goto(addr103);
      }
      
      public static function §@!^§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = "";
         if(_loc3_ || _loc2_)
         {
            §§push(§^z§);
            while(true)
            {
               §§push(§§pop().toString());
               addr189:
               while(true)
               {
                  _loc1_ = §§pop();
               }
               addr100:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(§§pop().length > 0)
               {
                  while(true)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              §§push(",0,");
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    loop16:
                                    for(; _loc3_ || _loc1_; if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          §§goto(addr150);
                                       }
                                       return §§pop();
                                    })
                                    {
                                       _loc1_ = §§pop();
                                       loop17:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          addr58:
                                          while(true)
                                          {
                                             §§push(§4>§);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + §§pop().toString());
                                             continue loop17;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop().toString());
                                             addr150:
                                             loop12:
                                             while(_loc3_ || _loc1_)
                                             {
                                                _loc1_ = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§4>§);
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop().length > 0)
                                                         {
                                                            break loop13;
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      addr95:
                                                      addr174:
                                                   }
                                                   break;
                                                   addr75:
                                                   if(_loc2_ && ScoreCollector)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      addr28:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§goto(addr58);
                                                      }
                                                      addr28:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         addr145:
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      addr184:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   break loop12;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(",0,");
                                                addr179:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr180:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      break loop16;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(_loc3_)
                                    {
                                       _loc1_ = §§pop();
                                       §§goto(addr184);
                                    }
                                    §§goto(addr189);
                                    addr134:
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr134);
                     }
                     addr190:
                     while(true)
                     {
                        §§goto(addr174);
                     }
                  }
               }
               §§goto(addr28);
            }
         }
         §§goto(addr190);
      }
   }
}
