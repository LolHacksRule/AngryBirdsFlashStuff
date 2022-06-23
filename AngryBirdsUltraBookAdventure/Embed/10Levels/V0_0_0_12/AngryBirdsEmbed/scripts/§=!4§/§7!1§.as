package §=!4§
{
   import §"!5§.§,!!§;
   import §%x§.§0Y§;
   import §-!0§.§'!3§;
   import §-!0§.§[!-§;
   import §0!<§.§#y§;
   import §0!<§.§]o§;
   import §1;§.§!!1§;
   import flash.net.SharedObject;
   
   public class §7!1§
   {
      
      protected static var §?a§:Class = §catch§;
      
      protected static var §]#§:Class = §!V§;
      
      protected static var §9!0§:Class = §+!C§;
      
      private static var §+m§:Array;
      
      private static var §'g§:Popup = null;
      
      private static var §use§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §&"§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+m§ = [];
         }
         if(!_loc1_)
         {
            isOpen = false;
         }
      }
      
      public function §7!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §=p§(param1:String, param2:§!!1§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc5_ || param1)
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                     }
                     addr53:
                     §§pop().§§slot[3] = "";
                     §§push(§§newactivation());
                     if(!_loc6_)
                     {
                        var _loc4_:* = §§pop().§§slot[1];
                        §§push("BIRD_BLACK");
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop() === _loc4_)
                           {
                              §§push(0);
                           }
                           else
                           {
                              §§push("BIRD_BLUE");
                              if(_loc5_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(1);
                                       if(_loc5_ || §7!1§)
                                       {
                                          addr278:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                var tutorialName:String = "TUTORIAL_BLACK";
                                                break;
                                             case 1:
                                                tutorialName = "TUTORIAL_BLUE";
                                                if(!(_loc6_ && param1))
                                                {
                                                   break;
                                                }
                                                addr136:
                                                break;
                                             case 2:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§push("TUTORIAL_RED");
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr103:
                                                   §§push("TUTORIAL_YELLOW");
                                                }
                                                §§pop().§§slot[3] = §§pop();
                                                break;
                                             case 3:
                                                tutorialName = "TUTORIAL_WHITE";
                                                break;
                                             case 4:
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr103);
                                                }
                                                §§pop().§§slot[4] = new §8;§(§]o§.§#b§(§?a§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§));
                                                addr320:
                                                addr321:
                                                if(tutorialPopup)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §+m§.push(tutorialPopup);
                                                   }
                                                }
                                                return;
                                                addr306:
                                                addr281:
                                             case 5:
                                                §§push(§§newactivation());
                                                §§push("TUTORIAL_BOOMERANG");
                                                if(!(_loc6_ && §7!1§))
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr306);
                                                }
                                                else
                                                {
                                                   addr135:
                                                   §§pop().§§slot[3] = §§pop();
                                                   §§goto(addr136);
                                                }
                                             case 6:
                                                §§push(§§newactivation());
                                                §§push("TUTORIAL_BIG_BROTHER");
                                                if(_loc5_ || param1)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   break;
                                                }
                                                §§goto(addr135);
                                                break;
                                             case 7:
                                                §§goto(addr135);
                                             default:
                                                §§newactivation();
                                                "TUTORIAL_MIGHTYEAGLE";
                                                return;
                                          }
                                          try
                                          {
                                             §§goto(addr281);
                                          }
                                          catch(e:Error)
                                          {
                                          }
                                          §§goto(addr320);
                                          §§push(§§newactivation());
                                       }
                                    }
                                    else
                                    {
                                       addr190:
                                       §§push(2);
                                       if(_loc6_ && param2)
                                       {
                                          addr210:
                                       }
                                    }
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    §§push("BIRD_RED");
                                    if(_loc5_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr190);
                                       }
                                       else
                                       {
                                          §§push("BIRD_WHITE");
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr207:
                                             if(§§pop() === _loc4_)
                                             {
                                                §§goto(addr210);
                                                §§push(3);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                             }
                                             §§goto(addr278);
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr278);
                                                   §§push(4);
                                                }
                                                else
                                                {
                                                   addr242:
                                                   §§push(5);
                                                   if(!_loc5_)
                                                   {
                                                      addr273:
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr278);
                                             }
                                             else
                                             {
                                                §§push("BIRD_GREEN");
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   else
                                                   {
                                                      §§push("BIRD_REDBIG");
                                                      §§push(_loc4_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(6);
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr264:
                                                            if("BIRD_SARDINE" !== _loc4_)
                                                            {
                                                               §§goto(addr278);
                                                               §§push(8);
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          §§goto(addr264);
                                       }
                                    }
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr264);
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr321);
                     addr55:
                  }
                  addr52:
                  §§goto(addr53);
                  §§push(§§newactivation());
               }
               §§pop().§§slot[2] = param2;
               if(!(_loc6_ && §7!1§))
               {
                  §§goto(addr52);
               }
               §§goto(addr55);
            }
            §§goto(addr52);
         }
         §§goto(addr53);
      }
      
      private static function §-! §(param1:String, param2:§!!1§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && §7!1§))
         {
            §§pop().§§slot[4] = null;
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc5_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           §§pop().§§slot[2] = param2;
                           if(_loc5_)
                           {
                           }
                           try
                           {
                              addr77:
                              §§push(§§newactivation());
                              if(!(_loc5_ && param1))
                              {
                                 §§pop().§§slot[4] = new §4q§(§]o§.§#b§(§]#§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§),tutorialName);
                                 if(!_loc5_)
                                 {
                                    addr129:
                                    if(tutorialPopup)
                                    {
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr137);
                                 }
                                 §+m§.push(tutorialPopup);
                                 §§goto(addr137);
                              }
                              §§goto(addr129);
                           }
                           catch(e:Error)
                           {
                              §§goto(addr129);
                           }
                           addr137:
                           return;
                        }
                        addr66:
                        §§push(powerUpName);
                        if(_loc6_ || param1)
                        {
                           addr75:
                           §§push(§§pop());
                        }
                        §§pop().§§slot[3] = §§pop();
                        §§goto(addr77);
                     }
                     §§goto(addr66);
                     §§push(§§newactivation());
                  }
                  §§goto(addr75);
               }
               §§goto(addr66);
            }
            §§goto(addr77);
         }
         §§goto(addr66);
      }
      
      public static function §=c§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§push(null);
            if(!(_loc5_ && §7!1§))
            {
               §§pop().§§slot[2] = §§pop();
               if(!_loc5_)
               {
                  addr43:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!§use§)
                     {
                        §use§ = SharedObject.getLocal(storageName);
                     }
                     var _loc3_:int = 0;
                     if(!(_loc5_ && _loc3_))
                     {
                        var _loc4_:* = §2m§();
                        if(!(_loc5_ && _loc3_))
                        {
                           for each(birdName in _loc4_)
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                           }
                           addr104:
                           §use§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                           §use§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                           §use§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                           if(_loc6_)
                           {
                              §use§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                              addr151:
                              return;
                              addr137:
                           }
                           §§goto(addr137);
                           addr101:
                        }
                        while(true)
                        {
                           §use§.data[birdName] = false;
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr137);
               }
               catch(e:Error)
               {
               }
               §§goto(addr151);
            }
         }
         §§goto(addr43);
      }
      
      private static function §2m§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0Y§ = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in §,!!§.§;4§.slingshot.§"_§)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §;b§(param1:§!!1§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(_loc8_)
         {
            §§pop().§§slot[6] = 0;
            if(!(_loc7_ && param1))
            {
               §§push(§§newactivation());
               if(_loc8_ || §7!1§)
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§newactivation());
                     if(!(_loc7_ && param2))
                     {
                        §§push(param2);
                        if(_loc8_ || param2)
                        {
                           §§pop().§§slot[2] = §§pop();
                           if(_loc8_ || §7!1§)
                           {
                              addr74:
                              §§push(§§newactivation());
                              if(_loc8_)
                              {
                                 addr77:
                                 §§push(param3);
                                 if(_loc8_)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    if(!(_loc7_ && param3))
                                    {
                                       if(isOpen)
                                       {
                                          §§goto(addr90);
                                       }
                                       else
                                       {
                                          addr91:
                                          §§push(§§newactivation());
                                          §§push(powerUpName);
                                          if(!(_loc7_ && param3))
                                          {
                                             addr101:
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                    §§goto(addr91);
                                 }
                                 §§pop().§§slot[4] = §§pop();
                                 §&"§ = [];
                                 §§push(§§newactivation());
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!(_loc7_ && param1))
                                    {
                                       var _loc5_:* = §§pop();
                                       if(_loc8_ || param1)
                                       {
                                          §§push("POWERUP4");
                                          if(!_loc7_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr310:
                                                      §§push(0);
                                                      if(_loc7_ && param1)
                                                      {
                                                         addr336:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr391:
                                                      §§push(4);
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         addr399:
                                                      }
                                                   }
                                                   addr404:
                                                   if(_loc8_)
                                                   {
                                                      loop15:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            §§push(§§newactivation());
                                                            §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().§§slot[4] = §§pop();
                                                               §§push(§&"§);
                                                               §§push(§§newactivation());
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop().§§slot[4]);
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     addr229:
                                                                     §§pop().push(§§pop());
                                                                  }
                                                                  addr408:
                                                                  §§push(§§newactivation());
                                                                  §§push(§&"§);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     §§pop().§§slot[5] = §§pop();
                                                                     if(_loc8_)
                                                                     {
                                                                        try
                                                                        {
                                                                           addr423:
                                                                           if(storageName)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr426:
                                                                                 if(!§use§)
                                                                                 {
                                                                                    addr428:
                                                                                    §use§ = SharedObject.getLocal(storageName);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr436:
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc7_ && §7!1§))
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[5]);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   addr549:
                                                                                                   loop0:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      addr550:
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[6]);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < 0)
                                                                                                               {
                                                                                                                  if(_loc7_ && param3)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr564:
                                                                                                                  break loop15;
                                                                                                                  addr564:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc7_ && param3)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     addr472:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[5]);
                                                                                                                        addr473:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§§slot[4] = §§pop()[i];
                                                                                                                           if(_loc7_ && param3)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§use§.data[powerUpPopupName] == undefined);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr499:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§use§.data[powerUpPopupName] == false);
                                                                                                                                    }
                                                                                                                                    addr499:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr507:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §use§.data[powerUpPopupName] = true;
                                                                                                                                    addr527:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr507:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(!(_loc7_ && param2))
                                                                                                                                 {
                                                                                                                                    addr523:
                                                                                                                                    §§push(§§pop().§§slot[5]);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       addr524:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().splice(§§pop().§§slot[6],1);
                                                                                                                                          §§goto(addr527);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr523:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr530:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[6]);
                                                                                                                                 if(_loc8_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                    if(_loc8_ || param3)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §use§.flush();
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         break loop15;
                                                                                                      }
                                                                                                   }
                                                                                                   addr549:
                                                                                                }
                                                                                                §§goto(addr549);
                                                                                             }
                                                                                             §§goto(addr473);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr471);
                                                                                    }
                                                                                    §§goto(addr499);
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              §§goto(addr507);
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        catch(e:Error)
                                                                        {
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §#y§.log("Unable to get local storage");
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr428);
                                                                  }
                                                                  §§goto(addr473);
                                                               }
                                                               else
                                                               {
                                                                  addr194:
                                                                  §§push(§§pop().§§slot[4]);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     if(_loc8_ || §7!1§)
                                                                     {
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            else
                                                            {
                                                               addr180:
                                                               §§pop().§§slot[4] = §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  addr183:
                                                                  §§push(§&"§);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     addr191:
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                                  §§goto(addr523);
                                                               }
                                                            }
                                                            §§goto(addr549);
                                                         case 1:
                                                            §§push(§§newactivation());
                                                            §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                            if(!(_loc7_ && §7!1§))
                                                            {
                                                               §§pop().§§slot[4] = §§pop();
                                                               if(!(_loc7_ && §7!1§))
                                                               {
                                                                  §§push(§&"§);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        §§push(§§pop().§§slot[4]);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().push(§§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr408);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr183);
                                                                           }
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr499);
                                                            }
                                                            else
                                                            {
                                                               addr209:
                                                               §§pop().§§slot[4] = §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§&"§);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        §§goto(addr229);
                                                                        §§push(§§pop().§§slot[4]);
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr233:
                                                                     §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(§&"§);
                                                                           §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§pop().push(§§pop());
                                                                              §§push(§&"§);
                                                                              §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                              if(_loc8_ || §7!1§)
                                                                              {
                                                                              }
                                                                              addr266:
                                                                              §§pop().push(§§pop());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§goto(addr408);
                                                                              }
                                                                              §§goto(addr426);
                                                                           }
                                                                           §§pop().push(§§pop());
                                                                           §§goto(addr266);
                                                                           §§push(§&"§);
                                                                           §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr436);
                                                         case 2:
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ && §7!1§))
                                                            {
                                                               §§push("POWERUP_TUTORIAL_KINGSLING");
                                                               if(!(_loc7_ && §7!1§))
                                                               {
                                                                  §§goto(addr180);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                            }
                                                            §§goto(addr530);
                                                         case 3:
                                                            §§goto(addr209);
                                                         case 4:
                                                            §§goto(addr233);
                                                         default:
                                                            §§goto(addr408);
                                                      }
                                                      _loc5_ = §&"§;
                                                      §§push(§§newactivation());
                                                      §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                      if(!_loc7_)
                                                      {
                                                         var _loc6_:* = powerUpsToShow;
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         for each(powerUpName in _loc6_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §-! §(powerUpName,currentUIView);
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr546);
                                                }
                                                else
                                                {
                                                   §§push("POWERUP1");
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc8_ || param2)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(1);
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr336);
                                                               }
                                                               else
                                                               {
                                                                  addr359:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr391);
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         else
                                                         {
                                                            §§push("POWERUP2");
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               addr345:
                                                               §§push(_loc5_);
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc8_ || §7!1§)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr359);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr399);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr391);
                                                                     }
                                                                     §§goto(addr404);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("POWERUP3");
                                                                     if(_loc8_ || §7!1§)
                                                                     {
                                                                        addr368:
                                                                        §§push(_loc5_);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           addr376:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(3);
                                                                                 if(_loc7_ && param3)
                                                                                 {
                                                                                    §§goto(addr399);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr391);
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("ALL");
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        addr390:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§goto(addr391);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(5);
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr390);
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr345);
                                                }
                                             }
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr550);
                              }
                              §§goto(addr91);
                           }
                           addr90:
                           return;
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr77);
      }
      
      public static function §6Y§(param1:§!!1§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_ || _loc3_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(_loc6_)
               {
                  §§pop().§§slot[5] = 0;
                  §§push(§§newactivation());
                  if(!(_loc7_ && §7!1§))
                  {
                     addr46:
                     §§pop().§§slot[1] = param1;
                     §§push(§§newactivation());
                     if(_loc6_ || _loc3_)
                     {
                     }
                     addr76:
                     §§pop().§§slot[3] = §2m§();
                     try
                     {
                        §§push(§§newactivation());
                        if(!(_loc7_ && param2))
                        {
                           if(§§pop().§§slot[2])
                           {
                              if(!§use§)
                              {
                                 §use§ = SharedObject.getLocal(storageName);
                                 if(!_loc7_)
                                 {
                                    addr100:
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc7_ && §7!1§))
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§pop().§§slot[5] = int(§§pop().length - 1);
                                             if(!_loc7_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§§slot[5]);
                                                      if(_loc6_)
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(§§pop() < 0)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                            §§push(§§newactivation());
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§newactivation());
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§§slot[3]);
                                                                  addr132:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§§slot[4] = §§pop()[i];
                                                                     §§push(§use§.data[birdName] == undefined);
                                                                     if(_loc6_ || §7!1§)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              addr170:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(§use§.data[birdName] == false);
                                                                                 §§goto(addr170);
                                                                              }
                                                                              addr171:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §use§.data[birdName] = true;
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr189:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc6_ || _loc3_))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[5]);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(§§pop() - 1);
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             var i:int = §§pop();
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr233:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §use§.flush();
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr269:
                                                                                             var _loc4_:int = 0;
                                                                                             addr268:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                var _loc5_:* = birdsToShow;
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                }
                                                                                                for each(birdName in _loc5_)
                                                                                                {
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §=p§(birdName,currentUIView);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr244:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    addr205:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr244);
                                                                                 }
                                                                                 §§goto(addr268);
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§§slot[3].splice(i,1);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr313:
                                                                                 §8R§();
                                                                              }
                                                                              continue loop4;
                                                                              return;
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                               addr131:
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                }
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr269);
                        }
                        §§goto(addr198);
                     }
                     catch(e:Error)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           §#y§.log("Unable to get local storage");
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr57);
               }
               §§goto(addr46);
            }
            addr57:
            §§pop().§§slot[2] = param2;
            if(_loc6_ || _loc3_)
            {
               if(!isOpen)
               {
                  §§goto(addr76);
                  §§push(§§newactivation());
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      private static function §8R§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(isOpen);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr63:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr83);
                     }
                  }
                  addr70:
                  if(§+m§.length > 0)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        isOpen = true;
                        if(!_loc3_)
                        {
                           addr83:
                           §'g§ = §+m§.pop();
                           if(!_loc3_)
                           {
                              addr89:
                              §'g§.open(param1);
                           }
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr63);
         }
         §§goto(addr89);
      }
      
      public static function §3!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(isOpen == true)
            {
               if(_loc1_ || _loc1_)
               {
                  if(§+m§.length > 0)
                  {
                     addr42:
                     §§push(§'g§);
                     if(_loc1_)
                     {
                        §§push(false);
                        if(_loc1_)
                        {
                           §§pop().preClose(§§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              isOpen = false;
                              if(_loc1_ || _loc1_)
                              {
                                 §8R§(false);
                              }
                              §§goto(addr93);
                           }
                           else
                           {
                              addr91:
                              §§push(§'g§);
                              §§push(true);
                           }
                           §§goto(addr93);
                        }
                        §§pop().preClose(§§pop());
                        §§goto(addr93);
                     }
                     §§goto(addr91);
                  }
                  else
                  {
                     isOpen = false;
                     if(!(_loc2_ && §7!1§))
                     {
                        §§goto(addr91);
                     }
                  }
               }
               §§goto(addr42);
            }
            addr93:
            return;
         }
         §§goto(addr42);
      }
   }
}
