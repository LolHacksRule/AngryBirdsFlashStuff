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
      
      protected static var §?a§:Class;
      
      protected static var §]#§:Class = §!V§;
      
      protected static var §9!0§:Class;
      
      private static var §+m§:Array;
      
      private static var §'g§:Popup = null;
      
      private static var §use§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §&"§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?a§ = §catch§;
         }
         if(!(_loc2_ && _loc2_))
         {
            §9!0§ = §+!C§;
            if(!(_loc2_ && _loc2_))
            {
               §+m§ = [];
               if(_loc1_)
               {
                  §'g§ = null;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr79);
               }
            }
            isOpen = false;
         }
         addr79:
      }
      
      public function §7!1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
            if(_loc5_ || §7!1§)
            {
               §§push(§§newactivation());
               if(!(_loc6_ && §7!1§))
               {
                  addr41:
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || param1)
                     {
                        §§pop().§§slot[2] = param2;
                        if(!(_loc6_ && §7!1§))
                        {
                           addr68:
                           var tutorialName:String = "";
                        }
                     }
                     §§goto(addr68);
                  }
                  §§push(§§newactivation());
                  if(!(_loc6_ && _loc3_))
                  {
                     var _loc4_:* = §§pop().§§slot[1];
                     §§push("BIRD_BLACK");
                     if(!_loc6_)
                     {
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr281);
                        }
                        else
                        {
                           §§push("BIRD_BLUE");
                           if(_loc5_)
                           {
                              if(§§pop() === _loc4_)
                              {
                                 §§push(_loc5_ || _loc3_ ? 1 : 5);
                              }
                              else
                              {
                                 addr222:
                                 §§push("BIRD_RED");
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr281:
                                          switch(!(_loc6_ && param1) ? 0 : 7)
                                          {
                                             case 0:
                                                §§push(§§newactivation());
                                                §§push("TUTORIAL_BLACK");
                                                if(_loc6_ && param2)
                                                {
                                                   addr121:
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(_loc6_ && param2)
                                                   {
                                                   }
                                                   break;
                                                }
                                                §§pop().§§slot[3] = §§pop();
                                                try
                                                {
                                                   var tutorialPopup:§8;§ = new §8;§(§]o§.§#b§(§?a§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§));
                                                   addr290:
                                                }
                                                catch(e:Error)
                                                {
                                                }
                                                §§goto(addr331);
                                             case 1:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_BLUE";
                                                   if(!_loc5_)
                                                   {
                                                      addr98:
                                                   }
                                                }
                                                §§goto(addr290);
                                             case 2:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_RED";
                                                   §§goto(addr98);
                                                }
                                                else
                                                {
                                                   addr144:
                                                   §§push("TUTORIAL_BIG_BROTHER");
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                   }
                                                   else
                                                   {
                                                      addr174:
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                   }
                                                }
                                                §§goto(addr290);
                                             case 3:
                                                §§push(§§newactivation());
                                                if(_loc5_ || param2)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                                   if(!(_loc5_ || §7!1§))
                                                   {
                                                      addr134:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr290);
                                             case 4:
                                                §§goto(addr121);
                                             case 5:
                                                tutorialName = "TUTORIAL_BOOMERANG";
                                                §§goto(addr134);
                                             case 6:
                                                §§push(§§newactivation());
                                                §§push("TUTORIAL_YELLOW");
                                                §§push(§§newactivation());
                                                if(_loc5_ || param1)
                                                {
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr331);
                                             case 7:
                                                §§push(§§newactivation());
                                                if(_loc5_ || §7!1§)
                                                {
                                                   §§goto(addr174);
                                                   §§push("TUTORIAL_MIGHTYEAGLE");
                                                }
                                                §§goto(addr331);
                                             default:
                                                return;
                                          }
                                          §+m§.push(tutorialPopup);
                                          addr331:
                                          if(tutorialPopup)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          return;
                                          §§push(2);
                                       }
                                       else
                                       {
                                          addr256:
                                          §§push(4);
                                          if(_loc5_)
                                          {
                                             addr259:
                                             §§goto(addr281);
                                          }
                                          else
                                          {
                                             §§goto(addr264);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       §§push(_loc4_);
                                       if(_loc5_ || §7!1§)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(3);
                                                if(_loc5_ || _loc3_)
                                                {
                                                }
                                                §§goto(addr281);
                                             }
                                             else
                                             {
                                                §§goto(addr256);
                                             }
                                          }
                                          else
                                          {
                                             addr252:
                                             if("BIRD_YELLOW" === _loc4_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr256);
                                                }
                                                else
                                                {
                                                   addr270:
                                                   §§goto(addr281);
                                                   §§push(6);
                                                }
                                             }
                                             else if("BIRD_GREEN" === _loc4_)
                                             {
                                                §§goto(addr264);
                                             }
                                             else
                                             {
                                                §§push("BIRD_REDBIG");
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   addr269:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr270);
                                                   }
                                                   else
                                                   {
                                                      §§push("BIRD_SARDINE");
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr281);
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr281);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr275);
                                       }
                                       else
                                       {
                                          §§goto(addr281);
                                          §§push(8);
                                       }
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr222);
                        }
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr290);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr41);
      }
      
      private static function §-! §(param1:String, param2:§!!1§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc5_ && param2))
         {
            §§pop().§§slot[4] = null;
            if(!(_loc5_ && param2))
            {
               §§push(§§newactivation());
               if(!(_loc5_ && §7!1§))
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(_loc6_)
                     {
                        addr53:
                        §§push(§§newactivation());
                        if(_loc6_ || §7!1§)
                        {
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr85);
               }
               addr61:
               §§pop().§§slot[2] = param2;
               if(!_loc5_)
               {
                  addr76:
                  §§push(§§newactivation());
                  §§push(powerUpName);
                  if(!(_loc5_ && param2))
                  {
                     addr85:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[3] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && param2))
                  {
                     §§pop().§§slot[4] = new §4q§(§]o§.§#b§(§]#§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§),tutorialName);
                     if(_loc6_ || param1)
                     {
                        addr144:
                        if(tutorialPopup)
                        {
                           if(_loc5_ && §7!1§)
                           {
                           }
                        }
                        §§goto(addr157);
                     }
                     §+m§.push(tutorialPopup);
                     §§goto(addr157);
                  }
                  §§goto(addr144);
               }
               catch(e:Error)
               {
                  §§goto(addr144);
               }
               addr157:
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr76);
      }
      
      public static function §=c§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§push(null);
            if(_loc6_)
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
                     if(!§use§)
                     {
                        §use§ = SharedObject.getLocal(storageName);
                        if(_loc5_ && §7!1§)
                        {
                        }
                        addr158:
                        return;
                        addr144:
                     }
                     var _loc3_:int = 0;
                     if(_loc6_)
                     {
                        var _loc4_:* = §2m§();
                        if(!(_loc5_ && _loc2_))
                        {
                           for each(birdName in _loc4_)
                           {
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                           }
                           addr111:
                           §use§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
                           if(!_loc5_)
                           {
                              §use§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
                              §use§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
                           }
                           §use§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
                           §§goto(addr144);
                           addr108:
                        }
                        while(true)
                        {
                           §use§.data[birdName] = false;
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr144);
               }
               catch(e:Error)
               {
               }
               §§goto(addr158);
            }
         }
         §§goto(addr43);
      }
      
      private static function §2m§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0Y§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!!§.§;4§.slingshot.§"_§)
         {
            if(_loc6_ || §7!1§)
            {
               if(_loc1_.indexOf(_loc2_.name) < 0)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public static function §;b§(param1:§!!1§, param2:String, param3:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(§§newactivation());
         if(_loc8_ || param3)
         {
            §§pop().§§slot[6] = 0;
            if(_loc8_)
            {
               §§push(§§newactivation());
               if(!(_loc7_ && §7!1§))
               {
                  addr41:
                  §§pop().§§slot[1] = param1;
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§pop().§§slot[2] = §§pop();
                        §§push(§§newactivation());
                        if(!(_loc7_ && param2))
                        {
                           addr58:
                           §§push(param3);
                           if(_loc8_)
                           {
                              addr61:
                              §§pop().§§slot[3] = §§pop();
                              if(!_loc7_)
                              {
                                 if(isOpen)
                                 {
                                    if(_loc8_ || §7!1§)
                                    {
                                       return;
                                    }
                                    addr91:
                                    §§push(§§newactivation());
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().§§slot[3]);
                                       if(!_loc7_)
                                       {
                                          var _loc5_:* = §§pop();
                                          if(_loc8_)
                                          {
                                             §§push("POWERUP4");
                                             if(_loc8_ || param3)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         addr259:
                                                         §§push(0);
                                                         if(_loc7_)
                                                         {
                                                            addr290:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr305:
                                                         §§push(2);
                                                         if(!_loc8_)
                                                         {
                                                            addr336:
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("POWERUP1");
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc8_)
                                                         {
                                                            addr269:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr290);
                                                                  }
                                                                  addr348:
                                                                  if(_loc8_)
                                                                  {
                                                                     loop15:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §§push(§§newactivation());
                                                                           §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§pop().§§slot[4] = §§pop();
                                                                              if(_loc8_ || §7!1§)
                                                                              {
                                                                                 §§push(§&"§);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[4]);
                                                                                       if(_loc8_ || §7!1§)
                                                                                       {
                                                                                          §§pop().push(§§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr188:
                                                                                          §§pop().push(§§pop());
                                                                                       }
                                                                                       addr352:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          §§push(§&"§);
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             §§pop().§§slot[5] = §§pop();
                                                                                             try
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc7_ && param3))
                                                                                                {
                                                                                                   addr379:
                                                                                                   if(§§pop().§§slot[2])
                                                                                                   {
                                                                                                      addr380:
                                                                                                      if(!§use§)
                                                                                                      {
                                                                                                         addr382:
                                                                                                         §use§ = SharedObject.getLocal(storageName);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr390:
                                                                                                            §§push(§§newactivation());
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[5]);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§pop().§§slot[6] = int(§§pop().length - 1);
                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                  {
                                                                                                                     loop8:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        addr491:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[6]);
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              if(§§pop() < 0)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && param2))
                                                                                                                                 {
                                                                                                                                    §use§.flush();
                                                                                                                                    addr510:
                                                                                                                                    §§push(0);
                                                                                                                                    addr510:
                                                                                                                                 }
                                                                                                                                 §§goto(addr510);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr416:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    addr417:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[5]);
                                                                                                                                       addr418:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§§slot[4] = §§pop()[i];
                                                                                                                                          addr423:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§use§.data[powerUpPopupName] == undefined);
                                                                                                                                             if(_loc8_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§use§.data[powerUpPopupName] == false);
                                                                                                                                                      }
                                                                                                                                                      addr442:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §use§.data[powerUpPopupName] = true;
                                                                                                                                                   if(!(_loc7_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr463:
                                                                                                                                                   }
                                                                                                                                                   break loop15;
                                                                                                                                                }
                                                                                                                                                addr465:
                                                                                                                                                addr465:
                                                                                                                                                addr464:
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§§slot[5]);
                                                                                                                                                   addr466:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      addr467:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().splice(§§pop().§§slot[6],1);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr464);
                                                                                                                                                }
                                                                                                                                                loop3:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(i);
                                                                                                                                                   if(!(_loc7_ && §7!1§))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                         if(_loc7_ && param2)
                                                                                                                                                         {
                                                                                                                                                            break loop3;
                                                                                                                                                         }
                                                                                                                                                         var i:int = §§pop();
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      addr479:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr463);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr416:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc5_ = §§pop();
                                                                                                                           if(_loc8_ || param3)
                                                                                                                           {
                                                                                                                              var _loc6_:* = powerUpsToShow;
                                                                                                                              if(!(_loc7_ && param3))
                                                                                                                              {
                                                                                                                                 for each(powerUpName in _loc6_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr583:
                                                                                                                                 break loop15;
                                                                                                                                 addr580:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §-! §(powerUpName,currentUIView);
                                                                                                                                 §§goto(addr580);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr583);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                         §§goto(addr442);
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                   §§goto(addr510);
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                             catch(e:Error)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §#y§.log("Unable to get local storage");
                                                                                                }
                                                                                                §§goto(addr510);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr418);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 §§goto(addr466);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr157:
                                                                              §§pop().§§slot[4] = §§pop();
                                                                              §§push(§&"§);
                                                                              if(!_loc7_)
                                                                              {
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
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr467);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr199:
                                                                                 §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    §§pop().push(§§pop());
                                                                                    addr209:
                                                                                    §§push(§&"§);
                                                                                    §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       addr217:
                                                                                       §§pop().push(§§pop());
                                                                                       §§push(§&"§);
                                                                                       §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                                    }
                                                                                    §§pop().push(§§pop());
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       §§goto(addr352);
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 §§goto(addr217);
                                                                              }
                                                                           }
                                                                           §§goto(addr382);
                                                                        case 1:
                                                                           §§push(§§newactivation());
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push("POWERUP_TUTORIAL_SUPERSEED");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().§§slot[4] = §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§&"§);
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[4]);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§pop().push(§§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr188);
                                                                                       }
                                                                                       §§goto(addr352);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr187:
                                                                                       §§push(§§pop().§§slot[4]);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr177:
                                                                                 §§pop().§§slot[4] = §§pop();
                                                                                 §§push(§&"§);
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    §§goto(addr187);
                                                                                 }
                                                                              }
                                                                              §§goto(addr467);
                                                                           }
                                                                           §§goto(addr465);
                                                                        case 2:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push("POWERUP_TUTORIAL_KINGSLING");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§goto(addr157);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr177);
                                                                              }
                                                                           }
                                                                           §§goto(addr416);
                                                                        case 3:
                                                                           §§goto(addr177);
                                                                        case 4:
                                                                           §§push(§§newactivation());
                                                                           §§push("POWERUP_TUTORIAL_SLINGSCOPE");
                                                                           §§push(§&"§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push("POWERUP_TUTORIAL_BIRDQUAKE");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop().push(§§pop());
                                                                                 §§goto(addr199);
                                                                                 §§push(§&"§);
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           §§goto(addr209);
                                                                        default:
                                                                           §§goto(addr352);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr479);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            else
                                                            {
                                                               §§push("POWERUP2");
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  addr299:
                                                                  §§push(_loc5_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr305);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr328:
                                                                           §§push(3);
                                                                           if(_loc8_ || param3)
                                                                           {
                                                                              §§goto(addr336);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("POWERUP3");
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                           }
                                                                           addr339:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              addr340:
                                                                              §§push(4);
                                                                              if(_loc7_)
                                                                              {
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr348);
                                                                              §§push(5);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        addr338:
                                                                        §§goto(addr339);
                                                                        §§push(_loc5_);
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                        §§goto(addr328);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("ALL");
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr269);
                                             }
                                             §§goto(addr299);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr379);
                                    }
                                    §§goto(addr491);
                                    addr91:
                                 }
                                 §§goto(addr91);
                              }
                              addr77:
                              §§push(§§newactivation());
                              §§push(powerUpName);
                              if(!(_loc7_ && param1))
                              {
                                 addr86:
                                 §§push(§§pop());
                              }
                              §§pop().§§slot[4] = §§pop();
                              §&"§ = [];
                              §§goto(addr91);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr91);
         }
         §§goto(addr41);
      }
      
      public static function §6Y§(param1:§!!1§, param2:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc7_)
         {
            §§push(null);
            if(!(_loc7_ && param1))
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               if(_loc6_ || §7!1§)
               {
                  §§pop().§§slot[5] = 0;
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     addr46:
                     §§pop().§§slot[1] = param1;
                     if(_loc6_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc7_ && _loc3_))
                        {
                           addr59:
                           §§pop().§§slot[2] = param2;
                           addr58:
                           if(_loc6_ || param2)
                           {
                              if(isOpen)
                              {
                                 return;
                              }
                              addr73:
                              var birdsToShow:Array = §2m§();
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(!(_loc7_ && param1))
                              {
                                 if(§§pop().§§slot[2])
                                 {
                                    if(_loc6_)
                                    {
                                       if(!§use§)
                                       {
                                          if(_loc6_)
                                          {
                                             §use§ = SharedObject.getLocal(storageName);
                                             if(!(_loc7_ && §7!1§))
                                             {
                                                addr106:
                                                §§push(§§newactivation());
                                                if(_loc6_ || §7!1§)
                                                {
                                                   addr114:
                                                   §§push(§§newactivation());
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§pop().§§slot[5] = int(§§pop().length - 1);
                                                         if(_loc6_)
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               addr242:
                                                               addr219:
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§§slot[5]);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop() >= 0)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              addr157:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§§slot[3]);
                                                                                 addr158:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§§slot[4] = §§pop()[i];
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§push(§use§.data[birdName] == undefined);
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§push(§use§.data[birdName] == false);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §use§.data[birdName] = true;
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                break loop4;
                                                                                             }
                                                                                             addr249:
                                                                                             addr247:
                                                                                             addr274:
                                                                                             addr247:
                                                                                             addr274:
                                                                                             §use§.flush();
                                                                                             var _loc4_:int = 0;
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                var _loc5_:* = birdsToShow;
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   for each(birdName in _loc5_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   addr317:
                                                                                                   §8R§();
                                                                                                   return;
                                                                                                   addr314:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §=p§(birdName,currentUIView);
                                                                                                   §§goto(addr314);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          addr197:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§pop().§§slot[3].splice(i,1);
                                                                                             break loop4;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr156:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§§slot[5]);
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - 1);
                                                                           if(!(_loc6_ || §7!1§))
                                                                           {
                                                                              break;
                                                                           }
                                                                           var i:int = §§pop();
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr274);
                                                                        addr227:
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc7_ && _loc3_)
                                                                  {
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr317);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr114);
                           }
                           catch(e:Error)
                           {
                              if(_loc6_ || param2)
                              {
                                 §#y§.log("Unable to get local storage");
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr317);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr58);
               }
               §§goto(addr46);
            }
            §§goto(addr59);
         }
         §§goto(addr73);
      }
      
      private static function §8R§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(isOpen);
            if(_loc3_ || _loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§goto(addr49);
                     }
                  }
               }
               §§goto(addr71);
            }
            addr49:
            §§pop();
            if(_loc3_ || _loc3_)
            {
               addr71:
               if(§+m§.length > 0)
               {
                  if(_loc3_ || §7!1§)
                  {
                     isOpen = true;
                     if(!_loc2_)
                     {
                        addr84:
                        §'g§ = §+m§.pop();
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr93);
                     }
                     §'g§.open(param1);
                  }
               }
            }
            addr93:
            return;
         }
         §§goto(addr84);
      }
      
      public static function §3!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(isOpen == true)
         {
            if(!_loc2_)
            {
               if(§+m§.length > 0)
               {
                  if(_loc1_)
                  {
                     §§push(§'g§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(false);
                        if(_loc1_)
                        {
                           §§pop().preClose(§§pop());
                           addr59:
                           isOpen = false;
                           if(_loc1_)
                           {
                              addr64:
                              §8R§(false);
                              if(!_loc1_)
                              {
                              }
                           }
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        addr81:
                        §§push(true);
                     }
                     §§pop().preClose(§§pop());
                     addr83:
                     return;
                  }
               }
               else
               {
                  isOpen = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr81);
                     §§push(§'g§);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr59);
         }
         §§goto(addr64);
      }
   }
}
