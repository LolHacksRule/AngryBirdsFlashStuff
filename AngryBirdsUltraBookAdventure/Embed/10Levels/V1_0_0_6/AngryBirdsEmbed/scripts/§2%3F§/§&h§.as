package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §3G§.§6A§;
   import §5`§.§49§;
   import §5`§.§?y§;
   import §>K§.§9X§;
   import §>K§.§=!I§;
   import flash.net.SharedObject;
   
   public class §&h§
   {
      
      protected static var §]!F§:Class = §-!;§;
      
      protected static var §<+§:Class = §?!3§;
      
      protected static var §%D§:Class = §=!>§;
      
      private static var §^M§:Array = [];
      
      private static var §-?§:Popup = null;
      
      private static var §+0§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §3T§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-?§ = null;
            if(!_loc1_)
            {
               isOpen = false;
            }
         }
      }
      
      public function §&h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function §0Z§(param1:String, param2:§0#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && §&h§))
         {
            §§pop().§§slot[4] = null;
            if(_loc6_)
            {
               §§push(§§newactivation());
               if(!(_loc5_ && _loc3_))
               {
                  addr42:
                  §§pop().§§slot[1] = param1;
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§newactivation());
                     if(_loc6_ || param1)
                     {
                        §§pop().§§slot[2] = param2;
                        if(!_loc5_)
                        {
                           addr64:
                           var tutorialName:String = "";
                        }
                     }
                     §§goto(addr64);
                  }
                  §§push(§§newactivation());
                  loop0:
                  while(true)
                  {
                     var _loc4_:* = §§pop().§§slot[1];
                     if("BIRD_BLACK" === _loc4_)
                     {
                        §§push(0);
                        if(_loc5_ && §&h§)
                        {
                           addr192:
                        }
                     }
                     else
                     {
                        §§push("BIRD_BLUE");
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_)
                              {
                              }
                              §§goto(addr273);
                           }
                           else
                           {
                              §§push("BIRD_RED");
                              if(!(_loc5_ && param2))
                              {
                                 addr185:
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§push(2);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr192);
                                       }
                                       else
                                       {
                                          addr223:
                                          §§goto(addr273);
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc6_ || §&h§)
                                       {
                                          addr202:
                                          if(§§pop() === _loc4_)
                                          {
                                             if(_loc6_ || §&h§)
                                             {
                                                addr273:
                                                switch(1)
                                                {
                                                   case 0:
                                                      tutorialName = "TUTORIAL_BLACK";
                                                      break loop0;
                                                   case 1:
                                                      tutorialName = "TUTORIAL_BLUE";
                                                      break loop0;
                                                   case 2:
                                                      §§push(§§newactivation());
                                                      if(!_loc5_)
                                                      {
                                                         §§pop().§§slot[3] = "TUTORIAL_RED";
                                                         if(_loc6_)
                                                         {
                                                            break loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr95:
                                                         §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                                      }
                                                      break loop0;
                                                   case 3:
                                                      §§push(§§newactivation());
                                                      if(_loc6_)
                                                      {
                                                         §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                                         break loop0;
                                                      }
                                                      addr109:
                                                      §§push("TUTORIAL_BIG_BROTHER");
                                                      if(!(_loc5_ && §&h§))
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                      addr131:
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         break loop0;
                                                      }
                                                      break loop0;
                                                   case 4:
                                                      §§goto(addr95);
                                                   case 5:
                                                      §§push(§§newactivation());
                                                      §§push(§§newactivation());
                                                      §§push("TUTORIAL_BOOMERANG");
                                                      if(_loc6_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         break loop0;
                                                      }
                                                      §§goto(addr131);
                                                      break;
                                                   case 6:
                                                      §§push(§§newactivation());
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr109);
                                                      }
                                                      break;
                                                   case 7:
                                                      §§push(§§newactivation());
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr131);
                                                         §§push("TUTORIAL_MIGHTYEAGLE");
                                                      }
                                                      continue;
                                                   default:
                                                      return;
                                                }
                                                if(§§pop().§§slot[4])
                                                {
                                                   §§goto(addr318);
                                                }
                                                addr318:
                                                §^M§.push(tutorialPopup);
                                                return;
                                                §§push(3);
                                             }
                                             else
                                             {
                                                addr222:
                                                §§goto(addr223);
                                                §§push(4);
                                             }
                                             §§goto(addr273);
                                          }
                                          else
                                          {
                                             §§push("BIRD_YELLOW");
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop() === _loc4_)
                                                {
                                                   §§goto(addr222);
                                                }
                                                else
                                                {
                                                   §§push("BIRD_GREEN");
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(5);
                                                            if(_loc5_ && §&h§)
                                                            {
                                                               addr268:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr246:
                                                         if("BIRD_REDBIG" === _loc4_)
                                                         {
                                                            addr248:
                                                            §§push(6);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§goto(addr273);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr268);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr259:
                                                            if("BIRD_SARDINE" !== _loc4_)
                                                            {
                                                               §§goto(addr273);
                                                               §§push(8);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                      }
                                                      §§goto(addr273);
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr259);
                                                }
                                             }
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr246);
                           }
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr273);
                  }
                  try
                  {
                     var tutorialPopup:§;d§ = new §;d§(§=!I§.§]g§(§]!F§),currentUIView,§49§.§ ^§(tutorialName,§?y§.§@j§));
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr273);
                  §§push(§§newactivation());
               }
            }
            §§goto(addr64);
         }
         §§goto(addr42);
      }
      
      private static function §"k§(param1:String, param2:§0#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(_loc5_ || §&h§)
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§push(param1);
                  if(_loc5_ || param1)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc6_)
                     {
                        addr47:
                        §§push(§§newactivation());
                        if(_loc5_ || §&h§)
                        {
                           addr65:
                           §§pop().§§slot[2] = param2;
                           if(_loc5_ || §&h§)
                           {
                              addr75:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(_loc5_)
                              {
                                 addr79:
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[3] = §§pop();
                           }
                        }
                        §§goto(addr75);
                     }
                     try
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           §§pop().§§slot[4] = new §9!+§(§=!I§.§]g§(§<+§),currentUIView,§49§.§ ^§(tutorialName,§?y§.§@j§),tutorialName);
                           §§goto(addr136);
                        }
                        if(§§pop().§§slot[4])
                        {
                           if(_loc5_)
                           {
                              §^M§.push(tutorialPopup);
                           }
                        }
                     }
                     catch(e:Error)
                     {
                        §§goto(addr127);
                     }
                     addr136:
                     if(_loc5_)
                     {
                        addr127:
                        §§push(§§newactivation());
                     }
                     return;
                  }
                  §§goto(addr79);
               }
               §§goto(addr65);
            }
            §§goto(addr47);
         }
         §§goto(addr75);
      }
      
      public static function §0;§(param1:String) : void
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
               if(!_loc6_)
               {
                  addr32:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!§+0§)
                     {
                        §+0§ = SharedObject.getLocal(storageName);
                     }
                     var _loc3_:int = 0;
                     if(!_loc6_)
                     {
                        var _loc4_:* = §0t§();
                        if(!_loc5_)
                        {
                        }
                        for each(birdName in _loc4_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §+0§.data[birdName] = false;
                           }
                        }
                     }
                     if(!_loc6_)
                     {
                        §+0§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                        if(_loc5_)
                        {
                           §+0§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                           §+0§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                           if(!_loc5_)
                           {
                           }
                           addr139:
                           return;
                           addr125:
                        }
                        §§goto(addr125);
                     }
                     §+0§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                  }
                  §§goto(addr125);
               }
               catch(e:Error)
               {
               }
               §§goto(addr139);
            }
         }
         §§goto(addr32);
      }
      
      private static function §0t§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6A§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"h§.§1C§.slingshot.§'@§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(!_loc5_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §[-§(param1:§0#§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc7_ && param2))
         {
            §§pop().§§slot[6] = 0;
            §§push(§§newactivation());
            if(_loc8_)
            {
               addr34:
               §§pop().§§slot[1] = param1;
               if(!_loc7_)
               {
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     addr41:
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§pop().§§slot[2] = §§pop();
                        addr45:
                        §§push(§§newactivation());
                        if(!_loc7_)
                        {
                           §§push(param3);
                           if(!_loc7_)
                           {
                              §§pop().§§slot[3] = §§pop();
                              if(isOpen)
                              {
                                 return;
                              }
                              addr56:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                              }
                           }
                        }
                        §§goto(addr56);
                     }
                     §§pop().§§slot[4] = §§pop();
                     §3T§ = [];
                     §§push(§§newactivation());
                     loop0:
                     while(true)
                     {
                        §§push(§§pop().§§slot[3]);
                        if(_loc8_ || param2)
                        {
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              §§push("POWERUP4");
                              if(_loc8_ || param1)
                              {
                                 §§push(_loc5_);
                                 if(_loc8_ || param1)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(0);
                                          if(_loc7_)
                                          {
                                             addr368:
                                          }
                                       }
                                       else
                                       {
                                          addr360:
                                          §§push(4);
                                          if(_loc8_ || param2)
                                          {
                                             §§goto(addr368);
                                          }
                                       }
                                       addr373:
                                       if(!_loc7_)
                                       {
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(§§newactivation());
                                                if(!_loc7_)
                                                {
                                                   §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                   if(_loc8_ || param1)
                                                   {
                                                      §§pop().§§slot[4] = §§pop();
                                                      §§push(§3T§);
                                                      if(_loc8_ || §&h§)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop().§§slot[4]);
                                                            if(!(_loc7_ && §&h§))
                                                            {
                                                               §§pop().push(§§pop());
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr144:
                                                            §§push(§§pop().§§slot[4]);
                                                            if(_loc8_ || param2)
                                                            {
                                                               §§pop().push(§§pop());
                                                               if(_loc8_ || §&h§)
                                                               {
                                                                  addr160:
                                                                  break;
                                                               }
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop().§§slot[6]);
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 var i:int = §§pop();
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       addr519:
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[6]);
                                                                                          if(_loc8_ || param3)
                                                                                          {
                                                                                             loop4:
                                                                                             while(§§pop() >= 0)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc7_ && param2)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   addr439:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[5]);
                                                                                                      addr440:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§§slot[4] = §§pop()[i];
                                                                                                         §§push(§+0§.data[powerUpPopupName] == undefined);
                                                                                                         if(_loc8_ || param3)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr463:
                                                                                                                  §§pop();
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§+0§.data[powerUpPopupName] == false);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr490:
                                                                                                               §§push(powerUpsToShow);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  addr491:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().splice(§§pop().§§slot[6],1);
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr463);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr529:
                                                                                             §+0§.flush();
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr602:
                                                                                             return;
                                                                                             addr527:
                                                                                          }
                                                                                          addr558:
                                                                                          _loc5_ = §§pop();
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             var _loc6_:* = powerUpsToShow;
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                             }
                                                                                             for each(powerUpName in _loc6_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §"k§(powerUpName,currentUIView);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr602);
                                                                                       }
                                                                                    }
                                                                                    addr518:
                                                                                 }
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           addr505:
                                                                        }
                                                                        §§goto(addr527);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                               }
                                                               addr487:
                                                            }
                                                         }
                                                         addr177:
                                                         §§pop().push(§§pop());
                                                         break;
                                                      }
                                                      addr141:
                                                      §§push(§§newactivation());
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr491);
                                                   }
                                                   else
                                                   {
                                                      addr112:
                                                      §§pop().§§slot[4] = §§pop();
                                                      §§push(§3T§);
                                                      §§push(§§newactivation());
                                                      if(_loc8_ || param3)
                                                      {
                                                         §§push(§§pop().§§slot[4]);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§pop().push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                }
                                                else
                                                {
                                                   addr109:
                                                   §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr112);
                                                   }
                                                   else
                                                   {
                                                      addr164:
                                                      §§pop().§§slot[4] = §§pop();
                                                      if(_loc8_ || §&h§)
                                                      {
                                                         §§push(§3T§);
                                                         §§push(§§newactivation());
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr177);
                                                            §§push(§§pop().§§slot[4]);
                                                         }
                                                         §§goto(addr491);
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   if(_loc8_ || param3)
                                                   {
                                                      §9X§.log("Unable to get local storage");
                                                   }
                                                   §§goto(addr558);
                                                   §§push(0);
                                                }
                                                §§goto(addr112);
                                             case 1:
                                                continue;
                                             case 2:
                                                §§push(§§newactivation());
                                                §§push("POWERUP_TUTORIAL_KINGSLING");
                                                if(!_loc7_)
                                                {
                                                   §§pop().§§slot[4] = §§pop();
                                                   §§goto(addr141);
                                                   §§push(§3T§);
                                                }
                                                else
                                                {
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr534);
                                             case 3:
                                                §§goto(addr164);
                                             case 4:
                                                §§push(§§newactivation());
                                                §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                §§push(§3T§);
                                                if(!_loc7_)
                                                {
                                                   §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§pop().push(§§pop());
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(§3T§);
                                                         §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                         if(!_loc7_)
                                                         {
                                                            §§pop().push(§§pop());
                                                            if(_loc8_ || param2)
                                                            {
                                                               §§push(§3T§);
                                                               §§push("POWERUP_TUTORIAL_KINGSLING");
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr220:
                                                                  §§pop().push(§§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(§3T§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr227:
                                                                        §§pop().push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr529);
                                                                     }
                                                                     §§goto(addr490);
                                                                  }
                                                                  §§goto(addr466);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            addr399:
                                                            §+0§ = SharedObject.getLocal(storageName);
                                                            addr405:
                                                            §§push(§§newactivation());
                                                            §§push(§§newactivation());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(§§pop().§§slot[5]);
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                                  §§goto(addr529);
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr405);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr490);
                                          }
                                          §§push(§§newactivation());
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(§3T§);
                                             if(_loc8_)
                                             {
                                                §§pop().§§slot[5] = §§pop();
                                                try
                                                {
                                                   addr394:
                                                   if(storageName)
                                                   {
                                                      if(!§+0§)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                         §§goto(addr487);
                                                      }
                                                      §§goto(addr399);
                                                   }
                                                   break;
                                                }
                                                catch(e:Error)
                                                {
                                                   §§goto(addr534);
                                                }
                                                §§goto(addr529);
                                             }
                                             §§goto(addr440);
                                          }
                                          §§goto(addr438);
                                       }
                                       §§goto(addr505);
                                    }
                                    else
                                    {
                                       §§push("POWERUP1");
                                       if(!(_loc7_ && §&h§))
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   §§push(1);
                                                   if(!(_loc8_ || §&h§))
                                                   {
                                                      §§goto(addr368);
                                                   }
                                                }
                                                else
                                                {
                                                   addr320:
                                                   §§push(2);
                                                   if(!(_loc8_ || param1))
                                                   {
                                                      addr356:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("POWERUP2");
                                                if(_loc8_)
                                                {
                                                   addr309:
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      addr312:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            §§goto(addr320);
                                                         }
                                                         else
                                                         {
                                                            addr348:
                                                            §§push(3);
                                                            if(_loc7_ && §&h§)
                                                            {
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("POWERUP3");
                                                         if(_loc8_ || param3)
                                                         {
                                                            addr337:
                                                            §§push(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§goto(addr348);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr360);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("ALL");
                                                               }
                                                               §§goto(addr360);
                                                            }
                                                            addr359:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr360);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr373);
                                                               §§push(5);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr359);
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr309);
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr309);
                           }
                           §§goto(addr320);
                        }
                        §§goto(addr394);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr56);
               }
               §§goto(addr45);
            }
            §§goto(addr41);
         }
         §§goto(addr34);
      }
      
      public static function § !&§(param1:§0#§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§push(null);
            if(!(_loc6_ && §&h§))
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(_loc7_ || param1)
               {
                  §§pop().§§slot[5] = 0;
                  if(_loc7_ || param2)
                  {
                     §§push(§§newactivation());
                     if(_loc7_)
                     {
                        addr54:
                        §§pop().§§slot[1] = param1;
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              addr67:
                              §§pop().§§slot[2] = param2;
                              addr66:
                              if(isOpen)
                              {
                                 if(_loc7_ || §&h§)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 addr86:
                                 var birdsToShow:Array = §0t§();
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(§§pop().§§slot[2])
                                    {
                                       if(!§+0§)
                                       {
                                          if(_loc7_)
                                          {
                                             §+0§ = SharedObject.getLocal(storageName);
                                          }
                                          addr282:
                                          var _loc4_:int = 0;
                                          addr281:
                                          if(_loc7_ || param2)
                                          {
                                             var _loc5_:* = birdsToShow;
                                             if(_loc7_ || param2)
                                             {
                                             }
                                             for each(birdName in _loc5_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §0Z§(birdName,currentUIView);
                                                }
                                             }
                                          }
                                          if(!_loc6_)
                                          {
                                             §;O§();
                                          }
                                          return;
                                          addr262:
                                       }
                                       §§push(§§newactivation());
                                       if(_loc7_ || §&h§)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc7_ || param2)
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§pop().§§slot[5] = int(§§pop().length - 1);
                                                if(!_loc6_)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§§slot[5]);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() >= 0)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§§slot[3]);
                                                                     addr147:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§§slot[4] = §§pop()[i];
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§+0§.data[birdName] == undefined);
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!(_loc6_ && §&h§))
                                                                                 {
                                                                                    addr192:
                                                                                    §§pop();
                                                                                    if(_loc6_ && _loc3_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(§+0§.data[birdName] == false);
                                                                                 }
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr208:
                                                                                 §+0§.data[birdName] = true;
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr232:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc7_ || _loc3_))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop().§§slot[3].splice(i,1);
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(§§pop().§§slot[5]);
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                              }
                                                                              var i:int = §§pop();
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §+0§.flush();
                                                            §§goto(addr262);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr145);
                              }
                              catch(e:Error)
                              {
                                 if(!_loc6_)
                                 {
                                    §9X§.log("Unable to get local storage");
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr282);
                           }
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr86);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr67);
      }
      
      private static function §;O§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(isOpen);
            if(!(_loc2_ && §&h§))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr54:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr80);
                     }
                  }
               }
               addr61:
               if(§^M§.length > 0)
               {
                  if(!(_loc2_ && param1))
                  {
                     isOpen = true;
                     if(_loc3_)
                     {
                        addr74:
                        §-?§ = §^M§.pop();
                        if(!_loc2_)
                        {
                           addr80:
                           §-?§.open(param1);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr74);
      }
      
      public static function §`a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(isOpen == true)
            {
               addr47:
               if(§^M§.length > 0)
               {
                  §§push(§-?§);
                  if(!_loc1_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§pop().preClose(§§pop());
                        isOpen = false;
                        if(_loc2_)
                        {
                           §;O§(false);
                           if(_loc1_)
                           {
                           }
                        }
                     }
                     §§goto(addr75);
                  }
                  else
                  {
                     addr73:
                     §§push(true);
                  }
                  §§pop().preClose(§§pop());
                  §§goto(addr75);
               }
               else
               {
                  isOpen = false;
                  §§push(§-?§);
               }
               §§goto(addr73);
            }
            addr75:
            return;
         }
         §§goto(addr47);
      }
   }
}
