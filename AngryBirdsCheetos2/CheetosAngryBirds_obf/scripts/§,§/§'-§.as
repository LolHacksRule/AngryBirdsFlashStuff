package §,§
{
   public class §'-§
   {
      
      public static const §"o§:String = "damage";
      
      public static const §@!4§:String = "removed";
      
      public static const §+j§:String = "extraBird";
      
      private static var §[v§:Array;
      
      private static var §"!K§:Array;
      
      private static var §@!c§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"o§ = "damage";
            while(true)
            {
               §@!4§ = "removed";
               while(_loc2_ || _loc2_)
               {
                  §+j§ = "extraBird";
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §'-§()
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
         while(!_loc1_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §[v§ = [];
         }
         while(true)
         {
            §"!K§ = [];
            while(!_loc1_)
            {
               §@!c§ = [];
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §'-§))
         {
            if(param1 == 0)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
               addr106:
            }
            var _loc3_:* = param2;
            if(!(_loc5_ && _loc3_))
            {
               §§push(§"o§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || §'-§)
                        {
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                              addr174:
                           }
                        }
                        else
                        {
                           addr178:
                           §§push(2);
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                        §§goto(addr201);
                     }
                     else
                     {
                        §§push(§@!4§);
                        if(!_loc5_)
                        {
                           addr155:
                           §§push(_loc3_);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr174);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr178);
                                 }
                                 §§goto(addr201);
                              }
                              else
                              {
                                 §§push(§+j§);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr177);
                        }
                        §§push(_loc3_);
                     }
                     §§goto(addr178);
                  }
                  addr177:
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr178);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr201:
                  switch(§§pop())
                  {
                     case 0:
                        addr83:
                        §[v§.push(param1);
                        break;
                        addr84:
                        addr82:
                     case 1:
                        addr67:
                        §§push(§"!K§);
                        §§push(param1);
                        if(!(_loc5_ && param2))
                        {
                           §§pop().push(§§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr83);
                        break;
                     case 2:
                        §§push(§@!c§);
                        if(!(_loc5_ && param1))
                        {
                           if(_loc4_)
                           {
                              §§push(param1);
                              if(_loc4_ || param1)
                              {
                                 §§pop().push(§§pop());
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr83);
                                 }
                                 break;
                              }
                              §§goto(addr67);
                              §§goto(addr83);
                           }
                           else
                           {
                              §§goto(addr82);
                           }
                        }
                        else
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr67);
                  }
                  return;
               }
               §§goto(addr155);
            }
            §§goto(addr178);
         }
         §§goto(addr106);
      }
      
      public static function §1-§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!(_loc3_ && _loc3_))
         {
            §§push(§[v§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§"!K§);
                     while(true)
                     {
                        if(§§pop().length > 0)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              addr169:
                              loop5:
                              while(true)
                              {
                                 §§push(",0,");
                                 addr170:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr171:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       addr172:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          while(true)
                                          {
                                             §§push(§"!K§);
                                             addr141:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().toString());
                                                addr144:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr145:
                                                   while(!(_loc3_ && _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr37:
                                             if(!(_loc3_ && §'-§))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr158:
                        }
                        while(true)
                        {
                           §§push(§@!c§);
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr152);
      }
   }
}
