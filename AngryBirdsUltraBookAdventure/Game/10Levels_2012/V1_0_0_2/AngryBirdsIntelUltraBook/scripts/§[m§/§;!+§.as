package §[m§
{
   import §,!5§.§7!,§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §2h§.§'!^§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import flash.net.SharedObject;
   import §true§.§ _§;
   
   public class §;!+§
   {
      
      protected static var §=2§:Class;
      
      protected static var §+!,§:Class;
      
      protected static var §7!C§:Class;
      
      private static var §+!q§:Array;
      
      private static var §8[§:Popup = null;
      
      private static var §&!>§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §1&§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §;!+§)
         {
            §=2§ = §!!I§;
            loop0:
            while(true)
            {
               §+!,§ = §[S§;
               while(true)
               {
                  §7!C§ = §5X§;
                  while(!_loc1_)
                  {
                     §+!q§ = [];
                     continue loop0;
                     addr57:
                     if(_loc2_ || _loc2_)
                     {
                        loop5:
                        while(true)
                        {
                           isOpen = false;
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           addr55:
                           while(_loc2_)
                           {
                              §§goto(addr57);
                              continue loop5;
                           }
                           continue loop0;
                        }
                        return;
                        addr74:
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §;!+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function §#![§(param1:String, param2:§'!^§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr248:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      private static function §;'§(param1:String, param2:§'!^§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
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
                  addr92:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(_loc6_)
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                           addr51:
                           if(_loc5_ && _loc3_)
                           {
                              break;
                           }
                           if(true)
                           {
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_ || param2)
                                 {
                                    §§pop().§§slot[4] = new § #§(§,>§.§%2§(§+!,§),currentUIView,§]c§.§ 2§(tutorialName,§,Q§.§<d§),tutorialName);
                                    if(_loc6_ || param1)
                                    {
                                       addr158:
                                       if(tutorialPopup)
                                       {
                                          if(_loc6_ || §;!+§)
                                          {
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    §+!q§.push(tutorialPopup);
                                    §§goto(addr171);
                                 }
                                 §§goto(addr158);
                              }
                              catch(e:Error)
                              {
                                 §§goto(addr158);
                              }
                              addr171:
                           }
                           continue;
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc5_ && param1)
            {
               continue;
            }
            §§pop().§§slot[2] = param2;
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§push(powerUpName);
                  if(_loc6_ || _loc3_)
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                     §§push(§§pop());
                  }
                  continue;
               }
               §§goto(addr62);
            }
            §§goto(addr92);
         }
      }
      
      public static function §4<§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc5_ || param1)
               {
                  addr37:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc5_)
                     {
                        if(!§&!>§)
                        {
                           if(!_loc6_)
                           {
                              §&!>§ = SharedObject.getLocal(storageName);
                              if(!_loc6_)
                              {
                                 addr55:
                                 var _loc3_:int = 0;
                                 if(_loc5_ || param1)
                                 {
                                    var _loc4_:* = §1!_§();
                                    if(_loc5_ || §;!+§)
                                    {
                                       for each(birdName in _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr104:
                                       if(_loc5_ || §;!+§)
                                       {
                                          §&!>§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                          while(true)
                                          {
                                             §&!>§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                             addr155:
                                             while(true)
                                             {
                                                addr125:
                                                §§goto(addr123);
                                             }
                                          }
                                       }
                                       §§goto(addr155);
                                       addr101:
                                    }
                                    while(true)
                                    {
                                       §&!>§.data[birdName] = false;
                                       §§goto(addr101);
                                    }
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr155);
                           }
                           addr123:
                           loop1:
                           while(true)
                           {
                              §&!>§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                              while(true)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §&!>§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop1;
                                       }
                                       continue loop5;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr162);
               }
               catch(e:Error)
               {
               }
               addr162:
               while(false)
               {
                  §§goto(addr125);
               }
               return;
            }
         }
         §§goto(addr37);
      }
      
      private static function §1!_§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § _§.§!6§.slingshot.§?$§)
         {
            if(_loc5_)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §%!w§(param1:§'!^§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(_loc8_)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§push(param2);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           addr363:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(param3);
                                 addr355:
                                 while(!_loc7_)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    while(true)
                                    {
                                       if(isOpen)
                                       {
                                          addr346:
                                          if(_loc8_)
                                          {
                                             return;
                                          }
                                          continue loop3;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  continue loop1;
                  if(!(_loc7_ && param3))
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §>!4§(param1:§'!^§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr99:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
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
                           addr83:
                           while(_loc6_ || §;!+§)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     addr25:
                     if(_loc7_ && param1)
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §1!_§();
                     if(!_loc7_)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              if(isOpen)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    break;
                                 }
                                 addr53:
                                 while(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§goto(addr25);
                                       }
                                       else
                                       {
                                          §§goto(addr58);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr21);
                           }
                           addr40:
                           if(!_loc7_)
                           {
                              return;
                              addr76:
                           }
                           while(_loc6_)
                           {
                              §§goto(addr40);
                           }
                           continue loop2;
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              if(§§pop().§§slot[2])
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(!§&!>§)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §&!>§ = SharedObject.getLocal(storageName);
                                          if(_loc6_)
                                          {
                                             addr307:
                                             var i:int = birdsToShow.length - 1;
                                             addr131:
                                             addr311:
                                             addr306:
                                             addr305:
                                             §§push(§§newactivation());
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().§§slot[5]);
                                                   if(!(_loc7_ && §;!+§))
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(§§pop() < 0)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr168:
                                                                  §&!>§.flush();
                                                                  if(_loc6_ || §;!+§)
                                                                  {
                                                                     if(_loc6_ || §;!+§)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr198:
                                                                              addr201:
                                                                              addr200:
                                                                              §§push(i - 1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 i = §§pop();
                                                                                 addr207:
                                                                                 §§goto(addr131);
                                                                              }
                                                                              §§goto(addr337);
                                                                           }
                                                                           addr336:
                                                                           addr337:
                                                                           var _loc4_:* = §§pop();
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              var _loc5_:* = birdsToShow;
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr377:
                                                                                 for each(birdName in _loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr371:
                                                                                       §#![§(birdName,currentUIView);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           addr380:
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              addr388:
                                                                              §7!S§();
                                                                              §§goto(addr390);
                                                                           }
                                                                           addr390:
                                                                           return;
                                                                           §§push(0);
                                                                           addr312:
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr388);
                                                               }
                                                               addr251:
                                                               §&!>§.data[birdName] = true;
                                                               addr257:
                                                               if(!(_loc7_ && §;!+§))
                                                               {
                                                                  §§goto(addr198);
                                                               }
                                                               addr303:
                                                               §§push(§&!>§.data[birdName] == undefined);
                                                               if(_loc6_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr277:
                                                                     §§pop();
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§&!>§.data[birdName] == false);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr277);
                                                                        addr285:
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr251);
                                                                  }
                                                                  addr212:
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr214:
                                                                     §§pop().§§slot[3].splice(i,1);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(!(_loc7_ && §;!+§))
                                                                        {
                                                                           §§goto(addr198);
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  addr290:
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop().§§slot[3]);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().§§slot[4] = §§pop()[i];
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr290);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr200);
                                             addr304:
                                             addr130:
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr304);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr214);
                        }
                        catch(e:Error)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §!>§.log("Unable to get local storage");
                           }
                           §§goto(addr336);
                        }
                        §§goto(addr388);
                     }
                     §§goto(addr53);
                  }
               }
            }
            if(_loc7_ && param1)
            {
               continue;
            }
            §§push(param2);
            if(!_loc7_)
            {
               §§pop().§§slot[2] = §§pop();
               §§goto(addr76);
            }
            §§goto(addr99);
         }
      }
      
      private static function §7!S§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(isOpen);
            if(_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr95:
                        while(true)
                        {
                           §§push(§+!q§.length > 0);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr94:
                  }
                  loop1:
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           isOpen = true;
                           addr87:
                           while(true)
                           {
                              §8[§ = §+!q§.pop();
                              while(_loc3_ || §;!+§)
                              {
                                 §8[§.open(param1);
                                 if(_loc3_ || param1)
                                 {
                                    break loop1;
                                 }
                              }
                           }
                           addr87:
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr87);
                  }
                  return;
               }
            }
            §§goto(addr94);
         }
         §§goto(addr87);
      }
      
      public static function §=M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(isOpen == true)
            {
               loop0:
               while(true)
               {
                  if(§+!q§.length <= 0)
                  {
                     isOpen = false;
                     while(true)
                     {
                        §§push(§8[§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(true);
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr112:
                        addr112:
                        §§pop().preClose(§§pop());
                        while(true)
                        {
                           isOpen = false;
                           continue loop0;
                        }
                     }
                     addr110:
                     §§goto(addr112);
                     §§push(false);
                  }
                  §§goto(addr110);
               }
            }
            return;
         }
         §§goto(addr112);
      }
   }
}
