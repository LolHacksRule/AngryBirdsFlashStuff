package §9#§
{
   import §+&§.§`o§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §6z§.§`!<§;
   import flash.net.SharedObject;
   
   public class §2!E§
   {
      
      protected static var §'U§:Class;
      
      protected static var §[K§:Class;
      
      protected static var §1d§:Class;
      
      private static var §`!8§:Array;
      
      private static var §%!1§:Popup = null;
      
      private static var §'!?§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §'!X§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'U§ = §4a§;
         }
         while(true)
         {
            §[K§ = §^!x§;
            loop1:
            while(true)
            {
               §1d§ = §0;§;
               do
               {
                  §`!8§ = [];
                  continue loop1;
               }
               while(_loc1_ && _loc1_);
               
               return;
            }
         }
      }
      
      public function §2!E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      private static function §?!<§(param1:String, param2:§ C§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr221:
                        while(!_loc5_)
                        {
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      private static function §`d§(param1:String, param2:§ C§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                  addr76:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                           §§goto(addr47);
                        }
                     }
                     continue loop1;
                  }
               }
            }
            if(_loc6_ && _loc3_)
            {
               continue;
            }
            §§push(powerUpName);
            if(!_loc6_)
            {
               if(_loc5_ || param1)
               {
                  addr44:
                  §§pop().§§slot[3] = §§pop();
                  if(_loc5_)
                  {
                     addr47:
                     if(_loc6_)
                     {
                        break loop5;
                     }
                     if(true)
                     {
                        try
                        {
                           §§push(§§newactivation());
                           if(_loc5_ || param2)
                           {
                              §§pop().§§slot[4] = new §;!-§(§`!<§.§ !0§(§[K§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§),tutorialName);
                              if(_loc5_ || §2!E§)
                              {
                                 addr142:
                                 if(tutorialPopup)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §`!8§.push(tutorialPopup);
                              §§goto(addr155);
                           }
                           §§goto(addr142);
                        }
                        catch(e:Error)
                        {
                           §§goto(addr142);
                        }
                        addr155:
                     }
                     continue loop5;
                     return;
                  }
                  §§goto(addr62);
               }
               §§goto(addr76);
            }
            §§goto(addr44);
         }
      }
      
      public static function §9@§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc6_)
               {
                  addr33:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc6_)
                     {
                        if(!§'!?§)
                        {
                           if(_loc6_ || param1)
                           {
                              §'!?§ = SharedObject.getLocal(storageName);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr61:
                                 var _loc3_:int = 0;
                                 if(_loc6_ || _loc3_)
                                 {
                                    var _loc4_:* = §&!U§();
                                    if(!(_loc5_ && param1))
                                    {
                                       for each(birdName in _loc4_)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             continue;
                                          }
                                       }
                                       addr115:
                                       if(_loc6_)
                                       {
                                          §'!?§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                       }
                                       while(true)
                                       {
                                          §'!?§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                          addr156:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §'!?§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                                §§goto(addr149);
                                             }
                                          }
                                       }
                                       addr112:
                                    }
                                    while(true)
                                    {
                                       §'!?§.data[birdName] = false;
                                       §§goto(addr112);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr156);
                           }
                        }
                        §§goto(addr61);
                     }
                     addr149:
                  }
                  §§goto(addr163);
               }
               catch(e:Error)
               {
               }
               addr163:
               while(true)
               {
                  §'!?§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop4;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      private static function §&!U§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`o§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §4!]§.§8C§.slingshot.§9q§)
         {
            if(_loc6_)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(_loc5_ && §2!E§)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         return _loc1_;
      }
      
      public static function §%!S§(param1:§ C§, param2:String, param3:String) : void
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
               while(!_loc7_)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§push(param2);
                        addr342:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           addr343:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(param3);
                                 addr330:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    addr331:
                                    while(_loc8_ || param1)
                                    {
                                       if(!isOpen)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       addr326:
                                       addr326:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
                  §§push(powerUpName);
                  if(!(_loc7_ && param3))
                  {
                     if(_loc8_ || §2!E§)
                     {
                        if(_loc8_ || param2)
                        {
                           addr302:
                           §§pop().§§slot[4] = §§pop();
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 if(_loc7_ && param1)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr343);
                        }
                        §§goto(addr342);
                     }
                     §§goto(addr330);
                  }
                  §§goto(addr302);
               }
               continue loop0;
            }
         }
      }
      
      public static function §5!b§(param1:§ C§, param2:String = null) : void
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
                     loop4:
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(!_loc7_)
                              {
                                 §§push(param2);
                                 if(_loc6_ || param1)
                                 {
                                    §§pop().§§slot[2] = §§pop();
                                    loop8:
                                    while(_loc6_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(isOpen)
                                          {
                                             if(!(_loc7_ && §2!E§))
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                             while(!_loc7_)
                                             {
                                                §§pop().§§slot[3] = §&!U§();
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §'e§(param1:Boolean = true) : void
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
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr104:
                        while(true)
                        {
                           §§push(§`!8§.length > 0);
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr103:
                  }
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        isOpen = true;
                        while(!_loc3_)
                        {
                           §%!1§ = §`!8§.pop();
                           while(!(_loc3_ && _loc3_))
                           {
                              §%!1§.open(param1);
                              if(_loc2_ || _loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                     break;
                  }
                  return;
               }
               §§goto(addr103);
            }
         }
         §§goto(addr56);
      }
      
      public static function §]!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(isOpen == true)
            {
               loop0:
               do
               {
                  if(§`!8§.length <= 0)
                  {
                     isOpen = false;
                     while(_loc1_)
                     {
                        if(!(_loc2_ && §2!E§))
                        {
                           §§push(§%!1§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(true);
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().preClose(§§pop());
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 §§goto(addr105);
                              }
                              §§goto(addr106);
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                        }
                        §'e§(false);
                        break;
                     }
                     §§goto(addr19);
                  }
                  if(_loc1_)
                  {
                     addr105:
                     §%!1§.preClose(false);
                  }
                  isOpen = false;
                  addr106:
                  §§goto(addr93);
               }
               while(_loc2_);
               
            }
            addr19:
            return;
         }
         §§goto(addr105);
      }
   }
}
