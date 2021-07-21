package §+h§
{
   import §%c§.§=!X§;
   import §&"5§.§4!h§;
   import §&"5§.§7!P§;
   import §1"2§.§'s§;
   import §5!V§.§>n§;
   import §=!M§.§9!P§;
   import §=!M§.§?!1§;
   import flash.net.SharedObject;
   
   public class §5h§
   {
      
      protected static var §#x§:Class;
      
      protected static var § !;§:Class;
      
      protected static var §4"3§:Class;
      
      private static var §;S§:Array;
      
      private static var §##§:Popup = null;
      
      private static var §@!$§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §1§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#x§ = §-'§;
            loop0:
            while(true)
            {
               § !;§ = §+! §;
               while(true)
               {
                  §4"3§ = §use §;
                  loop2:
                  while(!_loc1_)
                  {
                     §;S§ = [];
                     while(!_loc1_)
                     {
                        §##§ = null;
                        while(_loc2_)
                        {
                           isOpen = false;
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 return;
                                 addr47:
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §5h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      private static function §9!w§(param1:String, param2:§'s§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(_loc6_)
                     {
                        §§pop().§§slot[2] = param2;
                        while(_loc6_ || param1)
                        {
                           continue loop4;
                           §§pop().§§slot[3] = "";
                           §§push(§§newactivation());
                           if(_loc5_)
                           {
                              continue loop4;
                           }
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           §§goto(addr159);
                           if(_loc6_ || _loc3_)
                           {
                              if(_loc6_ || param2)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  §§push(§§newactivation());
                  if(_loc6_ || param2)
                  {
                     addr219:
                     var _loc4_:* = §§pop().§§slot[1];
                     if(_loc6_ || param2)
                     {
                        if("BIRD_BLACK" === _loc4_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 addr342:
                                 switch(§§pop())
                                 {
                                    case 3:
                                       §§push(§§newactivation());
                                       if(!(_loc6_ || param1))
                                       {
                                          §§goto(addr219);
                                       }
                                       §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          break;
                                          addr145:
                                       }
                                       §§goto(addr409);
                                    case 6:
                                       §§push(§§newactivation());
                                       if(_loc5_)
                                       {
                                          §§goto(addr219);
                                       }
                                       if(!_loc5_)
                                       {
                                          §§pop().§§slot[3] = "TUTORIAL_BIG_BROTHER";
                                          if(!(_loc5_ && §5h§))
                                          {
                                             break;
                                          }
                                          addr83:
                                          if(!(_loc5_ && param2))
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr79:
                                          if(_loc6_)
                                          {
                                             §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                             §§goto(addr83);
                                          }
                                          else
                                          {
                                             addr150:
                                             §§pop().§§slot[3] = "TUTORIAL_BLACK";
                                          }
                                       }
                                       break;
                                    case 0:
                                       §§goto(addr150);
                                    case 1:
                                       addr143:
                                       var tutorialName:String = "TUTORIAL_BLUE";
                                       §§goto(addr145);
                                    case 2:
                                       addr134:
                                       §§push(§§newactivation());
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[3] = "TUTORIAL_RED";
                                          addr138:
                                          break;
                                          addr138:
                                       }
                                       else
                                       {
                                          §§goto(addr143);
                                       }
                                       break;
                                    case 4:
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && param1))
                                       {
                                          §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr409);
                                       }
                                       addr354:
                                       §§pop().§§slot[4] = new §?0§(§?!1§.§ !?§(§#x§),currentUIView,§4!h§.§ !r§(tutorialName,§7!P§.§2=§));
                                       if(!_loc5_)
                                       {
                                          addr386:
                                          if(tutorialPopup)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §;S§.push(tutorialPopup);
                                             }
                                          }
                                       }
                                       §§goto(addr409);
                                    case 5:
                                       §§goto(addr79);
                                    default:
                                       §§newactivation();
                                       return;
                                    case 7:
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && §5h§))
                                          {
                                             §§pop().§§slot[3] = "TUTORIAL_MIGHTYEAGLE";
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr138);
                                             }
                                             addr409:
                                             return;
                                          }
                                          §§goto(addr134);
                                          §§goto(addr138);
                                       }
                                       §§goto(addr386);
                                 }
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr354);
                                    }
                                 }
                                 catch(e:Error)
                                 {
                                    §§goto(addr386);
                                 }
                                 §§goto(addr386);
                              }
                              addr297:
                              §§goto(addr342);
                           }
                           addr294:
                           §§push(4);
                           if(_loc6_)
                           {
                              §§goto(addr297);
                           }
                           §§goto(addr342);
                        }
                        if("BIRD_BLUE" === _loc4_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(1);
                              if(_loc6_ || §5h§)
                              {
                                 §§goto(addr342);
                              }
                              addr274:
                              §§goto(addr342);
                           }
                           addr280:
                           §§push(3);
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr342);
                           }
                           §§goto(addr297);
                        }
                        if("BIRD_RED" === _loc4_)
                        {
                           if(!(_loc5_ && §5h§))
                           {
                              §§push(2);
                              if(_loc6_)
                              {
                                 §§goto(addr274);
                              }
                              addr325:
                              §§goto(addr342);
                           }
                           addr317:
                           §§push(6);
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr325);
                           }
                           addr337:
                           §§goto(addr342);
                        }
                        if("BIRD_WHITE" === _loc4_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr280);
                           }
                           addr329:
                           §§push(7);
                           if(!(_loc5_ && §5h§))
                           {
                              §§goto(addr337);
                           }
                           §§goto(addr342);
                        }
                        if("BIRD_YELLOW" === _loc4_)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr294);
                           }
                           §§goto(addr329);
                        }
                        if("BIRD_GREEN" === _loc4_)
                        {
                           if(_loc6_)
                           {
                              addr303:
                              §§push(5);
                              if(!_loc5_)
                              {
                                 §§goto(addr342);
                              }
                              §§goto(addr325);
                           }
                           §§goto(addr317);
                        }
                        if("BIRD_REDBIG" === _loc4_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr317);
                           }
                           §§goto(addr329);
                        }
                        if("BIRD_SARDINE" === _loc4_)
                        {
                           §§goto(addr329);
                        }
                        §§goto(addr342);
                        §§push(8);
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr354);
               }
            }
         }
      }
      
      private static function §"!p§(param1:String, param2:§'s§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr95:
            while(true)
            {
               §§push(§§newactivation());
               addr88:
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr89:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr90:
                     while(true)
                     {
                        addr53:
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr55:
                           while(!_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        try
                        {
                           addr96:
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[4] = new §=!5§(§?!1§.§ !?§(§ !;§),currentUIView,§4!h§.§ !r§(tutorialName,§7!P§.§2=§),tutorialName);
                              if(!_loc5_)
                              {
                                 addr133:
                                 if(tutorialPopup)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §;S§.push(tutorialPopup);
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr133);
                        }
                        catch(e:Error)
                        {
                           addr119:
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
      }
      
      public static function §]7§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || param1)
         {
            §§push(null);
            if(_loc5_ || _loc2_)
            {
               §§pop().§§slot[2] = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  addr47:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!_loc6_)
                     {
                        if(!§@!$§)
                        {
                           if(_loc5_ || param1)
                           {
                              addr62:
                              §@!$§ = SharedObject.getLocal(storageName);
                              if(_loc5_ || _loc2_)
                              {
                                 addr75:
                                 var _loc3_:int = 0;
                                 if(_loc5_ || _loc2_)
                                 {
                                    var _loc4_:* = §,$§();
                                    if(!_loc5_)
                                    {
                                    }
                                    for each(birdName in _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §@!$§.data[birdName] = false;
                                       }
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    §@!$§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                    addr122:
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §@!$§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                    loop1:
                                    while(true)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §@!$§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                          do
                                          {
                                             §@!$§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                          }
                                          while(!(_loc5_ || _loc3_));
                                          
                                          if(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                addr186:
                                                return;
                                                addr140:
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       addr162:
                                       §§goto(addr186);
                                    }
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr162);
               }
               catch(e:Error)
               {
               }
               §§goto(addr186);
            }
         }
         §§goto(addr47);
      }
      
      private static function §,$§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>n§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §=!X§.§!'§.slingshot.mBirds)
         {
            if(!(_loc5_ && §5h§))
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §=-§(param1:§'s§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[6] = 0;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr317:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public static function §]U§(param1:§'s§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr95:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop0;
                     }
                     addr25:
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §,$§();
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && param1))
                        {
                           if(false)
                           {
                              loop9:
                              while(!isOpen)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc7_)
                                    {
                                       §§goto(addr25);
                                    }
                                    loop7:
                                    while(_loc6_)
                                    {
                                       §§push(param2);
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       §§pop().§§slot[2] = §§pop();
                                       while(true)
                                       {
                                          continue loop9;
                                          addr53:
                                          if(_loc7_ && param2)
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                continue loop10;
                                             }
                                             continue loop2;
                                          }
                                          addr90:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              addr50:
                              if(_loc6_)
                              {
                                 return;
                              }
                              §§goto(addr95);
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || param1)
                              {
                                 if(§§pop().§§slot[2])
                                 {
                                    if(_loc6_)
                                    {
                                       if(!§@!$§)
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§goto(addr122);
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr309);
                                    }
                                    addr122:
                                    §@!$§ = SharedObject.getLocal(storageName);
                                    if(!_loc7_)
                                    {
                                       addr312:
                                       var i:int = birdsToShow.length - 1;
                                       addr131:
                                       addr316:
                                       addr311:
                                       addr310:
                                       §§push(§§newactivation());
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc6_ || §5h§)
                                             {
                                                §§push(§§pop().§§slot[5]);
                                                if(!(_loc7_ && §5h§))
                                                {
                                                   if(§§pop() < 0)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §@!$§.flush();
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr169:
                                                                  addr171:
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_ || §5h§)
                                                                  {
                                                                     §§push(§§pop().§§slot[5]);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           i = §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr131);
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                        §§goto(addr342);
                                                                     }
                                                                     addr342:
                                                                     var _loc4_:* = §§pop();
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        var _loc5_:* = birdsToShow;
                                                                        if(!_loc6_)
                                                                        {
                                                                        }
                                                                        addr377:
                                                                        for each(birdName in _loc5_)
                                                                        {
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §9!w§(birdName,currentUIView);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                     }
                                                                     if(_loc7_ && _loc3_)
                                                                     {
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().§§slot[3]);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§pop().§§slot[4] = §§pop()[i];
                                                                        §§push(§@!$§.data[birdName] == undefined);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr286:
                                                                              §§pop();
                                                                              §§push(§@!$§.data[birdName] == false);
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                              }
                                                                              §§goto(addr286);
                                                                              addr287:
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr255:
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 addr262:
                                                                                 §@!$§.data[birdName] = true;
                                                                                 §§goto(addr169);
                                                                                 addr268:
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           addr214:
                                                                           birdsToShow.splice(i,1);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr169);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                        §§goto(addr286);
                                                                        addr308:
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               addr341:
                                                               §§goto(addr342);
                                                               §§push(0);
                                                               addr317:
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   §§goto(addr169);
                                                   §§push(§§newactivation());
                                                }
                                                §§goto(addr342);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr171);
                                       addr309:
                                    }
                                    addr398:
                                    §<" §();
                                    return;
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr214);
                           }
                           catch(e:Error)
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §9!P§.log("Unable to get local storage");
                              }
                           }
                           §§goto(addr341);
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
      }
      
      private static function §<" §(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(isOpen);
            if(!_loc2_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr105:
                        while(true)
                        {
                           §§push(§;S§.length > 0);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr104:
                  }
                  loop1:
                  while(§§pop())
                  {
                     if(!(_loc2_ && param1))
                     {
                        isOpen = true;
                        addr97:
                        while(true)
                        {
                           §##§ = §;S§.pop();
                           do
                           {
                              §##§.open(param1);
                           }
                           while(!(_loc3_ || param1));
                           
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc2_ && §5h§))
                           {
                              break loop1;
                           }
                           §§goto(addr105);
                        }
                        addr97:
                     }
                     §§goto(addr97);
                  }
                  return;
               }
            }
            §§goto(addr104);
         }
         §§goto(addr97);
      }
      
      public static function §7h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(isOpen == true)
            {
               if(!_loc1_)
               {
                  if(§;S§.length <= 0)
                  {
                     isOpen = false;
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§push(§##§);
                           if(!(_loc2_ || _loc1_))
                           {
                              break;
                           }
                           §§push(true);
                           if(!_loc1_)
                           {
                              §§pop().preClose(§§pop());
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr20:
                                 return;
                                 addr56:
                              }
                              while(_loc1_)
                              {
                                 while(!(_loc2_ || §5h§))
                                 {
                                 }
                                 §<" §(false);
                              }
                              §§goto(addr20);
                              §§goto(addr20);
                           }
                           else
                           {
                              addr111:
                              §§pop().preClose(§§pop());
                           }
                           while(true)
                           {
                              isOpen = false;
                              §§goto(addr82);
                           }
                        }
                     }
                     addr110:
                     §§goto(addr111);
                     §§push(false);
                  }
               }
               §§goto(addr110);
               §§push(§##§);
            }
            §§goto(addr20);
         }
         §§goto(addr56);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §5h§)
         {
            §§push(§##§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || §5h§)
                  {
                     addr56:
                     §##§.preClose(false);
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
   }
}
