package §_-gU§
{
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-ZE§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-qO§.§ in§;
   import flash.net.SharedObject;
   
   public class §_-02s§
   {
      
      protected static var §_-lV§:Class;
      
      protected static var §_-HH§:Class;
      
      protected static var §_-5w§:Class;
      
      private static var §_-0FG§:Array;
      
      private static var §_-4j§:Popup = null;
      
      private static var §_-77§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §_-E-§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-lV§ = §_-9b§;
            loop0:
            while(true)
            {
               §_-HH§ = §_-036§;
               while(true)
               {
                  §_-5w§ = §_-ii§;
                  addr74:
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §_-0FG§ = [];
            do
            {
               §_-4j§ = null;
               do
               {
                  isOpen = false;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc2_));
            
            if(_loc2_)
            {
               break;
            }
            §§goto(addr74);
         }
      }
      
      public function §_-02s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      private static function §_-w9§(param1:String, param2:§_-5q§) : void
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
               while(!_loc6_)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  do
                  {
                     §§push(§§newactivation());
                     while(_loc5_)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              break;
                           }
                           §§pop().§§slot[3] = "";
                           if(!(_loc6_ && param2))
                           {
                              continue loop3;
                           }
                        }
                     }
                     continue loop2;
                  }
                  while(!(_loc5_ || param1));
                  
                  if(!_loc6_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
               continue loop0;
            }
            §§push(§§newactivation());
            if(!(_loc6_ && param1))
            {
               loop6:
               while(true)
               {
                  var _loc4_:* = §§pop().§§slot[1];
                  if(!(_loc6_ && §_-02s§))
                  {
                     §§push("BIRD_BLACK");
                     if(_loc5_ || param2)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && §_-02s§))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(0);
                                 if(_loc5_ || param2)
                                 {
                                 }
                              }
                              else
                              {
                                 addr316:
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    addr319:
                                 }
                                 else
                                 {
                                    addr337:
                                 }
                              }
                           }
                           else
                           {
                              §§push("BIRD_BLUE");
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!_loc6_)
                                          {
                                             addr433:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr184:
                                                   var tutorialName:String = "TUTORIAL_BLACK";
                                                   break;
                                                   addr183:
                                                   addr185:
                                                case 1:
                                                   addr177:
                                                   tutorialName = "TUTORIAL_BLUE";
                                                   break;
                                                   addr176:
                                                   addr178:
                                                case 2:
                                                   §§push(§§newactivation());
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr170:
                                                         §§pop().§§slot[3] = "TUTORIAL_RED";
                                                         break;
                                                         addr171:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr183);
                                                      }
                                                   }
                                                   addr450:
                                                   §§pop().§§slot[4] = new §_-wZ§(§_-ZE§.§_-ve§(§_-lV§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§));
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr497:
                                                      if(tutorialPopup)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr506:
                                                            §_-0FG§.push(tutorialPopup);
                                                            break loop6;
                                                         }
                                                         break loop6;
                                                      }
                                                      break loop6;
                                                      addr482:
                                                   }
                                                   §§goto(addr506);
                                                case 3:
                                                   addr147:
                                                   tutorialName = "TUTORIAL_WHITE";
                                                   addr146:
                                                   if(_loc5_ || §_-02s§)
                                                   {
                                                      break;
                                                   }
                                                   break loop6;
                                                case 4:
                                                   addr114:
                                                   §§push(§§newactivation());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr129:
                                                         §§push("TUTORIAL_YELLOW");
                                                         if(!(_loc6_ && §_-02s§))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               addr139:
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr176);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr147);
                                                case 5:
                                                   §§push(§§newactivation());
                                                   if(!_loc6_)
                                                   {
                                                      addr90:
                                                      §§push("TUTORIAL_BOOMERANG");
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§pop().§§slot[3] = §§pop();
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            break loop6;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr129);
                                                      }
                                                   }
                                                   continue;
                                                   §§goto(addr170);
                                                   break;
                                                case 6:
                                                   addr75:
                                                   §§push(§§newactivation());
                                                   §§push("TUTORIAL_BIG_BROTHER");
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         break loop6;
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr90);
                                                   }
                                                case 7:
                                                   §§push(§§newactivation());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push("TUTORIAL_MIGHTYEAGLE");
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(!(_loc6_ && §_-02s§))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr178);
                                                                  }
                                                               }
                                                               §§goto(addr482);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr75);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr114);
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr75);
                                                      }
                                                   }
                                                   §§goto(addr497);
                                                default:
                                                   return;
                                             }
                                             try
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr450);
                                                }
                                                §§goto(addr497);
                                             }
                                             catch(e:Error)
                                             {
                                                §§goto(addr497);
                                             }
                                             §§goto(addr497);
                                          }
                                          else
                                          {
                                             §§goto(addr319);
                                          }
                                       }
                                       else
                                       {
                                          addr413:
                                          §§push(6);
                                          if(!_loc6_)
                                          {
                                             addr416:
                                          }
                                          §§goto(addr433);
                                       }
                                       §§goto(addr433);
                                    }
                                    else
                                    {
                                       §§push("BIRD_RED");
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc6_ && §_-02s§))
                                                {
                                                   §§goto(addr316);
                                                }
                                                else
                                                {
                                                   §§goto(addr413);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_WHITE");
                                                if(_loc5_)
                                                {
                                                   addr323:
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      addr326:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(3);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr337);
                                                            }
                                                            else
                                                            {
                                                               addr388:
                                                               §§goto(addr433);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr413);
                                                         }
                                                         §§goto(addr433);
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_YELLOW");
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                               addr349:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr433);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr416);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr380:
                                                                     §§push(5);
                                                                     if(_loc5_ || §_-02s§)
                                                                     {
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr433);
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_GREEN");
                                                                  if(_loc5_)
                                                                  {
                                                                     addr364:
                                                                     §§push(_loc4_);
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        addr372:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc6_ && §_-02s§))
                                                                           {
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§goto(addr433);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("BIRD_REDBIG");
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr405:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr413);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr419:
                                                                                    if("BIRD_SARDINE" !== _loc4_)
                                                                                    {
                                                                                       §§goto(addr433);
                                                                                       §§push(8);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                           }
                                                                           §§goto(addr419);
                                                                        }
                                                                        §§goto(addr433);
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr433);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr323);
                                    }
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr364);
                           }
                           §§goto(addr433);
                        }
                        §§goto(addr405);
                     }
                     §§goto(addr323);
                  }
                  §§goto(addr316);
               }
               return;
            }
            §§goto(addr497);
         }
      }
      
      private static function §_-XH§(param1:String, param2:§_-5q§) : void
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
                  §§push(param1);
                  addr84:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     loop4:
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = param2;
                              addr56:
                              while(!(_loc5_ && _loc3_))
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        try
                        {
                           addr91:
                           §§push(§§newactivation());
                           if(!(_loc5_ && §_-02s§))
                           {
                              §§pop().§§slot[4] = new §_-hf§(§_-ZE§.§_-ve§(§_-HH§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§),tutorialName);
                              if(_loc6_)
                              {
                                 addr143:
                                 if(tutorialPopup)
                                 {
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §_-0FG§.push(tutorialPopup);
                              §§goto(addr151);
                           }
                           §§goto(addr143);
                        }
                        catch(e:Error)
                        {
                           §§goto(addr143);
                        }
                        addr151:
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public static function §_-Yn§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(_loc6_ || _loc2_)
            {
               §§pop().§§slot[2] = §§pop();
               if(!_loc5_)
               {
                  addr38:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!(_loc5_ && §_-02s§))
                     {
                        if(!§_-77§)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §_-77§ = SharedObject.getLocal(storageName);
                              addr166:
                              if(_loc6_ || _loc3_)
                              {
                              }
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §_-77§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                    do
                                    {
                                       §_-77§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                    }
                                    while(_loc5_ && _loc2_);
                                    
                                    if(!(_loc6_ || §_-02s§))
                                    {
                                       break;
                                    }
                                    addr134:
                                    if(_loc6_ || §_-02s§)
                                    {
                                       if(true)
                                       {
                                          return;
                                       }
                                       addr187:
                                       addr173:
                                       continue;
                                    }
                                    addr172:
                                    while(true)
                                    {
                                       §_-77§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                       break loop3;
                                       §§goto(addr134);
                                    }
                                 }
                              }
                              addr166:
                           }
                           §§goto(addr166);
                        }
                        var _loc3_:int = 0;
                        if(_loc6_)
                        {
                           var _loc4_:* = §_-06X§();
                           if(!_loc6_)
                           {
                           }
                           for each(birdName in _loc4_)
                           {
                              if(_loc6_)
                              {
                                 §_-77§.data[birdName] = false;
                              }
                           }
                        }
                        if(!_loc5_)
                        {
                           §_-77§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr173);
               }
               catch(e:Error)
               {
               }
               §§goto(addr187);
            }
         }
         §§goto(addr38);
      }
      
      private static function §_-06X§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-pR§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § in§.§_-Dc§.slingshot.§_-j9§)
         {
            if(_loc6_ || _loc1_)
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
      
      public static function §_-5a§(param1:§_-5q§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[6] = 0;
            addr373:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
      
      public static function §_-09P§(param1:§_-5q§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[5] = 0;
                     addr91:
                     while(true)
                     {
                        §§push(§§newactivation());
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      private static function §_-xQ§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr100:
                        while(true)
                        {
                           §§push(§_-0FG§.length > 0);
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr99:
                  }
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        isOpen = true;
                        while(_loc3_)
                        {
                           §_-4j§ = §_-0FG§.pop();
                           do
                           {
                              §_-4j§.open(param1);
                           }
                           while(_loc2_ && param1);
                           
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr100);
                     }
                     break;
                  }
                  return;
               }
            }
            §§goto(addr99);
         }
         §§goto(addr54);
      }
      
      public static function §_-fl§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(isOpen == true)
            {
               while(true)
               {
                  if(§_-0FG§.length <= 0)
                  {
                     isOpen = false;
                     loop1:
                     for(; !_loc1_; §§pop().preClose(§§pop()),if(_loc1_ && _loc2_)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        §§goto(addr20);
                     })
                     {
                        if(!(_loc1_ && §_-02s§))
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(§_-4j§);
                              if(!_loc1_)
                              {
                                 §§push(true);
                                 if(_loc2_ || _loc1_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr110:
                                 §§push(false);
                              }
                              §§pop().preClose(§§pop());
                           }
                           isOpen = false;
                           addr101:
                           while(true)
                           {
                              §_-xQ§(false);
                              break loop1;
                           }
                           addr101:
                        }
                        §§goto(addr101);
                     }
                     continue;
                  }
                  §§goto(addr110);
               }
            }
            addr20:
            return;
         }
         §§goto(addr101);
      }
   }
}
