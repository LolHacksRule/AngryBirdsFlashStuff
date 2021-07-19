package §<M§
{
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §8!B§.§#! §;
   import §9T§.§>>§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import §`K§.§^!5§;
   import flash.net.SharedObject;
   
   public class §"_§
   {
      
      protected static var §=+§:Class = §!!&§;
      
      protected static var §'&§:Class = §>!&§;
      
      protected static var §;Z§:Class = §`!=§;
      
      private static var §=x§:Array;
      
      private static var §!!R§:Popup = null;
      
      private static var §^@§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §"#§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            §=x§ = [];
            §!!R§ = null;
         }
         while(!_loc2_);
         
      }
      
      public function §"_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      private static function §<S§(param1:String, param2:§`o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr197:
            addr163:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
            §§push(§§newactivation());
            if(_loc5_)
            {
               loop6:
               while(true)
               {
                  var _loc4_:* = §§pop().§§slot[1];
                  §§push("BIRD_BLACK");
                  if(_loc5_ || §"_§)
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
                              addr313:
                              switch(1)
                              {
                                 case 0:
                                    addr132:
                                    var tutorialName:String = "TUTORIAL_BLACK";
                                    if(!(_loc6_ && param1))
                                    {
                                       break;
                                    }
                                    break loop6;
                                 case 1:
                                    §§push(§§newactivation());
                                    if(!(_loc6_ && param1))
                                    {
                                       §§pop().§§slot[3] = "TUTORIAL_BLUE";
                                       break;
                                    }
                                    addr367:
                                    if(§§pop().§§slot[4])
                                    {
                                       if(!_loc6_)
                                       {
                                          addr371:
                                          §=x§.push(tutorialPopup);
                                       }
                                    }
                                    §§goto(addr375);
                                 case 2:
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       addr109:
                                       §§push("TUTORIAL_RED");
                                       if(!_loc6_)
                                       {
                                          §§pop().§§slot[3] = §§pop();
                                          break;
                                       }
                                    }
                                    continue;
                                    §§goto(addr132);
                                    break;
                                 case 3:
                                    addr99:
                                    tutorialName = "TUTORIAL_WHITE";
                                    break;
                                 case 4:
                                    addr90:
                                    §§push(§§newactivation());
                                    §§push("TUTORIAL_YELLOW");
                                    if(_loc5_)
                                    {
                                       §§pop().§§slot[3] = §§pop();
                                       break;
                                    }
                                    §§goto(addr109);
                                    break;
                                 case 5:
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!(_loc6_ && §"_§))
                                          {
                                             addr84:
                                             §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                             break;
                                          }
                                          §§goto(addr99);
                                       }
                                       else
                                       {
                                          §§goto(addr90);
                                       }
                                    }
                                    §§pop().§§slot[4] = new §%!?§(§^!5§.§'l§(§=+§),currentUIView,§%Y§.§6!<§(tutorialName,§'?§.§>o§));
                                    addr325:
                                    if(!_loc6_)
                                    {
                                       break loop6;
                                    }
                                    §§goto(addr371);
                                 case 6:
                                    §§push(§§newactivation());
                                    if(!(_loc6_ && param2))
                                    {
                                       §§pop().§§slot[3] = "TUTORIAL_BIG_BROTHER";
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       break loop6;
                                    }
                                    continue;
                                 case 7:
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§push("TUTORIAL_MIGHTYEAGLE");
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop().§§slot[3] = §§pop();
                                             if(_loc5_ || _loc3_)
                                             {
                                                break;
                                             }
                                             addr375:
                                             return;
                                          }
                                          §§goto(addr90);
                                       }
                                       else
                                       {
                                          §§goto(addr84);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr132);
                                    }
                                    §§goto(addr132);
                                 default:
                                    return;
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    §§goto(addr325);
                                 }
                                 §§goto(addr367);
                              }
                              catch(e:Error)
                              {
                                 addr366:
                                 §§goto(addr367);
                              }
                              §§goto(addr367);
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(2);
                                       if(!_loc5_)
                                       {
                                       }
                                       §§goto(addr313);
                                    }
                                    else
                                    {
                                       addr249:
                                       §§push(3);
                                    }
                                    §§goto(addr313);
                                 }
                                 else
                                 {
                                    §§push("BIRD_WHITE");
                                 }
                                 §§goto(addr313);
                              }
                              if(§§pop() === _loc4_)
                              {
                                 if(_loc5_ || §"_§)
                                 {
                                    §§goto(addr249);
                                 }
                                 else
                                 {
                                    addr288:
                                    §§push(6);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr296:
                                    }
                                    §§goto(addr313);
                                 }
                              }
                              else
                              {
                                 §§push("BIRD_YELLOW");
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === _loc4_)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(4);
                                          if(!(_loc5_ || §"_§))
                                          {
                                             addr308:
                                          }
                                          §§goto(addr313);
                                       }
                                       else
                                       {
                                          §§goto(addr288);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_GREEN");
                                       if(_loc6_)
                                       {
                                       }
                                       addr298:
                                       if(§§pop() === _loc4_)
                                       {
                                          addr300:
                                          §§push(7);
                                          if(!(_loc6_ && §"_§))
                                          {
                                             §§goto(addr308);
                                          }
                                          §§goto(addr313);
                                       }
                                       else
                                       {
                                          §§goto(addr313);
                                          §§push(8);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr313);
                                 }
                                 if(§§pop() === _loc4_)
                                 {
                                    §§push(5);
                                    if(_loc5_)
                                    {
                                       §§goto(addr313);
                                    }
                                    else
                                    {
                                       §§goto(addr296);
                                    }
                                 }
                                 else
                                 {
                                    §§push("BIRD_REDBIG");
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr313);
                           }
                        }
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr288);
                              }
                              §§goto(addr313);
                           }
                           else
                           {
                              §§goto(addr298);
                              §§push("BIRD_SARDINE");
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr298);
                     }
                     §§goto(addr313);
                  }
                  §§goto(addr298);
               }
               §§goto(addr366);
            }
            §§goto(addr367);
         }
      }
      
      private static function §=!C§(param1:String, param2:§`o§) : void
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
               while(_loc5_)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(!(_loc6_ && §"_§))
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = param2;
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(powerUpName);
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    addr39:
                                    §§pop().§§slot[3] = §§pop();
                                    if(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public static function §6M§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[2] = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  addr43:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!(_loc5_ && §"_§))
                     {
                        if(!§^@§)
                        {
                           if(!_loc5_)
                           {
                              §^@§ = SharedObject.getLocal(storageName);
                              if(!_loc5_)
                              {
                                 addr76:
                                 var _loc3_:int = 0;
                                 if(!(_loc5_ && §"_§))
                                 {
                                    var _loc4_:* = §`L§();
                                    if(!_loc5_)
                                    {
                                       for each(birdName in _loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                       }
                                       §^@§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                       §^@§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                       while(true)
                                       {
                                          §^@§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                          §§goto(addr136);
                                       }
                                       addr107:
                                       addr110:
                                       addr111:
                                       addr149:
                                    }
                                    while(true)
                                    {
                                       §^@§.data[birdName] = false;
                                       §§goto(addr107);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr111);
                           }
                           addr136:
                           §§goto(addr150);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr150);
               }
               catch(e:Error)
               {
               }
               addr150:
               while(true)
               {
                  §^@§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                  if(true)
                  {
                     break;
                  }
                  continue loop3;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private static function §`L§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>>§ = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in §#! §.§`'§.slingshot.§,N§)
         {
            if(!_loc6_)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §,!4§(param1:§`o§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            §§push(§§newactivation());
            while(true)
            {
               §§pop().§§slot[1] = param1;
               §§push(§§newactivation());
               continue loop0;
               loop4:
               while(!(_loc7_ && §"_§))
               {
                  §§push(param3);
                  loop5:
                  while(!(_loc7_ && param2))
                  {
                     §§pop().§§slot[3] = §§pop();
                     while(true)
                     {
                        if(isOpen)
                        {
                           return;
                        }
                        §§push(§§newactivation());
                        if(_loc7_)
                        {
                           continue loop4;
                        }
                        if(!(_loc8_ || §"_§))
                        {
                           break;
                        }
                        §§push(powerUpName);
                        if(!_loc7_)
                        {
                           if(!(_loc8_ || param2))
                           {
                              continue loop5;
                           }
                           §§goto(addr239);
                           §§push(§§pop());
                           continue loop5;
                        }
                        addr239:
                        §§pop().§§slot[4] = §§pop();
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §"#§ = [];
                        §§push(powerUpName);
                        if(!(_loc7_ && param2))
                        {
                           var _loc5_:* = §§pop();
                           if(_loc8_ || param2)
                           {
                              §§push("POWERUP4");
                              if(!_loc7_)
                              {
                                 §§push(_loc5_);
                                 if(_loc8_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(0);
                                          if(!(_loc8_ || param1))
                                          {
                                             addr370:
                                          }
                                       }
                                       else
                                       {
                                          addr362:
                                          §§push(1);
                                          if(_loc8_ || param3)
                                          {
                                             §§goto(addr370);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("POWERUP1");
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   §§goto(addr362);
                                                }
                                                addr448:
                                                if(_loc8_ || §"_§)
                                                {
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         addr209:
                                                         var powerUpPopupName:String = "POWERUP_TUTORIAL_BIRDQUAKE";
                                                         §§push(§"#§);
                                                         if(_loc8_)
                                                         {
                                                            addr195:
                                                            §§pop().push(powerUpPopupName);
                                                            if(_loc8_ || param3)
                                                            {
                                                               addr457:
                                                               §§push(§§newactivation());
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(§"#§);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§pop().§§slot[5] = §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        try
                                                                        {
                                                                           addr479:
                                                                           if(storageName)
                                                                           {
                                                                              if(!§^@§)
                                                                              {
                                                                                 §^@§ = SharedObject.getLocal(storageName);
                                                                                 addr488:
                                                                              }
                                                                              addr630:
                                                                              var i:int = powerUpsToShow.length - 1;
                                                                              addr634:
                                                                              addr629:
                                                                              §§push(i);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 if(§§pop() < 0)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §^@§.flush();
                                                                                       }
                                                                                       §§goto(addr634);
                                                                                    }
                                                                                    addr507:
                                                                                    if(false)
                                                                                    {
                                                                                       addr509:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc8_ || §"_§)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[6]);
                                                                                          if(!(_loc7_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() - 1);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                             }
                                                                                             addr655:
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                var _loc6_:* = powerUpsToShow;
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr690:
                                                                                                   for each(powerUpName in _loc6_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr684:
                                                                                                         §=!C§(powerUpName,currentUIView);
                                                                                                      }
                                                                                                      §§goto(addr690);
                                                                                                   }
                                                                                                   addr694:
                                                                                                   return;
                                                                                                   addr693:
                                                                                                }
                                                                                                §§goto(addr684);
                                                                                             }
                                                                                             §§goto(addr693);
                                                                                          }
                                                                                          i = §§pop();
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!(_loc7_ && param3))
                                                                                                {
                                                                                                   §§goto(addr634);
                                                                                                }
                                                                                                addr578:
                                                                                                §^@§.data[powerUpPopupName] = true;
                                                                                             }
                                                                                             §§goto(addr509);
                                                                                          }
                                                                                          addr560:
                                                                                          §§goto(addr509);
                                                                                       }
                                                                                       addr548:
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          addr557:
                                                                                          §§pop().§§slot[5].splice(i,1);
                                                                                          addr556:
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       addr605:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc8_ || param3)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[5]);
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             addr621:
                                                                                             §§pop().§§slot[4] = §§pop()[i];
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr630);
                                                                                       }
                                                                                       §§goto(addr629);
                                                                                    }
                                                                                    addr654:
                                                                                    §§goto(addr655);
                                                                                    §§push(0);
                                                                                    addr635:
                                                                                 }
                                                                                 §§goto(addr605);
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§goto(addr655);
                                                                              addr628:
                                                                           }
                                                                           §§goto(addr635);
                                                                        }
                                                                        catch(e:Error)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              § L§.log("Unable to get local storage");
                                                                           }
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                     §§goto(addr630);
                                                                  }
                                                                  §§goto(addr621);
                                                               }
                                                               §§goto(addr628);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr556);
                                                      case 1:
                                                         addr185:
                                                         powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
                                                         if(!_loc7_)
                                                         {
                                                            addr175:
                                                            §§push(§"#§);
                                                            §§push(powerUpPopupName);
                                                            if(_loc8_)
                                                            {
                                                               §§pop().push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr457);
                                                         }
                                                         break;
                                                      case 2:
                                                         addr170:
                                                         powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
                                                         addr146:
                                                         §§push(§"#§);
                                                         §§push(§§newactivation());
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr156:
                                                               §§pop().push(§§pop().§§slot[4]);
                                                               if(_loc8_ || param3)
                                                               {
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr488);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr195);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr195);
                                                      case 3:
                                                         §§push(§§newactivation());
                                                         §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            if(!(_loc7_ && §"_§))
                                                            {
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§pop().§§slot[4] = §§pop();
                                                                  §§push(§"#§);
                                                                  §§push(§§newactivation());
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        §§push(§§pop().§§slot[4]);
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop().push(§§pop());
                                                                              if(_loc8_ || §"_§)
                                                                              {
                                                                                 §§goto(addr457);
                                                                              }
                                                                              addr597:
                                                                              §§push(§^@§.data[powerUpPopupName] == false);
                                                                              if(_loc8_ || param3)
                                                                              {
                                                                                 addr576:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 §§goto(addr548);
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§pop();
                                                                              addr600:
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr600);
                                                                              }
                                                                              §§goto(addr694);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr175);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr156);
                                                                        }
                                                                        §§goto(addr488);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr146);
                                                                     }
                                                                  }
                                                                  §§goto(addr557);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr170);
                                                         }
                                                      case 4:
                                                         addr70:
                                                         §"#§.push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§"#§);
                                                            if(_loc8_)
                                                            {
                                                               addr49:
                                                               §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                               if(!(_loc7_ && §"_§))
                                                               {
                                                                  §§pop().push(§§pop());
                                                                  if(_loc8_ || §"_§)
                                                                  {
                                                                     addr32:
                                                                     §§push(§"#§);
                                                                     §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        §§push(§"#§);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop().push(§§pop());
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr32);
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                           §§goto(addr32);
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     §§goto(addr49);
                                                                  }
                                                                  §§goto(addr507);
                                                               }
                                                            }
                                                            §§goto(addr70);
                                                         }
                                                         §§goto(addr560);
                                                      default:
                                                         §§goto(addr457);
                                                   }
                                                   §§push(§^@§.data[powerUpPopupName] == undefined);
                                                   if(_loc8_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr597);
                                                      }
                                                      §§goto(addr576);
                                                   }
                                                   §§goto(addr597);
                                                }
                                                §§goto(addr655);
                                             }
                                             else
                                             {
                                                §§push("POWERUP2");
                                                if(_loc8_ || param1)
                                                {
                                                   addr379:
                                                   §§push(_loc5_);
                                                   if(_loc8_ || §"_§)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            addr395:
                                                            §§push(2);
                                                            if(!(_loc8_ || param2))
                                                            {
                                                               addr443:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr428:
                                                            §§push(3);
                                                            if(_loc8_ || param1)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("POWERUP3");
                                                         if(_loc7_ && param1)
                                                         {
                                                         }
                                                         addr439:
                                                         if(§§pop() === _loc5_)
                                                         {
                                                            addr440:
                                                            §§push(4);
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr448);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr448);
                                                            §§push(5);
                                                         }
                                                      }
                                                      §§goto(addr448);
                                                   }
                                                   §§goto(addr439);
                                                }
                                                §§push(_loc5_);
                                                if(_loc8_ || param2)
                                                {
                                                   addr420:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc7_ && §"_§))
                                                      {
                                                         §§goto(addr428);
                                                      }
                                                      §§goto(addr448);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr439);
                                                      §§push("ALL");
                                                   }
                                                }
                                                §§goto(addr439);
                                             }
                                          }
                                          §§goto(addr420);
                                       }
                                       §§goto(addr379);
                                    }
                                    §§goto(addr448);
                                 }
                              }
                              §§goto(addr439);
                           }
                           §§goto(addr395);
                        }
                        §§goto(addr479);
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     §§pop().§§slot[2] = §§pop();
                     continue loop4;
                     §§goto(addr265);
                  }
                  addr265:
               }
            }
         }
      }
      
      public static function §!?§(param1:§`o§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr87:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc7_)
                              {
                                 §§push(param2);
                                 if(_loc7_ || param1)
                                 {
                                    §§pop().§§slot[2] = §§pop();
                                    while(!isOpen)
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc7_ || §"_§))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                    addr58:
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §`L§();
                     if(_loc7_ || _loc3_)
                     {
                        if(false)
                        {
                           §§goto(addr58);
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              if(§§pop().§§slot[2])
                              {
                                 if(_loc7_)
                                 {
                                    if(!§^@§)
                                    {
                                       §^@§ = SharedObject.getLocal(storageName);
                                       if(!(_loc6_ && §"_§))
                                       {
                                          addr288:
                                          var i:int = birdsToShow.length - 1;
                                          addr121:
                                          addr292:
                                          addr286:
                                          addr287:
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && param2))
                                          {
                                             if(!(_loc6_ && §"_§))
                                             {
                                                addr137:
                                                §§push(§§pop().§§slot[5]);
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop() < 0)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §^@§.flush();
                                                                  if(_loc7_ || §"_§)
                                                                  {
                                                                     addr174:
                                                                     if(false)
                                                                     {
                                                                        addr176:
                                                                        §§push(§§newactivation());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop().§§slot[5]);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr184:
                                                                              i = §§pop() - 1;
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§goto(addr121);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 addr233:
                                                                                 §^@§.data[birdName] = true;
                                                                                 §§goto(addr176);
                                                                                 addr239:
                                                                              }
                                                                              §§goto(addr354);
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        addr203:
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§pop().§§slot[3].splice(i,1);
                                                                           addr215:
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     addr313:
                                                                     var _loc4_:* = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        var _loc5_:* = birdsToShow;
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                        addr348:
                                                                        for each(birdName in _loc5_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §<S§(birdName,currentUIView);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr354);
                                                                     }
                                                                     addr354:
                                                                     §4!!§();
                                                                     return;
                                                                     §§push(0);
                                                                     addr293:
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      addr263:
                                                      §§push(§§newactivation());
                                                      §§push(§§newactivation());
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop().§§slot[3]);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§pop().§§slot[4] = §§pop()[i];
                                                            §§push(§^@§.data[birdName] == undefined);
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr257:
                                                                  §§pop();
                                                                  §§push(§^@§.data[birdName] == false);
                                                                  if(_loc6_ && §"_§)
                                                                  {
                                                                  }
                                                                  §§goto(addr257);
                                                                  addr258:
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr203);
                                                               §§push(§§newactivation());
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr313);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr176);
                                          addr285:
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr285);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr137);
                        }
                        catch(e:Error)
                        {
                           if(!_loc6_)
                           {
                              § L§.log("Unable to get local storage");
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr313);
                     }
                     if(!_loc6_)
                     {
                        §§goto(addr22);
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
      }
      
      private static function §4!!§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(isOpen);
            if(!(_loc3_ && §"_§))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr99:
                        while(true)
                        {
                           §§push(§=x§.length > 0);
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr98:
                  }
                  loop0:
                  while(§§pop())
                  {
                     loop1:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           isOpen = true;
                           while(true)
                           {
                              §!!R§ = §=x§.pop();
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr99);
                  }
                  return;
               }
            }
            §§goto(addr98);
         }
         §§goto(addr81);
      }
      
      public static function §,X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(isOpen == true)
         {
            loop0:
            do
            {
               if(§=x§.length <= 0)
               {
                  isOpen = false;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §§push(§!!R§);
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        §§push(true);
                        if(!(_loc2_ && §"_§))
                        {
                           continue;
                        }
                        addr106:
                        §§pop().preClose(§§pop());
                        loop2:
                        while(true)
                        {
                           isOpen = false;
                           addr94:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
                  addr105:
                  §§goto(addr106);
                  §§push(false);
               }
               §§goto(addr105);
            }
            while(§4!!§(false), !(_loc1_ || §"_§));
            
         }
         §§goto(addr17);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§!!R§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr51:
                     §!!R§.preClose(false);
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
   }
}
