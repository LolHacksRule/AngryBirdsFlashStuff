package §6!C§
{
   import §-!D§.§4!,§;
   import §3a§.§"X§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §6A§.§!!'§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   import flash.net.SharedObject;
   
   public class §!;§
   {
      
      protected static var § &§:Class = §&f§;
      
      protected static var §3^§:Class = § !!§;
      
      protected static var §6v§:Class = §`!7§;
      
      private static var §1q§:Array;
      
      private static var §7o§:Popup = null;
      
      private static var §0=§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §4C§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1q§ = [];
            §7o§ = null;
            if(!_loc2_)
            {
               isOpen = false;
            }
         }
      }
      
      public function §!;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      private static function §!!+§(param1:String, param2:§4!,§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(_loc5_ || param1)
            {
               §§push(§§newactivation());
               if(!_loc6_)
               {
                  §§pop().§§slot[1] = param1;
                  if(!_loc6_)
                  {
                     addr40:
                     §§push(§§newactivation());
                     if(!_loc6_)
                     {
                        addr43:
                        §§pop().§§slot[2] = param2;
                        addr50:
                        if(_loc5_)
                        {
                           §§push(§§newactivation());
                        }
                        §§push(§§newactivation());
                        loop0:
                        while(true)
                        {
                           var _loc4_:* = §§pop().§§slot[1];
                           if(!(_loc6_ && param2))
                           {
                              §§push("BIRD_BLACK");
                              §§push(_loc4_);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       §§push(0);
                                    }
                                    else
                                    {
                                       addr272:
                                       §§push(6);
                                       if(_loc6_ && param2)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push("BIRD_BLUE");
                                    if(_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr292);
                                          }
                                          §§push("BIRD_RED");
                                          if(_loc5_)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   addr292:
                                                   addr206:
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
                                                               break loop0;
                                                            }
                                                            addr336:
                                                            addr141:
                                                            §§pop().§§slot[3] = §§pop();
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr149:
                                                               break loop0;
                                                            }
                                                            if(tutorialPopup)
                                                            {
                                                               §1q§.push(tutorialPopup);
                                                               break;
                                                            }
                                                            break;
                                                            addr322:
                                                         }
                                                         §§pop().§§slot[4] = new §4!1§(§"X§.§,@§(§ &§),currentUIView,§4!<§.§?+§(tutorialName,§5!H§.§@6§));
                                                         addr297:
                                                         §§goto(addr322);
                                                      case 1:
                                                         §§push(§§newactivation());
                                                         §§push("TUTORIAL_BLUE");
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§pop().§§slot[3] = §§pop();
                                                            if(_loc5_ || §!;§)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr90:
                                                            break loop0;
                                                         }
                                                         addr153:
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr156:
                                                            break loop0;
                                                         }
                                                         break;
                                                      case 2:
                                                         var tutorialName:String = "TUTORIAL_RED";
                                                         if(!(_loc6_ && §!;§))
                                                         {
                                                            §§goto(addr90);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr156);
                                                         }
                                                      case 3:
                                                         §§push(§§newactivation());
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                                            break loop0;
                                                         }
                                                         addr126:
                                                         §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                                         if(_loc5_)
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr149);
                                                         break;
                                                      case 4:
                                                         §§push(§§newactivation());
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                                            if(_loc5_ || param2)
                                                            {
                                                               break loop0;
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         continue;
                                                      case 5:
                                                         §§push(§§newactivation());
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr126);
                                                            break;
                                                         }
                                                         continue;
                                                      case 6:
                                                         §§push(§§newactivation());
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§goto(addr141);
                                                            §§push("TUTORIAL_BIG_BROTHER");
                                                         }
                                                         §§goto(addr297);
                                                      case 7:
                                                         §§goto(addr153);
                                                      default:
                                                         §§newactivation();
                                                         "TUTORIAL_MIGHTYEAGLE";
                                                         return;
                                                   }
                                                   return;
                                                   §§push(2);
                                                }
                                                §§goto(addr292);
                                             }
                                             else
                                             {
                                                §§push("BIRD_WHITE");
                                                if(_loc5_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(3);
                                                            if(!_loc5_)
                                                            {
                                                               addr248:
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr272);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_YELLOW");
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr248);
                                                                  §§push(4);
                                                               }
                                                               else
                                                               {
                                                                  §§push("BIRD_GREEN");
                                                                  if(_loc5_)
                                                                  {
                                                                     addr252:
                                                                     §§push(_loc4_);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr255:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           §§goto(addr292);
                                                                           §§push(5);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("BIRD_REDBIG");
                                                                           if(!_loc5_)
                                                                           {
                                                                           }
                                                                           addr282:
                                                                           if(§§pop() === _loc4_)
                                                                           {
                                                                              addr284:
                                                                              §§push(7);
                                                                              if(!_loc5_)
                                                                              {
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr292);
                                                                              §§push(8);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     addr269:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr272);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr284);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr282);
                                                                        §§push("BIRD_SARDINE");
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc5_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr252);
                                             }
                                          }
                                          §§goto(addr252);
                                          §§goto(addr292);
                                       }
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr292);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr206);
                        }
                        try
                        {
                           §§goto(addr297);
                        }
                        catch(e:Error)
                        {
                        }
                        §§goto(addr336);
                        §§push(§§newactivation());
                     }
                     §§pop().§§slot[3] = "";
                  }
                  §§goto(addr50);
               }
               §§goto(addr43);
            }
            §§goto(addr40);
         }
         §§goto(addr43);
      }
      
      private static function §^!!§(param1:String, param2:§4!,§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[4] = null;
            if(_loc6_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§push(param1);
                  if(_loc6_ || §!;§)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(_loc6_)
                     {
                        addr48:
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§pop().§§slot[2] = param2;
                           if(_loc6_)
                           {
                              addr66:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(!_loc5_)
                              {
                                 addr71:
                                 §§pop().§§slot[3] = §§pop();
                              }
                              §§goto(addr71);
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[4] = new §@!F§(§"X§.§,@§(§3^§),currentUIView,§4!<§.§?+§(tutorialName,§5!H§.§@6§),tutorialName);
                                 §§goto(addr137);
                              }
                              if(§§pop().§§slot[4])
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §1q§.push(tutorialPopup);
                                 }
                              }
                           }
                           catch(e:Error)
                           {
                              §§goto(addr123);
                           }
                           addr137:
                           if(!(_loc5_ && _loc3_))
                           {
                              addr123:
                              §§push(§§newactivation());
                           }
                           return;
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr71);
               }
               §§goto(addr66);
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      public static function §=F§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc3_))
         {
            §§push(null);
            if(_loc6_ || _loc3_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc6_ || _loc3_)
               {
                  addr48:
                  var storageName:String = param1;
               }
               try
               {
                  if(storageName)
                  {
                     if(!§0=§)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           §0=§ = SharedObject.getLocal(storageName);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr84:
                              var _loc3_:int = 0;
                              if(!_loc5_)
                              {
                                 var _loc4_:* = §@!M§();
                                 if(_loc5_)
                                 {
                                 }
                                 for each(birdName in _loc4_)
                                 {
                                    if(_loc6_ || §!;§)
                                    {
                                       §0=§.data[birdName] = false;
                                    }
                                 }
                              }
                              addr119:
                              §0=§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                              if(!_loc5_)
                              {
                                 §0=§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                              }
                           }
                           §0=§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                           §0=§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                           addr165:
                           return;
                           addr151:
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr151);
               }
               catch(e:Error)
               {
               }
               §§goto(addr165);
            }
         }
         §§goto(addr48);
      }
      
      private static function §@!M§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!!'§ = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in §=w§.§ o§.slingshot.§,B§)
         {
            if(!(_loc5_ && _loc3_))
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
      
      public static function §6! §(param1:§4!,§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§pop().§§slot[6] = 0;
            §§push(§§newactivation());
            if(_loc7_ || §!;§)
            {
               §§pop().§§slot[1] = param1;
               if(!(_loc8_ && param2))
               {
                  §§push(§§newactivation());
                  if(_loc7_)
                  {
                     §§push(param2);
                     if(_loc7_ || param1)
                     {
                        §§pop().§§slot[2] = §§pop();
                        addr54:
                        §§push(§§newactivation());
                        if(_loc7_ || param1)
                        {
                           addr62:
                           §§push(param3);
                           if(_loc7_)
                           {
                              §§pop().§§slot[3] = §§pop();
                              if(isOpen)
                              {
                                 return;
                              }
                              addr70:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(_loc7_)
                              {
                                 addr74:
                                 §§push(§§pop());
                              }
                           }
                           §§pop().§§slot[4] = §§pop();
                           if(!(_loc8_ && param1))
                           {
                              §4C§ = [];
                           }
                           §§push(powerUpName);
                           if(_loc7_ || param3)
                           {
                              var _loc5_:* = §§pop();
                              if(!_loc8_)
                              {
                                 §§push("POWERUP4");
                                 if(_loc7_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             addr309:
                                             §§push(0);
                                             if(_loc8_)
                                             {
                                                addr368:
                                             }
                                          }
                                          else
                                          {
                                             addr405:
                                             §§push(4);
                                             if(!_loc8_)
                                             {
                                                addr408:
                                             }
                                          }
                                          addr413:
                                          if(_loc7_ || param1)
                                          {
                                             loop12:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(§§newactivation());
                                                   §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                   if(_loc7_)
                                                   {
                                                      §§pop().§§slot[4] = §§pop();
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§push(§4C§);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(§§pop().§§slot[4]);
                                                               if(!(_loc8_ && §!;§))
                                                               {
                                                                  §§pop().push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr155:
                                                                  §§pop().push(§§pop());
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     addr270:
                                                                  }
                                                               }
                                                               addr424:
                                                               §§push(§§newactivation());
                                                               §§push(§4C§);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§pop().§§slot[5] = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     try
                                                                     {
                                                                        addr439:
                                                                        if(storageName)
                                                                        {
                                                                           if(!§0=§)
                                                                           {
                                                                              §0=§ = SharedObject.getLocal(storageName);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr450:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc7_ || param3)
                                                                                 {
                                                                                    addr458:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[5]);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(i);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(§§pop() < 0)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §0=§.flush();
                                                                                                      addr552:
                                                                                                      §§push(0);
                                                                                                      addr552:
                                                                                                   }
                                                                                                   break loop12;
                                                                                                }
                                                                                                addr477:
                                                                                                §§push(§§newactivation());
                                                                                                §§push(§§newactivation());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[5]);
                                                                                                   addr478:
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§§slot[4] = §§pop()[i];
                                                                                                      addr483:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§0=§.data[powerUpPopupName] == undefined);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§0=§.data[powerUpPopupName] == false);
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §0=§.data[powerUpPopupName] = true;
                                                                                                            addr513:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr527:
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  addr528:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[6]);
                                                                                                                     if(!(_loc8_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           var i:int = §§pop();
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr513:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[5]);
                                                                                                               addr516:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  addr517:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().splice(§§pop().§§slot[6],1);
                                                                                                                     if(_loc8_ && param2)
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     §§goto(addr527);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr515:
                                                                                                         }
                                                                                                         §§goto(addr527);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                var _loc6_:* = powerUpsToShow;
                                                                                                if(_loc7_ || param2)
                                                                                                {
                                                                                                }
                                                                                                for each(powerUpName in _loc6_)
                                                                                                {
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      §^!!§(powerUpName,currentUIView);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break loop12;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr478);
                                                                                    }
                                                                                    §§goto(addr477);
                                                                                 }
                                                                                 §§goto(addr515);
                                                                              }
                                                                              §§goto(addr513);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr552);
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §7!+§.log("Unable to get local storage");
                                                                        }
                                                                     }
                                                                     §§goto(addr552);
                                                                  }
                                                                  §§goto(addr527);
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            else
                                                            {
                                                               addr147:
                                                               §§push(§§pop().§§slot[4]);
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  §§goto(addr155);
                                                               }
                                                               else
                                                               {
                                                                  addr209:
                                                                  §§pop().push(§§pop());
                                                                  if(!(_loc8_ && §!;§))
                                                                  {
                                                                     addr217:
                                                                     §§goto(addr424);
                                                                  }
                                                               }
                                                               §§goto(addr552);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr190:
                                                            §§push(§§newactivation());
                                                            if(_loc7_)
                                                            {
                                                               addr193:
                                                               §§push(§§pop().§§slot[4]);
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop().push(§§pop());
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr424);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr236:
                                                                     §§push(§4C§);
                                                                     §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        §§push(§4C§);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr249:
                                                                           §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                           if(_loc7_)
                                                                           {
                                                                              addr252:
                                                                              §§pop().push(§§pop());
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 §§push(§4C§);
                                                                                 if(!(_loc8_ && param3))
                                                                                 {
                                                                                    addr269:
                                                                                    §§pop().push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 §§goto(addr516);
                                                                              }
                                                                              §§goto(addr513);
                                                                           }
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr552);
                                                            }
                                                            else
                                                            {
                                                               addr208:
                                                               §§push(§§pop().§§slot[4]);
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   else
                                                   {
                                                      addr181:
                                                      §§pop().§§slot[4] = §§pop();
                                                      if(!(_loc8_ && §!;§))
                                                      {
                                                         §§goto(addr190);
                                                         §§push(§4C§);
                                                      }
                                                   }
                                                   §§goto(addr483);
                                                case 1:
                                                   §§push(§§newactivation());
                                                   if(!_loc8_)
                                                   {
                                                      §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§pop().§§slot[4] = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§4C§);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc7_ || param3)
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         else
                                                         {
                                                            addr204:
                                                            §§push(§4C§);
                                                            §§push(§§newactivation());
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr208);
                                                            }
                                                         }
                                                         §§goto(addr517);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr181);
                                                      }
                                                   }
                                                   §§goto(addr458);
                                                case 2:
                                                   §§push(§§newactivation());
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push("POWERUP_TUTORIAL_KINGSLING");
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§goto(addr181);
                                                      }
                                                      else
                                                      {
                                                         addr203:
                                                         §§pop().§§slot[4] = §§pop();
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr528);
                                                case 3:
                                                   §§goto(addr203);
                                                case 4:
                                                   §§push(§§newactivation());
                                                   §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                   §§push(§4C§);
                                                   §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                   if(_loc7_ || §!;§)
                                                   {
                                                      §§pop().push(§§pop());
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                   §§goto(addr269);
                                                default:
                                                   §§goto(addr424);
                                             }
                                             return;
                                          }
                                          §§goto(addr539);
                                       }
                                       else
                                       {
                                          §§push("POWERUP1");
                                          if(_loc7_ || param1)
                                          {
                                             addr321:
                                             §§push(_loc5_);
                                             if(!_loc8_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      §§push(1);
                                                      if(_loc7_ || param3)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr360:
                                                      §§push(2);
                                                      if(!(_loc8_ && §!;§))
                                                      {
                                                         §§goto(addr368);
                                                      }
                                                      else
                                                      {
                                                         addr401:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("POWERUP2");
                                                   if(_loc7_)
                                                   {
                                                      addr344:
                                                      §§push(_loc5_);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc8_ && §!;§))
                                                            {
                                                               §§goto(addr360);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("POWERUP3");
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr377:
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  addr385:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(3);
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           §§goto(addr401);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr408);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr405);
                                                                     }
                                                                     §§goto(addr413);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr403:
                                                                     §§push("ALL");
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr405);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr413);
                                                                  §§push(5);
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            §§goto(addr403);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr385);
                                          }
                                          §§goto(addr344);
                                       }
                                    }
                                    §§goto(addr385);
                                 }
                                 §§goto(addr321);
                              }
                              §§goto(addr309);
                           }
                           §§goto(addr439);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr62);
               }
               §§goto(addr54);
            }
            §§goto(addr70);
         }
         §§goto(addr62);
      }
      
      public static function §7<§(param1:§4!,§, param2:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§push(null);
            if(!(_loc6_ && §!;§))
            {
               §§pop().§§slot[4] = §§pop();
               if(_loc7_ || param1)
               {
                  §§push(§§newactivation());
                  if(_loc7_ || §!;§)
                  {
                     addr49:
                     §§pop().§§slot[5] = 0;
                     if(!(_loc6_ && §!;§))
                     {
                        §§push(§§newactivation());
                        if(_loc7_)
                        {
                           §§pop().§§slot[1] = param1;
                           addr63:
                           §§push(§§newactivation());
                           if(_loc7_ || param1)
                           {
                              addr72:
                              §§pop().§§slot[2] = param2;
                              addr71:
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(isOpen)
                                 {
                                    return;
                                 }
                                 addr84:
                                 var birdsToShow:Array = §@!M§();
                              }
                              try
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && param2))
                                 {
                                    if(§§pop().§§slot[2])
                                    {
                                       if(!§0=§)
                                       {
                                          §0=§ = SharedObject.getLocal(storageName);
                                          if(_loc7_ || param1)
                                          {
                                             addr113:
                                             §§push(§§newactivation());
                                             if(!(_loc6_ && §!;§))
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[5] = int(§§pop().length - 1);
                                                      if(_loc7_)
                                                      {
                                                         addr138:
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            addr231:
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§§slot[5]);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(§§pop() < 0)
                                                                  {
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§push(§§newactivation());
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        addr154:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§§slot[3]);
                                                                           addr155:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§§slot[4] = §§pop()[i];
                                                                              §§push(§0=§.data[birdName] == undefined);
                                                                              if(!(_loc6_ && §!;§))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§0=§.data[birdName] == false);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §0=§.data[birdName] = true;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§pop().§§slot[3].splice(i,1);
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr153:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§§slot[5]);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                        }
                                                                        break loop3;
                                                                     }
                                                                     var i:int = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               break;
                                                            }
                                                            var _loc4_:* = §§pop();
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               var _loc5_:* = birdsToShow;
                                                               if(_loc7_)
                                                               {
                                                                  for each(birdName in _loc5_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  addr313:
                                                                  §"m§();
                                                                  addr316:
                                                                  if(_loc7_)
                                                                  {
                                                                     §0=§.flush();
                                                                     addr245:
                                                                     break loop3;
                                                                     addr245:
                                                                  }
                                                                  return;
                                                                  addr310:
                                                               }
                                                               while(true)
                                                               {
                                                                  §!!+§(birdName,currentUIView);
                                                                  §§goto(addr310);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr153);
                              }
                              catch(e:Error)
                              {
                                 if(_loc7_ || §!;§)
                                 {
                                    §7!+§.log("Unable to get local storage");
                                 }
                                 §§goto(addr245);
                              }
                              §§goto(addr316);
                           }
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr71);
               }
               §§goto(addr63);
            }
            §§goto(addr72);
         }
         §§goto(addr49);
      }
      
      private static function §"m§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(isOpen);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr40:
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr74);
                     }
                  }
               }
               addr61:
               if(§1q§.length > 0)
               {
                  if(!(_loc2_ && param1))
                  {
                     isOpen = true;
                     if(_loc3_)
                     {
                        addr74:
                        §7o§ = §1q§.pop();
                        if(!_loc2_)
                        {
                           addr80:
                           §7o§.open(param1);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr74);
               }
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr80);
      }
      
      public static function §?"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(isOpen == true)
            {
               if(§1q§.length > 0)
               {
                  addr40:
                  §§push(§7o§);
                  if(_loc1_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().preClose(§§pop());
                        if(!(_loc2_ && _loc1_))
                        {
                           isOpen = false;
                           if(_loc1_)
                           {
                              addr69:
                              §"m§(false);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     addr84:
                     §§push(true);
                  }
                  §§pop().preClose(§§pop());
               }
               else
               {
                  isOpen = false;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr84);
                     §§push(§7o§);
                  }
               }
            }
            addr86:
            return;
         }
         §§goto(addr40);
      }
      
      public static function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§7o§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr45:
                     §7o§.preClose(false);
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
   }
}
