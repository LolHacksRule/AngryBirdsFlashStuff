package §'!s§
{
   import §#^§.§7!A§;
   import §6!D§.§0Y§;
   import §6!D§.§9R§;
   import §6o§.§+!k§;
   import §6o§.§5!C§;
   import §9"!§.§;!M§;
   import §]!A§.;
   import flash.net.SharedObject;
   
   public class §'N§
   {
      
      protected static var §8!c§:Class;
      
      protected static var §=!c§:Class;
      
      protected static var §,!1§:Class;
      
      private static var §!%§:Array;
      
      private static var §4<§:Popup = null;
      
      private static var § !6§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §+!-§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!c§ = §?=§;
            while(true)
            {
               §=!c§ = §2"'§;
               addr91:
               while(_loc2_)
               {
                  §,!1§ = §`"1§;
               }
            }
         }
         loop2:
         while(true)
         {
            §!%§ = [];
            while(!_loc1_)
            {
               §4<§ = null;
               continue loop2;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
            §§goto(addr91);
         }
      }
      
      public function §'N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function §?!W§(param1:String, param2:§7!A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr232:
                  addr213:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  §§push(§§newactivation());
                  if(_loc5_ || param1)
                  {
                     var _loc4_:* = §§pop().§§slot[1];
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push("BIRD_BLACK");
                        if(_loc5_ || param1)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ && §'N§))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr285:
                                    §§push(0);
                                    if(_loc6_ && _loc3_)
                                    {
                                       addr362:
                                    }
                                 }
                                 else
                                 {
                                    addr313:
                                    §§push(1);
                                    if(_loc6_)
                                    {
                                       addr334:
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("BIRD_BLUE");
                                 if(_loc5_ || param1)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr313);
                                          }
                                          else
                                          {
                                             addr354:
                                             §§push(3);
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr362);
                                             }
                                             else
                                             {
                                                addr448:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      addr194:
                                                      var tutorialName:String = "TUTORIAL_BLACK";
                                                      try
                                                      {
                                                         addr457:
                                                         §§push(§§newactivation());
                                                         if(_loc5_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         addr512:
                                                         if(§§pop().§§slot[4])
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr521:
                                                               §!%§.push(tutorialPopup);
                                                            }
                                                         }
                                                      }
                                                      catch(e:Error)
                                                      {
                                                         addr511:
                                                         §§goto(addr512);
                                                      }
                                                      return;
                                                      addr193:
                                                      addr195:
                                                   case 1:
                                                      addr179:
                                                      §§push(§§newactivation());
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr187:
                                                         §§pop().§§slot[3] = "TUTORIAL_BLUE";
                                                         addr188:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr457);
                                                   case 2:
                                                      §§push(§§newactivation());
                                                      if(_loc5_ || §'N§)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr173:
                                                            §§pop().§§slot[3] = "TUTORIAL_RED";
                                                            addr174:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      break;
                                                   case 3:
                                                      addr136:
                                                      §§push(§§newactivation());
                                                      §§push("TUTORIAL_WHITE");
                                                      if(_loc5_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr173);
                                                      }
                                                   case 4:
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         addr115:
                                                         §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                                         addr116:
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!(_loc5_ || param2))
                                                            {
                                                               §§goto(addr195);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      break;
                                                   case 5:
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         addr83:
                                                         §§push("TUTORIAL_BOOMERANG");
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && §'N§))
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     §§goto(addr116);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr136);
                                                            }
                                                            §§goto(addr457);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                      }
                                                      §§goto(addr457);
                                                   case 6:
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         addr67:
                                                         §§pop().§§slot[3] = "TUTORIAL_BIG_BROTHER";
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§goto(addr457);
                                                         }
                                                         §§goto(addr521);
                                                      }
                                                      break;
                                                   case 7:
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push("TUTORIAL_MIGHTYEAGLE");
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_ || §'N§)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().§§slot[3] = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                        §§goto(addr521);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr194);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr187);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr83);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr67);
                                                            }
                                                            §§goto(addr521);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                      }
                                                      §§goto(addr457);
                                                   default:
                                                      return;
                                                }
                                                §§pop().§§slot[4] = new §'!Q§(§5!C§.§9G§(§8!c§),currentUIView,§9R§.§!=§(tutorialName,§0Y§.§;"§));
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§goto(addr511);
                                                }
                                                §§goto(addr194);
                                                addr443:
                                             }
                                             §§goto(addr448);
                                          }
                                       }
                                       else
                                       {
                                          §§push("BIRD_RED");
                                          if(_loc5_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(2);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr334);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr382:
                                                      §§push(4);
                                                      if(_loc6_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr448);
                                                }
                                                else
                                                {
                                                   §§push("BIRD_WHITE");
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr351:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr354);
                                                            }
                                                            else
                                                            {
                                                               addr405:
                                                               §§push(5);
                                                               if(_loc6_)
                                                               {
                                                                  addr431:
                                                               }
                                                               §§goto(addr448);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("BIRD_YELLOW");
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr371:
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr379:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr382);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr405);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("BIRD_GREEN");
                                                                     if(_loc6_)
                                                                     {
                                                                     }
                                                                     addr433:
                                                                     if(§§pop() === _loc4_)
                                                                     {
                                                                        addr435:
                                                                        §§push(7);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                        }
                                                                        §§goto(addr448);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr448);
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               addr397:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc6_ && §'N§))
                                                                  {
                                                                     §§goto(addr405);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr428:
                                                                     §§push(6);
                                                                     if(_loc5_)
                                                                     {
                                                                     }
                                                                     §§goto(addr448);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_REDBIG");
                                                                  if(_loc5_ || §'N§)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr420:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§goto(addr428);
                                                                           }
                                                                           §§goto(addr448);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr433);
                                                                           §§push("BIRD_SARDINE");
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               §§goto(addr448);
                                                            }
                                                            §§push(_loc4_);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         §§goto(addr448);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   §§goto(addr371);
                                                }
                                             }
                                             §§goto(addr351);
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr448);
                                    }
                                 }
                                 §§goto(addr371);
                              }
                              §§goto(addr448);
                           }
                           §§goto(addr351);
                        }
                        §§goto(addr433);
                     }
                     §§goto(addr285);
                  }
                  §§goto(addr457);
               }
            }
         }
      }
      
      private static function §5"8§(param1:String, param2:§7!A§) : void
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
               continue loop0;
            }
         }
      }
      
      public static function §5"3§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(null);
            if(_loc5_)
            {
               §§pop().§§slot[2] = §§pop();
               if(!(_loc6_ && _loc3_))
               {
                  addr37:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        if(!§ !6§)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              § !6§ = SharedObject.getLocal(storageName);
                              if(!_loc6_)
                              {
                                 addr65:
                                 var _loc3_:int = 0;
                                 if(!_loc6_)
                                 {
                                    var _loc4_:* = §0!"§();
                                    if(_loc5_ || _loc2_)
                                    {
                                       for each(birdName in _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr109:
                                       if(_loc5_)
                                       {
                                          § !6§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                                          loop6:
                                          while(true)
                                          {
                                             § !6§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                                             addr153:
                                             addr160:
                                             while(!(_loc5_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                addr130:
                                                while(true)
                                                {
                                                   § !6§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                                                   addr136:
                                                   §§goto(addr167);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr130);
                                          }
                                          §§goto(addr167);
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          § !6§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                                          if(!(_loc5_ || §'N§))
                                          {
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr167:
                                       return;
                                       addr106:
                                    }
                                    while(true)
                                    {
                                       § !6§.data[birdName] = false;
                                       §§goto(addr106);
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr167);
               }
               catch(e:Error)
               {
               }
               §§goto(addr167);
            }
         }
         §§goto(addr37);
      }
      
      private static function §0!"§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#6§.§6!z§.slingshot.§ L§)
         {
            if(!(_loc5_ && §'N§))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(_loc6_ || _loc1_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §0!J§(param1:§7!A§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[6] = 0;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr363:
                  while(!_loc7_)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  continue loop1;
               }
            }
            if(!(_loc8_ || §'N§))
            {
               continue;
            }
            §§push(param2);
            loop5:
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop6:
               while(true)
               {
                  §§push(§§newactivation());
                  loop7:
                  while(true)
                  {
                     §§push(param3);
                     addr334:
                     while(_loc8_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        while(_loc8_)
                        {
                           if(isOpen)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop7;
                        }
                        continue loop6;
                     }
                     continue loop5;
                  }
               }
            }
         }
      }
      
      public static function showTutorials(param1:§7!A§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
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
                     while(!(_loc7_ && param1))
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[1] = param1;
                           addr91:
                           while(!(_loc7_ && _loc3_))
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                     if(!(_loc6_ || param2))
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     §§pop().§§slot[3] = §0!"§();
                     if(!(_loc7_ && param2))
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           if(!_loc7_)
                           {
                              if(false)
                              {
                                 §§goto(addr61);
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc7_ && param2))
                                 {
                                    if(§§pop().§§slot[2])
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(!§ !6§)
                                          {
                                             if(!(_loc7_ && §'N§))
                                             {
                                                § !6§ = SharedObject.getLocal(storageName);
                                                if(_loc6_)
                                                {
                                                   addr335:
                                                   var i:int = birdsToShow.length - 1;
                                                   addr333:
                                                   addr334:
                                                   addr332:
                                                   if(!_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr420);
                                                }
                                                addr287:
                                                § !6§.data[birdName] = true;
                                                addr220:
                                                addr293:
                                                §§push(§§newactivation());
                                                if(!_loc7_)
                                                {
                                                   addr226:
                                                   i = §§pop().§§slot[5] - 1;
                                                   addr229:
                                                   addr225:
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr151:
                                                      §§push(§§newactivation());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr160:
                                                         §§push(§§pop().§§slot[5]);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(§§pop() < 0)
                                                                  {
                                                                     if(!(_loc7_ && §'N§))
                                                                     {
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              § !6§.flush();
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       addr362:
                                                                                       var _loc4_:int = 0;
                                                                                       addr361:
                                                                                       if(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          var _loc5_:* = birdsToShow;
                                                                                          if(_loc7_ && param1)
                                                                                          {
                                                                                          }
                                                                                          addr412:
                                                                                          for each(birdName in _loc5_)
                                                                                          {
                                                                                             if(!(_loc7_ && param1))
                                                                                             {
                                                                                                §?!W§(birdName,currentUIView);
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr418:
                                                                                          §>!]§();
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                       addr420:
                                                                                       return;
                                                                                       addr342:
                                                                                    }
                                                                                    addr305:
                                                                                    §§push(§ !6§.data[birdName] == false);
                                                                                    if(!(_loc7_ && §'N§))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr285:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          addr241:
                                                                                          §§push(§§newactivation());
                                                                                          if(!(_loc7_ && §'N§))
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§pop().§§slot[3].splice(i,1);
                                                                                                addr260:
                                                                                                if(_loc6_ || §'N§)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr287);
                                                                                             }
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§§pop().§§slot[3]);
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§pop().§§slot[4] = §§pop()[i];
                                                                                                addr302:
                                                                                                §§push(§ !6§.data[birdName] == undefined);
                                                                                                if(!(§ !6§.data[birdName] == undefined))
                                                                                                {
                                                                                                   addr304:
                                                                                                   §§pop();
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                §§goto(addr285);
                                                                                                addr331:
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr304);
                                                                                 }
                                                                                 §§goto(addr229);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr331);
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  §§goto(addr285);
                                                                  §§push(§§newactivation());
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr287);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr160);
                              }
                              catch(e:Error)
                              {
                                 if(!_loc7_)
                                 {
                                    §+!k§.log("Unable to get local storage");
                                 }
                                 §§goto(addr361);
                              }
                              §§goto(addr335);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr21);
                  }
               }
            }
         }
      }
      
      private static function §>!]§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(isOpen);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        if(_loc2_)
                        {
                           isOpen = true;
                        }
                        while(true)
                        {
                           §4<§ = §!%§.pop();
                           while(!(_loc3_ && _loc2_))
                           {
                              §4<§.open(param1);
                              if(_loc2_ || §'N§)
                              {
                                 if(_loc2_)
                                 {
                                    addr51:
                                    break loop1;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§!%§.length > 0);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    addr103:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     return;
                     addr89:
                  }
               }
               §§goto(addr103);
               if(!(_loc2_ || §'N§))
               {
                  continue;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr51);
      }
      
      public static function §]>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(isOpen == true)
            {
               loop0:
               while(true)
               {
                  if(§!%§.length <= 0)
                  {
                     isOpen = false;
                     loop1:
                     while(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           §§push(§4<§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(true);
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().preClose(§§pop());
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    continue loop0;
                                 }
                                 if(_loc2_ || §'N§)
                                 {
                                    §§goto(addr25);
                                 }
                                 else
                                 {
                                    addr117:
                                 }
                                 addr117:
                                 while(true)
                                 {
                                    isOpen = false;
                                    break loop1;
                                 }
                                 addr117:
                              }
                              §§goto(addr117);
                           }
                           else
                           {
                              addr115:
                              §§push(false);
                           }
                           §§pop().preClose(§§pop());
                           §§goto(addr117);
                        }
                        else
                        {
                           addr114:
                           §§push(§4<§);
                        }
                        §§goto(addr115);
                     }
                     while(true)
                     {
                        §>!]§(false);
                        continue loop0;
                     }
                  }
                  §§goto(addr114);
               }
            }
            addr25:
            return;
         }
         §§goto(addr117);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§4<§);
            if(_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr32);
            }
            §§pop().preClose(false);
         }
         addr32:
         if(!(_loc2_ && _loc2_))
         {
            §§push(§4<§);
         }
      }
   }
}
