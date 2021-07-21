package §false§
{
   import § !r§.§3!X§;
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §<!<§.§]K§;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §?!-§.§'!V§;
   import flash.net.SharedObject;
   
   public class §!!o§
   {
      
      private static var §<!+§:Class;
      
      private static var §&q§:Class;
      
      private static var §"C§:Class;
      
      private static var §[!b§:Array;
      
      private static var § =§:Popup = null;
      
      private static var § !Y§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §@<§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §<!+§ = §#?§;
            §&q§ = §#!g§;
            if(!(_loc1_ && _loc1_))
            {
               §"C§ = §3h§;
               addr60:
               §[!b§ = [];
               if(!(_loc1_ && _loc2_))
               {
                  § =§ = null;
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr83);
               }
               isOpen = false;
            }
            addr83:
            return;
         }
         §§goto(addr60);
      }
      
      public function §!!o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §,[§(param1:String, param2:§2U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§pop().§§slot[4] = null;
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!(_loc6_ && §!!o§))
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     addr55:
                     §§push(§§newactivation());
                     if(!_loc6_)
                     {
                        addr58:
                        §§pop().§§slot[2] = param2;
                        if(!_loc6_)
                        {
                           addr63:
                           var tutorialName:String = "";
                        }
                     }
                     §§goto(addr63);
                  }
                  §§push(§§newactivation());
                  if(_loc5_ || §!!o§)
                  {
                     var _loc4_:* = §§pop().§§slot[1];
                     §§push("BIRD_BLACK");
                     if(!_loc6_)
                     {
                        if(§§pop() === _loc4_)
                        {
                           if(_loc5_ || param1)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 addr264:
                              }
                           }
                           else
                           {
                              addr204:
                              §§push(2);
                              if(!_loc5_)
                              {
                                 addr231:
                              }
                           }
                        }
                        else
                        {
                           §§push("BIRD_BLUE");
                           if(_loc5_ || param1)
                           {
                              §§push(_loc4_);
                              if(_loc5_ || §!!o§)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr274:
                                       switch(1)
                                       {
                                          case 0:
                                             §§push(§§newactivation());
                                             if(!_loc6_)
                                             {
                                                §§push("TUTORIAL_BLACK");
                                                if(!_loc6_)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   break;
                                                }
                                                addr92:
                                                §§pop().§§slot[3] = §§pop();
                                                break;
                                             }
                                             addr86:
                                             §§pop().§§slot[3] = "TUTORIAL_RED";
                                             break;
                                          case 1:
                                             §§push(§§newactivation());
                                             if(!_loc6_)
                                             {
                                                §§push("TUTORIAL_BLUE");
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr117:
                                                §§push("TUTORIAL_BIG_BROTHER");
                                                if(_loc6_)
                                                {
                                                   addr125:
                                                   §§pop().§§slot[3] = §§pop();
                                                   break;
                                                }
                                             }
                                             §§pop().§§slot[3] = §§pop();
                                             break;
                                          case 2:
                                             §§goto(addr86);
                                          case 3:
                                             §§goto(addr92);
                                          case 4:
                                             §§push(§§newactivation());
                                             §§push(§§newactivation());
                                             §§push("TUTORIAL_WHITE");
                                             §§push(§§newactivation());
                                             §§push("TUTORIAL_YELLOW");
                                             if(_loc5_)
                                             {
                                                §§pop().§§slot[3] = §§pop();
                                                break;
                                             }
                                             §§goto(addr125);
                                             break;
                                          case 5:
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                                if(!(_loc6_ && §!!o§))
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             addr124:
                                             §§goto(addr125);
                                             §§push("TUTORIAL_MIGHTYEAGLE");
                                             break;
                                          case 6:
                                             §§goto(addr117);
                                          case 7:
                                             §§goto(addr124);
                                          default:
                                             §§newactivation();
                                             §§newactivation();
                                             return;
                                       }
                                       try
                                       {
                                          §§push(§§newactivation());
                                          if(_loc5_ || param1)
                                          {
                                             §§pop().§§slot[4] = new §@§(§3!X§.§3<§(§<!+§),currentUIView,§<6§.§>!>§(tutorialName,§3p§.§`!t§));
                                             if(!_loc6_)
                                             {
                                                §§goto(addr333);
                                             }
                                             §§goto(addr335);
                                          }
                                          addr333:
                                          §§goto(addr332);
                                       }
                                       catch(e:Error)
                                       {
                                          addr332:
                                          if(tutorialPopup)
                                          {
                                             addr335:
                                             §[!b§.push(tutorialPopup);
                                          }
                                          return;
                                       }
                                       §§goto(addr333);
                                    }
                                    else
                                    {
                                       addr237:
                                       §§push(5);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§goto(addr274);
                                       }
                                       else
                                       {
                                          §§goto(addr264);
                                       }
                                    }
                                    §§goto(addr274);
                                 }
                                 else
                                 {
                                    §§push("BIRD_RED");
                                    §§push(_loc4_);
                                    if(!(_loc6_ && §!!o§))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr204);
                                          }
                                          else
                                          {
                                             §§goto(addr237);
                                          }
                                       }
                                       else
                                       {
                                          if("BIRD_WHITE" === _loc4_)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                §§goto(addr274);
                                                §§push(3);
                                             }
                                          }
                                          else
                                          {
                                             §§push("BIRD_YELLOW");
                                             §§push(_loc4_);
                                             if(_loc5_ || param2)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr231);
                                                   §§push(4);
                                                }
                                                else
                                                {
                                                   §§push("BIRD_GREEN");
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                      else
                                                      {
                                                         addr247:
                                                         §§push("BIRD_REDBIG");
                                                         §§push(_loc4_);
                                                         if(_loc6_ && param1)
                                                         {
                                                         }
                                                         addr267:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            addr269:
                                                            §§goto(addr274);
                                                            §§push(7);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr274);
                                                            §§push(8);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr274);
                                             }
                                             if(§§pop() !== §§pop())
                                             {
                                                addr266:
                                                §§goto(addr267);
                                                §§push("BIRD_SARDINE");
                                                §§push(_loc4_);
                                             }
                                          }
                                          §§goto(addr274);
                                          §§goto(addr274);
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr267);
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr333);
               }
               §§goto(addr58);
            }
            §§goto(addr55);
         }
         §§goto(addr63);
      }
      
      private static function §;!L§(param1:String, param2:§2U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || param1)
         {
            §§pop().§§slot[4] = null;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(!(_loc6_ && param1))
               {
                  §§push(param1);
                  if(!(_loc6_ && param1))
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           addr60:
                           §§pop().§§slot[2] = param2;
                           if(!(_loc6_ && param2))
                           {
                              addr80:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop());
                              }
                           }
                           try
                           {
                              addr91:
                              §§push(§§newactivation());
                              if(!(_loc6_ && §!!o§))
                              {
                                 §§pop().§§slot[4] = new §"!@§(§3!X§.§3<§(§&q§),currentUIView,§<6§.§>!>§(tutorialName,§3p§.§`!t§),tutorialName);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr147:
                                    if(tutorialPopup)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §[!b§.push(tutorialPopup);
                                       }
                                    }
                                 }
                                 return;
                              }
                           }
                           catch(e:Error)
                           {
                              §§goto(addr147);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr91);
                  }
                  §§pop().§§slot[3] = §§pop();
                  §§goto(addr91);
               }
               §§goto(addr80);
            }
            §§goto(addr91);
         }
         §§goto(addr60);
      }
      
      public static function §]!B§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || param1)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc6_ || param1)
               {
                  addr43:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc6_)
                     {
                        if(!§ !Y§)
                        {
                           if(!_loc5_)
                           {
                              § !Y§ = SharedObject.getLocal(storageName);
                              if(!(_loc5_ && param1))
                              {
                                 addr76:
                                 var _loc3_:int = 0;
                                 if(_loc6_)
                                 {
                                    var _loc4_:* = §,!q§();
                                    if(_loc6_ || _loc2_)
                                    {
                                    }
                                    for each(birdName in _loc4_)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          § !Y§.data[birdName] = false;
                                       }
                                    }
                                 }
                                 § !Y§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                              }
                              addr162:
                              return;
                              addr148:
                           }
                           § !Y§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                           § !Y§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                           if(!_loc5_)
                           {
                              § !Y§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr148);
               }
               catch(e:Error)
               {
               }
               §§goto(addr162);
            }
         }
         §§goto(addr43);
      }
      
      private static function §,!q§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§]K§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §'!V§.§1!2§.slingshot.mBirds)
         {
            if(!_loc5_)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §"0§(param1:§2U§, param2:String, param3:String) : void
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
               if(!(_loc7_ && param1))
               {
                  addr41:
                  §§pop().§§slot[1] = param1;
                  §§push(§§newactivation());
                  if(_loc8_)
                  {
                     addr46:
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§pop().§§slot[2] = §§pop();
                        §§push(§§newactivation());
                        if(!_loc7_)
                        {
                           addr76:
                           addr53:
                           §§push(param3);
                           if(_loc8_ || param2)
                           {
                              §§pop().§§slot[3] = §§pop();
                              addr62:
                              if(isOpen)
                              {
                                 return;
                              }
                              §§push(§§newactivation());
                           }
                           §§pop().§§slot[4] = §§pop();
                           §@<§ = [];
                           §§push(powerUpName);
                           if(_loc8_)
                           {
                              var _loc5_:* = §§pop();
                              if(_loc8_ || §!!o§)
                              {
                                 §§push("POWERUP4");
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                addr383:
                                                if(_loc8_ || param2)
                                                {
                                                   loop11:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §§push(§§newactivation());
                                                         §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().§§slot[4] = §§pop();
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               §§push(§@<§);
                                                               §§push(§§newactivation());
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop().§§slot[4]);
                                                                  if(_loc8_ || §!!o§)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     if(_loc8_)
                                                                     {
                                                                        addr394:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           §§push(§@<§);
                                                                           if(!(_loc7_ && param3))
                                                                           {
                                                                              §§pop().§§slot[5] = §§pop();
                                                                              if(!(_loc7_ && param3))
                                                                              {
                                                                                 try
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       addr428:
                                                                                       if(§§pop().§§slot[2])
                                                                                       {
                                                                                          addr429:
                                                                                          if(!§ !Y§)
                                                                                          {
                                                                                             addr431:
                                                                                             § !Y§ = SharedObject.getLocal(storageName);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                addr439:
                                                                                                §§push(§§newactivation());
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr464:
                                                                                                   §§push(§§pop().§§slot[5]);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr559:
                                                                                                      _loc5_ = 0;
                                                                                                      addr558:
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         var _loc6_:* = powerUpsToShow;
                                                                                                         if(_loc7_ && param1)
                                                                                                         {
                                                                                                         }
                                                                                                         for each(powerUpName in _loc6_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §;!L§(powerUpName,currentUIView);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                      addr539:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§§slot[4] = §§pop()[i];
                                                                                                      §§push(§ !Y§.data[powerUpPopupName] == undefined);
                                                                                                      if(!(_loc7_ && param3))
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr487:
                                                                                                               §§pop();
                                                                                                               §§push(§ !Y§.data[powerUpPopupName] == false);
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr496:
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               § !Y§.data[powerUpPopupName] = true;
                                                                                                               addr516:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(i);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                        if(_loc8_ || param3)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              var i:int = §§pop();
                                                                                                                              break loop11;
                                                                                                                           }
                                                                                                                           addr528:
                                                                                                                        }
                                                                                                                        §§goto(addr559);
                                                                                                                     }
                                                                                                                     addr520:
                                                                                                                  }
                                                                                                                  §§goto(addr528);
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr496:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            loop1:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[5]);
                                                                                                               addr505:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  addr506:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().splice(§§pop().§§slot[6],1);
                                                                                                                     if(!(_loc7_ && param3))
                                                                                                                     {
                                                                                                                        §§goto(addr516);
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            § !Y§.flush();
                                                                                                            addr504:
                                                                                                            §§goto(addr539);
                                                                                                            addr504:
                                                                                                         }
                                                                                                         §§goto(addr516);
                                                                                                      }
                                                                                                      §§goto(addr487);
                                                                                                   }
                                                                                                   addr464:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr464);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          §§goto(addr439);
                                                                                       }
                                                                                       §§goto(addr559);
                                                                                    }
                                                                                    §§goto(addr504);
                                                                                 }
                                                                                 catch(e:Error)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §`![§.log("Unable to get local storage");
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr558);
                                                                              }
                                                                              §§goto(addr496);
                                                                           }
                                                                           §§goto(addr464);
                                                                        }
                                                                        §§goto(addr439);
                                                                     }
                                                                     §§goto(addr431);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr132:
                                                                     §§pop().push(§§pop());
                                                                     if(!_loc8_)
                                                                     {
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr205:
                                                                  §§pop().push(§§pop().§§slot[4]);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         else
                                                         {
                                                            addr115:
                                                            §§pop().§§slot[4] = §§pop();
                                                            if(!(_loc7_ && §!!o§))
                                                            {
                                                               §§push(§@<§);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop().§§slot[4]);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§goto(addr132);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               else
                                                               {
                                                                  addr214:
                                                                  §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§pop().push(§§pop());
                                                                     addr224:
                                                                     §§push(§@<§);
                                                                     §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        addr232:
                                                                        §§pop().push(§§pop());
                                                                        addr233:
                                                                        §§push(§@<§);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr237:
                                                                           §§pop().push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§goto(addr394);
                                                                           }
                                                                           §§goto(addr429);
                                                                        }
                                                                        §§goto(addr505);
                                                                     }
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr496);
                                                      case 1:
                                                         §§push(§§newactivation());
                                                         §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                         if(_loc7_)
                                                         {
                                                            addr190:
                                                            §§pop().§§slot[4] = §§pop();
                                                            if(_loc8_ || param2)
                                                            {
                                                               §§push(§@<§);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr506);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr237);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr115);
                                                         §§goto(addr237);
                                                      case 2:
                                                         §§push(§§newactivation());
                                                         §§push("POWERUP_TUTORIAL_KINGSLING");
                                                         if(_loc8_ || §!!o§)
                                                         {
                                                            §§pop().§§slot[4] = §§pop();
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(§@<§);
                                                               if(_loc8_ || param2)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc8_ || §!!o§)
                                                                  {
                                                                     §§push(§§pop().§§slot[4]);
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr205);
                                                                     }
                                                                     §§goto(addr394);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr205);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr429);
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr190);
                                                         }
                                                      case 3:
                                                         §§push(§§newactivation());
                                                         if(_loc8_ || param3)
                                                         {
                                                            §§goto(addr190);
                                                            §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                         }
                                                         §§goto(addr504);
                                                      case 4:
                                                         §§push(§@<§);
                                                         §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().push(§§pop());
                                                            §§goto(addr214);
                                                            §§push(§@<§);
                                                         }
                                                         §§goto(addr232);
                                                      default:
                                                         §§goto(addr394);
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr520);
                                             }
                                          }
                                          else
                                          {
                                             addr307:
                                             §§push(1);
                                             if(_loc7_ && param2)
                                             {
                                             }
                                          }
                                          §§goto(addr383);
                                       }
                                       else
                                       {
                                          §§push("POWERUP1");
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc8_ || §!!o§)
                                                   {
                                                      §§goto(addr307);
                                                   }
                                                   else
                                                   {
                                                      addr363:
                                                      §§push(3);
                                                      if(!_loc8_)
                                                      {
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("POWERUP2");
                                                   if(_loc8_ || §!!o§)
                                                   {
                                                      addr324:
                                                      §§push(_loc5_);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(2);
                                                               if(_loc7_ && §!!o§)
                                                               {
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr363);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("POWERUP3");
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  addr355:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        §§goto(addr363);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr370:
                                                                        §§push(4);
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr368:
                                                                     §§push("ALL");
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr383);
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr370);
                                             }
                                             else
                                             {
                                                §§goto(addr383);
                                                §§push(5);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr324);
                                       }
                                    }
                                    §§goto(addr355);
                                 }
                                 §§goto(addr368);
                              }
                              §§goto(addr370);
                           }
                           §§goto(addr428);
                        }
                        §§push(powerUpName);
                        if(!(_loc7_ && param3))
                        {
                           §§push(§§pop());
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr53);
               }
               §§goto(addr46);
            }
            §§goto(addr62);
         }
         §§goto(addr41);
      }
      
      public static function §@!L§(param1:§2U§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(_loc7_)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(!_loc6_)
               {
                  §§pop().§§slot[5] = 0;
                  if(!_loc6_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc6_ && param2))
                     {
                        §§pop().§§slot[1] = param1;
                        if(!_loc6_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc6_ && param1))
                           {
                              addr57:
                              §§pop().§§slot[2] = param2;
                              addr56:
                              if(_loc7_ || param2)
                              {
                                 if(isOpen)
                                 {
                                    if(_loc7_ || §!!o§)
                                    {
                                       return;
                                    }
                                 }
                              }
                              §§push(§§newactivation());
                           }
                        }
                        try
                        {
                           addr82:
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              if(§§pop().§§slot[2])
                              {
                                 if(!§ !Y§)
                                 {
                                    § !Y§ = SharedObject.getLocal(storageName);
                                 }
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && param1))
                                 {
                                    addr103:
                                    §§push(§§newactivation());
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().§§slot[3]);
                                       if(_loc7_ || param2)
                                       {
                                          §§pop().§§slot[5] = int(§§pop().length - 1);
                                          if(!_loc6_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§§pop().§§slot[5]);
                                                   if(_loc7_ || param1)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(§§pop() < 0)
                                                         {
                                                            § !Y§.flush();
                                                            §§goto(addr323);
                                                         }
                                                         §§push(§§newactivation());
                                                         if(!(_loc7_ || _loc3_))
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§newactivation());
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§§slot[3]);
                                                            addr132:
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[4] = §§pop()[i];
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§ !Y§.data[birdName] == undefined);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           addr172:
                                                                           §§pop();
                                                                           §§push(§ !Y§.data[birdName] == false);
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ || §!!o§)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              § !Y§.data[birdName] = true;
                                                                           }
                                                                           addr188:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr323);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§§slot[3].splice(i,1);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop().§§slot[5]);
                                                                           if(!(_loc6_ && §!!o§))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           var i:int = §§pop();
                                                                           continue loop5;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                   }
                                                   var _loc4_:* = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      var _loc5_:* = birdsToShow;
                                                      if(_loc6_ && param1)
                                                      {
                                                      }
                                                      for each(birdName in _loc5_)
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §,[§(birdName,currentUIView);
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §5&§();
                                                   }
                                                   addr323:
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr245:
                                                      break loop3;
                                                      addr245:
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr103);
                        }
                        catch(e:Error)
                        {
                           if(!_loc6_)
                           {
                              §`![§.log("Unable to get local storage");
                           }
                        }
                        §§goto(addr245);
                     }
                     §§pop().§§slot[3] = §,!q§();
                  }
                  §§goto(addr82);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr57);
      }
      
      private static function §5&§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(isOpen);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               if(!(_loc2_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr66);
               }
               §§pop();
               if(_loc3_)
               {
                  addr66:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        isOpen = true;
                        if(_loc3_ || _loc3_)
                        {
                           addr79:
                           § =§ = §[!b§.pop();
                           if(_loc3_)
                           {
                              addr85:
                              § =§.open(param1);
                           }
                        }
                     }
                     §§goto(addr79);
                  }
                  return;
                  §§push(§[!b§.length > 0);
               }
               §§goto(addr85);
            }
            §§goto(addr66);
         }
         §§goto(addr79);
      }
      
      public static function §7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(isOpen == true)
         {
            if(!_loc1_)
            {
               if(§[!b§.length > 0)
               {
                  §§push(§ =§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(false);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop().preClose(§§pop());
                        isOpen = false;
                        if(!_loc1_)
                        {
                           §5&§(false);
                           if(_loc2_)
                           {
                              addr80:
                              return;
                              addr73:
                           }
                           §§goto(addr80);
                        }
                        else
                        {
                           addr78:
                           §§push(§ =§);
                           §§push(true);
                        }
                        §§goto(addr80);
                     }
                     §§pop().preClose(§§pop());
                     §§goto(addr80);
                  }
                  §§goto(addr78);
               }
               else
               {
                  isOpen = false;
               }
               §§goto(addr78);
            }
            §§goto(addr73);
         }
         §§goto(addr80);
      }
   }
}
