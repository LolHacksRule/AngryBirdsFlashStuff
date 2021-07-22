package §5!Y§
{
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §4!<§.§ !X§;
   import §<T§.§?!Z§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   import flash.net.SharedObject;
   
   public class §'!V§
   {
      
      protected static var §#"9§:Class;
      
      protected static var §2b§:Class;
      
      protected static var §!!g§:Class;
      
      private static var §9F§:Array;
      
      private static var §,f§:Popup = null;
      
      private static var §3T§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §>""§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#"9§ = §3v§;
            loop0:
            while(true)
            {
               §2b§ = §@"§;
               loop1:
               do
               {
                  §!!g§ = §67§;
                  loop2:
                  while(true)
                  {
                     §9F§ = [];
                     loop3:
                     do
                     {
                        §,f§ = null;
                        while(!_loc2_)
                        {
                           continue loop0;
                           isOpen = false;
                           if(!(_loc2_ && §'!V§))
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(_loc2_ && _loc1_);
                     
                     continue loop1;
                  }
               }
               while(!(_loc1_ || _loc1_));
               
            }
         }
      }
      
      public function §'!V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §8n§(param1:String, param2:§`_§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; !_loc6_; if(!(_loc5_ || param1))
               {
                  continue;
               },§§pop().§§slot[3] = "",if(!_loc5_)
               {
                  §§goto(addr213);
               },if(_loc6_ && param1)
               {
                  continue loop1;
               },§§push(§§newactivation()),if(_loc5_)
               {
                  addr237:
                  var _loc4_:* = §§pop().§§slot[1];
                  if(_loc5_ || param2)
                  {
                     §§push("BIRD_BLACK");
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && param2))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    addr428:
                                    switch(§§pop())
                                    {
                                       case 2:
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             §§goto(addr237);
                                          }
                                          addr159:
                                          §§pop().§§slot[3] = "TUTORIAL_RED";
                                          try
                                          {
                                             addr432:
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                addr435:
                                                §§pop().§§slot[4] = new §;!g§(§9"H§.§5!h§(§#"9§),currentUIView,§?!Z§.§9!4§(tutorialName,§`m§.§&"5§));
                                                §§goto(addr495);
                                             }
                                             break;
                                          }
                                          catch(e:Error)
                                          {
                                          }
                                          §§goto(addr481);
                                          addr160:
                                       case 3:
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             §§goto(addr237);
                                          }
                                          addr148:
                                          §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                          if(!_loc6_)
                                          {
                                             §§goto(addr432);
                                          }
                                          §§goto(addr467);
                                       case 7:
                                          §§push(§§newactivation());
                                          if(!(_loc5_ || param1))
                                          {
                                             §§goto(addr237);
                                          }
                                          if(!_loc6_)
                                          {
                                             §§push("TUTORIAL_MIGHTYEAGLE");
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§goto(addr432);
                                                   }
                                                   §§goto(addr491);
                                                }
                                                else
                                                {
                                                   addr166:
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                   else
                                                   {
                                                      addr177:
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr432);
                                                      }
                                                   }
                                                }
                                                §§goto(addr481);
                                             }
                                             else
                                             {
                                                addr78:
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr160);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      addr491:
                                                      §9F§.push(tutorialPopup);
                                                      §§goto(addr495);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr159);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr107);
                                                }
                                             }
                                             §§goto(addr491);
                                          }
                                          else
                                          {
                                             addr176:
                                             §§push("TUTORIAL_BLACK");
                                          }
                                          §§goto(addr177);
                                       case 1:
                                          addr165:
                                          §§goto(addr166);
                                       case 0:
                                          §§goto(addr176);
                                       case 4:
                                          addr129:
                                          §§push(§§newactivation());
                                          §§push("TUTORIAL_BLUE");
                                          §§push(§§newactivation());
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             §§goto(addr132);
                                             §§push("TUTORIAL_YELLOW");
                                          }
                                          else
                                          {
                                             §§goto(addr165);
                                          }
                                          §§goto(addr481);
                                       case 5:
                                          §§push(§§newactivation());
                                          if(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                addr107:
                                                if(_loc5_ || param2)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr495);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                }
                                                else
                                                {
                                                   addr132:
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§goto(addr432);
                                                   }
                                                   §§goto(addr491);
                                                }
                                                addr495:
                                                if(!(_loc6_ && §'!V§))
                                                {
                                                   addr481:
                                                   §§push(§§newactivation());
                                                   break;
                                                   addr467:
                                                }
                                                return;
                                                §§push("TUTORIAL_BOOMERANG");
                                             }
                                             else
                                             {
                                                §§goto(addr129);
                                             }
                                             §§goto(addr481);
                                          }
                                          §§goto(addr435);
                                       case 6:
                                          §§push(§§newactivation());
                                          if(!_loc6_)
                                          {
                                             §§goto(addr78);
                                             §§push("TUTORIAL_BIG_BROTHER");
                                          }
                                          break;
                                       default:
                                          return;
                                    }
                                    if(§§pop().§§slot[4])
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§goto(addr491);
                                       }
                                    }
                                    §§goto(addr435);
                                 }
                                 addr383:
                                 §§goto(addr428);
                              }
                              addr334:
                              §§push(3);
                              if(!_loc6_)
                              {
                                 addr337:
                                 §§goto(addr428);
                              }
                              addr411:
                              §§goto(addr428);
                           }
                           §§push("BIRD_BLUE");
                           if(_loc5_)
                           {
                              §§push(_loc4_);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(1);
                                       if(_loc5_)
                                       {
                                          §§goto(addr428);
                                       }
                                       addr355:
                                       §§goto(addr428);
                                    }
                                    addr375:
                                    §§push(5);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§goto(addr383);
                                    }
                                    §§goto(addr411);
                                 }
                                 §§push("BIRD_RED");
                                 if(!(_loc6_ && §'!V§))
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr428);
                                             }
                                             §§goto(addr337);
                                          }
                                          §§goto(addr375);
                                       }
                                       §§push("BIRD_WHITE");
                                       if(_loc5_ || param2)
                                       {
                                          addr323:
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param2))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr334);
                                                }
                                                addr415:
                                                §§push(7);
                                                if(!(_loc6_ && param2))
                                                {
                                                   addr423:
                                                }
                                                §§goto(addr428);
                                             }
                                             §§push("BIRD_YELLOW");
                                             if(_loc5_)
                                             {
                                                addr341:
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   addr344:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(4);
                                                         if(_loc5_ || §'!V§)
                                                         {
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                   §§push("BIRD_GREEN");
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr372:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr375);
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         §§push("BIRD_REDBIG");
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                         }
                                                         addr414:
                                                         addr413:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            §§goto(addr415);
                                                         }
                                                         §§goto(addr428);
                                                         §§push(8);
                                                      }
                                                      §§goto(addr414);
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr414);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && §'!V§))
                                                   {
                                                      §§push(6);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr423);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr413);
                                                §§push("BIRD_SARDINE");
                                             }
                                             §§goto(addr414);
                                          }
                                          §§goto(addr344);
                                       }
                                       §§goto(addr341);
                                    }
                                 }
                                 §§goto(addr414);
                              }
                              §§goto(addr372);
                           }
                           §§goto(addr323);
                        }
                        §§goto(addr372);
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr415);
               },§§goto(addr428))
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        §§push(§§newactivation());
                        addr220:
                        continue loop3;
                        if(!(_loc6_ && param1))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      private static function §=K§(param1:String, param2:§`_§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[2] = param2;
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(powerUpName);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop());
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 §§pop().§§slot[3] = §§pop();
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc6_ && §'!V§)
                                 {
                                    break loop5;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[4] = new §6A§(§9"H§.§5!h§(§2b§),currentUIView,§?!Z§.§9!4§(tutorialName,§`m§.§&"5§),tutorialName);
                                       if(_loc5_)
                                       {
                                          addr126:
                                          if(tutorialPopup)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §9F§.push(tutorialPopup);
                                             }
                                          }
                                       }
                                       return;
                                    }
                                 }
                                 catch(e:Error)
                                 {
                                    §§goto(addr126);
                                 }
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §+"X§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc6_ && _loc3_))
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || _loc3_)
               {
                  addr42:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc5_)
                     {
                        if(!§3T§)
                        {
                           if(!_loc6_)
                           {
                              §3T§ = SharedObject.getLocal(storageName);
                              if(_loc5_)
                              {
                                 addr60:
                                 var _loc3_:int = 0;
                                 if(!(_loc6_ && param1))
                                 {
                                    var _loc4_:* = §=C§();
                                    if(_loc6_)
                                    {
                                    }
                                    for each(birdName in _loc4_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §3T§.data[birdName] = false;
                                       }
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    §3T§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                    addr166:
                                    loop4:
                                    while(true)
                                    {
                                       §3T§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                       addr160:
                                       loop2:
                                       while(true)
                                       {
                                          addr130:
                                          while(true)
                                          {
                                             §3T§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                             addr136:
                                             while(!(_loc5_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    addr166:
                                 }
                                 §§goto(addr166);
                              }
                              while(true)
                              {
                                 §3T§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr160);
                                 }
                                 §§goto(addr130);
                              }
                              addr181:
                              return;
                              addr167:
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr167);
               }
               catch(e:Error)
               {
               }
               §§goto(addr181);
            }
         }
         §§goto(addr42);
      }
      
      private static function §=C§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ !X§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §?l§.§'h§.slingshot.§9!L§)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(_loc5_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §7"?§(param1:§`_§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            addr364:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public static function showTutorials(param1:§`_§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr100:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               addr101:
               while(true)
               {
                  §§push(§§newactivation());
                  addr94:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr96:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private static function §^"H§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc3_ && §'!V§))
               {
                  if(!§§pop())
                  {
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        loop2:
                        while(true)
                        {
                           isOpen = true;
                           while(true)
                           {
                              §,f§ = §9F§.pop();
                              while(!_loc3_)
                              {
                                 §,f§.open(param1);
                                 if(!(_loc3_ && param1))
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        addr114:
                        loop6:
                        while(true)
                        {
                           §§push(§9F§.length > 0);
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                           }
                           addr113:
                           while(true)
                           {
                              §§pop();
                              continue loop6;
                           }
                        }
                     }
                     return;
                     addr96:
                  }
               }
               §§goto(addr113);
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr114);
      }
      
      public static function §2!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(isOpen == true)
            {
               if(!_loc1_)
               {
                  addr105:
                  if(§9F§.length <= 0)
                  {
                     isOpen = false;
                     loop1:
                     for(; !_loc1_; §§pop().preClose(§§pop()),if(!_loc2_)
                     {
                        continue;
                     },if(!_loc1_)
                     {
                        §§goto(addr25);
                     }
                     else
                     {
                        §§goto(addr112);
                     })
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§,f§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 §§pop().preClose(§§pop());
                                 addr112:
                                 loop0:
                                 while(true)
                                 {
                                    isOpen = false;
                                    addr92:
                                    while(true)
                                    {
                                       if(!(_loc1_ && §'!V§))
                                       {
                                          break loop0;
                                       }
                                       addr109:
                                       while(true)
                                       {
                                          §§push(§,f§);
                                       }
                                    }
                                    continue loop4;
                                 }
                                 §^"H§(false);
                                 break loop1;
                              }
                              addr111:
                           }
                           while(true)
                           {
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr109);
               }
               §§goto(addr112);
            }
            addr25:
            return;
         }
         §§goto(addr105);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§,f§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr32);
            }
            §§pop().preClose(false);
         }
         addr32:
         if(_loc1_)
         {
            §§push(§,f§);
         }
      }
   }
}
