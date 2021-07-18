package §+a§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §9N§.§8'§;
   import §@,§.§8!#§;
   
   public class §,F§
   {
      
      private static var §;!L§:Class;
      
      private static var §>7§:Array;
      
      private static var §,!V§:§#!O§ = null;
      
      private static var §#!=§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;!L§ = §3x§;
         }
         do
         {
            §>7§ = [];
            do
            {
               §,!V§ = null;
               do
               {
                  §#!=§ = false;
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!_loc1_);
         
      }
      
      public function §,F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function § ! §(param1:String, param2:§,!N§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            do
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr195:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  continue loop1;
                  addr158:
                  if(_loc5_ && §,F§)
                  {
                     continue;
                  }
                  addr165:
                  §§pop().§§slot[3] = "";
                  if(_loc5_ && param1)
                  {
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr158);
                        §§goto(addr165);
                     }
                     continue loop0;
                     addr190:
                  }
                  if(_loc6_)
                  {
                     continue loop1;
                  }
                  §§goto(addr195);
               }
            }
            while(!_loc6_);
            
            §§push(§§newactivation());
            if(_loc6_)
            {
               addr215:
               var _loc4_:* = §§pop().§§slot[1];
               if(_loc6_ || param2)
               {
                  if("BIRD_BLACK" === _loc4_)
                  {
                     if(_loc6_)
                     {
                        addr307:
                        §§push(0);
                        if(_loc6_)
                        {
                           addr347:
                           switch(§§pop())
                           {
                              case 6:
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    §§goto(addr215);
                                 }
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[3] = "TUTORIAL_RED_BIG";
                                       break;
                                       addr94:
                                    }
                                    else
                                    {
                                       addr126:
                                       §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                    }
                                 }
                                 else
                                 {
                                    addr115:
                                    if(!_loc6_)
                                    {
                                       §§goto(addr149);
                                    }
                                    §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                    addr119:
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                 }
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 addr144:
                                 break;
                                 addr144:
                              case 1:
                                 addr142:
                                 var tutorialName:String = "TUTORIAL_BLUE";
                                 §§goto(addr144);
                              case 0:
                                 §§goto(addr149);
                              case 2:
                                 addr135:
                                 tutorialName = "TUTORIAL_RED";
                                 addr137:
                                 break;
                              case 3:
                                 §§goto(addr126);
                              case 4:
                                 §§goto(addr115);
                              case 5:
                                 addr99:
                                 tutorialName = "TUTORIAL_BOOMERANG";
                                 addr101:
                                 §§push(§§newactivation());
                                 §§push(§§newactivation());
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       break;
                                    }
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    §§goto(addr119);
                                 }
                              default:
                                 return;
                              case 7:
                                 addr62:
                                 §§push(§§newactivation());
                                 if(_loc6_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[3] = "TUTORIAL_MIGHTYEAGLE";
                                          if(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr101);
                                             }
                                             else
                                             {
                                                §§goto(addr94);
                                             }
                                          }
                                          §>7§.push(tutorialPopup);
                                          addr149:
                                          §§pop().§§slot[3] = "TUTORIAL_BLACK";
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          return;
                                          addr374:
                                       }
                                       else
                                       {
                                          §§goto(addr142);
                                       }
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       §§goto(addr135);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr99);
                                 }
                                 §§goto(addr99);
                              case 8:
                                 §§push(§§newactivation());
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       §§pop().§§slot[3] = "TUTORIAL_CHEETOS_BAG_THROW";
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr62);
                                 }
                                 addr357:
                                 §§pop().§§slot[4] = new §#!O§(§8!#§.§9C§(§;!L§),currentUIView,§9b§.§+=§(tutorialName,§!]§.§!!L§));
                                 if(_loc6_)
                                 {
                                    §§goto(addr374);
                                 }
                                 §§goto(addr149);
                           }
                           try
                           {
                              §§goto(addr357);
                           }
                           catch(e:Error)
                           {
                              return;
                           }
                           §§goto(addr149);
                           §§push(§§newactivation());
                        }
                        §§goto(addr347);
                     }
                     addr318:
                     §§push(6);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr347);
                     }
                     addr335:
                     §§goto(addr347);
                  }
                  if("BIRD_BLUE" === _loc4_)
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§push(1);
                        if(!(_loc5_ && param1))
                        {
                           §§goto(addr347);
                        }
                        §§goto(addr307);
                     }
                     addr339:
                     §§push(8);
                     if(!_loc5_)
                     {
                        addr342:
                     }
                     §§goto(addr347);
                  }
                  if("BIRD_RED" === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§push(2);
                        if(!_loc5_)
                        {
                           §§goto(addr347);
                        }
                        addr274:
                        §§goto(addr347);
                     }
                     addr332:
                     §§push(7);
                     if(!_loc5_)
                     {
                        §§goto(addr335);
                     }
                     §§goto(addr347);
                  }
                  if("BIRD_WHITE" === _loc4_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(3);
                        if(!_loc5_)
                        {
                           §§goto(addr274);
                        }
                        §§goto(addr342);
                     }
                     §§goto(addr332);
                  }
                  if("BIRD_YELLOW" === _loc4_)
                  {
                     if(!(_loc5_ && §,F§))
                     {
                        §§push(4);
                        if(_loc6_ || §,F§)
                        {
                           §§goto(addr347);
                        }
                        §§goto(addr335);
                     }
                     §§goto(addr339);
                  }
                  if("BIRD_GREEN" === _loc4_)
                  {
                     if(_loc6_)
                     {
                        §§push(5);
                        if(!(_loc5_ && param2))
                        {
                           §§goto(addr307);
                        }
                        §§goto(addr342);
                     }
                     §§goto(addr318);
                  }
                  if("BIRD_RED_BIG" === _loc4_)
                  {
                     if(!(_loc5_ && §,F§))
                     {
                        §§goto(addr318);
                     }
                     §§goto(addr339);
                  }
                  if("BIRD_SARDINE" === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr332);
                     }
                     §§goto(addr339);
                  }
                  if("BIRD_CHEETOS_BAG" === _loc4_)
                  {
                     §§goto(addr339);
                  }
                  §§goto(addr347);
                  §§push(9);
               }
               §§goto(addr332);
            }
            §§goto(addr357);
         }
      }
      
      public static function § C§(param1:§,!N§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8'§ = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in §[&§.§&!'§.slingshot.§`4§)
         {
            if(_loc5_)
            {
               §§push(§,l§.§3!,§);
               while(true)
               {
                  if(§§pop().§+x§[_loc2_.name] == true)
                  {
                     continue loop0;
                  }
                  if(!(_loc6_ && _loc2_))
                  {
                     while(true)
                     {
                        §0Z§.§-m§.§5!T§ = true;
                     }
                     addr99:
                  }
                  loop2:
                  while(true)
                  {
                     § ! §(_loc2_.name,param1);
                     loop3:
                     while(true)
                     {
                        addr66:
                        while(true)
                        {
                           §[!<§();
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  §§push(§,l§.§3!,§);
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§pop().§-!?§(_loc2_.name);
                  if(_loc5_ || _loc3_)
                  {
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr99);
         }
      }
      
      public static function §4V§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§[&§.§&!'§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr150:
                           while(true)
                           {
                              §§push(§[&§.§&!'§);
                              addr109:
                              while(true)
                              {
                                 §§push(§§pop().slingshot);
                                 addr110:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                        }
                        addr149:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc2_ || _loc1_))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop6;
                                       }
                                       §§push(§[&§.§&!'§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop().slingshot);
                                          if(!(_loc1_ && §,F§))
                                          {
                                             §§push(Boolean(§§pop().§`4§));
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || §,F§)
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                      §§push(false);
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop5;
                                                   addr62:
                                                }
                                                continue loop1;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop().slingshot);
                                          }
                                          addr90:
                                       }
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().§`4§.length > 0);
                                             continue loop6;
                                          }
                                          §§goto(addr110);
                                       }
                                    }
                                    §§goto(addr109);
                                 }
                                 else
                                 {
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr62);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      private static function §[!<§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§,t§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(false);
               if(_loc2_ || §,F§)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     addr72:
                     if(_loc2_ || _loc3_)
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              return;
                           }
                           loop3:
                           while(_loc2_ || _loc3_)
                           {
                              while(true)
                              {
                                 §#!=§ = true;
                                 do
                                 {
                                    §,!V§ = §>7§.pop();
                                    do
                                    {
                                       §,!V§.open(param1);
                                    }
                                    while(!_loc2_);
                                    
                                 }
                                 while(!(_loc2_ || param1));
                                 
                                 if(_loc3_ && §,F§)
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§>7§.length > 0);
                              if(_loc2_ || §,F§)
                              {
                                 break;
                              }
                              addr121:
                              while(true)
                              {
                                 §§pop();
                                 continue loop4;
                              }
                           }
                           §§goto(addr72);
                        }
                        addr79:
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     §§goto(addr121);
                  }
                  §§goto(addr79);
                  §§goto(addr119);
               }
            }
            §§goto(addr121);
         }
         §§goto(addr88);
      }
      
      public static function §%_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§,t§ == true)
            {
               loop0:
               while(true)
               {
                  if(§>7§.length <= 0)
                  {
                     §#!=§ = false;
                     for(; _loc1_ || _loc1_; §§pop().preClose(§§pop()),if(_loc2_ && _loc2_)
                     {
                        continue;
                     },if(!(_loc2_ && _loc2_))
                     {
                        break loop0;
                     },§§goto(addr96))
                     {
                        §§push(§,!V§);
                        if(!_loc2_)
                        {
                           §§push(true);
                           if(!(_loc2_ && _loc1_))
                           {
                              continue;
                           }
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              §§push(false);
                              addr123:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                           addr124:
                        }
                        while(true)
                        {
                           §§pop().preClose(§§pop());
                           addr126:
                           loop7:
                           while(true)
                           {
                              §#!=§ = false;
                              addr96:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop7;
                              }
                              continue loop0;
                           }
                           §§goto(addr124);
                        }
                     }
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr24);
                        }
                     }
                     addr84:
                  }
                  §§goto(addr123);
               }
            }
            addr24:
            return;
         }
         §§goto(addr126);
      }
      
      public static function get §,t§() : Boolean
      {
         return §#!=§;
      }
   }
}
